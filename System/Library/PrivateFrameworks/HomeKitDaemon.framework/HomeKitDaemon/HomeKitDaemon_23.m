uint64_t sub_229769CC0(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[37];
  v7 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v5 = sub_22976A4A8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
    v5 = sub_229769DDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229769DDC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  sub_22976B680(v0[29], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[38];
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[30];
    v8 = v0[31];
    v9 = v0[29];
    v10 = v0[27];

    sub_22953EAE4(v9, &qword_27D8818C0, &unk_22A5820B0);
    (*(v8 + 8))(v5, v7);
    sub_22953EAE4(v10, &qword_27D8818C0, &unk_22A5820B0);
LABEL_5:
    v27 = v0[12];
    v28 = sub_22A4DC8EC();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    goto LABEL_7;
  }

  v11 = v0[38];
  v12 = v0[39];
  v13 = v0[26];
  v14 = v0[21];
  v15 = v0[22];
  v16 = v0[20];
  (*(v0[25] + 32))(v13, v0[27], v0[24]);
  *(swift_task_alloc() + 16) = v13;
  sub_229685338(sub_22976B6F0, v11, v16);

  v17 = (*(v15 + 48))(v16, 1, v14);
  v19 = v0[32];
  v18 = v0[33];
  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  v24 = v0[25];
  v23 = v0[26];
  v25 = v0[24];
  if (v17 == 1)
  {
    v26 = v0[20];

    sub_22953EAE4(v22, &qword_27D8818C0, &unk_22A5820B0);
    (*(v20 + 8))(v19, v21);
    sub_22953EAE4(v26, &unk_27D8818D0, &qword_22A57A448);
    (*(v24 + 8))(v23, v25);
    goto LABEL_5;
  }

  v47 = v0[26];
  v48 = v0[24];
  v30 = v0[22];
  v29 = v0[23];
  v31 = v0[21];
  v46 = v0[32];
  v32 = v0[12];
  (*(v30 + 32))(v29, v0[20], v31);
  sub_22A4DC83C();

  (*(v30 + 8))(v29, v31);
  sub_22953EAE4(v22, &qword_27D8818C0, &unk_22A5820B0);
  (*(v20 + 8))(v46, v21);
  v33 = sub_22A4DC8EC();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  (*(v24 + 8))(v47, v48);
LABEL_7:
  v34 = v0[32];
  v35 = v0[28];
  v36 = v0[29];
  v38 = v0[26];
  v37 = v0[27];
  v39 = v0[23];
  v41 = v0[19];
  v40 = v0[20];
  v43 = v0[17];
  v42 = v0[18];

  v44 = v0[1];

  return v44();
}

uint64_t sub_22976A184()
{
  v39 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[14];
  sub_2296F8604();
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  v37 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  if (v7)
  {
    v36 = v0[30];
    v14 = swift_slowAlloc();
    v35 = v8;
    v15 = swift_slowAlloc();
    v34 = v12;
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v38);
    *(v14 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to read attributes with error: %@", v14, 0x16u);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v34, v13);
    (*(v9 + 8))(v35, v36);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[36];
  v20 = v0[12];
  v21 = sub_22A4DC8EC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  if (!v19)
  {
    sub_22953EAE4(v0[29], &qword_27D8818C0, &unk_22A5820B0);
  }

  v22 = v0[32];
  v23 = v0[28];
  v24 = v0[29];
  v26 = v0[26];
  v25 = v0[27];
  v27 = v0[23];
  v29 = v0[19];
  v28 = v0[20];
  v31 = v0[17];
  v30 = v0[18];

  v32 = v0[1];

  return v32();
}

uint64_t sub_22976A4A8()
{
  v39 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[39];
  v2 = v0[17];
  v3 = v0[14];
  sub_2296F8604();
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  v37 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  if (v7)
  {
    v36 = v0[30];
    v14 = swift_slowAlloc();
    v35 = v8;
    v15 = swift_slowAlloc();
    v34 = v12;
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v38);
    *(v14 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to read attributes with error: %@", v14, 0x16u);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v34, v13);
    (*(v9 + 8))(v35, v36);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[36];
  v20 = v0[12];
  v21 = sub_22A4DC8EC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  if (!v19)
  {
    sub_22953EAE4(v0[29], &qword_27D8818C0, &unk_22A5820B0);
  }

  v22 = v0[32];
  v23 = v0[28];
  v24 = v0[29];
  v26 = v0[26];
  v25 = v0[27];
  v27 = v0[23];
  v29 = v0[19];
  v28 = v0[20];
  v31 = v0[17];
  v30 = v0[18];

  v32 = v0[1];

  return v32();
}

uint64_t sub_22976A7CC(int a1, int a2)
{
  LODWORD(v35) = a2;
  LODWORD(v36) = a1;
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_22A4DCD0C();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v2 matterDevice];
  if (!v16)
  {
    sub_2296F8604();
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A595220, v38);
      _os_log_impl(&dword_229538000, v23, v24, "%s matterDevice is nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    return 2;
  }

  v17 = v16;
  v18 = [v2 accessory];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = [v20 matterThermostatEndpoint];

  if (!v21)
  {
LABEL_10:
    sub_2296F8604();
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A595220, v38);
      _os_log_impl(&dword_229538000, v27, v28, "%s Cannot determine the endpoint for the Thermostat cluster", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v11, v3);
    return 2;
  }

  [v21 unsignedShortValue];

  sub_22A4DCCEC();
  v38[3] = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v38[4] = MEMORY[0x277D17450];
  v38[0] = v17;
  v22 = v17;
  v31 = sub_22A4DC90C();
  (*(v37 + 8))(v15, v12);

  result = __swift_destroy_boxed_opaque_existential_0(v38);
  v33 = v35 + v36;
  if ((v35 + v36) == v33)
  {
    return v31 <= (v33 + ((v33 & 0x8000) >> 15)) >> 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22976AE2C()
{
  v0 = sub_22A4DC82C();
  v2 = v1;
  v3 = sub_22A4DCA1C();
  v5 = v4;
  v6 = sub_2297B7550(v0, v2, v3, v4);
  sub_2295798D4(v3, v5);
  sub_2295798D4(v0, v2);
  return v6 & 1;
}

uint64_t sub_22976AEB8()
{
  v1[8] = v0;
  v1[9] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = sub_22A4DCD0C();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976AFF8, 0, 0);
}

uint64_t sub_22976AFF8()
{
  v49 = v0;
  v1 = [*(v0 + 64) matterDevice];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 64) accessory];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 valenciaMatterEndpoint];
        if (v6)
        {
          v7 = v6;
          v8 = *(v0 + 136);
          v9 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
          v10 = MEMORY[0x277D17450];
          *(v0 + 40) = v9;
          *(v0 + 48) = v10;
          *(v0 + 16) = v2;
          v11 = v2;
          [v7 unsignedShortValue];
          sub_22A4DCCEC();
          v12 = sub_22A4DC97C();
          (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          goto LABEL_15;
        }
      }
    }

    v31 = *(v0 + 112);
    v32 = *(v0 + 72);
    sub_2296F8604();
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 112);
    v37 = *(v0 + 80);
    v38 = *(v0 + 88);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A5951C0, v48);
      _os_log_impl(&dword_229538000, v33, v34, "%s Found no capable endpoint to read AppleFollowSystemModeInPreset", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);
    }

    else
    {
    }

    (*(v38 + 8))(v36, v37);
  }

  else
  {
    v13 = *(v0 + 104);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    sub_2296F8604();
    v16 = v15;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 104);
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    if (v19)
    {
      v23 = *(v0 + 64);
      v47 = *(v0 + 104);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A5951C0, v48);
      *(v24 + 12) = 2080;
      v26 = [v23 matterDevice];
      *(v0 + 56) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809E8, &qword_22A582098);
      v27 = sub_22A4DBA6C();
      v29 = v28;

      v30 = sub_2295A3E30(v27, v29, v48);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_229538000, v17, v18, "%s Found no matter device %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v21 + 8))(v47, v22);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  v12 = 0;
LABEL_15:
  v41 = *(v0 + 136);
  v43 = *(v0 + 104);
  v42 = *(v0 + 112);
  v44 = *(v0 + 96);

  v45 = *(v0 + 8);

  return v45(v12 & 1);
}

unint64_t sub_22976B5B8()
{
  result = qword_27D87C3A0;
  if (!qword_27D87C3A0)
  {
    sub_22A4DC86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C3A0);
  }

  return result;
}

uint64_t sub_22976B610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22976B680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22976B710()
{
  v1 = OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask;
  if (*(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask);

    sub_22A4DDA7C();
  }

  v3 = *(v0 + 112);

  MEMORY[0x22AAD4F90](v0 + 120);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, &qword_27D87D5A0, &qword_22A582190);
  v4 = *(v0 + v1);

  v5 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_lock);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s20DistributedSchedulerCMa()
{
  result = qword_27D880A10;
  if (!qword_27D880A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22976B82C()
{
  sub_22976CE04();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22976B8F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v2, &off_283CE3A98);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_229538000, v16, v17, "Registering for system state changes", v18, 2u);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_2295FE8C0(v1 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, v10);
  sub_229620368(v10);
  sub_22953EAE4(v10, &qword_27D87D5A0, &qword_22A582190);
  v19 = sub_22A4DD9DC();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  v22 = sub_22957F3C0(0, 0, v6, &unk_22A5821A0, v21);
  v23 = *(v1 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask);
  *(v1 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_updateTask) = v22;
}

uint64_t sub_22976BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A28, &qword_22A5821A8);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976BD14, 0, 0);
}

uint64_t sub_22976BD14()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22976BDE8, Strong, 0);
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[16];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22976BDE8()
{
  sub_2295FE8C0(*(v0 + 152) + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_eventStream, *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22976BE68, 0, 0);
}

uint64_t sub_22976BE68()
{
  v1 = v0[16];
  v2 = v0[13];
  sub_2295FE930(v0[17], v0[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  sub_22A4DDA3C();
  swift_beginAccess();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_22976BF5C;
  v5 = v0[16];
  v6 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_22976BF5C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22976C058, 0, 0);
}

uint64_t sub_22976C058()
{
  if (v0[5])
  {
    v1 = v0[13];
    Strong = swift_weakLoadStrong();
    v0[21] = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      v0[22] = v3;
      *v3 = v0;
      v3[1] = sub_22976C1D0;

      return sub_22976CBC4();
    }

    v9 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_22953EAE4(v9, &qword_27D87D5A0, &qword_22A582190);
    v6 = &qword_27D880A30;
    v7 = &qword_22A5821B8;
    v8 = (v0 + 2);
  }

  else
  {
    v5 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v6 = &qword_27D87D5A0;
    v7 = &qword_22A582190;
    v8 = v5;
  }

  sub_22953EAE4(v8, v6, v7);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22976C1D0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22976C2CC, 0, 0);
}

uint64_t sub_22976C2CC()
{
  v1 = v0[21];

  sub_22953EAE4((v0 + 2), &qword_27D880A30, &qword_22A5821B8);
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_22976BF5C;
  v4 = v0[16];
  v5 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_22976C394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v6 = *(*(_s20ControlBlockInternalVMa() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v4[17] = v10;
  v11 = *(v10 - 8);
  v4[18] = v11;
  v12 = *(v11 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976C4F0, a3, 0);
}

uint64_t sub_22976C4F0()
{
  v28 = v0;
  v1 = v0[20];
  v2 = v0[9];
  sub_229541CB0(v0[12], &off_283CE3A98);
  swift_unknownObjectRetain();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v26 = v0[20];
    v5 = v0[17];
    v6 = v0[18];
    v8 = v0[9];
    v7 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getObjectType();
    v0[8] = v8;
    v11 = *(v7 + 16);
    v12 = sub_22A4DE5CC();
    v14 = sub_2295A3E30(v12, v13, &v27);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_229538000, v3, v4, "Adding %s to be scheduled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    v15 = *(v6 + 8);
    v15(v26, v5);
  }

  else
  {
    v16 = v0[20];
    v17 = v0[17];
    v18 = v0[18];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v0[21] = v15;
  v20 = v0[9];
  v19 = v0[10];
  v0[22] = swift_getObjectType();
  v21 = *(v19 + 40);
  v19 += 40;
  v0[23] = v21;
  v0[24] = v19 & 0xFFFFFFFFFFFFLL | 0x7AC000000000000;
  v22 = *(v19 - 16);
  v24 = sub_22A4DD8CC();
  v0[25] = v24;
  v0[26] = v23;

  return MEMORY[0x2822009F8](sub_22976C6FC, v24, v23);
}

uint64_t sub_22976C6FC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  (*(v0 + 184))(*(v0 + 176), *(v0 + 80));

  return MEMORY[0x2822009F8](sub_22976C774, v3, 0);
}

uint64_t sub_22976C774()
{
  v1 = v0[11];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v2 = v0[16];
    v3 = *(v1 + 112);

    sub_2296DBEC0(v2);
    LOBYTE(v2) = v4;

    if (v2)
    {
      v5 = v0[19];
      sub_229541CB0(v0[12], &off_283CE3A98);
      v6 = sub_22A4DD05C();
      v7 = sub_22A4DDCCC();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[21];
      v10 = v0[18];
      v11 = v0[19];
      v13 = v0[16];
      v12 = v0[17];
      v14 = v0[14];
      v15 = v0[15];
      if (v8)
      {
        v36 = v0[16];
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_229538000, v6, v7, "Task already scheduled, ignoring request", v16, 2u);
        MEMORY[0x22AAD4E50](v16, -1, -1);

        v9(v11, v12);
        (*(v15 + 8))(v36, v14);
      }

      else
      {

        v9(v11, v12);
        (*(v15 + 8))(v13, v14);
      }

LABEL_13:
      v31 = v0[19];
      v30 = v0[20];
      v32 = v0[16];
      v33 = v0[13];

      v34 = v0[1];

      return v34();
    }
  }

  v17 = v0[16];
  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[9];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v21 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2295ABCEC(v20, v18, v17, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v37;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_13;
  }

  v24 = Strong;
  v25 = v0[9];
  v26 = (*(v0[10] + 32))(v0[22]);
  v27 = sub_22962007C(v24, v26);

  if ((v27 & 1) == 0)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    goto LABEL_13;
  }

  v28 = v0[25];
  v29 = v0[26];

  return MEMORY[0x2822009F8](sub_22976CAA4, v28, v29);
}

uint64_t sub_22976CAA4()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_2297E3398(v0[22], v0[10]);

  return MEMORY[0x2822009F8](sub_22976CB14, v1, 0);
}

uint64_t sub_22976CB14()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22976CBC4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_22976CC0C, v0, 0);
}

uint64_t sub_22976CC0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_lock);
  v4 = swift_allocObject();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22976CCF4;

  return sub_2297C85B8(&unk_22A582180, v4);
}

uint64_t sub_22976CCF4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_22976CE04()
{
  if (!qword_27D880A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D618, &qword_22A582120);
    v0 = _s6StreamVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D880A20);
    }
  }
}

uint64_t sub_22976CE68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = sub_22A4DD07C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976CF2C, a1, 0);
}

uint64_t sub_22976CF2C()
{
  v1 = *(v0 + 72);
  sub_229541CB0(*(v0 + 48), &off_283CE3A98);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "System state has changed, reevaluating scheduled items", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  (*(v6 + 8))(v5, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {
LABEL_18:
    v28 = *(v0 + 72);

    v29 = *(v0 + 8);

    return v29();
  }

  v10 = *(v0 + 40);
  swift_beginAccess();
  v11 = *(v10 + 112);
  *(v0 + 88) = v11;
  v12 = *(v11 + 32);
  *(v0 + 136) = v12;
  v13 = -1;
  v14 = -1 << v12;
  if (-(-1 << v12) < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v11 + 64);

  if (!v15)
  {
    v17 = 0;
    while (((63 - v14) >> 6) - 1 != v17)
    {
      v16 = v17 + 1;
      v15 = *(v11 + 8 * v17++ + 72);
      if (v15)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

  v16 = 0;
LABEL_11:
  *(v0 + 96) = v15;
  *(v0 + 104) = v16;
  v18 = *(v0 + 80);
  v19 = (*(v11 + 56) + ((v16 << 10) | (16 * __clz(__rbit64(v15)))));
  *(v0 + 112) = *v19;
  v20 = v19[1];
  *(v0 + 120) = v20;
  ObjectType = swift_getObjectType();
  *(v0 + 128) = ObjectType;
  v22 = *(v20 + 32);
  swift_unknownObjectRetain();
  v23 = v22(ObjectType, v20);
  LOBYTE(v18) = sub_22962007C(v18, v23);

  v24 = *(v20 + 24);
  v26 = sub_22A4DD8CC();
  if (v18)
  {
    v27 = sub_22976D1DC;
  }

  else
  {
    v27 = sub_22976D40C;
  }

  return MEMORY[0x2822009F8](v27, v26, v25);
}

uint64_t sub_22976D1DC()
{
  v1 = v0[14];
  v2 = v0[5];
  sub_2297E3398(v0[16], v0[15]);

  return MEMORY[0x2822009F8](sub_22976D24C, v2, 0);
}

uint64_t sub_22976D24C()
{
  v1 = *(v0 + 112);
  v2 = swift_unknownObjectRelease();
  v5 = *(v0 + 104);
  v6 = (*(v0 + 96) - 1) & *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 88);
LABEL_7:
    *(v0 + 96) = v6;
    *(v0 + 104) = v5;
    v9 = *(v0 + 80);
    v10 = (*(v7 + 56) + ((v5 << 10) | (16 * __clz(__rbit64(v6)))));
    *(v0 + 112) = *v10;
    v11 = v10[1];
    *(v0 + 120) = v11;
    ObjectType = swift_getObjectType();
    *(v0 + 128) = ObjectType;
    v13 = *(v11 + 32);
    swift_unknownObjectRetain();
    v14 = v13(ObjectType, v11);
    LOBYTE(v9) = sub_22962007C(v9, v14);

    v15 = *(v11 + 24);
    v16 = sub_22A4DD8CC();
    v4 = v17;
    if (v9)
    {
      v18 = sub_22976D1DC;
    }

    else
    {
      v18 = sub_22976D40C;
    }

    v2 = v18;
    v3 = v16;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v7 = *(v0 + 88);
      if (v8 >= (((1 << *(v0 + 136)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v7 + 8 * v8 + 64);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v19 = *(v0 + 72);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_22976D40C()
{
  v1 = v0[14];
  v2 = v0[5];
  sub_2297E37E4(v0[16], v0[15]);

  return MEMORY[0x2822009F8](sub_22976D7E8, v2, 0);
}

uint64_t sub_22976D498()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22976CE68(v2, v3);
}

uint64_t sub_22976D530(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = *a2;
  return MEMORY[0x2822009F8](sub_22976D578, a2, 0);
}

uint64_t sub_22976D578()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtCC13HomeKitDaemon16HomeIntelligence20DistributedScheduler_lock;
  v4 = swift_allocObject();
  v5 = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v6 = *(*(v0 + 24) + v3);
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_229731D94;

  return sub_2297C85B8(&unk_22A5821D0, v4);
}

uint64_t sub_22976D688(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_22976BC04(a1, v4, v5, v6);
}

uint64_t sub_22976D73C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229569B30;

  return sub_22976C394(v2, v3, v5, v4);
}

unint64_t sub_22976D7EC(unint64_t result, uint64_t *a2)
{
  v32 = a2;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v3 = MEMORY[0x277D84F90];
    if (!v2)
    {
      return v3;
    }

    v4 = result;
    v41 = MEMORY[0x277D84F90];
    result = sub_229583394(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v41;
    v6 = v4;
    v30 = v4;
    v31 = v4 & 0xC000000000000001;
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
    v29 = v2;
    while (!__OFADD__(v5, 1))
    {
      v34 = v5 + 1;
      if (v31)
      {
        v7 = MEMORY[0x22AAD13F0](v5, v6);
      }

      else
      {
        if (v5 >= *(v28 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v6 + 8 * v5 + 32);
      }

      v8 = v7;
      v33 = v7;
      v10 = *v32;
      v9 = v32[1];
      v11 = v32[3];
      sub_22956C148(*v32, v9);

      v12 = [v8 serviceType];
      v13 = sub_22A4DD5EC();
      v15 = v14;

      v39 = MEMORY[0x277D837D0];
      v40 = &off_283CDFC68;
      *&v38 = v13;
      *(&v38 + 1) = v15;
      sub_229557188(&v38, v36);
      v16 = MEMORY[0x277D84F98];
      LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
      v35 = v16;
      v17 = v37;
      v18 = __swift_mutable_project_boxed_opaque_existential_0(v36, v37);
      v19 = *(*(v17 - 8) + 64);
      MEMORY[0x28223BE20](v18);
      v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      sub_22989A820(*v21, v21[1], 0x5465636976726573, 0xEB00000000657079, v15, &v35);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v23 = v35;

      sub_2295798D4(v10, v9);

      v41 = v3;
      v25 = *(v3 + 16);
      v24 = *(v3 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_229583394((v24 > 1), v25 + 1, 1);
        v3 = v41;
      }

      *(v3 + 16) = v25 + 1;
      *(v3 + 8 * v25 + 32) = v23;
      ++v5;
      v6 = v30;
      if (v34 == v29)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v26 = result;
    v2 = sub_22A4DE0EC();
    result = v26;
  }

  __break(1u);
  return result;
}

unint64_t sub_22976DAFC(unint64_t result, uint64_t a2)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
      return v4;
    }

    v5 = result;
    v23 = MEMORY[0x277D84F90];
    result = sub_229583394(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v23;
    v7 = v5;
    v16 = v5;
    v17 = v5 & 0xC000000000000001;
    v15 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = v3;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17)
      {
        v10 = MEMORY[0x22AAD13F0](v6, v7);
      }

      else
      {
        if (v6 >= *(v15 + 16))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v6 + 32);
      }

      v11 = v10;
      v18 = *a2;
      v19 = *(a2 + 8);
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
      v22 = MEMORY[0x277D84F98];
      sub_22956C148(*a2, v19);

      sub_2297C3648();

      sub_2295798D4(v18, v19);

      v13 = *(v23 + 16);
      v12 = *(v23 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_229583394((v12 > 1), v13 + 1, 1);
      }

      *(v23 + 16) = v13 + 1;
      *(v23 + 8 * v13 + 32) = v22;
      ++v6;
      v7 = v16;
      if (v9 == v8)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v14 = result;
    v3 = sub_22A4DE0EC();
    result = v14;
  }

  __break(1u);
  return result;
}

size_t sub_22976DCE8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A78, &qword_22A5822B0);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v31 - v6;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v12;
    }

    v13 = a1;
    v45 = MEMORY[0x277D84F90];
    a1 = &v45;
    result = sub_2295833D4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v12 = v45;
    v16 = v13;
    v35 = v13;
    v36 = v13 & 0xC000000000000001;
    v31 = v3;
    v32 = v13 & 0xFFFFFFFFFFFFFF8;
    v33 = i;
    v34 = v10;
    while (!__OFADD__(v15, 1))
    {
      v43 = v15 + 1;
      v44 = v12;
      if (v36)
      {
        v17 = MEMORY[0x22AAD13F0](v15, v16);
      }

      else
      {
        if (v15 >= *(v32 + 16))
        {
          goto LABEL_16;
        }

        v17 = *(v16 + 8 * v15 + 32);
      }

      v42 = v17;
      v19 = *v41;
      v18 = *(v41 + 8);
      v20 = *(v41 + 16);
      v21 = *(v41 + 24);
      v22 = *(v41 + 32);
      v23 = v39;
      v24 = &v39[*(v40 + 36)];
      sub_22956C148(*v41, v18);

      sub_22A4DC28C();
      a1 = v24 + *(v38 + 20);
      *a1 = 0;
      *(a1 + 8) = 0;
      *v23 = v19;
      *(v23 + 8) = v18;
      *(v23 + 16) = v20;
      *(v23 + 24) = v21;
      *(v23 + 32) = v22;
      v25 = v42;
      v26 = [v42 serviceType];
      v10 = sub_22A4DD5EC();
      v28 = v27;

      *a1 = v10;
      *(a1 + 8) = v28;
      v29 = v34;
      sub_22976ECA4(v24, v34, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
      sub_22953EAE4(v23, &qword_27D880A78, &qword_22A5822B0);

      v12 = v44;
      v45 = v44;
      v3 = *(v44 + 16);
      v30 = *(v44 + 24);
      if (v3 >= v30 >> 1)
      {
        a1 = &v45;
        sub_2295833D4(v30 > 1, v3 + 1, 1);
        v12 = v45;
      }

      *(v12 + 16) = v3 + 1;
      sub_22976ED0C(v29, v12 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v3, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
      ++v15;
      v16 = v35;
      if (v43 == v33)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_22976E028(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE28, &qword_22A57DC78);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v32 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v14 = a1;
    v44 = MEMORY[0x277D84F90];
    a1 = &v44;
    result = sub_229583418(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v13 = v44;
    v17 = v14;
    v36 = v14;
    v37 = v14 & 0xC000000000000001;
    v32 = v3;
    v33 = v14 & 0xFFFFFFFFFFFFFF8;
    v34 = i;
    v35 = v11;
    while (!__OFADD__(v16, 1))
    {
      v42 = v16 + 1;
      v43 = v13;
      if (v37)
      {
        v18 = MEMORY[0x22AAD13F0](v16, v17);
      }

      else
      {
        if (v16 >= *(v33 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v17 + 8 * v16 + 32);
      }

      a1 = v18;
      v19 = *v41;
      v20 = *(v41 + 8);
      v21 = *(v41 + 16);
      v22 = *(v41 + 24);
      v11 = *(v41 + 32);
      v23 = &v7[*(v40 + 36)];
      sub_22956C148(*v41, v20);

      sub_22A4DC28C();
      v24 = v39;
      v25 = (v23 + v39[5]);
      *v25 = 0;
      v25[1] = 0;
      v26 = v23 + v24[6];
      *v26 = 0;
      *(v26 + 4) = 1;
      v27 = (v23 + v24[7]);
      *v27 = 0;
      v27[1] = 0;
      v28 = v23 + v24[8];
      *v28 = 0;
      *(v28 + 4) = 1;
      *v7 = v19;
      *(v7 + 1) = v20;
      *(v7 + 2) = v21;
      *(v7 + 3) = v22;
      v7[32] = v11;
      sub_2296B2D04(v7);
      v29 = v35;
      sub_22976ECA4(v23, v35, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
      sub_22953EAE4(v7, &qword_27D87EE28, &qword_22A57DC78);

      v13 = v43;
      v44 = v43;
      v31 = *(v43 + 16);
      v30 = *(v43 + 24);
      v3 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        a1 = &v44;
        sub_229583418(v30 > 1, v31 + 1, 1);
        v13 = v44;
      }

      *(v13 + 16) = v3;
      sub_22976ED0C(v29, v13 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
      ++v16;
      v17 = v36;
      if (v42 == v34)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_22976E364(uint64_t *a1)
{
  v2 = v1;
  v13 = _s21EventMetadataInternalVMa(0);
  v14 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_22976ECA4(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v12);
  sub_22953EAE4(v12, &qword_27D882000, &qword_22A578390);
  v5 = _s12HAPAccessoryO5EventVMa();
  v6 = sub_22976DAFC(*(v1 + v5[5]), a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A38, &qword_22A5821E8);
  v13 = v7;
  v8 = sub_22976E55C();
  v14 = v8;
  v12[0] = v6;
  sub_229890DC4(v12, 0xD000000000000017, 0x800000022A5952F0);
  v9 = sub_22976D7EC(*(v2 + v5[6]), a1);
  v13 = v7;
  v14 = v8;
  v12[0] = v9;
  sub_229890DC4(v12, 0xD000000000000012, 0x800000022A595310);
  v10 = *(v2 + v5[7]);
  v13 = MEMORY[0x277D84CC0];
  v14 = &off_283CDFC58;
  LODWORD(v12[0]) = v10;
  return sub_229890DC4(v12, 0x656372756F73, 0xE600000000000000);
}

uint64_t _s12HAPAccessoryO5EventVMa()
{
  result = qword_27D880A48;
  if (!qword_27D880A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22976E55C()
{
  result = qword_27D880A40;
  if (!qword_27D880A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D880A38, &qword_22A5821E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880A40);
  }

  return result;
}

uint64_t sub_22976E5D8(uint64_t a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  v16 = _s21EventMetadataInternalVMa(0);
  v17 = sub_22976EC5C(&qword_27D87CC28, _s21EventMetadataInternalVMa);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_22976ECA4(v2, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679D28(KeyPath, v15);

  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v6 = _s12HAPAccessoryO5EventVMa();
  v7 = sub_22976E028(*(v2 + v6[5]), a1);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E790, &qword_22A57C490) + 36));
  v9 = *v8;

  *v8 = v7;
  v10 = sub_22976DCE8(*(v2 + v6[6]), a1);
  v11 = v8[1];

  v8[1] = v10;
  v12 = *(v2 + v6[7]);
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  v14 = v8 + *(result + 32);
  *v14 = v12;
  v14[4] = 0;
  return result;
}

uint64_t sub_22976E740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  sub_2296AF1D0(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22976ED0C(v7, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  }

  sub_22A4DC28C();
  v11 = *(v9 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_27D87DF28;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_22976E8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22976ECA4(a1, v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v9 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0) + 28);
  sub_22953EAE4(a2 + v9, &qword_27D87CC38, &unk_22A5784B0);
  sub_22976ED0C(v8, a2 + v9, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void sub_22976EA54()
{
  _s21EventMetadataInternalVMa(319);
  if (v0 <= 0x3F)
  {
    sub_22976EB38(319, &qword_27D880A58, &unk_27D87E490, off_2786660B8);
    if (v1 <= 0x3F)
    {
      sub_22976EB38(319, &qword_27D880A60, &unk_27D87D360, off_278666310);
      if (v2 <= 0x3F)
      {
        sub_229564D4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22976EB38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_229562F68(255, a3, a4);
    v5 = sub_22A4DD88C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22976EBD8(uint64_t a1)
{
  *(a1 + 16) = sub_22976EC5C(&qword_27D880A68, _s12HAPAccessoryO5EventVMa);
  result = sub_22976EC5C(&qword_27D880A70, _s12HAPAccessoryO5EventVMa);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22976EC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22976ECA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22976ED0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22976ED74(uint64_t a1, uint64_t a2)
{
  v5 = sub_2297731F0(v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_229543DBC(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_229543DBC(0x4E65636976726553, 0xEB00000000656D61), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22976EEB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_2295403F4(*(a1 + 48) + 40 * v13, v32);
        sub_2295404B0(*(a1 + 56) + 32 * v13, v33 + 8);
        v30[0] = v33[0];
        v30[1] = v33[1];
        v31 = v34;
        v29[0] = v32[0];
        v29[1] = v32[1];
        sub_2295403F4(v29, v24);
        if (!swift_dynamicCast())
        {
          sub_22953EAE4(v29, &qword_27D880A80, &qword_22A5822F0);

          goto LABEL_23;
        }

        v14 = v23[0];
        v15 = v23[1];
        sub_2295404B0(v30 + 8, v23);
        sub_22953EAE4(v29, &qword_27D880A80, &qword_22A5822F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        sub_229543C5C(v22, v24);
        sub_229543C5C(v24, v25);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        sub_229543C5C(v25, v27);
        v16 = v26;
        sub_229543C5C(v27, v28);
        sub_229543C5C(v28, &v26);
        result = sub_229543DBC(v16, *(&v16 + 1));
        v17 = result;
        if (v18)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v16;

          v11 = (v2[7] + 32 * v17);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_229543C5C(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          result = sub_229543C5C(&v26, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_27;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      memset(v22, 0, sizeof(v22));
      sub_22953EAE4(v22, &unk_27D87FC20, &unk_22A578810);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22976F258(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_22A4DE40C();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v18);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v9)) | (v18 << 6);
        v20 = (*(a1 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v31 = *(*(a1 + 56) + 8 * v19);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        if (!swift_dynamicCast())
        {
          break;
        }

        v9 &= v9 - 1;
        result = sub_229543DBC(v22, v21);
        if (v23)
        {
          v13 = (v6[6] + 16 * result);
          v14 = v13[1];
          *v13 = v22;
          v13[1] = v21;
          v15 = result;

          v16 = v6[7];
          v17 = *(v16 + 8 * v15);
          *(v16 + 8 * v15) = v30;

          v12 = v18;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v6[2] >= v6[3])
          {
            goto LABEL_23;
          }

          *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v24 = (v6[6] + 16 * result);
          *v24 = v22;
          v24[1] = v21;
          *(v6[7] + 8 * result) = v30;
          v25 = v6[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_24;
          }

          v6[2] = v27;
          v12 = v18;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v18 = v12;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22976F484(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_2295403F4(*(a1 + 48) + 40 * v14, v29);
        sub_2295404B0(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_2295403F4(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2295404B0(v27 + 8, v22);
        sub_22953EAE4(v26, &qword_27D880A80, &qword_22A5822F0);
        v23 = v20;
        sub_229543C5C(v22, v24);
        v15 = v23;
        sub_229543C5C(v24, v25);
        sub_229543C5C(v25, &v23);
        result = sub_229543DBC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_229543C5C(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_229543C5C(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_22953EAE4(v26, &qword_27D880A80, &qword_22A5822F0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22976F760(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_22976F784, 0, 0);
}

uint64_t sub_22976F784()
{
  v1 = v0[8];
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[7];
  }

  else
  {
    v3 = 0x53555F6E65;
  }

  if (v1)
  {
    v4 = v0[8];
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_2297731F0(v2);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {

    goto LABEL_15;
  }

  v7 = sub_229543DBC(v3, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:

    v12 = 0;
    goto LABEL_16;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, (v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v10 = swift_dynamicCast();
  v11 = v0[6];
  if (v10)
  {
    v12 = v0[6];
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_22976F8D0(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_22A4DB7DC();
  v2[95] = v3;
  v4 = *(v3 - 8);
  v2[96] = v4;
  v5 = *(v4 + 64) + 15;
  v2[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976F994, 0, 0);
}

void sub_22976F994()
{
  v1 = *(v0 + 744);
  v2 = MEMORY[0x277D837D0];
  if (!*(v1 + 16) || (v3 = *(v0 + 744), v4 = sub_229543DBC(0x4E65636976726553, 0xEB00000000656D61), (v5 & 1) == 0))
  {
    v18 = *(v0 + 752);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_22953EAE4(v0 + 464, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 680) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v20 = [v18 shortDescription];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    *(inited + 72) = v2;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x800000022A595330;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v24 = *(v0 + 712);
LABEL_22:
    swift_willThrow();
LABEL_23:
    v47 = *(v0 + 776);

    v48 = *(v0 + 8);
LABEL_24:

    v48();
    return;
  }

  v6 = *(v0 + 744);
  sub_2295404B0(*(v6 + 56) + 32 * v4, v0 + 464);
  sub_22953EAE4(v0 + 464, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16) || (v7 = *(v0 + 744), v8 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265), (v9 & 1) == 0) || (sub_2295404B0(*(v6 + 56) + 32 * v8, v0 + 400), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v40 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 640) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v41 = swift_initStackObject();
    *(v41 + 32) = 0x6E6F73616552;
    *(v41 + 16) = xmmword_22A576180;
    *(v41 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v42 = [v40 shortDescription];
    v43 = sub_22A4DD5EC();
    v45 = v44;

    MEMORY[0x22AAD08C0](v43, v45);

    *(v41 + 72) = v2;
    *(v41 + 48) = 0xD00000000000002ALL;
    *(v41 + 56) = 0x800000022A58DE00;
    sub_22956AD8C(v41);
    swift_setDeallocating();
    sub_22953EAE4(v41 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v46 = *(v0 + 648);
    goto LABEL_22;
  }

  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v108 = *(v0 + 760);
  v12 = *(v0 + 576);
  v13 = *(v0 + 584);
  v14 = [*(v0 + 752) uuid];
  sub_22A4DB79C();

  v15 = sub_22A4DB76C();
  v17 = v16;
  (*(v11 + 8))(v10, v108);
  if (v15 != v12 || v17 != v13)
  {
    v25 = sub_22A4DE60C();

    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_11:
  if (!*(v1 + 16))
  {
    goto LABEL_28;
  }

  v26 = *(v0 + 744);
  v27 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449);
  if ((v28 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v27, v0 + 496);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v29 = *(v0 + 752);
  v30 = *(v0 + 616);
  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v31 = [v29 instanceID];
  LOBYTE(v29) = sub_22A4DDEDC();

  if ((v29 & 1) == 0)
  {

LABEL_28:
    v49 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 608) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v50 = swift_initStackObject();
    *(v50 + 32) = 0x6E6F73616552;
    *(v50 + 16) = xmmword_22A576180;
    *(v50 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v51 = [v49 shortDescription];
    v52 = sub_22A4DD5EC();
    v54 = v53;

    MEMORY[0x22AAD08C0](v52, v54);

    *(v50 + 72) = MEMORY[0x277D837D0];
    *(v50 + 48) = 0xD00000000000002ALL;
    *(v50 + 56) = 0x800000022A595350;
    sub_22956AD8C(v50);
    swift_setDeallocating();
    sub_22953EAE4(v50 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v55 = *(v0 + 624);
    goto LABEL_22;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_35;
  }

  v32 = *(v0 + 744);
  v33 = sub_229543DBC(1701869908, 0xE400000000000000);
  if ((v34 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v33, v0 + 528);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v109 = v30;
  v106 = *(v0 + 592);
  v35 = *(v0 + 600);
  v36 = [*(v0 + 752) type];
  v37 = sub_22A4DD5EC();
  v39 = v38;

  if (v106 != v37 || v35 != v39)
  {
    v56 = sub_22A4DE60C();

    v30 = v109;
    if (v56)
    {
      goto LABEL_30;
    }

LABEL_35:
    v63 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 632) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v64 = swift_initStackObject();
    *(v64 + 32) = 0x6E6F73616552;
    *(v64 + 16) = xmmword_22A576180;
    *(v64 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v65 = [v63 shortDescription];
    v66 = sub_22A4DD5EC();
    v68 = v67;

    MEMORY[0x22AAD08C0](v66, v68);

    *(v64 + 72) = MEMORY[0x277D837D0];
    *(v64 + 48) = 0xD000000000000024;
    *(v64 + 56) = 0x800000022A595380;
    sub_22956AD8C(v64);
    swift_setDeallocating();
    sub_22953EAE4(v64 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v69 = *(v0 + 736);
LABEL_36:
    swift_willThrow();

    goto LABEL_23;
  }

  v30 = v109;
LABEL_30:
  if (!*(v1 + 16) || (v57 = *(v0 + 744), v58 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972), (v59 & 1) == 0) || (v60 = (v0 + 672), sub_2295404B0(*(v6 + 56) + 32 * v58, v0 + 432), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {
    v70 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 664) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v71 = swift_allocObject();
    *(v71 + 32) = 0x6E6F73616552;
    *(v71 + 16) = xmmword_22A576180;
    *(v71 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v72 = [v70 shortDescription];
    v73 = sub_22A4DD5EC();
    v75 = v74;

    MEMORY[0x22AAD08C0](v73, v75);

    *(v71 + 72) = MEMORY[0x277D837D0];
    *(v71 + 48) = 0xD00000000000002CLL;
    *(v71 + 56) = 0x800000022A5953B0;
    sub_22956AD8C(v71);
    swift_setDeallocating();
    sub_22953EAE4(v71 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v76 = *(v0 + 656);
    goto LABEL_36;
  }

  v61 = *v60;
  v105 = *(*v60 + 16);
  if (!v105)
  {
LABEL_51:
    v92 = *(v0 + 776);

    v48 = *(v0 + 8);
    goto LABEL_24;
  }

  v62 = 0;
  while (v62 < *(v61 + 16))
  {
    v78 = *(v61 + 8 * v62 + 32);
    v79 = *(v78 + 16);

    if (!v79 || (v80 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449), (v81 & 1) == 0) || (sub_2295404B0(*(v78 + 56) + 32 * v80, v0 + 368), (swift_dynamicCast() & 1) == 0) || (v82 = *(v0 + 704), v83 = [*(v0 + 752) findCharacteristic_], v82, (v107 = v83) == 0))
    {

      type metadata accessor for HMError(0);
      *(v0 + 696) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      v93 = swift_allocObject();
      *(v93 + 32) = 0x6E6F73616552;
      *(v93 + 16) = xmmword_22A576180;
      *(v93 + 40) = 0xE600000000000000;
      sub_22A4DE1FC();

      v94 = MEMORY[0x277D837D0];
      v95 = sub_22A4DD4AC();
      v97 = v96;

      MEMORY[0x22AAD08C0](v95, v97);

      *(v93 + 72) = v94;
      *(v93 + 48) = 0xD000000000000030;
      *(v93 + 56) = 0x800000022A5953E0;
      sub_22956AD8C(v93);
      swift_setDeallocating();
      sub_22953EAE4(v93 + 32, &qword_27D87CDA0, &unk_22A57A930);
      swift_deallocClassInstance();
      sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v98 = *(v0 + 688);
      swift_willThrow();
      goto LABEL_55;
    }

    if (!*(v78 + 16) || (v84 = sub_229543DBC(1701869908, 0xE400000000000000), (v85 & 1) == 0))
    {

LABEL_54:

      type metadata accessor for HMError(0);
      *(v0 + 728) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      v99 = swift_allocObject();
      *(v99 + 32) = 0x6E6F73616552;
      *(v99 + 16) = xmmword_22A576180;
      *(v99 + 40) = 0xE600000000000000;
      sub_22A4DE1FC();

      v100 = [v107 shortDescription];
      v101 = sub_22A4DD5EC();
      v103 = v102;

      MEMORY[0x22AAD08C0](v101, v103);

      *(v99 + 72) = MEMORY[0x277D837D0];
      *(v99 + 48) = 0xD00000000000001CLL;
      *(v99 + 56) = 0x800000022A595420;
      sub_22956AD8C(v99);
      swift_setDeallocating();
      sub_22953EAE4(v99 + 32, &qword_27D87CDA0, &unk_22A57A930);
      swift_deallocClassInstance();
      sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      v104 = *(v0 + 720);
      swift_willThrow();

LABEL_55:
      goto LABEL_23;
    }

    sub_2295404B0(*(v78 + 56) + 32 * v84, v0 + 336);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_54;
    }

    v86 = *(v0 + 560);
    v87 = *(v0 + 568);
    v88 = [v83 type];
    v89 = sub_22A4DD5EC();
    v91 = v90;

    if (v86 == v89 && v87 == v91)
    {
    }

    else
    {
      v77 = sub_22A4DE60C();

      if ((v77 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    ++v62;

    if (v105 == v62)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
}

void *sub_229770AB8()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v72[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F98];
  v76 = MEMORY[0x277D84F98];
  v8 = [v1 name];
  v9 = MEMORY[0x277D837D0];
  if (v8)
  {
    v10 = v8;
    v11 = sub_22A4DD5EC();
    v13 = v12;

    v75 = v9;
    *&v74 = v11;
    *(&v74 + 1) = v13;
    sub_229543C5C(&v74, v72);
    LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
    v71 = v7;
    v14 = v73;
    v15 = __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    v18 = &v72[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_2297FF768(v18, 0x4E65636976726553, 0xEB00000000656D61, v10, &v71, v9);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v76 = v71;
  }

  else
  {
    sub_2297FCFD4(0x4E65636976726553, 0xEB00000000656D61, &v74);
    sub_22953EAE4(&v74, &unk_27D87FC20, &unk_22A578810);
  }

  v20 = [v1 uuid];
  sub_22A4DB79C();

  v21 = sub_22A4DB76C();
  v23 = v22;
  (*(v3 + 8))(v6, v2);
  v75 = v9;
  *&v74 = v21;
  *(&v74 + 1) = v23;
  sub_229543C5C(&v74, v72);
  v24 = v76;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v24;
  v26 = v73;
  v27 = __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v72[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  sub_2297FE940(*v30, v30[1], 0x696669746E656449, 0xEA00000000007265, isUniquelyReferenced_nonNull_native, &v71);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v32 = v71;
  v33 = [v1 type];
  v34 = sub_22A4DD5EC();
  v36 = v35;

  v75 = v9;
  *&v74 = v34;
  *(&v74 + 1) = v36;
  sub_229543C5C(&v74, v72);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v32;
  v38 = v73;
  v39 = __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = (&v72[-1] - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  sub_2297FE940(*v42, v42[1], 1701869908, 0xE400000000000000, v37, &v71);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v44 = v71;
  v45 = [v1 instanceID];
  v75 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *&v74 = v45;
  sub_229543C5C(&v74, v72);
  LOBYTE(v45) = swift_isUniquelyReferenced_nonNull_native();
  v71 = v44;
  v46 = v73;
  v47 = __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
  v48 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = (&v72[-1] - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  sub_2297FED80(*v50, 0x65636E6174736E49, 0xEA00000000004449, v45, &v71);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v76 = v71;
  v52 = [v1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v53 = sub_22A4DD83C();

  if (!(v53 >> 62))
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_6;
    }

LABEL_16:

    v57 = MEMORY[0x277D84F90];
LABEL_17:
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *&v74 = v57;
    sub_229543C5C(&v74, v72);
    v63 = v76;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v63;
    v65 = v73;
    v66 = __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
    v67 = *(*(v65 - 8) + 64);
    MEMORY[0x28223BE20](v66);
    v69 = (&v72[-1] - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    sub_2297FED58(*v69, 0x6574636172616843, 0xEF73636974736972, v64, &v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    return v71;
  }

  v54 = sub_22A4DE0EC();
  if (!v54)
  {
    goto LABEL_16;
  }

LABEL_6:
  *&v74 = MEMORY[0x277D84F90];
  result = sub_229583714(0, v54 & ~(v54 >> 63), 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v57 = v74;
    do
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x22AAD13F0](v56, v53);
      }

      else
      {
        v58 = *(v53 + 8 * v56 + 32);
      }

      v59 = v58;
      v60 = sub_22970FED0();

      *&v74 = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_229583714((v61 > 1), v62 + 1, 1);
        v57 = v74;
      }

      ++v56;
      *(v57 + 16) = v62 + 1;
      *(v57 + 8 * v62 + 32) = v60;
    }

    while (v54 != v56);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2297712F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_229771318, 0, 0);
}

uint64_t sub_229771318()
{
  v1 = v0[14];
  v2 = sub_2297728CC(v0[11]);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &unk_27D87D360, off_278666310);
  v0[6] = &off_283CE3BD8;
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22958D81C;
  v5 = v0[12];
  v6 = v0[13];

  return sub_229709F5C((v0 + 2), (v0 + 7), v5, v6);
}

uint64_t sub_229771444(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v6 = swift_task_alloc();
  v3[23] = v6;
  *v6 = v3;
  v6[1] = sub_2297714F0;

  return sub_22976F760(a1, a2);
}

uint64_t sub_2297714F0(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v4 = *v2;
  *(v4 + 192) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229771624, 0, 0);
  }
}

uint64_t sub_229771624()
{
  if (!*(v0 + 192))
  {
    goto LABEL_44;
  }

  v1 = *(v0 + 176);
  v2 = sub_22976ED74(*(v0 + 160), *(v0 + 168));
  *(v0 + 200) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = [*(v0 + 176) name];
    if (!v6)
    {
LABEL_9:
      v13 = swift_task_alloc();
      *(v0 + 208) = v13;
      *v13 = v0;
      v13[1] = sub_229771BDC;
      v14 = *(v0 + 176);

      return sub_2298079DC(v4, v5);
    }

    v7 = v6;
    v8 = sub_22A4DD5EC();
    v10 = v9;

    if (v8 == v4 && v5 == v10)
    {
    }

    else
    {
      v12 = sub_22A4DE60C();

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  if (!*(*(v0 + 192) + 16))
  {
    goto LABEL_43;
  }

  v16 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972);
  if ((v17 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_2295404B0(*(*(v0 + 192) + 56) + 32 * v16, v0 + 16);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_44:
    v41 = *(v0 + 8);

    return v41();
  }

  v19 = *(v0 + 144);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_43:

    goto LABEL_44;
  }

  v21 = 0;
  while (v21 < *(v19 + 16))
  {
    v22 = *(v19 + 32 + 8 * v21);
    if (*(v22 + 16))
    {
      v23 = *(v19 + 32 + 8 * v21);

      v24 = sub_229543DBC(0x65756C6156, 0xE500000000000000);
      if (v25)
      {
        sub_2295404B0(*(v22 + 56) + 32 * v24, v0 + 80);
        sub_229543C5C((v0 + 80), (v0 + 48));
        if (*(v22 + 16) && (v26 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449), (v27 & 1) != 0) && (sub_2295404B0(*(v22 + 56) + 32 * v26, v0 + 112), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0) && (v28 = *(v0 + 152), v29 = [*(v0 + 176) findCharacteristic_], v28, v29))
        {
          __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
          [v29 setLastKnownValue_];
          swift_unknownObjectRelease();
          v30 = [v29 service];
          if (v30 && (v31 = v30, v32 = [v30 accessory], v31, v32))
          {
            v42 = v29;
            v43 = v18;
            v33 = [v32 identifier];
            v34 = v32;
            v35 = v33;
            if (!v33)
            {
              sub_22A4DD5EC();
              v35 = sub_22A4DD5AC();

              v34 = v32;
            }

            v36 = v34;
            v37 = [v34 hapInstanceId];
            v38 = [v36 matchingHAPAccessoryWithServerIdentifier:v35 instanceID:v37];

            if (v38)
            {
              v39 = v38;
              v40 = [v42 characteristicForHAPAccessory_];

              if (v40)
              {
                __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
                [v40 setValue_];

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
            }

            v18 = v43;
          }

          else
          {
          }
        }

        else
        {
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 48));
      }

      else
      {
      }
    }

    if (v20 == ++v21)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229771BDC()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_229772198;
  }

  else
  {
    v3 = sub_229771CF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229771CF0()
{
  v1 = *(v0 + 200);

  if (!*(*(v0 + 192) + 16))
  {
    goto LABEL_30;
  }

  v2 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_2295404B0(*(*(v0 + 192) + 56) + 32 * v2, v0 + 16);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_31:
    v28 = *(v0 + 8);

    return v28();
  }

  v6 = *(v0 + 144);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    v9 = *(v6 + 32 + 8 * v8);
    if (*(v9 + 16))
    {
      v10 = *(v6 + 32 + 8 * v8);

      v11 = sub_229543DBC(0x65756C6156, 0xE500000000000000);
      if (v12)
      {
        sub_2295404B0(*(v9 + 56) + 32 * v11, v0 + 80);
        sub_229543C5C((v0 + 80), (v0 + 48));
        if (*(v9 + 16) && (v13 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449), (v14 & 1) != 0) && (sub_2295404B0(*(v9 + 56) + 32 * v13, v0 + 112), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0) && (v15 = *(v0 + 152), v16 = [*(v0 + 176) findCharacteristic_], v15, v16))
        {
          __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
          [v16 setLastKnownValue_];
          swift_unknownObjectRelease();
          v17 = [v16 service];
          if (v17 && (v18 = v17, v19 = [v17 accessory], v18, v19))
          {
            v29 = v16;
            v30 = v4;
            v20 = [v19 identifier];
            v21 = v19;
            v22 = v20;
            if (!v20)
            {
              sub_22A4DD5EC();
              v22 = sub_22A4DD5AC();

              v21 = v19;
            }

            v23 = v21;
            v24 = [v21 hapInstanceId];
            v25 = [v23 matchingHAPAccessoryWithServerIdentifier:v22 instanceID:v24];

            if (v25)
            {
              v26 = v25;
              v27 = [v29 characteristicForHAPAccessory_];

              if (v27)
              {
                __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
                [v27 setValue_];

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
            }

            v4 = v30;
          }

          else
          {
          }
        }

        else
        {
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 48));
      }

      else
      {
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229772198()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

id sub_229772204()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v8 = [v1 uuid];
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v11 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
    return v11;
  }

  return result;
}

uint64_t sub_229772344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_2297723F4;

  return sub_22976F760(a3, a4);
}

uint64_t sub_2297723F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_22958D650;
  }

  else
  {
    v5 = sub_229772508;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229772508()
{
  v17 = v0;
  v1 = *(v0 + 128);
  if (!v1)
  {
    v2 = *(v0 + 112);
    v1 = sub_229770AB8();
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 40) = MEMORY[0x277D837D0];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_229543C5C((v0 + 16), (v0 + 48));

  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v16 = v1;
  v5 = *(v0 + 72);
  v6 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  sub_2297FE940(*v9, v9[1], 0x4E65636976726553, 0xEB00000000656D61, v4, &v16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v10 = v16;
  *(v0 + 144) = v16;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_22958D534;
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);

  return sub_2297712F4(v10, v14, v12);
}

uint64_t sub_2297726E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_229569B30;

  return sub_229772344(a1, a2, a3, a4);
}

id sub_2297727CC()
{
  v1 = [*v0 accessory];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 home];
  v4 = [v3 backingStore];

  return v4;
}

unint64_t *sub_229772854(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_229772A2C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2297728CC(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_229772A2C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_229772854(v9, v4, v2);
  result = MEMORY[0x22AAD4E50](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_229772A2C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = result;
  v20 = 0;
  v3 = 0;
  v22 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v22 + 48) + 16 * v12);
    v14 = v13[1];
    v21[0] = *v13;
    v21[1] = v14;
    MEMORY[0x28223BE20](result);
    v17[2] = v21;

    v15 = sub_22986A5E0(sub_22959E60C, v17, &unk_283CDA2E8);

    if ((v15 & 1) == 0)
    {
      *(v19 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_229772BD4(v19, v18, v20, v22);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_229772BD4(v19, v18, v20, v22);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229772BD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
  result = sub_22A4DE40C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_2295404B0(v17 + 32 * v16, v34);
    sub_229543C5C(v34, v33);
    v21 = *(v9 + 40);
    sub_22A4DE77C();

    sub_22A4DD6BC();
    result = sub_22A4DE7BC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_229543C5C(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_229772E24(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v54 = sub_22A4DB7DC();
  v51 = *(v54 - 8);
  v7 = *(v51 + 64);
  v8 = MEMORY[0x28223BE20](v54);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v39 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
  result = sub_22A4DE40C();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v44;
  }

  v14 = 0;
  v42 = v51 + 16;
  v43 = result;
  v52 = v51 + 32;
  v15 = result + 64;
  v40 = a2;
  v41 = a4;
  while (v13)
  {
    v48 = a3;
    v16 = __clz(__rbit64(v13));
    v46 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v20 = a4[6];
    v21 = v51;
    v50 = *(v51 + 72);
    v22 = v45;
    v23 = v54;
    (*(v51 + 16))(v45, v20 + v50 * v19, v54);
    v24 = (a4[7] + 24 * v19);
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[2];
    v47 = *(v21 + 32);
    v47(v53, v22, v23);
    v12 = v43;
    v28 = *(v43 + 40);
    sub_2295AEE34(&qword_281403880, MEMORY[0x277CC95F0]);
    v49 = v26;

    v29 = v27;
    result = sub_22A4DD4EC();
    v30 = -1 << *(v12 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v15 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v12 + 48) + v33 * v50, v53, v54);
    v38 = (*(v12 + 56) + 24 * v33);
    *v38 = v49;
    v38[1] = v25;
    v38[2] = v27;
    ++*(v12 + 16);
    a3 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_32;
    }

    a2 = v40;
    a4 = v41;
    v13 = v46;
    if (v48 == 1)
    {
      return v12;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v18 = v44[v14];
    ++v17;
    if (v18)
    {
      v48 = a3;
      v16 = __clz(__rbit64(v18));
      v46 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2297731F0(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 appData];
  if (!v7)
  {
    v8 = [a1 uuid];
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v7 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
  }

  if (qword_281401968 != -1)
  {
    swift_once();
  }

  v11 = sub_22A4DD5AC();
  v12 = [v7 applicationDataForIdentifier_];

  if (!v12)
  {
    return 0;
  }

  v13 = sub_22A4DD49C();

  v14 = sub_22976EEB8(v13);

  if (!v14)
  {
    return 0;
  }

  v15 = sub_22A4DD5EC();
  if (!*(v14 + 16))
  {

    goto LABEL_13;
  }

  v17 = sub_229543DBC(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_2295404B0(*(v14 + 56) + 32 * v17, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if (swift_dynamicCast())
  {
    return v21[1];
  }

  else
  {
    return 0;
  }
}

id sub_2297734A8(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 appData];
  if (!v7)
  {
    result = [a1 uuid];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    sub_22A4DB79C();

    v10 = objc_allocWithZone(HMDApplicationData);
    v11 = sub_22A4DB77C();
    v7 = [v10 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
  }

  if (qword_281401968 != -1)
  {
    swift_once();
  }

  v12 = sub_22A4DD5AC();
  v13 = [v7 applicationDataForIdentifier_];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_22A4DD49C();

  v15 = sub_22976EEB8(v14);

  if (!v15)
  {
    return 0;
  }

  v16 = sub_22A4DD5EC();
  if (!*(v15 + 16))
  {

    goto LABEL_14;
  }

  v18 = sub_229543DBC(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v18, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if (swift_dynamicCast())
  {
    return v21[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22977376C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = a1;
  v4 = 0x676E696E6E7572;
  if (a1 != 2)
  {
    v4 = 0x646570706F7473;
  }

  v5 = 0xD000000000000014;
  v6 = 0x800000022A589210;
  if (!a1)
  {
    v5 = 0x7472617453746F6ELL;
    v6 = 0xEA00000000006465;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v10 = a2 == 2;
    v2 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    if (a2 == 2)
    {
      v11 = 0x676E696E6E7572;
    }

    else
    {
      v11 = 0x646570706F7473;
    }
  }

  else
  {
    v9 = 0x800000022A589210;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v11 = 0x7472617453746F6ELL;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_22A4DE60C();
  }

  return v13 & 1;
}

uint64_t sub_2297738A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696E6E7572;
    }

    else
    {
      v4 = 0x6164696C61766E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E69726170657270;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696E6E7572;
  if (a2 != 2)
  {
    v8 = 0x6164696C61766E69;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v2 = 0x6E69726170657270;
    v6 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22A4DE60C();
  }

  return v11 & 1;
}

uint64_t sub_2297739FC(uint64_t a1)
{
  v2 = sub_22A4DB21C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_22A4DB1DC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_229773AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_229564F88(a1, v20 - v9, &unk_27D87D8F0, &qword_22A578D70);
  v11 = sub_22A4DD9DC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22953EAE4(v10, &unk_27D87D8F0, &qword_22A578D70);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_22A4DD8CC();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22A4DD9CC();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_229773D14()
{
  v1 = v0[14];

  v2 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_22953EAE4((v0 + 21), &qword_27D880AA0, &qword_22A5824F0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229773D98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_229773DB8, v1, 0);
}

uint64_t sub_229773DB8()
{
  v14 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8A8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2295A3E30(*(v5 + 112), *(v5 + 120), &v13);
    _os_log_impl(&dword_229538000, v3, v4, "[Register:%s] registering new service", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v9 = v0[2];
  v8 = v0[3];
  v10 = *(v8 + 120);
  v0[4] = v10;
  v11 = swift_task_alloc();
  v0[5] = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;

  return MEMORY[0x2822009F8](sub_229773F60, v10, 0);
}

uint64_t sub_229773F60()
{
  v1 = v0[5];
  v2 = *(v0[4] + 120);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = &unk_22A5824D8;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = &unk_22A5824E0;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22977407C;

  return v8();
}

void sub_22977407C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[4];

    MEMORY[0x2822009F8](sub_2297741C4, v7, 0);
  }
}

uint64_t sub_2297741C4()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22977422C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_229774250, a1, 0);
}

uint64_t sub_229774250()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_beginAccess();

  MEMORY[0x22AAD09E0](v3);
  if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22A4DD85C();
  }

  v5 = v0[20];
  v4 = v0[21];
  sub_22A4DD87C();
  swift_endAccess();
  v6 = *(v5 + 120);
  v0[22] = v6;

  return MEMORY[0x2822009F8](sub_229774344, v6, 0);
}

uint64_t sub_229774344()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 216) = *(v1 + 112);
  sub_22A4DE31C();

  v3 = *(v0 + 152);
  *(v0 + 184) = *(v0 + 144);
  *(v0 + 192) = v3;

  return MEMORY[0x2822009F8](sub_229774404, v2, 0);
}

uint64_t sub_229774404()
{
  v1 = *(*(v0 + 160) + 120);
  *(v0 + 200) = v1;

  return MEMORY[0x2822009F8](sub_22977447C, v1, 0);
}

uint64_t sub_22977447C()
{
  if (*(*(v0 + 200) + 112) == 2)
  {
    v1 = *(v0 + 160);

    v2 = sub_2297745B4;
    v3 = v1;
  }

  else
  {
    v4 = *(v0 + 160);
    *(v0 + 217) = sub_22A4DE60C() & 1;

    v2 = sub_2297749A4;
    v3 = v4;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_2297745B4()
{
  v32 = v0;
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_229564F88(v1 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 192);
    v3 = *(v0 + 168);
    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D8AB8A8);

    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDD0C();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 192);
    if (v7)
    {
      v9 = *(v0 + 184);
      v10 = *(v0 + 168);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2295A3E30(*(v10 + 112), *(v10 + 120), &v31);
      *(v11 + 12) = 2080;
      v13 = sub_2295A3E30(v9, v8, &v31);

      *(v11 + 14) = v13;
      _os_log_impl(&dword_229538000, v5, v6, "[Register:%s] activating service immediately (current state=%s)", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    else
    {
      v24 = *(v0 + 192);
    }

    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = __swift_project_boxed_opaque_existential_0((v0 + 16), v26);
    v28 = swift_task_alloc();
    *(v0 + 208) = v28;
    *v28 = v0;
    v28[1] = sub_229774EF0;
    v30 = *(v0 + 160);
    v29 = *(v0 + 168);

    return sub_229775000(v29, v27, v26, v25);
  }

  else
  {
    v14 = *(v0 + 192);

    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 168);
    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D8AB8A8);

    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 168);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2295A3E30(*(v19 + 112), *(v19 + 120), &v31);
      _os_log_impl(&dword_229538000, v17, v18, "[Register:%s] failed to retrieve device controller; unable to activate!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_2297749A4()
{
  v42 = v0;
  if (*(v0 + 217) == 1)
  {
    v1 = *(v0 + 160);
    swift_beginAccess();
    sub_229564F88(v1 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    if (*(v0 + 80))
    {
      sub_229557188((v0 + 56), v0 + 16);
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 192);
      v3 = *(v0 + 168);
      v4 = sub_22A4DD07C();
      __swift_project_value_buffer(v4, qword_27D8AB8A8);

      v5 = sub_22A4DD05C();
      v6 = sub_22A4DDD0C();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 192);
      if (v7)
      {
        v9 = *(v0 + 184);
        v10 = *(v0 + 168);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v41 = v12;
        *v11 = 136315394;
        *(v11 + 4) = sub_2295A3E30(*(v10 + 112), *(v10 + 120), &v41);
        *(v11 + 12) = 2080;
        v13 = sub_2295A3E30(v9, v8, &v41);

        *(v11 + 14) = v13;
        _os_log_impl(&dword_229538000, v5, v6, "[Register:%s] activating service immediately (current state=%s)", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v12, -1, -1);
        MEMORY[0x22AAD4E50](v11, -1, -1);
      }

      else
      {
        v34 = *(v0 + 192);
      }

      v36 = *(v0 + 40);
      v35 = *(v0 + 48);
      v37 = __swift_project_boxed_opaque_existential_0((v0 + 16), v36);
      v38 = swift_task_alloc();
      *(v0 + 208) = v38;
      *v38 = v0;
      v38[1] = sub_229774EF0;
      v40 = *(v0 + 160);
      v39 = *(v0 + 168);

      return sub_229775000(v39, v37, v36, v35);
    }

    v27 = *(v0 + 192);

    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 168);
    v29 = sub_22A4DD07C();
    __swift_project_value_buffer(v29, qword_27D8AB8A8);

    v17 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v30))
    {
      v31 = *(v0 + 168);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2295A3E30(*(v31 + 112), *(v31 + 120), &v41);
      _os_log_impl(&dword_229538000, v17, v30, "[Register:%s] failed to retrieve device controller; unable to activate!", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 192);
    v15 = *(v0 + 168);
    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D8AB8A8);

    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDD0C();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 192);
    if (v19)
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 168);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + 112), *(v22 + 120), &v41);
      *(v23 + 12) = 2080;
      v25 = sub_2295A3E30(v21, v20, &v41);

      *(v23 + 14) = v25;
      _os_log_impl(&dword_229538000, v17, v18, "[Register:%s] pending until server can run (current state=%s)", v23, 0x16u);
      swift_arrayDestroy();
LABEL_16:
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      goto LABEL_17;
    }

    v26 = *(v0 + 192);
  }

LABEL_17:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_229774EF0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229663A04, v2, 0);
}

uint64_t sub_229775000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22A4DCD0C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297750C8, v4, 0);
}

uint64_t sub_2297750C8()
{
  v14 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  v0[10] = __swift_project_value_buffer(v2, qword_27D8AB8A8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2295A3E30(*(v5 + 112), *(v5 + 120), &v13);
    _os_log_impl(&dword_229538000, v3, v4, "[Activate:%s] Creating endpoint description", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_229775298;
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[3];

  return sub_2296CC70C(v11, v9, v10);
}

uint64_t sub_229775298(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_2297754FC;
  }

  else
  {
    v8 = sub_2297753CC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2297753CC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_22977543C, v2, 0);
}

void sub_22977543C()
{
  v1 = v0[13];
  v2 = v0[4];
  v3 = v0[5];
  sub_22977B050(v0[2], v0[12]);
  if (v1)
  {
  }

  else
  {
    v4 = v0[6];
    v5 = v0[2];
    v6 = *(v5 + 192);
    v0[14] = v6;
    v0[15] = *(v5 + 200);
    sub_2295A1C30(v6);

    MEMORY[0x2822009F8](sub_2297756C8, v4, 0);
  }
}

uint64_t sub_2297754FC()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[2];

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2295A3E30(*(v9 + 112), *(v9 + 120), &v18);
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_229538000, v5, v6, "[Activate:%s] FAILED to create service description; error %@", v10, 0x16u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2297756C8()
{
  v37 = v0;
  if (v0[14])
  {
    v1 = v0[2];

    return MEMORY[0x2822009F8](sub_229775AEC, v1, 0);
  }

  else
  {
    v2 = v0[10];
    v3 = v0[2];

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v36 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2295A3E30(*(v6 + 112), *(v6 + 120), &v36);
      _os_log_impl(&dword_229538000, v4, v5, "[Activate:%s] Ready! Service has no preparation handler set; starting!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AAD4E50](v8, -1, -1);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[2];

    swift_unknownObjectRetain();
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCCC();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[12];
    if (v14)
    {
      v16 = v0[9];
      v33 = v0[7];
      v34 = v0[8];
      v18 = v0[4];
      v17 = v0[5];
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(*(v19 + 112), *(v19 + 120), &v36);
      *(v20 + 12) = 2080;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_22A4DC5BC();
      sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408]);
      v21 = sub_22A4DE5CC();
      v23 = v22;
      swift_unknownObjectRelease();
      (*(v34 + 8))(v16, v33);
      v24 = sub_2295A3E30(v21, v23, &v36);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_229538000, v12, v13, "[Activate:%s] Adding endpoint to the controller on %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    else
    {
      v25 = v0[12];
      swift_unknownObjectRelease();
    }

    v26 = *(MEMORY[0x277D171C8] + 4);
    v27 = swift_task_alloc();
    v0[20] = v27;
    *v27 = v0;
    v27[1] = sub_22977651C;
    v28 = v0[12];
    v29 = v0[4];
    v30 = v0[5];
    v31 = v0[3];

    return MEMORY[0x282171468](v28, v29, v30);
  }
}

uint64_t sub_229775AEC()
{
  v1 = v0[2];
  if (*(v1 + 184) <= 1u && *(v1 + 184))
  {
  }

  else
  {
    v2 = sub_22A4DE60C();

    if ((v2 & 1) == 0)
    {
      v3 = v0[2];
      *(v1 + 184) = 1;
      v4 = *(v3 + 208);
      v0[16] = v4;
      if (v4)
      {
        v0[17] = *(v0[2] + 216);

        v9 = (v4 + *v4);
        v5 = v4[1];
        v6 = swift_task_alloc();
        v0[18] = v6;
        *v6 = v0;
        v6[1] = sub_229775CEC;

        return v9(1);
      }
    }
  }

  v8 = v0[6];

  return MEMORY[0x2822009F8](sub_229775E64, v8, 0);
}

uint64_t sub_229775CEC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229775DFC, v2, 0);
}

uint64_t sub_229775DFC()
{
  v1 = v0[17];
  sub_2295571A0(v0[16]);
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_229775E64, v2, 0);
}

uint64_t sub_229775E64()
{
  v14 = v0;
  v1 = v0[10];
  v2 = v0[2];

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2295A3E30(*(v5 + 112), *(v5 + 120), &v13);
    _os_log_impl(&dword_229538000, v3, v4, "[Activate:%s] preparing service", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v8 = v0[15];
  v12 = (v0[14] + *v0[14]);
  v9 = *(v0[14] + 4);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_229776028;

  return v12();
}

uint64_t sub_229776028()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229776138, v2, 0);
}

uint64_t sub_229776138()
{
  v39 = v0;
  v1 = v0[10];
  v2 = v0[2];

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[14];
  v6 = v0[15];
  if (v5)
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2295A3E30(*(v8 + 112), *(v8 + 120), &v38);
    _os_log_impl(&dword_229538000, v3, v4, "[Activate:%s] --> ready! Service prepared.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  sub_2295571A0(v7);

  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[2];

  swift_unknownObjectRetain();
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[12];
  if (v16)
  {
    v18 = v0[9];
    v35 = v0[7];
    v36 = v0[8];
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[2];
    v22 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v22 = 136315394;
    *(v22 + 4) = sub_2295A3E30(*(v21 + 112), *(v21 + 120), &v38);
    *(v22 + 12) = 2080;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_22A4DC5BC();
    sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408]);
    v23 = sub_22A4DE5CC();
    v25 = v24;
    swift_unknownObjectRelease();
    (*(v36 + 8))(v18, v35);
    v26 = sub_2295A3E30(v23, v25, &v38);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_229538000, v14, v15, "[Activate:%s] Adding endpoint to the controller on %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  else
  {
    v27 = v0[12];
    swift_unknownObjectRelease();
  }

  v28 = *(MEMORY[0x277D171C8] + 4);
  v29 = swift_task_alloc();
  v0[20] = v29;
  *v29 = v0;
  v29[1] = sub_22977651C;
  v30 = v0[12];
  v31 = v0[4];
  v32 = v0[5];
  v33 = v0[3];

  return MEMORY[0x282171468](v30, v31, v32);
}

uint64_t sub_22977651C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 168) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = *(v2 + 48);
    v6 = sub_229776E6C;
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = sub_229776658;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229776658()
{
  v1 = v0[2];
  if (*(v1 + 184) == 2)
  {

    goto LABEL_8;
  }

  v2 = sub_22A4DE60C();

  if ((v2 & 1) != 0 || (v3 = v0[2], *(v1 + 184) = 2, v4 = *(v3 + 208), (v0[22] = v4) == 0))
  {
LABEL_8:
    v8 = v0[6];

    return MEMORY[0x2822009F8](sub_2297769CC, v8, 0);
  }

  v0[23] = *(v0[2] + 216);

  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_229776854;

  return v9(2);
}

uint64_t sub_229776854()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229776964, v2, 0);
}

uint64_t sub_229776964()
{
  v1 = v0[23];
  sub_2295571A0(v0[22]);
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_2297769CC, v2, 0);
}

uint64_t sub_2297769CC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 48) + 128), *(*(v0 + 48) + 152));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_229776A6C;

  return sub_2297A4528();
}

uint64_t sub_229776A6C(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_229776B84, v3, 0);
}

uint64_t sub_229776B84(uint64_t a1, uint64_t a2)
{
  v3 = v2[26];
  v4 = v2[6];
  v5 = v2[2];
  sub_229780CE4(&qword_27D880AA8, a2, type metadata accessor for PrimaryResidentMatterServer);
  v6 = swift_task_alloc();
  v2[27] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  v2[28] = v8;
  *v8 = v2;
  v8[1] = sub_229776CBC;

  return MEMORY[0x282200740]();
}

void sub_229776CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[26];
    v6 = v2[27];
    v7 = v2[6];

    MEMORY[0x2822009F8](sub_229776E04, v7, 0);
  }
}

uint64_t sub_229776E04()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229776E6C()
{
  v21 = v0;
  v1 = v0[21];
  v2 = v0[10];
  v3 = v0[2];

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDD0C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[12];
  if (v7)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2295A3E30(*(v10 + 112), *(v10 + 120), &v20);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_229538000, v5, v6, "[Activate:%s] FAILED to add server endpoint; error %@", v11, 0x16u);
    sub_22953EAE4(v12, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v0[12];
    swift_unknownObjectRelease();
  }

  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_229777054(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229777078, v2, 0);
}

uint64_t sub_229777078()
{
  v15 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8A8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2295A3E30(*(v5 + 112), *(v5 + 120), &v14);
    _os_log_impl(&dword_229538000, v3, v4, "[CheckMatterDevice:%s] checking matter device", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = *(v8 + 120);
  v0[5] = v11;
  v12 = swift_task_alloc();
  v0[6] = v12;
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;

  return MEMORY[0x2822009F8](sub_229777228, v11, 0);
}

uint64_t sub_229777228()
{
  v1 = v0[6];
  v2 = *(v0[5] + 120);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = &unk_22A582558;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = &unk_22A582560;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_229777344;

  return v8();
}

void sub_229777344()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[5];

    MEMORY[0x2822009F8](sub_22977748C, v7, 0);
  }
}

uint64_t sub_22977748C()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2297774F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229777514, a2, 0);
}

uint64_t sub_229777514(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_229780CE4(&qword_27D880AA8, a2, type metadata accessor for PrimaryResidentMatterServer);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  v5 = *(v2 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  v6 = *(MEMORY[0x277D859B8] + 4);
  v7 = swift_task_alloc();
  *(v2 + 48) = v7;
  *v7 = v2;
  v7[1] = sub_229777648;

  return MEMORY[0x282200740]();
}

void sub_229777648()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_229580884, v6, 0);
  }
}

uint64_t sub_229777788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977782C, a4, 0);
}

uint64_t sub_22977782C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v2;
  v8 = v4;

  sub_229773AF0(v1, &unk_22A582588, v7);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22977795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_22953ED8C;

  return sub_22977C9D8(a5, a6, a4);
}

uint64_t sub_229777A3C()
{
  v0[3] = *(v0[2] + 120);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_229781094;
  v2 = v0[2];

  return sub_2297781D4(v2);
}

uint64_t sub_229777B08()
{
  v0[3] = *(v0[2] + 120);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22962AC30;
  v2 = v0[2];

  return sub_229778620(v2);
}

uint64_t sub_229777BB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_229777BD8, a1, 0);
}

uint64_t sub_229777BD8()
{
  v1 = v0[10];
  sub_22957F1C4(v0[11], (v0 + 2));
  swift_beginAccess();
  sub_229780ECC((v0 + 2), v1 + 168);
  swift_endAccess();
  v0[12] = *(v1 + 120);

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_229777CB4;
  v3 = v0[10];

  return sub_229778DD8(v3);
}

uint64_t sub_229777CB4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_229777DC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229777DE8, a1, 0);
}

uint64_t sub_229777DE8()
{
  v1 = v0[3];
  v2 = *(v0[2] + 120);
  v0[4] = v2;
  v3 = *__swift_project_boxed_opaque_existential_0(v1, v1[3]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22976CCF4;
  v5 = v0[2];

  return sub_22977FECC(v5, v3, v2);
}

uint64_t sub_229777ED0()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_229777F9C()
{
  *v0;
  *v0;
  *v0;
  sub_22A4DD6BC();
}

uint64_t sub_229778054()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_22977811C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_229780340();
  *a2 = result;
  return result;
}

void sub_22977814C(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7472617453746F6ELL;
  v4 = 0x676E696E6E7572;
  if (*v1 != 2)
  {
    v4 = 0x646570706F7473;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000022A589210;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2297781D4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2297781F4, v1, 0);
}

uint64_t sub_2297781F4()
{
  if (*(v0[6] + 112) - 1 >= 2)
  {
    v7 = v0[5];

    return MEMORY[0x2822009F8](sub_229778358, v7, 0);
  }

  else
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v1 = sub_22A4DD07C();
    __swift_project_value_buffer(v1, qword_27D8AB8A8);
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDD0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_229538000, v2, v3, "[Start] MatterServer is already started; ignoring duplicate call.", v4, 2u);
      MEMORY[0x22AAD4E50](v4, -1, -1);
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_229778358()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v0[7] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_2297783E0, v2, 0);
}

uint64_t sub_2297783E0()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    v9 = v0[7];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB8A8);
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_229538000, v4, v5, "[Start] %ld services currently registered.", v6, 0xCu);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v7 = v0[5];
  v8 = v0[6];

  *(v8 + 112) = 1;

  return MEMORY[0x2822009F8](sub_229778548, v7, 0);
}

uint64_t sub_229778548()
{
  v1 = __swift_project_boxed_opaque_existential_0((*(v0 + 40) + 128), *(*(v0 + 40) + 152));
  v2 = *v1;
  *(v0 + 64) = *v1;

  return MEMORY[0x2822009F8](sub_2297785BC, v2, 0);
}

uint64_t sub_2297785BC()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_22977B5C8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_229778620(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_229778640, v1, 0);
}

uint64_t sub_229778640()
{
  v15 = v0;
  v1 = *(v0 + 40);
  if (*(v1 + 112) == 3)
  {
    v2 = *(v0 + 40);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
      v13 = *(v0 + 40);
    }

    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D8AB8A8);

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCDC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 56) = *(v1 + 112);
      sub_22A4DE31C();
      v8 = sub_2295A3E30(*(v0 + 16), *(v0 + 24), &v14);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_229538000, v4, v5, "[Stop] skipped; nothing to stop (current state %s).", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v1 + 112) = 3;
    v11 = swift_task_alloc();
    *(v0 + 48) = v11;
    *v11 = v0;
    v11[1] = sub_22969AAF8;
    v12 = *(v0 + 32);

    return sub_229778890();
  }
}

uint64_t sub_2297788B0()
{
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22A4DD07C();
  v0[9] = __swift_project_value_buffer(v2, qword_27D8AB8A8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    v8 = *(v6 + 112);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v14 = *(v6 + 112);
      }

      v9 = sub_22A4DE0EC();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v0[8];
    *(v7 + 4) = v9;

    _os_log_impl(&dword_229538000, v3, v4, "[Stop] stopping %ld services.", v7, 0xCu);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
    v11 = v0[8];
  }

  v12 = __swift_project_boxed_opaque_existential_0((v0[8] + 128), *(v0[8] + 152));
  v0[10] = v12;
  v13 = *v12;

  return MEMORY[0x2822009F8](sub_229778A58, v13, 0);
}

uint64_t sub_229778A58()
{
  v1 = *(v0 + 64);
  v2 = **(v0 + 80);
  sub_2297A43C0();

  return MEMORY[0x2822009F8](sub_229778AC8, v1, 0);
}

uint64_t sub_229778AC8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = sub_229780CE4(&qword_27D880AA8, a2, type metadata accessor for PrimaryResidentMatterServer);
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  *v6 = v2;
  v6[1] = sub_229778BD0;
  v7 = *(v2 + 64);
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v6, v8, v9, v3, v4, &unk_22A5825E0, v7, v10);
}

uint64_t sub_229778BD0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229778CE0, v2, 0);
}

uint64_t sub_229778CE0()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x277D84F90];

  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_229538000, v4, v5, "[Stop] complete.", v6, 2u);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_229778DD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_229778DF8, v1, 0);
}

uint64_t sub_229778DF8()
{
  v1 = v0[3];
  if (*(v1 + 112) > 1u)
  {
    if (*(v1 + 112) == 2)
    {
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v9 = sub_22A4DD07C();
      __swift_project_value_buffer(v9, qword_27D8AB8A8);
      v10 = sub_22A4DD05C();
      v11 = sub_22A4DDCDC();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_20;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "[Controller] controller received but it already had one?";
      goto LABEL_19;
    }
  }

  else if (*(v1 + 112))
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8AB8A8);
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_229538000, v3, v4, "[Controller] Moving to running!", v5, 2u);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    *(v1 + 112) = 2;
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_22958101C;
    v7 = v0[2];

    return sub_2297790E0();
  }

  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DD07C();
  __swift_project_value_buffer(v14, qword_27D8AB8A8);
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCDC();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_20;
  }

  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = "[Controller] MatterServer is not started yet; controller should not be ready!";
LABEL_19:
  _os_log_impl(&dword_229538000, v10, v11, v13, v12, 2u);
  MEMORY[0x22AAD4E50](v12, -1, -1);
LABEL_20:

  v15 = v0[1];

  return v15();
}

uint64_t sub_229779100()
{
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_22A4DD07C();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_27D8AB8A8);

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    v8 = *(v6 + 112);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v26 = *(v6 + 112);
      }

      v9 = sub_22A4DE0EC();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 144);
    *(v7 + 4) = v9;

    _os_log_impl(&dword_229538000, v3, v4, "[Activate] activating %ld services.", v7, 0xCu);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
    v11 = *(v0 + 144);
  }

  v12 = *(v0 + 144);
  swift_beginAccess();
  sub_229564F88(v12 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
  if (*(v0 + 80))
  {
    v13 = *(v0 + 144);
    sub_229557188((v0 + 56), v0 + 16);
    v15 = sub_229780CE4(&qword_27D880AA8, v14, type metadata accessor for PrimaryResidentMatterServer);
    v16 = swift_task_alloc();
    *(v0 + 160) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v0 + 16;
    v17 = *(MEMORY[0x277D858E8] + 4);
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_22977945C;
    v19 = MEMORY[0x277D84F78] + 8;
    v20 = MEMORY[0x277D84F78] + 8;
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v18, v19, v20, v13, v15, &unk_22A5825A8, v16, v21);
  }

  else
  {
    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "[Activate] .. failed to get a device controller!", v24, 2u);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22977945C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_229779588, v3, 0);
}

uint64_t sub_229779588()
{
  v1 = v0[19];
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[Activate] complete.", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_229779660()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2297796D0()
{
  result = qword_27D880A98;
  if (!qword_27D880A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880A98);
  }

  return result;
}

uint64_t sub_229779724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297797D0, a3, 0);
}

uint64_t sub_2297797D0()
{
  v1 = *(v0 + 104);
  result = swift_beginAccess();
  v3 = *(v1 + 112);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v27 = *(v1 + 112);
    }

    v28 = *(v1 + 112);
    result = sub_22A4DE0EC();
    v3 = v28;
    v4 = result;
    if (!result)
    {
LABEL_18:
      v25 = *(v0 + 112);
      v24 = *(v0 + 120);

      v26 = *(v0 + 8);

      return v26();
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (v4 >= 1)
  {
    v30 = **(v0 + 96);
    v29 = v3 & 0xC000000000000001;
    v5 = v3;

    v6 = v5;
    v7 = 0;
    v31 = v4;
    v32 = v5;
    while (1)
    {
      if (v29)
      {
        v10 = MEMORY[0x22AAD13F0](v7, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v7 + 32);
      }

      v11 = *(v0 + 112);
      v12 = *(v0 + 120);
      v13 = *(v0 + 104);
      v14 = sub_22A4DD9DC();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v12, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v10;
      sub_229564F88(v12, v11, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v11) = (*(v15 + 48))(v11, 1, v14);

      v18 = *(v0 + 112);
      if (v11 == 1)
      {
        sub_22953EAE4(*(v0 + 112), &unk_27D87D8F0, &qword_22A578D70);
        if (!*v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22A4DD9CC();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_14:
          v20 = 0;
          v22 = 0;
          goto LABEL_15;
        }
      }

      v19 = v16[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_22A4DD8CC();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_15:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_22A5825F0;
      *(v23 + 24) = v16;

      if (v22 | v20)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v8 = 0;
      }

      ++v7;
      v9 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v8;
      *(v0 + 88) = v30;
      swift_task_create();

      sub_22953EAE4(v9, &unk_27D87D8F0, &qword_22A578D70);
      v6 = v32;
      if (v31 == v7)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229779B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x2822009F8](sub_229779B9C, a4, 0);
}

uint64_t sub_229779B9C()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_229564F88(v1 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);

  return MEMORY[0x2822009F8](sub_229779C30, 0, 0);
}

uint64_t sub_229779C30()
{
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_229779D54;
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);

    return sub_22977A220(v5, v3, v2, v1);
  }

  else
  {
    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    v8 = *(v0 + 128);

    return MEMORY[0x2822009F8](sub_229779EB8, v8, 0);
  }
}

uint64_t sub_229779D54()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229779E50, 0, 0);
}

uint64_t sub_229779E50()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_229779EB8, v1, 0);
}

uint64_t sub_229779EB8()
{
  v1 = v0[16];
  if (*(v1 + 184) > 2u)
  {
  }

  else
  {
    v2 = sub_22A4DE60C();

    if ((v2 & 1) == 0)
    {
      v3 = v0[16];
      *(v1 + 184) = 3;
      v4 = *(v3 + 208);
      v0[18] = v4;
      if (v4)
      {
        v0[19] = *(v0[16] + 216);

        v9 = (v4 + *v4);
        v5 = v4[1];
        v6 = swift_task_alloc();
        v0[20] = v6;
        *v6 = v0;
        v6[1] = sub_22977A0B0;

        return v9(3);
      }
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_22977A0B0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22977A1C0, v2, 0);
}

uint64_t sub_22977A1C0()
{
  v1 = v0[19];
  sub_2295571A0(v0[18]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22977A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v7 = sub_22A4DDD7C();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = sub_22A4DDD5C();
  v5[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = *(*(sub_22A4DD29C() - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977A348, a1, 0);
}

uint64_t sub_22977A348()
{
  v1 = v0[13];
  v2 = v0[9];
  swift_beginAccess();
  v0[20] = *(v2 + 168);
  v0[21] = *(v2 + 176);
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_22977A3DC, v1, 0);
}

uint64_t sub_22977A3DC()
{
  v31 = v0;
  v1 = v0[20];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v0[21];
  v3 = v0[11];
  v4 = v0[12];
  v0[5] = v1;
  v0[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AC0, &qword_22A582608);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    v29 = v0[7];
    v0[22] = v29;
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v5 = v0[9];
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8AB8A8);

    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[9];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2295A3E30(*(v9 + 112), *(v9 + 120), &v30);
      _os_log_impl(&dword_229538000, v7, v8, "[Invalidate:%s] Removing endpoint from the controller", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }

    v13 = v0[18];
    v12 = v0[19];
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[15];
    v28 = v0[14];
    sub_229562F68(0, &qword_281401980, 0x277D85C78);
    sub_22A4DD28C();
    v0[8] = MEMORY[0x277D84F90];
    sub_229780CE4(&qword_281401990, 255, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
    sub_22955A264();
    sub_22A4DE03C();
    (*(v16 + 104))(v15, *MEMORY[0x277D85260], v28);
    v17 = sub_22A4DDDCC();
    v0[23] = v17;
    v18 = *(MEMORY[0x277D171D0] + 4);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_22977A7EC;
    v20 = v0[11];
    v21 = v0[12];
    v22 = v0[10];

    return MEMORY[0x282171470](v29, v17, nullsub_1, 0, v20, v21);
  }

  else
  {
LABEL_10:
    v24 = v0[18];
    v23 = v0[19];
    v25 = v0[16];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_22977A7EC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22977A914, v3, 0);
}

uint64_t sub_22977A914()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22977A988, v1, 0);
}

uint64_t sub_22977A988()
{
  v1 = v0[22];
  swift_unknownObjectRelease();
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22977AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977AAB4, a3, 0);
}

uint64_t sub_22977AAB4()
{
  v1 = *(v0 + 144);
  result = swift_beginAccess();
  v3 = *(v1 + 112);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v29 = *(v1 + 112);
    }

    v30 = *(v1 + 112);
    result = sub_22A4DE0EC();
    v3 = v30;
    v4 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v32 = **(v0 + 136);
  v31 = v3 & 0xC000000000000001;
  v5 = v3;

  v6 = v5;
  v7 = 0;
  v33 = v4;
  v34 = v5;
  do
  {
    v35 = v7;
    if (v31)
    {
      v10 = MEMORY[0x22AAD13F0](v7, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v7 + 32);
    }

    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = sub_22A4DD9DC();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    sub_22957F1C4(v14, v0 + 16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    sub_229557188((v0 + 16), (v17 + 4));
    v17[9] = v13;
    v17[10] = v10;
    sub_229564F88(v11, v12, &unk_27D87D8F0, &qword_22A578D70);
    LODWORD(v11) = (*(v16 + 48))(v12, 1, v15);

    v19 = *(v0 + 160);
    if (v11 == 1)
    {
      sub_22953EAE4(*(v0 + 160), &unk_27D87D8F0, &qword_22A578D70);
    }

    else
    {
      sub_22A4DD9CC();
      (*(v16 + 8))(v19, v15);
    }

    if (*v18)
    {
      v20 = v17[3];
      v21 = *v18;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_22A4DD8CC();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = &unk_22A5825C0;
    *(v25 + 24) = v17;

    if (v24 | v22)
    {
      v8 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v22;
      *(v0 + 80) = v24;
    }

    else
    {
      v8 = 0;
    }

    v7 = v35 + 1;
    v9 = *(v0 + 168);
    *(v0 + 112) = 1;
    *(v0 + 120) = v8;
    *(v0 + 128) = v32;
    swift_task_create();

    sub_22953EAE4(v9, &unk_27D87D8F0, &qword_22A578D70);
    v6 = v34;
  }

  while (v33 != v35 + 1);

LABEL_19:
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22977AE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22977AEA0, 0, 0);
}

uint64_t sub_22977AEA0()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22977AF5C;
  v7 = v0[3];
  v6 = v0[4];

  return sub_229775000(v6, v4, v3, v2);
}

uint64_t sub_22977AF5C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22977B050(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_beginAccess();
  v5 = *(a1 + 168);
  *(a1 + 168) = a2;
  *(a1 + 176) = AssociatedConformanceWitness;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_22977B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977B204, a4, 0);
}

uint64_t sub_22977B204()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_22A4DD9DC();
    v5 = *(v4 - 8);
    v26 = *(v5 + 56);
    v24 = v4;
    v25 = (v5 + 48);
    v23 = (v5 + 8);
    do
    {
      v29 = v2;
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v26(v8, 1, 1, v4);
      v28 = v3;
      sub_22957F1C4(v3, v0 + 16);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v11;
      sub_229557188((v0 + 16), (v12 + 5));
      v12[10] = v10;
      sub_229564F88(v8, v9, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v9) = (*v25)(v9, 1, v4);

      v14 = *(v0 + 144);
      if (v9 == 1)
      {
        sub_22953EAE4(*(v0 + 144), &unk_27D87D8F0, &qword_22A578D70);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22A4DD9CC();
        (*v23)(v14, v4);
        if (*v13)
        {
LABEL_9:
          v17 = v12[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_22A4DD8CC();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:

      if (v16 | v15)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 152);
      *(v0 + 88) = 1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v27;
      swift_task_create();

      sub_22953EAE4(v7, &unk_27D87D8F0, &qword_22A578D70);
      v3 = v28 + 40;
      v2 = v29 - 1;
      v4 = v24;
    }

    while (v29 != 1);
  }

  v20 = *(v0 + 144);
  v19 = *(v0 + 152);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22977B4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = *__swift_project_boxed_opaque_existential_0(a5, a5[3]);
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_2297810A0;

  return sub_22977C9D8(v9, a6, a4);
}

void sub_22977B5C8()
{
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8C0);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[START]", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v0[16] = &off_283CE3CC8;
  swift_unknownObjectWeakAssign();
  v5 = v0[17];
  v6 = swift_allocObject();
  swift_weakInit();
  v24 = sub_229780D2C;
  v25 = v6;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2297739FC;
  v23 = &block_descriptor_30;
  v7 = _Block_copy(&v20);

  v8 = [v5 addObserverForName:@"HMDAccessoryConnectedNotification" object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1D0, &qword_22A578100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22A576180;
  *(v9 + 56) = swift_getObjectType();
  *(v9 + 32) = v8;
  v10 = v0[18];
  v0[18] = v9;
  swift_unknownObjectRetain();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong accessoryBrowser];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = [v13 chipAccessoryServerBrowser];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = swift_allocObject();
      swift_weakInit();
      v24 = sub_229780D34;
      v25 = v15;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_229566C20;
      v23 = &block_descriptor_88;
      v16 = _Block_copy(&v20);

      [v14 waitForDeviceControllerWithCompletion_];
      _Block_release(v16);
      swift_unknownObjectRelease();

      return;
    }
  }

  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_229538000, v17, v18, "Unable to get the Matter server browser! Matter Services will not work.", v19, 2u);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_22977B998(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v74 - v9;
  v11 = sub_22A4DB21C();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v16 = sub_22A4DD07C();
  v17 = __swift_project_value_buffer(v16, qword_27D8AB8C0);
  (*(v12 + 16))(v15, a1, v11);
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDD0C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v74[2] = v17;
    v21 = v20;
    v22 = swift_slowAlloc();
    v74[1] = a1;
    v23 = v22;
    v79[0] = v22;
    *v21 = 136315138;
    v24 = sub_22A4DB1AC();
    v74[3] = a2;
    v25 = v10;
    v27 = v26;
    (*(v12 + 8))(v15, v11);
    v28 = sub_2295A3E30(v24, v27, v79);
    v10 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_229538000, v18, v19, "Got notification: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  sub_22A4DB1FC();
  if (!v79[3])
  {
    sub_22953EAE4(v79, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_12;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCDC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v78 = v11;
      v79[0] = v54;
      *v53 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AC8, &qword_22A582650);
      v55 = sub_22A4DD64C();
      v57 = sub_2295A3E30(v55, v56, v79);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_229538000, v51, v52, "Ignoring notification (not HMDHAPAccessory) - is class %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    return;
  }

  v29 = v78;
  v30 = [v78 matterNodeID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v31 = sub_22A4DDEBC();
  v32 = sub_22A4DDEDC();

  if (v32)
  {
    v33 = v29;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCDC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79[0] = v37;
      *v36 = 136315394;
      v38 = [v33 name];
      v39 = sub_22A4DD5EC();
      v41 = v40;

      v42 = sub_2295A3E30(v39, v41, v79);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v43 = [v33 uuid];
      v44 = v75;
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v45 = v77;
      v46 = sub_22A4DE5CC();
      v48 = v47;
      (*(v76 + 8))(v44, v45);
      v49 = sub_2295A3E30(v46, v48, v79);

      *(v36 + 14) = v49;
      v50 = "Ignoring notification (no matterNodeID) - for %s/%s";
LABEL_19:
      _os_log_impl(&dword_229538000, v34, v35, v50, v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);

      return;
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v59 = Strong;
      v60 = sub_22A4DD9DC();
      (*(*(v60 - 8) + 56))(v10, 1, 1, v60);
      v61 = swift_allocObject();
      v61[2] = 0;
      v61[3] = 0;
      v61[4] = v59;
      v61[5] = v29;
      sub_22957F3C0(0, 0, v10, &unk_22A582660, v61);

      return;
    }

    v33 = v29;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCDC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v78 = v37;
      *v36 = 136315394;
      v62 = [v33 name];
      v63 = sub_22A4DD5EC();
      v65 = v64;

      v66 = sub_2295A3E30(v63, v65, &v78);

      *(v36 + 4) = v66;
      *(v36 + 12) = 2080;
      v67 = [v33 uuid];
      v68 = v75;
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v69 = v77;
      v70 = sub_22A4DE5CC();
      v72 = v71;
      (*(v76 + 8))(v68, v69);
      v73 = sub_2295A3E30(v70, v72, &v78);

      *(v36 + 14) = v73;
      v50 = "Ignoring notification (nil delegate) - for %s/%s";
      goto LABEL_19;
    }
  }
}

uint64_t sub_22977C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_229569B30;

  return sub_22977F14C(a5, a4);
}

uint64_t sub_22977C328()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_22A4DDE2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  sub_22A4DDE1C();
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  (*(v5 + 32))(&v14[v13], v8, v4);
  sub_22957F3C0(0, 0, v3, &unk_22A582618, v14);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_22977C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_22977C5BC, 0, 0);
}

uint64_t sub_22977C5BC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_22977C784;
    v5 = v0[6];

    return sub_22977EC6C(v5, v3);
  }

  else
  {
    if (qword_27D87BA10 != -1)
    {
      swift_once();
    }

    v7 = sub_22A4DD07C();
    __swift_project_value_buffer(v7, qword_27D8AB8C0);
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_229538000, v8, v9, "Ignoring update for Matter Controller (nil delegate)", v10, 2u);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22977C784()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22977C880, 0, 0);
}

uint64_t sub_22977C880()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22977C8E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2297810A0;

  return v7(a1);
}

uint64_t sub_22977C9D8(void *a1, uint64_t a2, uint64_t a3)
{
  v3[81] = a3;
  v3[80] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AB8, &unk_22A582538) - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v7 = sub_22A4DC6EC();
  v3[83] = v7;
  v8 = *(v7 - 8);
  v3[84] = v8;
  v9 = *(v8 + 64) + 15;
  v3[85] = swift_task_alloc();
  v10 = sub_22A4DB7DC();
  v3[86] = v10;
  v11 = *(v10 - 8);
  v3[87] = v11;
  v12 = *(v11 + 64) + 15;
  v3[88] = swift_task_alloc();
  v13 = sub_22A4DCD0C();
  v3[89] = v13;
  v14 = *(v13 - 8);
  v3[90] = v14;
  v15 = *(v14 + 64) + 15;
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v16 = *(*(_s19MatterDeviceSupportOMa() - 8) + 64) + 15;
  v3[94] = swift_task_alloc();
  v3[5] = &_s16AccessoryAdapterVN;
  v3[6] = &off_283CDE8F8;
  v3[2] = a1;
  v17 = a1;

  return MEMORY[0x2822009F8](sub_22977CC00, a3, 0);
}

uint64_t sub_22977CC00()
{
  __swift_project_boxed_opaque_existential_0((v0[80] + 128), *(v0[80] + 152));
  v1 = swift_task_alloc();
  v0[95] = v1;
  *v1 = v0;
  v1[1] = sub_22977CCAC;
  v2 = v0[94];
  v3 = v0[80];

  return sub_2296C96DC(v2, (v0 + 2));
}

uint64_t sub_22977CCAC()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 648);
  if (v0)
  {
    v6 = sub_22977D8F0;
  }

  else
  {
    v6 = sub_22977CDD8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22977CDD8()
{
  v101 = v0;
  v1 = *(v0 + 752);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 640);
    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D8AB8A8);
    sub_22957F1C4(v0 + 16, v0 + 536);
    sub_22957F1C4(v0 + 16, v0 + 576);

    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 704);
      v8 = *(v0 + 696);
      v98 = *(v0 + 688);
      v9 = *(v0 + 640);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v100 = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_2295A3E30(*(v9 + 112), *(v9 + 120), &v100);
      *(v10 + 12) = 2080;
      v12 = [*__swift_project_boxed_opaque_existential_0((v0 + 536) *(v0 + 560))];
      v13 = sub_22A4DD5EC();
      v15 = v14;

      __swift_destroy_boxed_opaque_existential_0((v0 + 536));
      v16 = sub_2295A3E30(v13, v15, &v100);

      *(v10 + 14) = v16;
      *(v10 + 22) = 2080;
      v17 = [*__swift_project_boxed_opaque_existential_0((v0 + 576) *(v0 + 600))];
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v18 = sub_22A4DE5CC();
      v20 = v19;
      (*(v8 + 8))(v7, v98);
      __swift_destroy_boxed_opaque_existential_0((v0 + 576));
      v21 = sub_2295A3E30(v18, v20, &v100);

      *(v10 + 24) = v21;
      _os_log_impl(&dword_229538000, v5, v6, "[%s:%s/%s][Bind] Device does not support service.", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);

LABEL_20:
      v82 = *(v0 + 752);
      v83 = *(v0 + 744);
      v84 = *(v0 + 736);
      v85 = *(v0 + 728);
      v86 = *(v0 + 704);
      v87 = *(v0 + 680);
      v88 = *(v0 + 656);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v89 = *(v0 + 8);

      return v89();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 576));
    v54 = (v0 + 536);
    goto LABEL_19;
  }

  (*(*(v0 + 720) + 32))(*(v0 + 744), v1, *(v0 + 712));
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 744);
  v23 = *(v0 + 736);
  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v26 = *(v0 + 640);
  v27 = sub_22A4DD07C();
  *(v0 + 776) = __swift_project_value_buffer(v27, qword_27D8AB8A8);
  sub_22957F1C4(v0 + 16, v0 + 136);
  sub_22957F1C4(v0 + 16, v0 + 176);
  v28 = *(v24 + 16);
  *(v0 + 784) = v28;
  *(v0 + 792) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v23, v22, v25);

  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCCC();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 736);
  v33 = *(v0 + 720);
  v34 = *(v0 + 712);
  if (v31)
  {
    v96 = v30;
    v35 = *(v0 + 704);
    v36 = *(v0 + 696);
    v91 = *(v0 + 688);
    v93 = *(v0 + 736);
    v37 = *(v0 + 640);
    v38 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v100 = v94;
    *v38 = 136315906;
    *(v38 + 4) = sub_2295A3E30(*(v37 + 112), *(v37 + 120), &v100);
    *(v38 + 12) = 2080;
    v39 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
    v40 = sub_22A4DD5EC();
    v42 = v41;

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v43 = sub_2295A3E30(v40, v42, &v100);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2080;
    v44 = [*__swift_project_boxed_opaque_existential_0((v0 + 176) *(v0 + 200))];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
    v45 = sub_22A4DE5CC();
    v47 = v46;
    (*(v36 + 8))(v35, v91);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v48 = sub_2295A3E30(v45, v47, &v100);

    *(v38 + 24) = v48;
    *(v38 + 32) = 2080;
    sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408]);
    v49 = sub_22A4DE5CC();
    v51 = v50;
    v52 = *(v33 + 8);
    v52(v93, v34);
    v53 = sub_2295A3E30(v49, v51, &v100);

    *(v38 + 34) = v53;
    _os_log_impl(&dword_229538000, v29, v96, "[%s:%s/%s][Bind] Device supports service on %s.", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v94, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  else
  {

    v52 = *(v33 + 8);
    v52(v32, v34);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  *(v0 + 800) = v52;
  v55 = *(v0 + 648);
  swift_beginAccess();
  sub_229564F88(v55 + 168, v0 + 256, &qword_27D880AA0, &qword_22A5824F0);
  if (!*(v0 + 280))
  {
    v61 = *(v0 + 640);
    sub_22953EAE4(v0 + 256, &qword_27D880AA0, &qword_22A5824F0);
    sub_22957F1C4(v0 + 16, v0 + 296);
    sub_22957F1C4(v0 + 16, v0 + 336);

    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCEC();

    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 744);
    v66 = *(v0 + 720);
    v67 = *(v0 + 712);
    if (v64)
    {
      v97 = *(v0 + 712);
      v99 = *(v0 + 744);
      v68 = *(v0 + 704);
      v69 = *(v0 + 696);
      v92 = *(v0 + 688);
      v70 = *(v0 + 640);
      v71 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v100 = v95;
      *v71 = 136315650;
      *(v71 + 4) = sub_2295A3E30(*(v70 + 112), *(v70 + 120), &v100);
      *(v71 + 12) = 2080;
      v72 = [*__swift_project_boxed_opaque_existential_0((v0 + 296) *(v0 + 320))];
      v73 = sub_22A4DD5EC();
      v75 = v74;

      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      v76 = sub_2295A3E30(v73, v75, &v100);

      *(v71 + 14) = v76;
      *(v71 + 22) = 2080;
      v77 = [*__swift_project_boxed_opaque_existential_0((v0 + 336) *(v0 + 360))];
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v78 = sub_22A4DE5CC();
      v80 = v79;
      (*(v69 + 8))(v68, v92);
      __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      v81 = sub_2295A3E30(v78, v80, &v100);

      *(v71 + 24) = v81;
      _os_log_impl(&dword_229538000, v62, v63, "[%s:%s/%s][Bind] .. failed to get a device controller!", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v95, -1, -1);
      MEMORY[0x22AAD4E50](v71, -1, -1);

      v52(v99, v97);
      goto LABEL_20;
    }

    v52(v65, v67);
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
    v54 = (v0 + 296);
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v54);
    goto LABEL_20;
  }

  sub_229557188((v0 + 256), v0 + 216);
  v56 = *(v0 + 240);
  v57 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_0((v0 + 216), v56);
  v58 = *(MEMORY[0x277D171C0] + 4);
  v59 = swift_task_alloc();
  *(v0 + 808) = v59;
  *v59 = v0;
  v59[1] = sub_22977DCD8;
  v60 = *(v0 + 656);

  return MEMORY[0x282171460](v60, v56, v57);
}

uint64_t sub_22977D8F0()
{
  v36 = v0;
  v1 = v0[96];
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v2 = v0[80];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB8A8);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  sub_22957F1C4((v0 + 2), (v0 + 12));

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[88];
    v8 = v0[87];
    v32 = v0[86];
    v9 = v0[80];
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v10 = 136315906;
    *(v10 + 4) = sub_2295A3E30(*(v9 + 112), *(v9 + 120), &v35);
    *(v10 + 12) = 2080;
    v11 = [*__swift_project_boxed_opaque_existential_0(v0 + 7 v0[10])];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v15 = sub_2295A3E30(v12, v14, &v35);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = [*__swift_project_boxed_opaque_existential_0(v0 + 12 v0[15])];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v8 + 8))(v7, v32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v20 = sub_2295A3E30(v17, v19, &v35);

    *(v10 + 24) = v20;
    *(v10 + 32) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 34) = v22;
    *v33 = v22;
    _os_log_impl(&dword_229538000, v5, v6, "[%s:%s/%s][Bind] FAILED Device not bound to service; returned error %@.", v10, 0x2Au);
    sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v34, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[92];
  v26 = v0[91];
  v27 = v0[88];
  v28 = v0[85];
  v29 = v0[82];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v30 = v0[1];

  return v30();
}

uint64_t sub_22977DCD8()
{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 648);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22977DDE8, v2, 0);
}

uint64_t sub_22977DDE8()
{
  v46 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[97];
    v5 = v0[80];
    sub_22953EAE4(v3, &qword_27D880AB8, &unk_22A582538);
    sub_22957F1C4((v0 + 2), (v0 + 47));
    sub_22957F1C4((v0 + 2), (v0 + 52));

    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[100];
    v10 = v0[93];
    v11 = v0[89];
    if (v8)
    {
      v43 = v0[93];
      v44 = v0[100];
      v12 = v0[88];
      v13 = v0[87];
      v40 = v0[86];
      v14 = v0[80];
      v42 = v0[90];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_2295A3E30(*(v14 + 112), *(v14 + 120), &v45);
      *(v15 + 12) = 2080;
      v17 = [*__swift_project_boxed_opaque_existential_0(v0 + 47 v0[50])];
      v18 = sub_22A4DD5EC();
      v41 = v11;
      v20 = v19;

      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      v21 = sub_2295A3E30(v18, v20, &v45);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      v22 = [*__swift_project_boxed_opaque_existential_0(v0 + 52 v0[55])];
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
      v23 = sub_22A4DE5CC();
      v25 = v24;
      (*(v13 + 8))(v12, v40);
      __swift_destroy_boxed_opaque_existential_0(v0 + 52);
      v26 = sub_2295A3E30(v23, v25, &v45);

      *(v15 + 24) = v26;
      _os_log_impl(&dword_229538000, v6, v7, "[%s:%s/%s][Bind] Device does not have a controller node ID; unable to bind.", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);

      v44(v43, v41);
    }

    else
    {

      v9(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v0 + 52);
      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v32 = v0[94];
    v33 = v0[93];
    v34 = v0[92];
    v35 = v0[91];
    v36 = v0[88];
    v37 = v0[85];
    v38 = v0[82];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v39 = v0[1];

    return v39();
  }

  else
  {
    (*(v1 + 32))(v0[85], v3, v2);
    v27 = swift_task_alloc();
    v0[102] = v27;
    *v27 = v0;
    v27[1] = sub_22977E268;
    v28 = v0[93];
    v29 = v0[85];
    v30 = v0[80];

    return sub_2296CD79C((v0 + 2), v30, v28, v29);
  }
}

uint64_t sub_22977E268()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 648);
  if (v0)
  {
    v6 = sub_22977E838;
  }

  else
  {
    v6 = sub_22977E394;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22977E394()
{
  v55 = v0;
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[93];
  v5 = v0[91];
  v6 = v0[89];
  v7 = v0[80];
  sub_22957F1C4((v0 + 2), (v0 + 57));
  sub_22957F1C4((v0 + 2), (v0 + 62));
  v2(v5, v4, v6);

  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDD0C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[100];
  v12 = v0[93];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[89];
  if (v10)
  {
    v49 = v9;
    v16 = v0[88];
    v47 = v0[100];
    v17 = v0[87];
    v46 = v0[86];
    v51 = v0[84];
    v52 = v0[83];
    v53 = v0[85];
    v18 = v0[80];
    v50 = v0[93];
    v19 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v19 = 136315906;
    *(v19 + 4) = sub_2295A3E30(*(v18 + 112), *(v18 + 120), &v54);
    *(v19 + 12) = 2080;
    v20 = [*__swift_project_boxed_opaque_existential_0(v0 + 57 v0[60])];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    __swift_destroy_boxed_opaque_existential_0(v0 + 57);
    v24 = sub_2295A3E30(v21, v23, &v54);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v25 = [*__swift_project_boxed_opaque_existential_0(v0 + 62 v0[65])];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
    v26 = sub_22A4DE5CC();
    v28 = v27;
    (*(v17 + 8))(v16, v46);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    v29 = sub_2295A3E30(v26, v28, &v54);

    *(v19 + 24) = v29;
    *(v19 + 32) = 2080;
    sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408]);
    v30 = sub_22A4DE5CC();
    v32 = v31;
    v47(v13, v15);
    v33 = sub_2295A3E30(v30, v32, &v54);

    *(v19 + 34) = v33;
    _os_log_impl(&dword_229538000, v8, v49, "[%s:%s/%s][Bind] Device bound to service on %s.", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    (*(v51 + 8))(v53, v52);
    v47(v50, v15);
  }

  else
  {
    v34 = v0[85];
    v35 = v0[84];
    v36 = v0[83];

    v11(v13, v15);
    (*(v35 + 8))(v34, v36);
    v11(v12, v15);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v37 = v0[94];
  v38 = v0[93];
  v39 = v0[92];
  v40 = v0[91];
  v41 = v0[88];
  v42 = v0[85];
  v43 = v0[82];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v44 = v0[1];

  return v44();
}

uint64_t sub_22977E838()
{
  v40 = v0;
  v1 = v0[100];
  v2 = v0[93];
  v3 = v0[90];
  v4 = v0[89];
  (*(v0[84] + 8))(v0[85], v0[83]);
  v1(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v5 = v0[103];
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v6 = v0[80];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8AB8A8);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  sub_22957F1C4((v0 + 2), (v0 + 12));

  v8 = v5;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[88];
    v12 = v0[87];
    v36 = v0[86];
    v13 = v0[80];
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v14 = 136315906;
    *(v14 + 4) = sub_2295A3E30(*(v13 + 112), *(v13 + 120), &v39);
    *(v14 + 12) = 2080;
    v15 = [*__swift_project_boxed_opaque_existential_0(v0 + 7 v0[10])];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v19 = sub_2295A3E30(v16, v18, &v39);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = [*__swift_project_boxed_opaque_existential_0(v0 + 12 v0[15])];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
    v21 = sub_22A4DE5CC();
    v23 = v22;
    (*(v12 + 8))(v11, v36);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v24 = sub_2295A3E30(v21, v23, &v39);

    *(v14 + 24) = v24;
    *(v14 + 32) = 2112;
    v25 = v5;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v26;
    *v37 = v26;
    _os_log_impl(&dword_229538000, v9, v10, "[%s:%s/%s][Bind] FAILED Device not bound to service; returned error %@.", v14, 0x2Au);
    sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  v27 = v0[94];
  v28 = v0[93];
  v29 = v0[92];
  v30 = v0[91];
  v31 = v0[88];
  v32 = v0[85];
  v33 = v0[82];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v34 = v0[1];

  return v34();
}

uint64_t sub_22977EC6C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v5 = sub_22A4DDE2C();
  v6 = MEMORY[0x277D17448];
  v2[5] = v5;
  v2[6] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);

  return MEMORY[0x2822009F8](sub_22977ED30, a2, 0);
}

uint64_t sub_22977ED30()
{
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8A8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[Controller] Got Matter Device Controller.", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = *(v5 + 120);
  v0[8] = v6;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v0 + 2;

  return MEMORY[0x2822009F8](sub_22977EE78, v6, 0);
}

uint64_t sub_22977EE78()
{
  v1 = v0[9];
  v2 = *(v0[8] + 120);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = &unk_22A582630;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = &unk_22A582638;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_22977EF94;

  return v8();
}

void sub_22977EF94()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[8];

    MEMORY[0x2822009F8](sub_22977F0DC, v7, 0);
  }
}

uint64_t sub_22977F0DC()
{
  v1 = v0[8];
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22977F14C(void *a1, uint64_t a2)
{
  v2[12] = a2;
  v2[5] = &_s16AccessoryAdapterVN;
  v2[6] = &off_283CDE8F8;
  v2[2] = a1;
  v4 = a1;

  return MEMORY[0x2822009F8](sub_22977F1D4, a2, 0);
}

uint64_t sub_22977F1D4()
{
  v16 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8A8);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = [*__swift_project_boxed_opaque_existential_0(v0 + 7 v0[10])];
    v7 = sub_22A4DD5EC();
    v9 = v8;

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v10 = sub_2295A3E30(v7, v9, &v15);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_229538000, v2, v3, "[Connect] device %s did connect!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  v11 = v0[12];
  v12 = *(v11 + 120);
  v0[13] = v12;
  v13 = swift_task_alloc();
  v0[14] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v0 + 2;

  return MEMORY[0x2822009F8](sub_22977F3E4, v12, 0);
}

uint64_t sub_22977F3E4()
{
  v1 = v0[14];
  v2 = *(v0[13] + 120);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = &unk_22A582678;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = &unk_22A582680;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_22977F500;

  return v8();
}

void sub_22977F500()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[15];
    v5 = v2[16];
    v7 = v2[13];

    MEMORY[0x2822009F8](sub_22977F648, v7, 0);
  }
}

uint64_t sub_22977F648()
{
  v1 = v0[13];
  v2 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22977F6B8(void *a1, uint64_t a2)
{
  v2[23] = a2;
  v5 = sub_22A4DB7DC();
  v2[24] = v5;
  v6 = *(v5 - 8);
  v2[25] = v6;
  v7 = *(v6 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[5] = &_s16AccessoryAdapterVN;
  v2[6] = &off_283CDE8F8;
  v2[2] = a1;
  v8 = a1;

  return MEMORY[0x2822009F8](sub_22977F7A8, a2, 0);
}

uint64_t sub_22977F7A8()
{
  v37 = v1;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v2 = v1[23];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB8A8);
  sub_22957F1C4((v1 + 2), (v1 + 7));
  sub_22957F1C4((v1 + 2), (v1 + 12));
  swift_retain_n();
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();
  if (!os_log_type_enabled(v4, v5))
  {
    v22 = v1[23];

    __swift_destroy_boxed_opaque_existential_0(v1 + 12);
    __swift_destroy_boxed_opaque_existential_0(v1 + 7);
    goto LABEL_8;
  }

  v7 = v1[25];
  v6 = v1[26];
  v8 = v1[24];
  v34 = v1[23];
  v0 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v36 = v35;
  *v0 = 136315650;
  v9 = [*__swift_project_boxed_opaque_existential_0(v1 + 7 v1[10])];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v13 = sub_2295A3E30(v10, v12, &v36);

  *(v0 + 4) = v13;
  *(v0 + 12) = 2080;
  v14 = [*__swift_project_boxed_opaque_existential_0(v1 + 12 v1[15])];
  sub_22A4DB79C();

  sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0]);
  v15 = sub_22A4DE5CC();
  v17 = v16;
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  v18 = sub_2295A3E30(v15, v17, &v36);

  *(v0 + 14) = v18;
  *(v0 + 22) = 2048;
  swift_beginAccess();
  v19 = *(v34 + 112);
  if (v19 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v21 = v1[23];

    *(v0 + 24) = i;

    _os_log_impl(&dword_229538000, v4, v5, "[%s/%s][Check] Device connected; checking for device support (%ld services).", v0, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v0, -1, -1);

LABEL_8:
    v23 = v1[23];
    swift_beginAccess();
    v24 = *(v23 + 112);
    v1[27] = v24;
    if (v24 >> 62)
    {
      break;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[28] = v25;
    if (!v25)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (v25 >= 1)
    {
      v1[29] = 0;
      v26 = v1[27];

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x22AAD13F0](0, v26);
      }

      else
      {
        v27 = *(v26 + 32);
      }

      v1[30] = v27;
      v28 = *__swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
      v29 = swift_task_alloc();
      v1[31] = v29;
      *v29 = v1;
      v29[1] = sub_22977FC5C;
      v30 = v1[23];

      return sub_22977C9D8(v28, v27, v30);
    }

    __break(1u);
LABEL_22:
    ;
  }

  v25 = sub_22A4DE0EC();
  v1[28] = v25;
  if (v25)
  {
    goto LABEL_10;
  }

LABEL_18:
  v32 = v1[26];
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v33 = v1[1];

  return v33();
}

uint64_t sub_22977FC5C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22977FD6C, v2, 0);
}

uint64_t sub_22977FD6C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  if (v2 + 1 == v3)
  {
    v4 = v0[27];

    v5 = v0[26];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[29] + 1;
    v0[29] = v8;
    v9 = v0[27];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v10 = *(v9 + 8 * v8 + 32);
    }

    v0[30] = v10;
    v11 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v12 = swift_task_alloc();
    v0[31] = v12;
    *v12 = v0;
    v12[1] = sub_22977FC5C;
    v13 = v0[23];

    return sub_22977C9D8(v11, v10, v13);
  }
}

uint64_t sub_22977FECC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[5] = &_s16AccessoryAdapterVN;
  v3[6] = &off_283CDE8F8;
  v3[2] = a2;
  v5 = a2;

  return MEMORY[0x2822009F8](sub_22977FF54, a3, 0);
}

uint64_t sub_22977FF54()
{
  if (*(v0[8] + 112) <= 1u)
  {
    if (*(v0[8] + 112))
    {
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v10 = sub_22A4DD07C();
      __swift_project_value_buffer(v10, qword_27D8AB8A8);
      v2 = sub_22A4DD05C();
      v3 = sub_22A4DDCDC();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_20;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[Device Connect] MatterServer is running but does not yet have a device controller; dropping.";
    }

    else
    {
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v1 = sub_22A4DD07C();
      __swift_project_value_buffer(v1, qword_27D8AB8A8);
      v2 = sub_22A4DD05C();
      v3 = sub_22A4DDCDC();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_20;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[Device Connect] MatterServer is not started yet; dropping.";
    }

LABEL_19:
    _os_log_impl(&dword_229538000, v2, v3, v5, v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
LABEL_20:

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v12 = v0[1];

    return v12();
  }

  if (*(v0[8] + 112) != 2)
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB8A8);
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCDC();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_20;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "[Device Connect] MatterServer is stopped; dropping notification.";
    goto LABEL_19;
  }

  v6 = *__swift_project_boxed_opaque_existential_0(v0 + 2, &_s16AccessoryAdapterVN);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_229780244;
  v8 = v0[7];

  return sub_22977F6B8(v6, v8);
}

uint64_t sub_229780244()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_229780340()
{
  v0 = sub_22A4DE42C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22978038C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22977422C(v2, v3);
}

uint64_t sub_229780424()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22979D6FC(v2);
}

uint64_t sub_2297804D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22979D7E4(a1, v5);
}

uint64_t sub_229780588(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_22977B154(a1, a2, v6, v7, v8);
}

uint64_t sub_22978064C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22977B4FC(a1, v4, v5, v6, v1 + 5, v7);
}

uint64_t sub_229780714()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_2297774F4(v2, v3, v4);
}

uint64_t sub_2297807BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229569B30;

  return sub_229777788(a1, a2, v6, v7, v8);
}

uint64_t sub_229780880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22977795C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229780948(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_22977AA04(a1, a2, v7, v6);
}

uint64_t sub_2297809FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22977AE7C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_229780AC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22977C8E0(a1, v5);
}

uint64_t sub_229780B78(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_229586D38;

  return sub_229779724(a1, a2, v2);
}

uint64_t sub_229780C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229779B7C(a1, v4, v5, v7, v6);
}

uint64_t sub_229780CE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_229780D3C(uint64_t a1)
{
  v4 = *(sub_22A4DDE2C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22977C59C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_229780E34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229777BB4(v2, v3);
}

uint64_t sub_229780ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AA0, &qword_22A5824F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229780F3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22977C274(a1, v4, v5, v7, v6);
}

uint64_t sub_229780FFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229777DC4(v2, v3);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2297810BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_229781104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_229781158()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880AD0);
  __swift_project_value_buffer(v0, qword_27D880AD0);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2297811D0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *&v2->_os_unfair_lock_opaque;
  v39 = a1;
  v40 = v3;
  v4 = sub_22A4DB7DC();
  v36 = *(v4 - 8);
  v37 = v4;
  v38 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AE8, &qword_22A5827C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF8, &qword_22A5827D0);
  (*(v11 + 104))(v14, *MEMORY[0x277D85778], v10);
  sub_22A4DD9EC();
  (*(v11 + 8))(v14, v10);
  v20 = sub_22A4DD9DC();
  (*(*(v20 - 8) + 56))(v41, 1, 1, v20);
  v21 = v36;
  v22 = v37;
  (*(v36 + 16))(v6, v39, v37);
  v23 = *(v15 + 16);
  v39 = v19;
  v24 = v34;
  v23(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v34);
  v25 = v21;
  v26 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v27 = (v38 + *(v15 + 80) + v26) & ~*(v15 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v2;
  (*(v25 + 32))(&v28[v26], v6, v22);
  (*(v15 + 32))(&v28[v27], v33, v24);
  *&v28[(v16 + v27 + 7) & 0xFFFFFFFFFFFFFFF8] = v40;

  v29 = sub_22957F3C0(0, 0, v41, &unk_22A5827E0, v28);
  os_unfair_lock_lock(v2 + 14);
  if (*&v2[16]._os_unfair_lock_opaque)
  {
    sub_22A4DDA7C();
    v30 = *&v2[16]._os_unfair_lock_opaque;
  }

  *&v2[16]._os_unfair_lock_opaque = v29;

  os_unfair_lock_unlock(v2 + 14);

  return (*(v15 + 8))(v39, v24);
}

uint64_t sub_229781670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v7 = sub_22A4DE2CC();
  v6[35] = v7;
  v8 = *(v7 - 8);
  v6[36] = v8;
  v9 = *(v8 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v10 = sub_22A4DE2EC();
  v6[39] = v10;
  v11 = *(v10 - 8);
  v6[40] = v11;
  v12 = *(v11 + 64) + 15;
  v6[41] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880B00, &qword_22A5827E8);
  v6[42] = v13;
  v14 = *(v13 - 8);
  v6[43] = v14;
  v15 = *(v14 + 64) + 15;
  v6[44] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880B08, &qword_22A5827F0) - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v17 = sub_22A4DD3CC();
  v6[46] = v17;
  v18 = *(v17 - 8);
  v6[47] = v18;
  v19 = *(v18 + 64) + 15;
  v6[48] = swift_task_alloc();
  v20 = sub_22A4DD3EC();
  v6[49] = v20;
  v21 = *(v20 - 8);
  v6[50] = v21;
  v22 = *(v21 + 64) + 15;
  v6[51] = swift_task_alloc();
  v23 = sub_22A4DB7DC();
  v6[52] = v23;
  v24 = *(v23 - 8);
  v6[53] = v24;
  v25 = *(v24 + 64) + 15;
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297819AC, 0, 0);
}

uint64_t sub_2297819AC()
{
  v42 = v0;
  if (sub_22A4DDAAC())
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 440);
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 264);
    v5 = sub_22A4DD07C();
    __swift_project_value_buffer(v5, qword_27D880AD0);
    (*(v3 + 16))(v1, v4, v2);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 440);
    v10 = *(v0 + 416);
    v11 = *(v0 + 424);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      v14 = sub_22A4DE5CC();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_2295A3E30(v14, v16, &v41);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_229538000, v6, v7, "[HomeID: %s] Task was cancelled, exiting...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v23 = *(v0 + 488);
    v22 = *(v0 + 496);
    v25 = *(v0 + 472);
    v24 = *(v0 + 480);
    v27 = *(v0 + 456);
    v26 = *(v0 + 464);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);
    v33 = *(v0 + 432);
    v34 = *(v0 + 408);
    v35 = *(v0 + 384);
    v36 = *(v0 + 360);
    v37 = *(v0 + 352);
    v38 = *(v0 + 328);
    v39 = *(v0 + 304);
    v40 = *(v0 + 296);
    v30 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
    sub_22A4DDA1C();

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    *(v0 + 236) = *MEMORY[0x277CC5888];
    *(v0 + 80) = sub_22A4DD39C();
    *(v0 + 88) = &off_283CE7340;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    v19 = *(MEMORY[0x277CC5880] + 4);
    v20 = swift_task_alloc();
    *(v0 + 504) = v20;
    *v20 = v0;
    v20[1] = sub_229781D70;
    v21 = *(v0 + 264);

    return MEMORY[0x282116518](boxed_opaque_existential_1, v21);
  }
}

uint64_t sub_229781D70()
{
  v2 = *(*v1 + 504);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_229781E88;
  }

  else
  {
    v3 = sub_229782870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229781E88()
{
  v106 = v0;
  __swift_deallocate_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_22953EAE4(v0 + 56, &qword_27D880B10, &unk_22A5827F8);
  if (qword_27D87BA78 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 264);
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D880AD0);
  v7 = *(v3 + 16);
  v7(v1, v5, v4);
  v103 = v7;
  v7(v2, v5, v4);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCEC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v14 = *(v0 + 416);
  v13 = *(v0 + 424);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v105 = v100;
    *v15 = 136315394;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
    log = v8;
    v16 = sub_22A4DE5CC();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_2295A3E30(v16, v18, &v105);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_22A4DE5CC();
    v23 = v22;
    v24 = v14;
    v25 = v19;
    v19(v12, v24);
    v26 = sub_2295A3E30(v21, v23, &v105);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_229538000, log, v9, "[HomeID: %s] Failed to find EnergyVenue with homeUniqueIdentifier: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v100, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  else
  {

    v27 = *(v13 + 8);
    v27(v12, v14);
    v28 = v14;
    v25 = v27;
    v27(v11, v28);
  }

  *(v0 + 568) = v103;
  *(v0 + 560) = v25;
  if (sub_22A4DDAAC())
  {
    if (sub_22A4DDAAC())
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 440);
      v30 = *(v0 + 416);
      v31 = *(v0 + 424);
      v32 = *(v0 + 264);
      __swift_project_value_buffer(v6, qword_27D880AD0);
      (*(v31 + 16))(v29, v32, v30);
      v33 = sub_22A4DD05C();
      v34 = sub_22A4DDCCC();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 440);
      v37 = *(v0 + 416);
      v38 = *(v0 + 424);
      if (v35)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v105 = v40;
        *v39 = 136315138;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
        v41 = sub_22A4DE5CC();
        v43 = v42;
        (*(v38 + 8))(v36, v37);
        v44 = sub_2295A3E30(v41, v43, &v105);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_229538000, v33, v34, "[HomeID: %s] Task was cancelled, exiting...", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AAD4E50](v40, -1, -1);
        MEMORY[0x22AAD4E50](v39, -1, -1);
      }

      else
      {

        (*(v38 + 8))(v36, v37);
      }

      v84 = *(v0 + 488);
      v83 = *(v0 + 496);
      v86 = *(v0 + 472);
      v85 = *(v0 + 480);
      v88 = *(v0 + 456);
      v87 = *(v0 + 464);
      v90 = *(v0 + 440);
      v89 = *(v0 + 448);
      v94 = *(v0 + 432);
      v95 = *(v0 + 408);
      v96 = *(v0 + 384);
      v97 = *(v0 + 360);
      loga = *(v0 + 352);
      v101 = *(v0 + 328);
      v102 = *(v0 + 304);
      v104 = *(v0 + 296);
      v91 = *(v0 + 272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
      sub_22A4DDA1C();

      v92 = *(v0 + 8);

      return v92();
    }

    else
    {
      *(v0 + 80) = sub_22A4DD39C();
      *(v0 + 88) = &off_283CE7340;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v64 = *(MEMORY[0x277CC5880] + 4);
      v65 = swift_task_alloc();
      *(v0 + 504) = v65;
      *v65 = v0;
      v65[1] = sub_229781D70;
      v66 = *(v0 + 264);

      return MEMORY[0x282116518](boxed_opaque_existential_1, v66);
    }
  }

  else
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 456);
    v46 = *(v0 + 416);
    v47 = *(v0 + 264);
    v48 = *(v0 + 424) + 16;
    *(v0 + 576) = __swift_project_value_buffer(v6, qword_27D880AD0);
    *(v0 + 584) = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v103(v45, v47, v46);
    v49 = sub_22A4DD05C();
    v50 = sub_22A4DDCCC();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 456);
    v54 = *(v0 + 416);
    v53 = *(v0 + 424);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v105 = v56;
      *v55 = 136315394;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      v57 = sub_22A4DE5CC();
      v58 = v25;
      v59 = v57;
      v61 = v60;
      v58(v52, v54);
      v62 = sub_2295A3E30(v59, v61, &v105);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2048;
      *(v55 + 14) = 0x409C200000000000;
      _os_log_impl(&dword_229538000, v49, v50, "[HomeID: %s] Fetching guidance stream after %f seconds", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x22AAD4E50](v56, -1, -1);
      MEMORY[0x22AAD4E50](v55, -1, -1);
    }

    else
    {

      v25(v52, v54);
    }

    v67 = *(v0 + 328);
    v68 = *(v0 + 304);
    v69 = *(v0 + 312);
    v71 = *(v0 + 288);
    v70 = *(v0 + 296);
    v72 = *(v0 + 280);
    v73 = sub_22A4DE88C();
    v75 = v74;
    sub_22A4DE6AC();
    *(v0 + 240) = v73;
    *(v0 + 248) = v75;
    *(v0 + 224) = 0;
    *(v0 + 216) = 0;
    *(v0 + 232) = 1;
    v76 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928]);
    sub_22A4DE68C();
    sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8]);
    sub_22A4DE2FC();
    v77 = *(v71 + 8);
    *(v0 + 592) = v77;
    *(v0 + 600) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77(v70, v72);
    v78 = *(MEMORY[0x277D85A58] + 4);
    v79 = swift_task_alloc();
    *(v0 + 608) = v79;
    *v79 = v0;
    v79[1] = sub_229784218;
    v80 = *(v0 + 328);
    v82 = *(v0 + 304);
    v81 = *(v0 + 312);

    return MEMORY[0x2822008C8](v82, v0 + 216, v81, v76);
  }
}

uint64_t sub_229782870()
{
  v141 = v0;
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 480);
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 264);
    v5 = sub_22A4DD07C();
    *(v0 + 512) = __swift_project_value_buffer(v5, qword_27D880AD0);
    v6 = *(v3 + 16);
    *(v0 + 520) = v6;
    *(v0 + 528) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 480);
    v12 = *(v0 + 416);
    v11 = *(v0 + 424);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v140 = v137;
      *v13 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      v14 = sub_22A4DE5CC();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_2295A3E30(v14, v16, &v140);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_229538000, v7, v8, "[HomeID: %s] Fetching reduce guidance", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x22AAD4E50](v137, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    *(v0 + 536) = v17;
    v45 = *(v0 + 472);
    v46 = *(v0 + 416);
    v48 = *(v0 + 400);
    v47 = *(v0 + 408);
    v49 = *(v0 + 392);
    v50 = *(v0 + 424) + 8;
    (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 236), *(v0 + 368));
    sub_22A4DD3DC();
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22A4DD37C();
    sub_22A4DD3BC();
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880B18, &qword_22A582808);
    *(v0 + 128) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_22A4DD43C();

    *(v0 + 544) = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v45, v46);
    (*(v48 + 8))(v47, v49);
    v51 = *(v0 + 120);
    v52 = __swift_project_boxed_opaque_existential_0((v0 + 96), v51);
    v53 = *(v51 - 8);
    v54 = *(v53 + 64) + 15;
    v55 = swift_task_alloc();
    (*(v53 + 16))(v55, v52, v51);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_22A4DDAFC();

    v56 = *(v0 + 160);
    v57 = *(v0 + 168);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 136, v56);
    v58 = *(MEMORY[0x277D856D8] + 4);
    v59 = swift_task_alloc();
    *(v0 + 552) = v59;
    *v59 = v0;
    v59[1] = sub_2297836A8;
    v60 = *(v0 + 360);

    return MEMORY[0x282200310](v60, 0, 0, v0 + 256, v56, v57);
  }

  else
  {
    sub_22953EAE4(v0 + 56, &qword_27D880B10, &unk_22A5827F8);
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 488);
    v19 = *(v0 + 496);
    v22 = *(v0 + 416);
    v21 = *(v0 + 424);
    v23 = *(v0 + 264);
    v24 = sub_22A4DD07C();
    __swift_project_value_buffer(v24, qword_27D880AD0);
    v25 = *(v21 + 16);
    v25(v19, v23, v22);
    v138 = v25;
    v25(v20, v23, v22);
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 488);
    v29 = *(v0 + 496);
    v32 = *(v0 + 416);
    v31 = *(v0 + 424);
    if (v28)
    {
      v33 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v140 = v134;
      *v33 = 136315394;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
      log = v26;
      v34 = sub_22A4DE5CC();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v29, v32);
      v38 = sub_2295A3E30(v34, v36, &v140);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = sub_22A4DE5CC();
      v41 = v40;
      v42 = v32;
      v43 = v37;
      v37(v30, v42);
      v44 = sub_2295A3E30(v39, v41, &v140);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_229538000, log, v27, "[HomeID: %s] Failed to find EnergyVenue with homeUniqueIdentifier: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v134, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    else
    {

      v61 = *(v31 + 8);
      v61(v30, v32);
      v62 = v32;
      v43 = v61;
      v61(v29, v62);
    }

    *(v0 + 568) = v138;
    *(v0 + 560) = v43;
    if (sub_22A4DDAAC())
    {
      if (sub_22A4DDAAC())
      {
        if (qword_27D87BA78 != -1)
        {
          swift_once();
        }

        v63 = *(v0 + 440);
        v64 = *(v0 + 416);
        v65 = *(v0 + 424);
        v66 = *(v0 + 264);
        __swift_project_value_buffer(v24, qword_27D880AD0);
        (*(v65 + 16))(v63, v66, v64);
        v67 = sub_22A4DD05C();
        v68 = sub_22A4DDCCC();
        v69 = os_log_type_enabled(v67, v68);
        v70 = *(v0 + 440);
        v71 = *(v0 + 416);
        v72 = *(v0 + 424);
        if (v69)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v140 = v74;
          *v73 = 136315138;
          sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
          v75 = sub_22A4DE5CC();
          v77 = v76;
          (*(v72 + 8))(v70, v71);
          v78 = sub_2295A3E30(v75, v77, &v140);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_229538000, v67, v68, "[HomeID: %s] Task was cancelled, exiting...", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x22AAD4E50](v74, -1, -1);
          MEMORY[0x22AAD4E50](v73, -1, -1);
        }

        else
        {

          (*(v72 + 8))(v70, v71);
        }

        v118 = *(v0 + 488);
        v117 = *(v0 + 496);
        v120 = *(v0 + 472);
        v119 = *(v0 + 480);
        v122 = *(v0 + 456);
        v121 = *(v0 + 464);
        v124 = *(v0 + 440);
        v123 = *(v0 + 448);
        v128 = *(v0 + 432);
        v129 = *(v0 + 408);
        v130 = *(v0 + 384);
        v131 = *(v0 + 360);
        loga = *(v0 + 352);
        v135 = *(v0 + 328);
        v136 = *(v0 + 304);
        v139 = *(v0 + 296);
        v125 = *(v0 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
        sub_22A4DDA1C();

        v126 = *(v0 + 8);

        return v126();
      }

      else
      {
        *(v0 + 80) = sub_22A4DD39C();
        *(v0 + 88) = &off_283CE7340;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v98 = *(MEMORY[0x277CC5880] + 4);
        v99 = swift_task_alloc();
        *(v0 + 504) = v99;
        *v99 = v0;
        v99[1] = sub_229781D70;
        v100 = *(v0 + 264);

        return MEMORY[0x282116518](boxed_opaque_existential_1, v100);
      }
    }

    else
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v79 = *(v0 + 456);
      v80 = *(v0 + 416);
      v81 = *(v0 + 264);
      v82 = *(v0 + 424) + 16;
      *(v0 + 576) = __swift_project_value_buffer(v24, qword_27D880AD0);
      *(v0 + 584) = v82 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v138(v79, v81, v80);
      v83 = sub_22A4DD05C();
      v84 = sub_22A4DDCCC();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 456);
      v88 = *(v0 + 416);
      v87 = *(v0 + 424);
      if (v85)
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v140 = v90;
        *v89 = 136315394;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0]);
        v91 = sub_22A4DE5CC();
        v92 = v43;
        v93 = v91;
        v95 = v94;
        v92(v86, v88);
        v96 = sub_2295A3E30(v93, v95, &v140);

        *(v89 + 4) = v96;
        *(v89 + 12) = 2048;
        *(v89 + 14) = 0x409C200000000000;
        _os_log_impl(&dword_229538000, v83, v84, "[HomeID: %s] Fetching guidance stream after %f seconds", v89, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x22AAD4E50](v90, -1, -1);
        MEMORY[0x22AAD4E50](v89, -1, -1);
      }

      else
      {

        v43(v86, v88);
      }

      v101 = *(v0 + 328);
      v102 = *(v0 + 304);
      v103 = *(v0 + 312);
      v105 = *(v0 + 288);
      v104 = *(v0 + 296);
      v106 = *(v0 + 280);
      v107 = sub_22A4DE88C();
      v109 = v108;
      sub_22A4DE6AC();
      *(v0 + 240) = v107;
      *(v0 + 248) = v109;
      *(v0 + 224) = 0;
      *(v0 + 216) = 0;
      *(v0 + 232) = 1;
      v110 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928]);
      sub_22A4DE68C();
      sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8]);
      sub_22A4DE2FC();
      v111 = *(v105 + 8);
      *(v0 + 592) = v111;
      *(v0 + 600) = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v111(v104, v106);
      v112 = *(MEMORY[0x277D85A58] + 4);
      v113 = swift_task_alloc();
      *(v0 + 608) = v113;
      *v113 = v0;
      v113[1] = sub_229784218;
      v114 = *(v0 + 328);
      v116 = *(v0 + 304);
      v115 = *(v0 + 312);

      return MEMORY[0x2822008C8](v116, v0 + 216, v115, v110);
    }
  }
}