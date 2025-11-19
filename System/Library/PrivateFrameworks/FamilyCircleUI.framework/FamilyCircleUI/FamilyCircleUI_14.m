uint64_t sub_21BCE2364()
{
  v15 = v0;
  v1 = v0[21];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5CC00, &v14);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Turning on iCloud keychain sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[25] = v10;
  v11 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_21BCE2590;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD63750;
  v0[13] = &block_descriptor_29;
  v0[14] = v12;
  [v11 setUserVisibleKeychainSyncEnabled:1 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCE2590()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  if (v3)
  {
    v6 = sub_21BCE2A6C;
  }

  else
  {
    v6 = sub_21BCE26C0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCE26C0()
{
  v15 = v0;
  v1 = v0[20];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE5CC00, &v14);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s User visible keychain sync is now enabled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v5(v6, v8);
  v11 = *(MEMORY[0x277D08048] + 4);
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = sub_21BCE28B8;
  v17 = MEMORY[0x277D839B0];

  return MEMORY[0x28215E468](v0 + 233, 5, 1000000000000000000, 0, 0x8AC7230489E80000, 0, &unk_21BE40D20, 0);
}

uint64_t sub_21BCE28B8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_21BCE2AF0;
  }

  else
  {
    v7 = sub_21BCE29F4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BCE29F4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BCE2A6C()
{
  v1 = v0[26];
  v2 = v0[22];

  swift_willThrow();
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BCE2AF0()
{
  v1 = v0[22];

  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BCE2B64(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_21BE26A4C();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_21BE28D7C();
  v1[23] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[24] = v6;
  v1[25] = v5;

  return MEMORY[0x2822009F8](sub_21BCE2C58, v6, v5);
}

uint64_t sub_21BCE2C58()
{
  if ([objc_opt_self() isOngoingCredentialSharingEnabled] && (v1 = objc_msgSend(objc_opt_self(), sel_sharedMonitor), v2 = objc_msgSend(v1, sel_isKeychainSyncEnabled), v1, v2))
  {
    v3 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21BCE2E94;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A90, &qword_21BE390E0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BC36ED8;
    v0[13] = &block_descriptor_21_0;
    v0[14] = v4;
    [v3 fetchSharingGroupsThatIncludeFamilyMembers_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[23];

    v6 = v0[22];
    sub_21BE2637C();
    sub_21BCE3F04(&qword_27CDB6868, MEMORY[0x277D08018]);
    swift_allocError();
    sub_21BE2636C();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_21BCE2E94()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_21BCE3044;
  }

  else
  {
    v6 = sub_21BCE2FC4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCE2FC4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];

  v4 = v0[18];

  *v3 = 1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BCE3044()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];

  swift_willThrow();
  sub_21BE261BC();
  v6 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000021, 0x800000021BE5CC00);
  MEMORY[0x21CF03CA0](0xD00000000000003FLL, 0x800000021BE5CC30);
  sub_21BC51D50(v1);

  (*(v5 + 8))(v3, v4);
  v7 = v0[22];
  sub_21BE2637C();
  sub_21BCE3F04(&qword_27CDB6868, MEMORY[0x277D08018]);
  swift_allocError();
  sub_21BE2636C();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BCE31F8()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI24SharedPasswordsItemModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedPasswordsItemModel()
{
  result = qword_27CDB99F8;
  if (!qword_27CDB99F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BCE32F0()
{
  result = sub_21BE25F5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_21BCE3398()
{
  v0 = sub_21BE25B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE5CB90, &v20);
    _os_log_impl(&dword_21BB35000, v10, v11, "%s Opening shared passwords setup flow", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = [objc_opt_self() passwordManagerURLForFamilySharingGroupSetup];
  sub_21BE25B5C();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v16 = result;
    v17 = sub_21BE25B2C();
    sub_21BBB52D8(MEMORY[0x277D84F90]);
    v18 = sub_21BE288EC();

    [v16 openSensitiveURL:v17 withOptions:v18];

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCE3690()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = sub_21BE25D6C();
  v0[6] = v5;
  v6 = *(v5 - 8);
  v0[7] = v6;
  v7 = *(v6 + 64) + 15;
  v0[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0) - 8) + 64) + 15;
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCE3818, 0, 0);
}

uint64_t sub_21BCE3818()
{
  sub_21BE28D7C();
  *(v0 + 80) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE38AC, v2, v1);
}

uint64_t sub_21BCE38AC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  (*(v7 + 56))(v2, 1, 1, v6);
  sub_21BE25D5C();
  sub_21BE25D2C();
  (*(v4 + 8))(v3, v5);
  *(v0 + 112) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6860, &qword_21BE35700);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 88) = sub_21BE262AC();

  return MEMORY[0x2822009F8](sub_21BCE39F4, 0, 0);
}

uint64_t sub_21BCE39F4()
{
  v1 = v0[5];
  v2 = sub_21BE28DAC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277D07FD0] + 4);
  v8 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_21BCE3AE0;
  v5 = v0[11];
  v6 = v0[5];

  return v8();
}

uint64_t sub_21BCE3AE0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 104) = v0;

  sub_21BBDE578(v4);

  if (v0)
  {
    v5 = sub_21BCE3D38;
  }

  else
  {
    v5 = sub_21BCE3C34;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21BCE3C34()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED0 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  [v1 postNotificationName:qword_27CDB7E80 object:0];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BCE3D38()
{
  v1 = v0[13];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_21BE261BC();
  v5 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
  MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE5CBB0);
  sub_21BC51D50(v1);

  (*(v3 + 8))(v2, v4);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED0 != -1)
  {
    swift_once();
  }

  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[4];
  v9 = v0[5];
  [v6 postNotificationName:qword_27CDB7E80 object:0];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BCE3F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BCE3F54(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_21BE26A4C();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  sub_21BE28D7C();
  v2[29] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[30] = v7;
  v2[31] = v6;

  return MEMORY[0x2822009F8](sub_21BCE4048, v7, v6);
}

uint64_t sub_21BCE4048()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[32] = v3;
  v4 = [objc_allocWithZone(FACircleStateController) init];
  v0[33] = v4;
  v5 = [v1 topViewController];
  [v4 setPresenter_];

  [v4 setModalPresentationStyle_];
  v0[21] = sub_21BBB6068(MEMORY[0x277D84F90]);
  v6 = *(v2 + 16);
  v7 = [v6 dsid];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 stringValue];

    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_21BD400D8(v10, v12, 0x64497265626D656DLL, 0xE800000000000000);
  v13 = [v6 altDSID];
  if (v13)
  {
    v14 = v13;
    v15 = sub_21BE28A0C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_21BD400D8(v15, v17, 0x44495344746C61, 0xE700000000000000);
  v18 = v0[21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21BC7F9A8(0x6843796C696D6146, 0xEF7473696C6B6365, 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
  if (*(v18 + 16))
  {
    sub_21BCA2A64(v18);

    v20 = sub_21BE288EC();

    [v3 setAdditionalParameters_];
  }

  else
  {
  }

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_21BCE43C4;
  v21 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_30;
  v0[14] = v21;
  [v4 performWithContext:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCE43C4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BCE44CC, v2, v1);
}

uint64_t sub_21BCE44CC()
{
  v34 = v0;
  v1 = v0[29];

  v2 = v0[22];
  v3 = [v2 error];
  if (v3)
  {
    v4 = v3;
    v5 = v0[28];
    sub_21BE2614C();
    v6 = v4;
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[32];
    v11 = v0[33];
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    if (v9)
    {
      v32 = v0[32];
      v15 = swift_slowAlloc();
      v30 = v11;
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v31 = v12;
      v18 = v0[18];
      v17 = v0[19];
      v19 = v0[20];
      v20 = sub_21BE29A5C();
      v29 = v14;
      v22 = sub_21BB3D81C(v20, v21, &v33);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_21BB35000, v7, v8, "Error loading stateController: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);

      (*(v13 + 8))(v31, v29);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    v23 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EA8 != -1)
    {
      swift_once();
    }

    v25 = v0[32];
    v24 = v0[33];
    [v23 postNotificationName:qword_27CDB7E58 object:0];
  }

  v26 = v0[28];

  v27 = v0[1];

  return v27();
}

uint64_t sub_21BCE47B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v5;
  v7 = *(a1 + 40);
  v49 = *(a1 + 24);
  v6 = v49;
  v50 = MEMORY[0x277D84A98];
  v51 = v7;
  v52 = MEMORY[0x277CE1538];
  v8 = sub_21BE270BC();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v43 = &v39 - v14;
  v15 = *(v6 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = sub_21BE2785C();
  v45 = *(v22 - 8);
  v23 = *(v45 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v27 = &v39 - v26;
  if (*v25)
  {
    MEMORY[0x28223BE20](v24);
    v40 = v28;
    v41 = v22;
    v29 = *(a1 + 16);
    *(&v39 - 6) = v29;
    *(&v39 - 5) = v6;
    v30 = *(a1 + 32);
    *(&v39 - 4) = v30;
    *(&v39 - 3) = v7;
    *(&v39 - 2) = v28;
    v31 = v42;
    sub_21BE268EC();
    v32 = sub_21BE268FC();
    v33 = (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    v39 = &v39;
    MEMORY[0x28223BE20](v33);
    *(&v39 - 6) = v29;
    *(&v39 - 5) = v6;
    *(&v39 - 4) = v30;
    *(&v39 - 3) = v7;
    *(&v39 - 2) = v40;
    sub_21BCE5638();
    sub_21BE2709C();
    swift_getWitnessTable();
    v34 = v43;
    sub_21BD37338(v12);
    v35 = *(v44 + 8);
    v35(v12, v8);
    sub_21BD37338(v34);
    sub_21BD36B98(v12, v6, v8);
    v35(v12, v8);
    v35(v34, v8);
    v22 = v41;
  }

  else
  {
    sub_21BD37338(&v25[*(a1 + 56)]);
    sub_21BD37338(v21);
    swift_getWitnessTable();
    sub_21BD36AA0(v19, v6);
    v36 = *(v15 + 8);
    v36(v19, v6);
    v36(v21, v6);
  }

  WitnessTable = swift_getWitnessTable();
  v47 = v7;
  v48 = WitnessTable;
  swift_getWitnessTable();
  sub_21BD37338(v27);
  return (*(v45 + 8))(v27, v22);
}

uint64_t sub_21BCE4CFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v12 = type metadata accessor for FANavigationLink();
  sub_21BD37338(a1 + *(v12 + 52));
  sub_21BD37338(v7);
  return (*(v4 + 8))(v7, a2);
}

uint64_t sub_21BCE4E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = type metadata accessor for FANavigationLink();
  sub_21BD37338(a1 + *(v13 + 56));
  sub_21BD37338(v8);
  return (*(v5 + 8))(v8, a3);
}

uint64_t sub_21BCE4F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB9A10, &unk_21BE40DE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_21BCE4F90(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_21BCE54F0();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BCE5044(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  v15 = (a2 - v13 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (*&a1[v14])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (v19)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    if (v12 > 0xFE)
    {
      v26 = &a1[v9 + 1] & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v26);
      }

      else
      {
        return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v23 = *a1;
      v24 = v23 >= 2;
      v25 = (v23 + 2147483646) & 0x7FFFFFFF;
      if (v24)
      {
        return (v25 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = a1[v14];
  if (!a1[v14])
  {
    goto LABEL_31;
  }

LABEL_27:
  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v13 + (v22 | v21) + 1;
}

void sub_21BCE5240(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v14 >= a3)
  {
    v19 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v14 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v13 > 0xFE)
        {
          v22 = &a1[v10 + 1] & ~v10;
          if (v7 == v14)
          {
            v23 = *(v6 + 56);

            v23(v22);
          }

          else
          {
            v24 = *(v9 + 56);
            v25 = (v22 + v11 + v12) & ~v12;

            v24(v25);
          }
        }

        else
        {
          *a1 = a2 + 1;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v20 = ~v14 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void sub_21BCE54F0()
{
  if (!qword_27CDB9A98)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB9A98);
    }
  }
}

unint64_t sub_21BCE5548()
{
  result = qword_27CDB9AA0;
  if (!qword_27CDB9AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDB9A10, &unk_21BE40DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9AA0);
  }

  return result;
}

uint64_t sub_21BCE55AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21BCE5638()
{
  result = qword_27CDB61E8;
  if (!qword_27CDB61E8)
  {
    sub_21BE268FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61E8);
  }

  return result;
}

uint64_t sub_21BCE5690(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BCE56D8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21BCE5750(uint64_t a1)
{
  v2 = [*a1 altDSID];
  if (!v2)
  {
    v4 = 0;
    v6 = 0xE000000000000000;
    v7 = *(a1 + 16);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_21BE28A0C();
  v6 = v5;

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(a1 + 8);
  v9 = v7;
LABEL_6:
  v10 = *(a1 + 32);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = *(a1 + 48);

  sub_21BCE5B54(a1, v14);
  sub_21BC0FFAC(v4, v6, v8, v9, sub_21BCE5BDC, v11);
}

uint64_t sub_21BCE5878(void *a1, char a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-v12];
  if (a2)
  {
    sub_21BE2614C();
    sub_21BC51D50(a1);
    (*(v7 + 8))(v11, v6);
    v20 = *(a3 + 40);
    v19 = 0;
  }

  else
  {
    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "Successfully fetched tokens.", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v20 = *(a3 + 40);
    v19 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BCE5A70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 32);
  v14 = *(v1 + 48);
  v4 = [v11[0] hasSiwaEnabled];
  v9[0] = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v5 = v10;
  v6 = swift_allocObject();
  v7 = v12;
  *(v6 + 16) = *v11;
  *(v6 + 32) = v7;
  *(v6 + 48) = v13;
  *(v6 + 64) = v14;
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 8) = sub_21BCE5B4C;
  *(a1 + 16) = v6;
  return sub_21BCE5B54(v11, v9);
}

uint64_t objectdestroyTm_15()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

unint64_t sub_21BCE5BE8()
{
  result = qword_27CDB9AA8;
  if (!qword_27CDB9AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9AB0, qword_21BE40F38);
    sub_21BCE5C74();
    sub_21BBDD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9AA8);
  }

  return result;
}

unint64_t sub_21BCE5C74()
{
  result = qword_27CDB9AB8;
  if (!qword_27CDB9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9AB8);
  }

  return result;
}

uint64_t sub_21BCE5D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t sub_21BCE5E40(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8C3C;

  return v9(a1, a2);
}

uint64_t sub_21BCE5F58(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

void *sub_21BCE6070(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF047C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BE28A0C();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return v9;
        }

        v17 = sub_21BE2995C();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_21BCE61D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

void sub_21BCE6248()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  v1 = qword_280BD76E8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_280BDCB90);
}

void *sub_21BCE62D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D08138] object:0];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 6);
  v5 = qword_280BD76E8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_21BCE63B8()
{
  sub_21BCE62D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCE6410()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2613C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "FAServicesUpdate received", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();

  v15 = sub_21BE28D6C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v1;
  sub_21BC54908(0, 0, v5, &unk_21BE41068, v16);
}

uint64_t sub_21BCE6648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v4[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_21BCE6728, v7, v6);
}

void sub_21BCE6728()
{
  v1 = *(v0[3] + 40);
  v0[10] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_21BCE683C;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BCE683C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_21BBDE578(v5);

  v7 = *(v2 + 72);
  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_21BCE6AB4;
  }

  else
  {
    v9 = sub_21BCE69B8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BCE69B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[2];

  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE6A44, v6, v5);
}

uint64_t sub_21BCE6A44()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BCE6AB4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE6B38, v5, v4);
}

uint64_t sub_21BCE6B38()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_21BCE6BA8()
{

  sub_21BCE6410();
}

uint64_t sub_21BCE6BE4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = sub_21BCE6CF0;

  return sub_21BCE72DC();
}

uint64_t sub_21BCE6CF0()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_21BE28D0C();
  if (v2)
  {
    v8 = sub_21BCE7020;
  }

  else
  {
    v8 = sub_21BCE6E4C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BCE6E4C()
{
  v19 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  sub_21BE2613C();

  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  if (v6)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + 16), *(v10 + 24), &v18);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s returning services", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = v0[7];
  v15 = v0[3];
  v14 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *v15 = v0[2];

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BCE7020()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_21BCE7090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 name];
  if (!v4)
  {
LABEL_7:
    v20 = sub_21BE25B9C();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }

  v5 = v4;
  v6 = sub_21BE28A0C();
  v8 = v7;

  v9 = *(v2 + qword_280BDCB90);
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = sub_21BC85A38();

  if (*(v12 + 16))
  {
    v13 = sub_21BBB3108(v6, v8);
    v15 = v14;

    if (v15)
    {
      v16 = *(v12 + 56);
      v17 = sub_21BE25B9C();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a2, v16 + *(v18 + 72) * v13, v17);

      return (*(v18 + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
  }

  v22 = sub_21BE25B9C();
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t sub_21BCE72DC()
{
  v1[20] = v0;
  v2 = sub_21BE26A4C();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = sub_21BE28D7C();
  v1[25] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[26] = v6;
  v1[27] = v5;

  return MEMORY[0x2822009F8](sub_21BCE73D4, v6, v5);
}

uint64_t sub_21BCE73D4()
{
  v1 = v0[20];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 6, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 members];

    sub_21BBE66D8();
    v7 = sub_21BE28C3C();

    if (!(v7 >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v8 = sub_21BE2951C();
LABEL_4:

  if (v8)
  {
    v9 = v0[23];
    sub_21BE2613C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Reloading services store", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v14 = v0[22];
    v13 = v0[23];
    v16 = v0[20];
    v15 = v0[21];

    (*(v14 + 8))(v13, v15);
    v17 = type metadata accessor for FamilySignpost();
    v0[28] = v17;
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_21BC84D18(0x7365636976726553, 0xEE0065726F747320, "loadStore", 9, 2);
    v21 = qword_280BDCB90;
    v0[29] = v20;
    v0[30] = v21;
    v22 = *(v16 + v21);
    if (v22)
    {
      v0[33] = v22;
      v23 = v0[24];
      v24 = v22;
      v0[34] = sub_21BE28D6C();
      v26 = sub_21BE28D0C();
      v0[35] = v26;
      v0[36] = v25;

      return MEMORY[0x2822009F8](sub_21BCE7B28, v26, v25);
    }

    else
    {
      v30 = [objc_opt_self() defaultStore];
      v0[31] = v30;
      if (v30)
      {
        v31 = v30;
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_21BCE77F0;
        v32 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9AC0, &unk_21BE41050);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_21BD4075C;
        v0[13] = &block_descriptor_31;
        v0[14] = v32;
        [v31 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

        return MEMORY[0x282200938](v0 + 2);
      }

      else
      {
        return sub_21BE2978C();
      }
    }
  }

  else
  {
    v27 = v0[25];

    v28 = v0[23];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_21BCE77F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_21BCE7F5C;
  }

  else
  {
    v6 = sub_21BCE7920;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCE7920()
{
  v21 = v0;
  v1 = v0[18];
  v2 = v0[31];
  if (v1)
  {
    v3 = v0[30];
    v4 = v0[20];
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v5 = objc_allocWithZone(type metadata accessor for SubscriptionServicesDataLoader());
    v6 = sub_21BD263EC(v1, v19);

    v7 = *(v4 + v3);
    *(v4 + v3) = v6;

    v8 = *(v4 + v3);
    if (v8)
    {
      v0[33] = v8;
      v9 = v0[24];
      v10 = v8;
      v0[34] = sub_21BE28D6C();
      v12 = sub_21BE28D0C();
      v0[35] = v12;
      v0[36] = v11;

      return MEMORY[0x2822009F8](sub_21BCE7B28, v12, v11);
    }

    v14 = v0[25];

    MEMORY[0x21CF01210](0xD00000000000001ELL, 0x800000021BE5CDB0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
  }

  else
  {
    v13 = v0[25];

    MEMORY[0x21CF01210](0xD00000000000001ALL, 0x800000021BE5CD90, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
  }

  v15 = v0[29];
  v16 = v0[23];
  sub_21BC852D8();

  v17 = v0[1];

  return v17();
}

uint64_t sub_21BCE7B28()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[24];
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();
  v0[37] = sub_21BC84D18(0xD000000000000014, 0x800000021BE5CDD0, "loadStore", 9, 2);
  v0[38] = sub_21BE28D6C();
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_21BCE7C30;

  return sub_21BD264EC(&unk_21BE44278, 0);
}

uint64_t sub_21BCE7C30()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCE7D6C, v5, v4);
}

uint64_t sub_21BCE7D6C()
{
  v1 = v0[38];

  v2 = v0[35];
  v3 = v0[36];

  return MEMORY[0x2822009F8](sub_21BCE7DD0, v2, v3);
}

uint64_t sub_21BCE7DD0()
{
  v1 = v0[37];
  v2 = v0[34];

  sub_21BC852D8();

  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x2822009F8](sub_21BCE7E44, v3, v4);
}

uint64_t sub_21BCE7E44()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[20];

  v5 = *&v1[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[19] = v5;

  sub_21BE26CBC();
  LOBYTE(v5) = v1[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_locationAllowed];

  *(v4 + qword_280BDCB88) = v5;
  sub_21BC852D8();

  v6 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BCE7F5C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[25];

  swift_willThrow();

  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[23];
  sub_21BC852D8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BCE7FF4()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  sub_21BE26C7C();
  return swift_endAccess();
}

void *sub_21BCE806C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = sub_21BCE6070(a1, a2, v8);

  return v6;
}

uint64_t sub_21BCE8114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BCE8194(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BCE8210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCE6648(a1, v4, v5, v6);
}

uint64_t sub_21BCE82C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BCE6BE4(a1, v1);
}

uint64_t type metadata accessor for PurchaseSharingItemView()
{
  result = qword_27CDB9AC8;
  if (!qword_27CDB9AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCE83D4()
{
  sub_21BCB057C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PurchaseSharingItem(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21BCE8474(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + *(type metadata accessor for PurchaseSharingItemView() + 20));
  if (*v3 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();
    v6 = [v5 bundleForClass_];
    v7 = sub_21BE2599C();
    v9 = v8;

    v10 = type metadata accessor for PurchaseSharingItem(0);
    [*&v3[*(v10 + 24)] purchaseSharingEnabled];
    v11 = [v5 bundleForClass_];
    v12 = sub_21BE2599C();
    v14 = v13;

    *(&v44 + 1) = v10;
    *&v45 = sub_21BCE8C30();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
    sub_21BCE8C88(v3, boxed_opaque_existential_1, type metadata accessor for PurchaseSharingItem);
    LOWORD(v47) = 1026;
    *(&v47 + 1) = 0;
    *&v48 = &unk_282D857D0;
    *(&v48 + 1) = &unk_282D85800;
    LOBYTE(v49) = 0;
    *&v38 = v7;
    *(&v38 + 1) = v9;
    v39 = 0uLL;
    *&v40 = v12;
    *(&v40 + 1) = v14;
    sub_21BCE8CF0();

    *(&v45 + 1) = sub_21BE2852C();
    v42 = a2;
    *&v41 = 0;
    *(&v41 + 1) = a1;
    v47 = v38;
    v48 = 0uLL;
    v51 = a2;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v49 = v40;
    v50 = v41;
    sub_21BBC7A18(&v47, &v38);
    v46 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC7A74(&v47);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v17 = swift_getObjCClassFromMetadata();
    v18 = objc_opt_self();
    v19 = [v18 bundleForClass_];
    v20 = sub_21BE2599C();
    v34 = v21;
    v35 = v20;

    v22 = type metadata accessor for PurchaseSharingItem(0);
    if ([*&v3[*(v22 + 24)] isOrganizer])
    {
      v23 = "PURCHASE_SHARING_SETUP_BUTTON";
    }

    else
    {
      v23 = "loadForServicesStore";
    }

    v24 = v23 | 0x8000000000000000;
    v25 = [v18 &selRef:v17 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    v26 = sub_21BE2599C();
    v28 = v27;

    v29 = [v18 bundleForClass_];
    v30 = sub_21BE2599C();
    v32 = v31;

    *(&v44 + 1) = v22;
    *&v45 = sub_21BCE8C30();
    v33 = __swift_allocate_boxed_opaque_existential_1(&v43);
    sub_21BCE8C88(v3, v33, type metadata accessor for PurchaseSharingItem);
    LOWORD(v47) = 1026;
    *(&v47 + 1) = 0;
    *&v48 = &unk_282D85830;
    *(&v48 + 1) = &unk_282D85860;
    LOBYTE(v49) = 0;
    *&v38 = v35;
    *(&v38 + 1) = v34;
    *&v39 = v26;
    *(&v39 + 1) = v28;
    sub_21BCE8CF0();

    *(&v45 + 1) = sub_21BE2852C();
    *&v41 = a2;
    *(&v41 + 1) = v30;
    v42 = v32;
    *&v40 = 0;
    *(&v40 + 1) = a1;
    v47 = v38;
    v48 = v39;
    v51 = v32;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v49 = v40;
    v50 = v41;
    sub_21BBC7968(&v47, &v38);
    v46 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v47);
  }
}

uint64_t sub_21BCE89E0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PurchaseSharingItemView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BCE8C88(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseSharingItemView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BCE8B4C(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BCE8BB0;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BCE8B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCE8BB0(void *a1)
{
  v3 = *(type metadata accessor for PurchaseSharingItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC27720(a1, v4);
}

unint64_t sub_21BCE8C30()
{
  result = qword_27CDB9AD8;
  if (!qword_27CDB9AD8)
  {
    type metadata accessor for PurchaseSharingItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9AD8);
  }

  return result;
}

uint64_t sub_21BCE8C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BCE8CF0()
{
  result = qword_27CDB9AE0;
  if (!qword_27CDB9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9AE0);
  }

  return result;
}

unint64_t sub_21BCE8D44()
{
  result = qword_27CDB9AE8;
  if (!qword_27CDB9AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDB9AF0, qword_21BE41110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9AE8);
  }

  return result;
}

uint64_t sub_21BCE8DB0(uint64_t a1)
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

uint64_t sub_21BCE8E20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_21BCE8F60(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_21BCE91C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v18 = MEMORY[0x277D84A98];
  v19 = v2;
  v20 = MEMORY[0x277D84AA8];
  v21 = v3;
  v4 = sub_21BE27D2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_21BE27D1C();
  swift_getWitnessTable();
  sub_21BD37338(v9);
  v12 = *(v5 + 8);
  v12(v9, v4);
  sub_21BD37338(v11);
  return (v12)(v11, v4);
}

uint64_t sub_21BCE9360(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD37338(v5);
  sub_21BD37338(v7);
  return (*(v3 + 8))(v7, a2);
}

char *sub_21BCE944C()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for RemoteUIInviteHostingController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v4 = [v3 init];
  v5 = &v4[OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode];
  v6 = *&v4[OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode + 8];
  *v5 = v2;
  *(v5 + 1) = v1;

  return v4;
}

uint64_t sub_21BCE94BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCEAF24();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BCE9520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCEAF24();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BCE9584()
{
  sub_21BCEAF24();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BCE95AC()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  sub_21BE28D7C();
  v0[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[6] = v5;
  v0[7] = v4;

  return MEMORY[0x2822009F8](sub_21BCE969C, v5, v4);
}

uint64_t sub_21BCE969C()
{
  v13 = v0;
  v1 = v0[4];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5CFC0, &v12);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s forcing family reload", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_21BCE9868;

  return sub_21BD9DCC4();
}

uint64_t sub_21BCE9868(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    v9 = sub_21BCEAF78;
  }

  else
  {

    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    v9 = sub_21BCE9994;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BCE9994()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BCE9B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_21BCE9C3C, v9, v8);
}

uint64_t sub_21BCE9C3C()
{
  v25 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode;
  v0[9] = OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_21BB41E7C(v4, v5);
  v8 = v7;

  v0[10] = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_21BCE9E68;
    v10 = v0[2];

    return sub_21BCEA188(v6, v8);
  }

  else
  {
    v13 = v0[5];
    v12 = v0[6];

    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FDC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[3];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE5CFA0, &v24);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s does not have valid invite code", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);
    v22 = v0[5];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_21BCE9E68()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BCE9FAC, v5, v4);
}

uint64_t sub_21BCE9FAC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];

  v4 = (v3 + v1);
  v5 = *(v3 + v1 + 8);
  *v4 = 0;
  v4[1] = 0xE000000000000000;

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BCEA188(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = sub_21BE26A4C();
  v3[46] = v4;
  v5 = *(v4 - 8);
  v3[47] = v5;
  v6 = *(v5 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  sub_21BE28D7C();
  v3[50] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[51] = v8;
  v3[52] = v7;

  return MEMORY[0x2822009F8](sub_21BCEA28C, v8, v7);
}

uint64_t sub_21BCEA28C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 36;
  v17 = v0 + 42;
  v4 = v0[44];
  v16 = v0[45];
  v5 = v0[43];
  v6 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[53] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000021BE55FB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_21BE32770;
  *(v8 + 32) = 0x6F43657469766E69;
  *(v8 + 40) = 0xEA00000000006564;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;

  v9 = sub_21BBB6068(v8);
  swift_setDeallocating();
  sub_21BB3A4CC(v8 + 32, &unk_27CDB6F40, qword_21BE36348);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
  *(inited + 48) = v9;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v10 = sub_21BE288EC();

  [v6 setAdditionalParameters_];

  v11 = sub_21BE289CC();
  [v6 setClientName_];

  v12 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v1[54] = v12;
  [v12 setPresentationType_];
  [v12 setModalPresentationStyle_];
  v1[40] = sub_21BCEAA3C;
  v1[41] = 0;
  v1[36] = MEMORY[0x277D85DD0];
  v1[37] = 1107296256;
  v1[38] = sub_21BB42A18;
  v1[39] = &block_descriptor_32;
  v13 = _Block_copy(v3);
  [v12 setPresentationHandler_];
  _Block_release(v13);
  v1[2] = v1;
  v1[7] = v17;
  v1[3] = sub_21BCEA670;
  v14 = swift_continuation_init();
  v1[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v1[28] = MEMORY[0x277D85DD0];
  v1[29] = 1107296256;
  v1[30] = sub_21BC2D85C;
  v1[31] = &block_descriptor_13;
  v1[32] = v14;
  [v12 performWithContext:v6 completion:?];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21BCEA670()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BCEA778, v2, v1);
}

uint64_t sub_21BCEA778()
{
  v29 = v0;
  v1 = v0[50];

  v2 = v0[42];
  v3 = [v2 error];
  if (v3)
  {
    v4 = v3;
    v5 = v0[49];
    v6 = v0[46];
    v7 = v0[47];
    sub_21BE2614C();
    v8 = v4;
    sub_21BC51D50(v4);

    (*(v7 + 8))(v5, v6);
    v9 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EE8 != -1)
    {
      swift_once();
    }

    v11 = v0[53];
    v10 = v0[54];
    [v9 postNotificationName:qword_27CDB7E98 object:0 userInfo:0 deliverImmediately:1];
  }

  else
  {
    v12 = v0[48];
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[53];
    v16 = v0[54];
    v19 = v0[47];
    v18 = v0[48];
    v20 = v0[46];
    if (v15)
    {
      v27 = v0[48];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0xD000000000000016, 0x800000021BE5CF50, &v28);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s response ok", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);

      (*(v19 + 8))(v27, v20);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }
  }

  v24 = v0[48];
  v23 = v0[49];

  v25 = v0[1];

  return v25();
}

uint64_t sub_21BCEAA3C()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Invite view presented", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

id sub_21BCEACD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteUIInviteHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BCEAD5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BCE9B48(a1, v4, v5, v6);
}

uint64_t sub_21BCEAE10()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BCE95AC();
}

unint64_t sub_21BCEAED0()
{
  result = qword_27CDB9B80;
  if (!qword_27CDB9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9B80);
  }

  return result;
}

unint64_t sub_21BCEAF24()
{
  result = qword_27CDB9B88;
  if (!qword_27CDB9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9B88);
  }

  return result;
}

uint64_t sub_21BCEAF7C()
{
  v1 = qword_27CDB9B90;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF0, &unk_21BE41518);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27CDD42D0);
  swift_unknownObjectRelease();
  v4 = (v0 + qword_27CDD42D8);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

id sub_21BCEB010()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for EmergencyContactItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BCEB088(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for EmergencyContactItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BCEB114(uint64_t a1)
{
  v2 = qword_27CDB9B90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF0, &unk_21BE41518);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_27CDD42D0);
  swift_unknownObjectRelease();
  v5 = (a1 + qword_27CDD42D8);

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t sub_21BCEB1AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BCEB220(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BCEBB84();
}

uint64_t sub_21BCEB2D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BCEB368, v4, v3);
}

uint64_t sub_21BCEB368()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCBAA4();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

void sub_21BCEB46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C18, &qword_21BE41558);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + qword_27CDD42D0);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_21BCEE0B4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCEB780;
  aBlock[3] = &block_descriptor_37_0;
  v14 = _Block_copy(aBlock);

  [v11 fetchMedicalIDData:a3 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_21BCEB630(void *a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    sub_21BE261BC();
    v10 = a2;
    sub_21BC51D50(a2);

    (*(v5 + 8))(v8, v4);
    v12 = a2;
    v13 = 1;
  }

  else
  {
    v12 = a1;
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C18, &qword_21BE41558);
  return sub_21BE28D2C();
}

void sub_21BCEB780(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_21BCEB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C10, &qword_21BE41550);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + qword_27CDD42D0);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_21BCEDFA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCCB2E0;
  aBlock[3] = &block_descriptor_33;
  v14 = _Block_copy(aBlock);

  [v11 fetchLastModifiedDate:a3 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_21BCEB9BC(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF8, &qword_21BE41538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  if (a2)
  {
    v13 = a2;
    sub_21BE261BC();
    v14 = a2;
    sub_21BC51D50(a2);

    (*(v5 + 8))(v8, v4);
    *v12 = a2;
  }

  else
  {
    sub_21BBA3854(a1, &v16 - v11, &qword_27CDB9720, &unk_21BE39F00);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C10, &qword_21BE41550);
  return sub_21BE28D2C();
}

uint64_t sub_21BCEBB84()
{
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF8, &qword_21BE41538);
  v1[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_21BE25D1C();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v1[17] = v8;
  v9 = *(v8 - 8);
  v1[18] = v9;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_21BE28D7C();
  v1[23] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v1[24] = v12;
  v1[25] = v11;

  return MEMORY[0x2822009F8](sub_21BCEBD88, v12, v11);
}

uint64_t sub_21BCEBD88()
{
  v1 = v0[7];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[26] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v7 = qword_27CDD42D8;
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_21BCEBEA4;
  v9 = v0[7];

  return (sub_21BE19D18)(v1 + v7);
}

uint64_t sub_21BCEBEA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 200);
  v8 = *(v3 + 192);
  if (v1)
  {
    v9 = sub_21BCED200;
  }

  else
  {
    v9 = sub_21BCEBFE8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BCEBFE8()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = *(v0[7] + qword_27CDD42D0);
  v0[30] = v3;
  [v3 updateFamily_];
  sub_21BE261BC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "EmergencyContactItemProvider calling getEmergencyContactsCount", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[17];
  v10 = v0[18];

  v11 = *(v10 + 8);
  v0[31] = v11;
  v11(v8, v9);
  v0[32] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v0[33] = v13;
  v0[34] = v12;

  return MEMORY[0x2822009F8](sub_21BCEC140, v13, v12);
}

uint64_t sub_21BCEC140()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[7];
  v4 = sub_21BE28D6C();
  v0[35] = v4;
  v5 = swift_task_alloc();
  v0[36] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C00, &qword_21BE41540);
  *v7 = v0;
  v7[1] = sub_21BCEC268;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 2, v4, v9, 0xD000000000000028, 0x800000021BE5D040, sub_21BCEDF94, v5, v8);
}

uint64_t sub_21BCEC268()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);
  v8 = *v0;

  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_21BCEC3C8, v6, v5);
}

uint64_t sub_21BCEC3C8()
{
  v1 = *(v0 + 256);

  *(v0 + 304) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_21BCEC43C, v2, v3);
}

uint64_t sub_21BCEC43C()
{
  if (*(v0 + 25) == 1)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 248);
    v3 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);

    v9 = v1;
    sub_21BE261BC();
    v10 = v1;
    sub_21BC51D50(v1);
    sub_21BCD70BC(v1, 1);
    v2(v6, v7);
    swift_willThrow();

    sub_21BCD70BC(v1, 1);
    sub_21BC852D8();

    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 152);
    sub_21BE261BC();
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FCC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 304);
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v25;
      _os_log_impl(&dword_21BB35000, v23, v24, "EmergencyContactItemProvider count is %ld", v26, 0xCu);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    v27 = *(v0 + 304);
    v28 = *(v0 + 248);
    v30 = *(v0 + 144);
    v29 = *(v0 + 152);
    v31 = *(v0 + 136);

    *(v0 + 312) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v29, v31);
    if (v27 < 1)
    {
      v36 = *(v0 + 240);
      v37 = *(v0 + 224);
      v38 = *(v0 + 184);
      v39 = *(v0 + 104);
      v40 = *(v0 + 112);
      v41 = *(v0 + 56);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C08, &qword_21BE41548);
      v42 = (type metadata accessor for EmergencyContactDataItem(0) - 8);
      v43 = *(*v42 + 72);
      v44 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_21BE32770;
      v46 = v45 + v44;
      (*(v40 + 56))(v46 + v42[9], 1, 1, v39);
      *v46 = 0;
      *(v46 + 8) = 0;
      *(v46 + 16) = v37;
      *(v46 + v42[10]) = v36;
      *(v46 + v42[11]) = 3;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 32) = v45;
      v47 = v37;
      swift_unknownObjectRetain();
      v48 = v41;
      sub_21BE26CBC();
      v49 = *(v0 + 224);
      v50 = *(v0 + 208);
      v51 = *(v0 + 160);
      v52 = *(v0 + 168);
      v53 = *(v0 + 152);
      v54 = *(v0 + 128);
      v58 = *(v0 + 120);
      v59 = *(v0 + 96);
      v60 = *(v0 + 88);
      v61 = *(v0 + 72);
      v62 = *(v0 + 64);
      v55 = *(v0 + 56);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v56 = *(v0 + 40);
      sub_21BC852D8();

      v57 = *(v0 + 8);

      return v57(v56);
    }

    else
    {
      v32 = *(v0 + 176);
      v33 = *(v0 + 128);
      sub_21BE25D0C();
      *(v0 + 320) = sub_21BE28D6C();
      v35 = sub_21BE28D0C();
      *(v0 + 328) = v35;
      *(v0 + 336) = v34;

      return MEMORY[0x2822009F8](sub_21BCEC94C, v35, v34);
    }
  }
}

uint64_t sub_21BCEC94C()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[7];
  v4 = sub_21BE28D6C();
  v0[43] = v4;
  v5 = swift_task_alloc();
  v0[44] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[45] = v7;
  *v7 = v0;
  v7[1] = sub_21BCECA60;
  v8 = v0[12];
  v9 = v0[10];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v8, v4, v10, 0xD000000000000022, 0x800000021BE5D0A0, sub_21BCEDF9C, v5, v9);
}

uint64_t sub_21BCECA60()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);
  v8 = *v0;

  v5 = *(v1 + 336);
  v6 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_21BCECBC0, v6, v5);
}

uint64_t sub_21BCECBC0()
{
  v1 = v0[40];

  v2 = v0[24];
  v3 = v0[25];

  return MEMORY[0x2822009F8](sub_21BCECC24, v2, v3);
}

uint64_t sub_21BCECC24()
{
  v1 = v0[23];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];

  sub_21BBA3854(v3, v2, &qword_27CDB9BF8, &qword_21BE41538);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v0[39];
    v6 = v0[31];
    v7 = v0[26];
    v8 = v0[20];
    v9 = v0[17];
    v70 = v0[16];
    v10 = v0[14];
    v65 = v0[28];
    v68 = v0[13];
    v11 = v0[12];
    v12 = *v0[11];
    sub_21BE261BC();
    v13 = v12;
    sub_21BC51D50(v12);

    v6(v8, v9);
    swift_willThrow();

    sub_21BB3A4CC(v11, &qword_27CDB9BF8, &qword_21BE41538);
    (*(v10 + 8))(v70, v68);
    sub_21BC852D8();

    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    v18 = v0[15];
    v17 = v0[16];
    v20 = v0[11];
    v19 = v0[12];
    v22 = v0[8];
    v21 = v0[9];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[13];
    v26 = v0[14];
    v28 = v0[8];
    v27 = v0[9];
    sub_21BC1E320(v0[11], v27);
    sub_21BBA3854(v27, v28, &qword_27CDB9720, &unk_21BE39F00);
    v29 = *(v26 + 48);
    v30 = v29(v28, 1, v25);
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[13];
    v34 = v0[14];
    v35 = v0[8];
    v36 = v0[9];
    if (v30 == 1)
    {
      v37 = v0[15];
      sub_21BE25C7C();
      sub_21BB3A4CC(v36, &qword_27CDB9720, &unk_21BE39F00);
      v38 = *(v34 + 8);
      v38(v31, v33);
      v71 = v38;
      if (v29(v35, 1, v33) != 1)
      {
        sub_21BB3A4CC(v0[8], &qword_27CDB9720, &unk_21BE39F00);
      }
    }

    else
    {
      sub_21BB3A4CC(v0[9], &qword_27CDB9720, &unk_21BE39F00);
      v71 = *(v34 + 8);
      v71(v31, v33);
      (*(v34 + 32))(v32, v35, v33);
    }

    v60 = v0[38];
    v61 = v0[30];
    v39 = v0[28];
    v40 = v0[16];
    v41 = v0[13];
    v42 = v0[14];
    v63 = v0[7];
    v66 = v0[12];
    (*(v42 + 32))(v40, v0[15], v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C08, &qword_21BE41548);
    v43 = (type metadata accessor for EmergencyContactDataItem(0) - 8);
    v44 = *(*v43 + 72);
    v45 = (*(*v43 + 80) + 32) & ~*(*v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_21BE32770;
    v47 = v46 + v45;
    v48 = v43[9];
    (*(v42 + 16))(v47 + v48, v40, v41);
    (*(v42 + 56))(v47 + v48, 0, 1, v41);
    *v47 = 1;
    *(v47 + 8) = v60;
    *(v47 + 16) = v39;
    *(v47 + v43[10]) = v61;
    *(v47 + v43[11]) = 3;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[6] = v46;
    v49 = v39;
    swift_unknownObjectRetain();
    v50 = v63;
    sub_21BE26CBC();
    sub_21BB3A4CC(v66, &qword_27CDB9BF8, &qword_21BE41538);
    v71(v40, v41);
    v51 = v0[28];
    v52 = v0[26];
    v53 = v0[20];
    v54 = v0[21];
    v55 = v0[19];
    v56 = v0[16];
    v62 = v0[15];
    v64 = v0[12];
    v67 = v0[11];
    v69 = v0[9];
    v72 = v0[8];
    v57 = v0[7];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v58 = v0[5];
    sub_21BC852D8();

    v59 = v0[1];

    return v59(v58);
  }
}

uint64_t sub_21BCED200()
{
  v1 = v0[26];
  v2 = v0[23];

  sub_21BC852D8();

  v3 = v0[29];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[8];
  v11 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BCED2EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "EmergencyContactItemProvider medical change", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();
  v15 = v1;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_21BBA932C(0, 0, v5, &unk_21BE41530, v17);
}

uint64_t sub_21BCED524()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCBAA4();
}

void sub_21BCED5E8(void *a1)
{
  v1 = a1;
  sub_21BCED2EC();
}

void sub_21BCED650()
{
  sub_21BCED6F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BCED6F4()
{
  if (!qword_27CDB9BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9BB0, &qword_21BE50830);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB9BA8);
    }
  }
}

void sub_21BCED7A8()
{
  sub_21BC19578();
  if (v0 <= 0x3F)
  {
    sub_21BC1D2A0();
    if (v1 <= 0x3F)
    {
      sub_21BCED864();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21BCED864()
{
  result = qword_27CDB9BC8;
  if (!qword_27CDB9BC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDB9BC8);
  }

  return result;
}

uint64_t sub_21BCED8C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BCED934(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v1 + *(a1 + 36)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCED9BC(uint64_t a1, uint64_t a2)
{
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 36)));
  sub_21BE28ABC();
}

uint64_t sub_21BCEDA3C(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 36)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCEDAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 36);
  v4 = *(a2 + v3);
  v5 = sub_21BC5C62C(*(a1 + v3));
  v7 = v6;
  if (v5 == sub_21BC5C62C(v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BCEDBB4(uint64_t a1)
{
  *(a1 + 8) = sub_21BCEDC38(&qword_27CDB9BD8, type metadata accessor for EmergencyContactDataItem);
  result = sub_21BCEDC38(&qword_27CDB9BE0, type metadata accessor for EmergencyContactDataItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BCEDC38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BCEDC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BCEDE7C(v2, a2);
  v5 = *(v2 + *(a1 + 32));
  *(a2 + *(type metadata accessor for EmergencyContactView() + 20)) = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_21BCEDD00(uint64_t a1)
{
  *(a1 + 8) = sub_21BCEDC38(&qword_27CDB9BE8, type metadata accessor for EmergencyContactItemProvider);
  result = sub_21BCEDC38(&qword_27CDB6058, type metadata accessor for EmergencyContactItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BCEDD84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BCEDE04(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BCEDE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyContactDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCEDEE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCED524();
}

uint64_t sub_21BCEDFA4(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C10, &qword_21BE41550) - 8) + 80);

  return sub_21BCEB9BC(a1, a2);
}

uint64_t objectdestroy_30Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_21BCEE0B4(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C18, &qword_21BE41558) - 8) + 80);

  return sub_21BCEB630(a1, a2);
}

uint64_t sub_21BCEE148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BCEE19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_21BCEE220@<Q0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v10 = sub_21BE25BCC();
  v11 = [v9 initWithData_];

  if (v11)
  {
    v25 = v11;
    sub_21BE2836C();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v12 = sub_21BE283CC();

    (*(v3 + 8))(v6, v2);
    v13 = *(v1 + 32);
    v24[1] = v12;
    if (v13)
    {
      v14 = v1[2];
      v15 = v1[3];
      sub_21BE2869C();
      sub_21BE2725C();
      LOBYTE(v31) = 1;
      *&v27[54] = v50;
      *&v27[70] = v51;
      *&v27[86] = v52;
      *&v27[102] = v53;
      *&v27[6] = v47;
      *&v27[22] = v48;
      *&v27[38] = v49;
      v54 = v12;
      LOWORD(v55[0]) = 1;
      *(&v55[3] + 2) = *&v27[48];
      *(&v55[2] + 2) = *&v27[32];
      *(&v55[1] + 2) = *&v27[16];
      *(v55 + 2) = *v27;
      *&v55[7] = *(&v53 + 1);
      *(&v55[6] + 2) = *&v27[96];
      *(&v55[5] + 2) = *&v27[80];
      *(&v55[4] + 2) = *&v27[64];
      sub_21BCEEE28(&v54);
      v44 = v55[4];
      v45 = v55[5];
      v46[0] = v55[6];
      *(v46 + 9) = *(&v55[6] + 9);
      v41 = v55[1];
      v42 = v55[2];
      v43 = v55[3];
    }

    else
    {
      v18 = v1 + 2;
      v16 = v1[2];
      v17 = v18[1];
      sub_21BE2869C();
      sub_21BE26F2C();
      *&v28[38] = v49;
      *&v28[22] = v48;
      *&v28[6] = v47;
      v54 = v12;
      LOWORD(v55[0]) = 1;
      *&v55[3] = *(&v49 + 1);
      *(&v55[2] + 2) = *&v28[32];
      *(&v55[1] + 2) = *&v28[16];
      *(v55 + 2) = *v28;
      sub_21BCEEE14(&v54);
      v45 = v55[5];
      v46[0] = v55[6];
      *(v46 + 9) = *(&v55[6] + 9);
      v41 = v55[1];
      v42 = v55[2];
      v43 = v55[3];
      v44 = v55[4];
    }

    v39 = v54;
    v40 = v55[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C40, &unk_21BE416F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BCEED9C(&qword_27CDB9C38, &qword_27CDB9C40, &unk_21BE416F0);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700);
    sub_21BE2784C();
    v45 = v29[6];
    v46[0] = v30[0];
    *(v46 + 9) = *(v30 + 9);
    v41 = v29[2];
    v42 = v29[3];
    v43 = v29[4];
    v44 = v29[5];
    v39 = v29[0];
    v40 = v29[1];
    sub_21BCEEE20(&v39);
    v55[5] = v45;
    v55[6] = v46[0];
    *(&v55[6] + 10) = *(v46 + 10);
    v55[1] = v41;
    v55[2] = v42;
    v55[3] = v43;
    v55[4] = v44;
    v54 = v39;
    v55[0] = v40;
    sub_21BBA3854(v29, &v31, &qword_27CDB9C28, &qword_21BE416E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C28, &qword_21BE416E8);
    sub_21BCEECD0();
    sub_21BE2784C();

    sub_21BB3A4CC(v29, &qword_27CDB9C28, &qword_21BE416E8);
    v55[5] = v37;
    v55[6] = v38[0];
    *(&v55[6] + 10) = *(v38 + 10);
    v55[1] = v33;
    v55[2] = v34;
    v55[3] = v35;
    v55[4] = v36;
    v54 = v31;
    v55[0] = v32;
  }

  else
  {
    sub_21BCEECC4(&v39);
    v37 = v45;
    v38[0] = v46[0];
    *(v38 + 10) = *(v46 + 10);
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v31 = v39;
    v32 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C28, &qword_21BE416E8);
    sub_21BCEECD0();
    sub_21BE2784C();
  }

  v19 = v55[6];
  v20 = v26;
  *(v26 + 96) = v55[5];
  *(v20 + 112) = v19;
  *(v20 + 122) = *(&v55[6] + 10);
  v21 = v55[2];
  *(v20 + 32) = v55[1];
  *(v20 + 48) = v21;
  v22 = v55[4];
  *(v20 + 64) = v55[3];
  *(v20 + 80) = v22;
  result = v55[0];
  *v20 = v54;
  *(v20 + 16) = result;
  return result;
}

uint64_t sub_21BCEE8B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v8 = sub_21BE2838C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a2;
    v14 = [v13 profilePictureForFamilyMember:a1 pictureDiameter:a4];
    if (v14)
    {
      v15 = v14;
      v16 = sub_21BE25BFC();
      v18 = v17;

      v19 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v20 = sub_21BE25BCC();
      v21 = [v19 initWithData_];

      sub_21BBBEF94(v16, v18);
      if (v21)
      {
        v22 = v21;
        sub_21BE2836C();
        (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
        v23 = sub_21BE283CC();

        (*(v9 + 8))(v12, v8);
        sub_21BE2869C();
        sub_21BE26F2C();
        LOBYTE(v31[0]) = 1;
        *(v33 + 6) = v33[5];
        *(&v33[1] + 6) = v33[6];
        *(&v33[2] + 6) = v34;
        v28[0] = v23;
        v28[1] = 0;
        *v29 = 1;
        *&v29[2] = v33[0];
        *&v29[18] = v33[1];
        *&v29[34] = v33[2];
        *&v29[48] = *(&v34 + 1);
        v33[0] = v23;
        v33[1] = *v29;
        v33[2] = *&v29[16];
        v33[3] = *&v29[32];
        *&v33[4] = *(&v34 + 1);
        v30 = 0;
        BYTE8(v33[4]) = 0;
        sub_21BBA3854(v28, v31, &qword_27CDB9C50, &qword_21BE41700);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
        sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700);
        sub_21BE2784C();

        result = sub_21BB3A4CC(v28, &qword_27CDB9C50, &qword_21BE41700);
        v33[2] = v31[2];
        v33[3] = v32[0];
        *(&v33[3] + 9) = *(v32 + 9);
        v33[0] = v31[0];
        v33[1] = v31[1];
LABEL_7:
        v26 = v33[3];
        a3[2] = v33[2];
        a3[3] = v26;
        *(a3 + 57) = *(&v33[3] + 9);
        v27 = v33[1];
        *a3 = v33[0];
        a3[1] = v27;
        return result;
      }
    }

    else
    {
    }

    v25 = sub_21BE2837C();
    LOBYTE(v28[0]) = 1;
    *&v31[0] = v25;
    BYTE8(v32[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C50, &qword_21BE41700);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700);
    result = sub_21BE2784C();
    goto LABEL_7;
  }

  sub_21BBDAF04();
  sub_21BC2ACA4();
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

unint64_t sub_21BCEECD0()
{
  result = qword_27CDB9C30;
  if (!qword_27CDB9C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C28, &qword_21BE416E8);
    sub_21BCEED9C(&qword_27CDB9C38, &qword_27CDB9C40, &unk_21BE416F0);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9C30);
  }

  return result;
}

uint64_t sub_21BCEED9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21BCB2D08();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BCEEE48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BCEEE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BCEEEF8()
{
  result = qword_27CDB9C58;
  if (!qword_27CDB9C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C60, &qword_21BE41898);
    sub_21BCEECD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9C58);
  }

  return result;
}

unint64_t sub_21BCEEF84()
{
  result = qword_27CDB9C68;
  if (!qword_27CDB9C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C70, &qword_21BE418A0);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9C68);
  }

  return result;
}

uint64_t sub_21BCEF04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2838C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2837C();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_21BE283CC();

  (*(v5 + 8))(v8, v4);
  v10 = *(a1 + 56);
  sub_21BE2869C();
  sub_21BE26F2C();
  v17[0] = 1;
  *&v18[6] = v19;
  *&v18[22] = v20;
  *&v18[38] = v21;
  v11 = swift_allocObject();
  v12 = *(a1 + 80);
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = v12;
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v14;
  v15 = *&v18[16];
  *(a2 + 18) = *v18;
  *(v11 + 112) = *(a1 + 96);
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v15;
  *(a2 + 50) = *&v18[32];
  *(a2 + 64) = *&v18[46];
  *(a2 + 72) = sub_21BCEFD10;
  *(a2 + 80) = v11;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return sub_21BCEFD18(a1, v17);
}

uint64_t sub_21BCEF264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_21BE2754C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 72);
  v11 = *(a1 + 64);
  v38 = v11;
  if (v39 == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v38, &qword_27CDB9C78, &qword_21BE41900);
    (*(v7 + 8))(v10, v6);
    v12 = v31;
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  if ((*(a1 + 48) & 1) == 0)
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
  }

  v18 = sub_21BCDDBB8();

  if (v18 && (v19 = UIImagePNGRepresentation(v18), v18, v19))
  {
    v20 = sub_21BE25BFC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v36 = *(a1 + 80);
  v37 = *(a1 + 96);
  v31 = *(a1 + 80);
  v32 = *(a1 + 96);
  v34 = v20;
  v35 = v22;
  sub_21BBA3854(&v36, v33, &qword_27CDB9C80, &qword_21BE41908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C80, &qword_21BE41908);
  sub_21BE2840C();
  sub_21BBBF0B4(v31, *(&v31 + 1));

  v23 = sub_21BE28DAC();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  sub_21BE28D7C();
  sub_21BCEFD18(a1, &v31);
  v24 = sub_21BE28D6C();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = *(a1 + 80);
  *(v25 + 96) = *(a1 + 64);
  *(v25 + 112) = v27;
  *(v25 + 128) = *(a1 + 96);
  v28 = *(a1 + 16);
  *(v25 + 32) = *a1;
  *(v25 + 48) = v28;
  v29 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 32);
  *(v25 + 80) = v29;
  sub_21BC54908(0, 0, v5, &unk_21BE41918, v25);
}

uint64_t sub_21BCEF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = sub_21BE2754C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  sub_21BE28D7C();
  v4[20] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[21] = v9;
  v4[22] = v8;

  return MEMORY[0x2822009F8](sub_21BCEF700, v9, v8);
}

uint64_t sub_21BCEF700()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 72);
  v3 = v1[8];
  *(v0 + 104) = v3;
  *(v0 + 112) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);

    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(v0 + 104, &qword_27CDB9C78, &qword_21BE41900);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 120);
    v1 = *(v0 + 128);
  }

  *(v0 + 184) = v4;
  v9 = v1[2];
  v10 = v1[3];
  if (v1[6])
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v11 = v1[4];
    v12 = v1[5];
  }

  *(v0 + 192) = v12;
  v13 = *v1;
  v14 = v1[1];
  v15 = *((*MEMORY[0x277D85000] & *v4) + 0x150);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_21BCEF954;

  return v19(v13, v14, v9, v10, v11, v12);
}

uint64_t sub_21BCEF954(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v11 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = v3[21];
    v6 = v3[22];
    v7 = sub_21BCEFBB8;
  }

  else
  {
    v9 = v3[23];
    v8 = v3[24];

    v5 = v3[21];
    v6 = v3[22];
    v7 = sub_21BCEFA74;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BCEFA74()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);

  if (v1)
  {
    v3 = *(v0 + 208);
    v4 = UIImagePNGRepresentation(v3);

    if (v4)
    {
      v1 = sub_21BE25BFC();
      v6 = v5;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v6 = 0xF000000000000000;
LABEL_6:
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v8 + 96);
  *(v0 + 16) = *(v8 + 80);
  *(v0 + 32) = v9;
  v10 = *(v8 + 96);
  *(v0 + 40) = *(v8 + 80);
  *(v0 + 56) = v10;
  *(v0 + 88) = v1;
  *(v0 + 96) = v6;
  sub_21BBA3854(v0 + 16, v0 + 64, &qword_27CDB9C80, &qword_21BE41908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9C80, &qword_21BE41908);
  sub_21BE2840C();
  v11 = *(v0 + 56);
  sub_21BBBF0B4(*(v0 + 40), *(v0 + 48));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21BCEFBB8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[20];

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

__n128 sub_21BCEFC3C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_21BCEF04C(v9, v11);
  v6 = v11[5];
  *(a1 + 64) = v11[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v12;
  v7 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v7;
  result = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21BCEFCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21BCEFD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BCEF60C(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BCEFE00()
{
  result = qword_27CDB9C88;
  if (!qword_27CDB9C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9C90, &qword_21BE41920);
    sub_21BCEFE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9C88);
  }

  return result;
}

unint64_t sub_21BCEFE84()
{
  result = qword_27CDB9C98;
  if (!qword_27CDB9C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CA0, &qword_21BE41928);
    sub_21BCEED9C(&qword_27CDB9C48, &qword_27CDB9C50, &qword_21BE41700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9C98);
  }

  return result;
}

uint64_t sub_21BCEFF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BCEFF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BCEFFE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CA8, &qword_21BE41A40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = *(*(v1 + 32) + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v13 = v24;
  if (!v24)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v14 = [v13 memberForDSID_];

  if (v14)
  {
    v23 = &v23;
    v16 = MEMORY[0x28223BE20](v15);
    *(&v23 - 2) = v14;
    *(&v23 - 1) = v1;
    v17 = MEMORY[0x28223BE20](v16);
    *(&v23 - 2) = v14;
    *(&v23 - 1) = v1;
    MEMORY[0x28223BE20](v17);
    *(&v23 - 2) = sub_21BCF17A4;
    *(&v23 - 1) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CB0, &qword_21BE41A90);
    sub_21BCF17BC();
    sub_21BE268EC();
    v19 = sub_21BE268FC();
    v20 = (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = sub_21BCF17AC;
    *(&v23 - 1) = (&v23 - 4);
    sub_21BCF1910();
    sub_21BCF1964(&qword_27CDB61E8, MEMORY[0x277D40260]);
    sub_21BE2709C();

    (*(v8 + 32))(a1, v11, v7);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v8 + 56))(a1, v21, 1, v7);
}

id sub_21BCF03A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 32);
  swift_unknownObjectWeakLoadStrong();
  v20 = *(a2 + 80);
  v21 = *(a2 + 88);
  v22 = *(a2 + 96);
  v16 = v6;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v9 = *(a2 + 64);
  v10 = *(a2 + 56);

  [a1 isGuardian];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *a3 = a1;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();

  v11 = a1;
  *(a3 + 8) = sub_21BE270CC();
  *(a3 + 16) = v12;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BCF1964(&qword_27CDB68F0, type metadata accessor for FAFamilyLandingPageViewModel);
  *(a3 + 24) = sub_21BE270CC();
  *(a3 + 32) = v13;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = v19;
  *(a3 + 72) = v10;
  *(a3 + 80) = v9;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BCF1964(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
  *(a3 + 88) = sub_21BE270CC();
  *(a3 + 96) = v14;
  sub_21BE283EC();
  *(a3 + 104) = v20;
  *(a3 + 112) = v21;
  sub_21BE283EC();
  *(a3 + 120) = v20;
  *(a3 + 128) = v21;
  sub_21BE283EC();
  *(a3 + 136) = v20;
  *(a3 + 144) = v21;
  *(a3 + 152) = sub_21BE26BFC();
  *(a3 + 160) = v16;

  return v16;
}

uint64_t sub_21BCF0674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 32);
  v6 = [a1 dsid];
  if (!v6)
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v6 = sub_21BE293EC();
  }

  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BCF1964(&qword_27CDB68F0, type metadata accessor for FAFamilyLandingPageViewModel);
  result = sub_21BE270CC();
  *a3 = v6;
  a3[1] = result;
  a3[2] = v8;
  return result;
}

id sub_21BCF074C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v3;
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BCF0808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21BE32770;
  v6 = *(a3 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = v17;
  if (!v17)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v8 = [v7 memberForDSID_];

  if (v8 && (v9 = sub_21BE2916C(), v8, (v9 & 1) != 0))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v11;
  *(v5 + 32) = v10;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass_];
  sub_21BE2599C();

  v15 = sub_21BE289DC();

  return v15;
}

void sub_21BCF0A18(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *&a3[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v9 = v39[0];
  if (!v39[0])
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v10 = [v9 memberForDSID_];

  v11 = 0uLL;
  if (v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v12 = v39[0];
    if (!v39[0])
    {
      v12 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v13 = [v12 me];

    v38 = v10;
    if (v13)
    {
      if ([v13 isOrganizer])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v14 = v39[0];
        if (!v39[0])
        {
          v14 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
        }

        v15 = [v14 memberForDSID_];

        if (!v15 || (v16 = sub_21BE2916C(), v15, (v16 & 1) == 0))
        {
          if (([v38 isGuardian] & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CF0, &qword_21BE41B58);
            sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58);
            sub_21BE2784C();
            sub_21BCF1BBC(v39[0], v39[1], v40);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CE8, &qword_21BE41B50);
            sub_21BCF1AD0();
            sub_21BE2784C();

            sub_21BCF1C14(v39[0], v39[1], v40);
            goto LABEL_24;
          }
        }
      }

      v10 = v38;
    }

    if ([v10 isGuardian])
    {
      v17 = swift_allocObject();
      v17[2] = a1;
      v17[3] = a2;
      v17[4] = a3;
      v18 = swift_allocObject();
      v18[2] = a1;
      v18[3] = a2;
      v18[4] = a3;
      v19 = a1;
      v20 = a3;
      swift_retain_n();
      swift_retain_n();
      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CF0, &qword_21BE41B58);
      sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58);
      sub_21BE2784C();
      sub_21BCF1BBC(v39[0], v39[1], v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CE8, &qword_21BE41B50);
      sub_21BCF1AD0();
      sub_21BE2784C();

      sub_21BCF1C14(v39[0], v39[1], v40);

LABEL_24:
      v11 = *v39;
      v24 = v40;
      v25 = v41;
      v23 = v42;
      goto LABEL_25;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v26 = v39[0];
    if (!v39[0])
    {
      v26 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v27 = [v26 memberForDSID_];

    if (v27)
    {
      v28 = sub_21BE2916C();

      if (v28)
      {
        v29 = swift_allocObject();
        v29[2] = a1;
        v29[3] = a2;
        v29[4] = a3;
        v30 = swift_allocObject();
        v30[2] = a1;
        v30[3] = a2;
        v30[4] = a3;
        v31 = swift_allocObject();
        v31[2] = a1;
        v31[3] = a2;
        v31[4] = a3;
        v32 = a1;
        v33 = a3;
        v34 = v32;
        v35 = v33;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        v36 = v34;
        v37 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CE8, &qword_21BE41B50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9CF0, &qword_21BE41B58);
        sub_21BCF1AD0();
        sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58);
        sub_21BE2784C();

        goto LABEL_24;
      }
    }

    v23 = -256;
    v24 = 0uLL;
    v25 = 0uLL;
    v11 = 0uLL;
  }

  else
  {
    v23 = -512;
    v24 = 0uLL;
    v25 = 0uLL;
  }

LABEL_25:
  *a4 = v11;
  *(a4 + 16) = v24;
  *(a4 + 32) = v25;
  *(a4 + 48) = v23;
}

uint64_t sub_21BCF1250@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6 & 1;
  a1[3] = v7;
  return result;
}

void sub_21BCF132C(uint64_t a1@<X8>)
{
  *a1 = 11;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_282D86830;
  *(a1 + 24) = &unk_282D86860;
  *(a1 + 32) = 0;
}

uint64_t sub_21BCF1354@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BCF1434@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v5 = v12;
  if (!v12)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = sub_21BE2907C();

  if (v6)
  {
    sub_21BCF1C6C(a1);
    sub_21BB41FA4();
    result = sub_21BE27DBC();
    v11 = v10 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

uint64_t sub_21BCF1538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21BCF0808(a1, a2, a3);
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_21BCF1590@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_21BCF2070(a1);
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5 & 1;
  a2[3] = v6;
  return result;
}

uint64_t sub_21BCF15E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = v13;
  if (!v13)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v9 = sub_21BE2910C();

  if (v9 >> 62)
  {
    v10 = sub_21BE2951C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 <= 1)
  {
    v12 = 11;
  }

  else
  {
    v12 = 12;
  }

  *a4 = v12;
  *(a4 + 1) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 0;
  return result;
}

id sub_21BCF1704()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v3;
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

unint64_t sub_21BCF17BC()
{
  result = qword_27CDB9CB8;
  if (!qword_27CDB9CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CB0, &qword_21BE41A90);
    sub_21BCF1874();
    sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9CB8);
  }

  return result;
}

unint64_t sub_21BCF1874()
{
  result = qword_27CDB9CC0;
  if (!qword_27CDB9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9CC0);
  }

  return result;
}

double sub_21BCF18C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v7);
  result = *&v7;
  v6 = v8;
  *a1 = v7;
  *(a1 + 16) = v6;
  return result;
}

unint64_t sub_21BCF1910()
{
  result = qword_27CDB9CC8;
  if (!qword_27CDB9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9CC8);
  }

  return result;
}

uint64_t sub_21BCF1964(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BCF19BC()
{
  result = qword_27CDB9CD0;
  if (!qword_27CDB9CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CD8, &qword_21BE41AE8);
    sub_21BB3B038(&qword_27CDB9CE0, &qword_27CDB9CA8, &qword_21BE41A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9CD0);
  }

  return result;
}

uint64_t sub_21BCF1A94@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21BCF1590(v1[4], a1);
}

uint64_t sub_21BCF1AA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21BCF15E8(v1[4], &unk_282D868F0, &unk_282D86920, a1);
}

unint64_t sub_21BCF1AD0()
{
  result = qword_27CDB9CF8;
  if (!qword_27CDB9CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9CE8, &qword_21BE41B50);
    sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9CF8);
  }

  return result;
}

uint64_t sub_21BCF1B80@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21BCF1434(v1[4], a1);
}

uint64_t sub_21BCF1B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21BCF15E8(v1[4], &unk_282D86890, &unk_282D868C0, a1);
}

uint64_t sub_21BCF1BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_21BB3D80C(a3);
}

uint64_t sub_21BCF1C14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_21BB5AEC4(a3);
}

uint64_t sub_21BCF1C6C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v28;
  if (!v28)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = sub_21BE290BC();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_21BE2951C();
    if (!v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_24;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF047C0](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = [v8 firstName];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v11 = v10;
    v12 = sub_21BE28A0C();
    v27 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21BBBC990(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_21BBBC990((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v27;
  }

  while (v5 != v4);
LABEL_24:

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BB3B038(&qword_27CDB5AE0, &qword_27CDB6EF0, &unk_21BE33800);
  v20 = sub_21BE2897C();
  v22 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21BE32770;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_21BBBEFE8();
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;

  v24 = [v18 bundleForClass_];
  sub_21BE2599C();

  v25 = sub_21BE289DC();

  return v25;
}

uint64_t sub_21BCF2070(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v38;
  if (!v38)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = sub_21BE2908C();

  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v4 = v18)
  {
    v6 = 0;
    v37 = v4 & 0xC000000000000001;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    v9 = v4;
    while (1)
    {
      if (v37)
      {
        v4 = MEMORY[0x21CF047C0](v6, v4);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_18;
        }

        v4 = *(v4 + 8 * v6 + 32);
      }

      v10 = v4;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = sub_21BE2917C();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21BBBC990(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      if (v16 >= v15 >> 1)
      {
        v8 = sub_21BBBC990((v15 > 1), v16 + 1, 1, v8);
      }

      *(v8 + 2) = v16 + 1;
      v17 = &v8[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      ++v6;
      v4 = v9;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v18 = v4;
    i = sub_21BE2951C();
  }

  v8 = MEMORY[0x277D84F90];
LABEL_21:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v19 = v38;
  if (!v38)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v20 = [v19 me];

  if (v20)
  {
    if ([v20 isGuardian])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_21BE32770;
      v22 = sub_21BE2917C();
      v24 = v23;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_21BBBEFE8();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = objc_opt_self();

      v27 = [v26 bundleForClass_];
      sub_21BE2599C();

      v28 = sub_21BE289DC();
      v30 = v29;

      v31 = *(v8 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 >= *(v8 + 3) >> 1)
      {
        sub_21BBBC990(isUniquelyReferenced_nonNull_native, v31 + 1, 1, v8);
      }

      sub_21BBBF3E4(0, 0, 1, v28, v30);
    }

    else
    {
    }
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v33 = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BB3B038(&qword_27CDB5AE0, &qword_27CDB6EF0, &unk_21BE33800);
  v35 = sub_21BE2897C();

  return v35;
}

uint64_t sub_21BCF2598(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BCF2644()
{
  result = qword_27CDB9D28;
  if (!qword_27CDB9D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9D30, &unk_21BE41B70);
    sub_21BCF1AD0();
    sub_21BB3B038(&qword_27CDB9D00, &qword_27CDB9CF0, &qword_21BE41B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9D28);
  }

  return result;
}

uint64_t sub_21BCF2700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BCF2780(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BCF27F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BCF286C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

void (*sub_21BCF28DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCDB70;
}

uint64_t sub_21BCF2980(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCF29F8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21BCF2B7C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCF2BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BCF2D28(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCE114;
}

uint64_t AccountViewModel.__allocating_init(account:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC730, &qword_21BE4B290);
  sub_21BE26C6C();
  (*(v4 + 32))(v10 + v11, v7, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;

  sub_21BE26CBC();
  return v10;
}

uint64_t AccountViewModel.init(account:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC730, &qword_21BE4B290);
  sub_21BE26C6C();
  (*(v4 + 32))(v1 + v8, v7, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a1;

  sub_21BE26CBC();
  return v1;
}

uint64_t AccountViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AccountViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI16AccountViewModel__account;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCF3250@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AccountViewModel()
{
  result = qword_27CDB9D40;
  if (!qword_27CDB9D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCF32E4()
{
  sub_21BCF3478();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21BCF3478()
{
  if (!qword_280BD6A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBC730, &qword_21BE4B290);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A48);
    }
  }
}

uint64_t sub_21BCF3504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x44495344746C61;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x44495344746C61;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BCF35F0()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCF3688()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BCF370C()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCF37A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BCF4B00();
  *a2 = result;
  return result;
}

void sub_21BCF37D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x44495344746C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21BCF3824()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44495344746C61;
  }
}

uint64_t sub_21BCF3874@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BCF4B00();
  *a1 = result;
  return result;
}

uint64_t sub_21BCF389C(uint64_t a1)
{
  v2 = sub_21BCF4938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BCF38D8(uint64_t a1)
{
  v2 = sub_21BCF4938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BCF3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyMemberToggleRowRUI();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = v6;
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7008, &qword_21BE364D0);
  v50 = *(v60 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v60);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89E0, &qword_21BE3CE38);
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D58, &qword_21BE41D80);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v45 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D60, &qword_21BE41D88);
  v16 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v45 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v18 = *(v61 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v61);
  v21 = &v45 - v20;
  v22 = *(v4 + 24);
  sub_21BE2881C();
  if (sub_21BE287CC())
  {
    sub_21BE26EEC();
    v23 = v61;
    (*(v18 + 16))(v59, v21, v61);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    v24 = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    v62 = v60;
    v63 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = v10;
    v63 = MEMORY[0x277D839B0];
    v64 = OpaqueTypeConformance2;
    v65 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v18 + 8))(v21, v23);
  }

  else
  {
    sub_21BE2767C();
    v47 = v10;
    v48 = v13;
    v27 = *(v4 + 32);
    v46 = a1;
    v28 = (a1 + v27);
    v29 = *v28;
    v49 = a2;
    v30 = *(v28 + 1);
    v66 = v29;
    v67 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2841C();
    sub_21BE284BC();
    v31 = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    v32 = v51;
    v33 = v60;
    sub_21BE27F3C();
    (*(v50 + 8))(v9, v33);
    LOBYTE(v62) = v29;
    v63 = v30;
    sub_21BE283FC();
    v34 = v54;
    sub_21BCF47F0(v46, v54);
    v35 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v36 = swift_allocObject();
    sub_21BCF4854(v34, v36 + v35);
    v62 = v33;
    v63 = v31;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = MEMORY[0x277D839B0];
    v39 = MEMORY[0x277D839C8];
    v40 = v56;
    v41 = v47;
    sub_21BE281BC();

    v42 = v41;
    (*(v55 + 8))(v32, v41);
    v43 = v57;
    v44 = v48;
    (*(v57 + 16))(v59, v40, v48);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    v62 = v42;
    v63 = v38;
    v64 = v37;
    v65 = v39;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v43 + 8))(v40, v44);
  }
}

uint64_t sub_21BCF406C(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = type metadata accessor for FamilyMemberToggleRowRUI();
  v6 = (a3 + *(v5 + 28));
  if (*v6)
  {
    v7 = v5;
    v8 = *a2;
    v9 = *a3;
    v10 = a3[1];
    v17 = MEMORY[0x277D839B0];
    v16[0] = v8;

    v11 = sub_21BE2882C();
    sub_21BD401E0(v16, v9, v10);
    v11(&v15, 0);

    v12 = *(v7 + 24);
    sub_21BE2881C();
    return sub_21BE287BC();
  }

  else
  {
    v14 = v6[1];
    sub_21BE2883C();
    sub_21BB3FF84(&qword_280BD69D8, MEMORY[0x277D461B0]);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCF41B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_21BE2881C();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D68, &qword_21BE41D90);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = v35 - v9;
  v10 = type metadata accessor for FamilyMemberToggleRowRUI();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (v14 + *(v12 + 28));
  sub_21BE2883C();
  sub_21BB3FF84(&qword_280BD69D8, MEMORY[0x277D461B0]);
  v16 = sub_21BE2727C();
  *v15 = v16;
  v15[1] = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v19 = v41;
  v20 = sub_21BE29B3C();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v35[1] = v21;
    v35[2] = v16;
    v35[0] = v6;
    v41 = v10;
    *v14 = v20;
    v14[1] = v21;
    v22 = a1[4];
    v23 = a1;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_21BCF4938();
    v24 = v40;
    sub_21BE29B4C();
    v42[0] = 0;
    v25 = v7;
    v26 = sub_21BE2986C();
    v27 = v41;
    v14[2] = v26;
    v14[3] = v28;
    v42[0] = 1;
    v29 = sub_21BE2987C();
    v30 = v39;
    v31 = v14 + *(v27 + 32);
    v44 = v29 & 1;
    sub_21BE283EC();
    v32 = v43;
    *v31 = v42[0];
    *(v31 + 1) = v32;
    sub_21BB3A35C(v23, v42);
    v33 = v35[0];
    sub_21BE2880C();
    (*(v30 + 8))(v24, v25);
    (*(v36 + 32))(v14 + *(v27 + 24), v33, v37);
    sub_21BCF47F0(v14, v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return sub_21BCF498C(v14);
  }
}

uint64_t sub_21BCF460C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9D50, &qword_21BE41D78);
  v6 = (a1 + v5[10]);
  v7 = qword_280BD83C0;

  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  sub_21BB3FF84(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);

  *v6 = sub_21BE270CC();
  v6[1] = v8;
  v9 = v5[11];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v10 = (a1 + v9);
  type metadata accessor for FamilyCircleStore(0);
  sub_21BB3FF84(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);

  *v10 = sub_21BE270CC();
  v10[1] = v11;
  *a1 = v4;
  a1[1] = v3;
  return sub_21BCF3914(v1, a1 + v5[9]);
}

uint64_t sub_21BCF47F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberToggleRowRUI();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCF4854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberToggleRowRUI();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCF48B8(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for FamilyMemberToggleRowRUI() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BCF406C(a1, a2, v6);
}

unint64_t sub_21BCF4938()
{
  result = qword_27CDB9D70;
  if (!qword_27CDB9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9D70);
  }

  return result;
}

uint64_t sub_21BCF498C(uint64_t a1)
{
  v2 = type metadata accessor for FamilyMemberToggleRowRUI();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BCF49FC()
{
  result = qword_27CDB9D80;
  if (!qword_27CDB9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9D80);
  }

  return result;
}

unint64_t sub_21BCF4A54()
{
  result = qword_27CDB9D88;
  if (!qword_27CDB9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9D88);
  }

  return result;
}

unint64_t sub_21BCF4AAC()
{
  result = qword_27CDB9D90;
  if (!qword_27CDB9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9D90);
  }

  return result;
}

uint64_t sub_21BCF4B00()
{
  v0 = sub_21BE2980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_21BCF4B4C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + 24);
  sub_21BCBD3B8(v1, *(v3 + 32));
  return v1;
}

id sub_21BCF4C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 24);
  *a2 = v4;
  v5 = *(v3 + 32);
  *(a2 + 8) = v5;
  return sub_21BCBD3B8(v4, v5);
}

uint64_t sub_21BCF4CB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();
}

uint64_t sub_21BCF4D8C()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + 40);
}

uint64_t sub_21BCF4E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 40);
}

uint64_t sub_21BCF4EDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BCF4F08(v4);
}

uint64_t sub_21BCF4F08(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_21BC20858(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BCF505C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_21BCF512C()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + 48);
}

uint64_t type metadata accessor for AgeRangeSharingViewModel()
{
  result = qword_27CDB9DD0;
  if (!qword_27CDB9DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BCF5218(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BCF5328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 52);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_21BCF53D8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();
}

uint64_t sub_21BCF54B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v1 + 56);
  *a1 = *(v1 + 52);
  *(a1 + 4) = v4;
  return result;
}

uint64_t sub_21BCF5560()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + 64);
}

uint64_t sub_21BCF5604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 64);
}

uint64_t sub_21BCF56B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BCF56DC(v4);
}

uint64_t sub_21BCF56DC(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v4 = sub_21BE28DBC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 64);
LABEL_7:
  *(v1 + 64) = a1;
}

uint64_t sub_21BCF5880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v5 = *(v3 + 81);
  *a2 = *(v3 + 80);
  a2[1] = v5;
  return result;
}

uint64_t sub_21BCF5930(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();
}

uint64_t sub_21BCF5A08()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v0 + 81))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 80);
}

uint64_t sub_21BCF5ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 82);
  return result;
}

uint64_t sub_21BCF5B8C()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + 82);
}

uint64_t sub_21BCF5C2C(uint64_t result)
{
  if (*(v1 + 82) == (result & 1))
  {
    *(v1 + 82) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BCF5D3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v5 = *(v3 + 96);
  *a2 = *(v3 + 88);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21BCF5E20()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t sub_21BCF5EC4(uint64_t result, char a2)
{
  if ((*(v2 + 96) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 88) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 88) = result;
    *(v2 + 96) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();
}

uint64_t sub_21BCF6058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  v5 = sub_21BE25D6C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21BCF6150(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21BE25D6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_21BCF6314(v7);
}

uint64_t sub_21BCF621C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  v4 = sub_21BE25D6C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21BCF6314(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21BE25D6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_21BCF65B4(&qword_27CDB78D8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_21BE2899C();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_21BCF65B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BCF65FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE25D6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_21BCF6734(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCF5FF8();
  return sub_21BCF686C;
}

uint64_t sub_21BCF68D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21BCF69C4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21BCF6A80(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BCF6BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*sub_21BCF6C08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BCF6878();
  return sub_21BCF6D40;
}

uint64_t sub_21BCF6D4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  *a2 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding);
  return result;
}

uint64_t sub_21BCF6E24()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  return *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding);
}

uint64_t sub_21BCF6ECC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  return result;
}

id sub_21BCF6FE4()
{
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);

  return v1;
}

id sub_21BCF709C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  *a2 = v4;

  return v4;
}

void sub_21BCF715C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion;
  v5 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v6 = v5;
  v7 = sub_21BE2940C();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }
}

uint64_t AgeRangeSharingViewModel.__allocating_init(ageRangeController:ageRangeAccountProtocol:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_21BCFDFD4(a1, a2);
}

uint64_t AgeRangeSharingViewModel.init(ageRangeController:ageRangeAccountProtocol:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_21BCFE038(a1, a2, v2);
}

uint64_t sub_21BCF7378(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_21BE26A4C();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCF7448, 0, 0);
}

uint64_t sub_21BCF7448()
{
  v18 = v0;
  v1 = v0[28];
  v2 = v0[23];
  sub_21BE2614C();

  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  if (v5)
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(v10, v9, &v17);
    _os_log_impl(&dword_21BB35000, v3, v4, "Fetching accountInfo for altDSID: %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[29] = v13;
  v14 = *(v0[24] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BCF7678;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_34;
  v0[14] = v15;
  [v14 fetchFamilyCircleWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCF7678()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_21BCF7C60;
  }

  else
  {
    v3 = sub_21BCF7788;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BCF7788()
{
  v39 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = [v2 ageCategory];
  if ((*(v1 + 82) ^ (v3 == 1)))
  {
    v4 = v3 == 1;
    v5 = *(v0 + 192);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v0 + 160) = v5;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v1 + 82) = v3 == 1;
  }

  v7 = *(v0 + 192);
  v8 = [*(v7 + 72) accountID];
  sub_21BE28A0C();

  v9 = sub_21BE2903C();

  v10 = [v2 ageCategory];
  v11 = v10;
  if ((*(v7 + 96) & 1) != 0 || *(v7 + 88) != v10)
  {
    v12 = *(v0 + 192);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = 0;
    *(v0 + 168) = v12;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  else
  {

    *(v7 + 88) = v11;
    *(v7 + 96) = 0;
  }

  v14 = v9 & 0x100;
  v15 = *(v0 + 216);
  sub_21BE2614C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 232);
  v20 = *(v0 + 208);
  v21 = *(v0 + 216);
  v37 = *(v0 + 200);
  if (v18)
  {
    v36 = *(v0 + 216);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    *(v0 + 248) = v9 & 1;
    v24 = v14 >> 8;
    *(v0 + 249) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9DB8, &qword_21BE42040);
    v25 = sub_21BE28A5C();
    v27 = sub_21BB3D81C(v25, v26, &v38);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_21BB35000, v16, v17, "Successfully fetched accountInfo: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x21CF05C50](v23, -1, -1);
    v28 = v22;
    v29 = v9 & 1;
    MEMORY[0x21CF05C50](v28, -1, -1);

    v19(v36, v37);
  }

  else
  {

    v19(v21, v37);
    v29 = v9 & 1;
    v24 = v14 >> 8;
  }

  v30 = *(v0 + 216);
  v31 = *(v0 + 224);
  v32 = *(v0 + 192);
  swift_getKeyPath();
  v33 = swift_task_alloc();
  *(v33 + 16) = v32;
  *(v33 + 24) = v29;
  *(v33 + 25) = v24;
  *(v0 + 152) = v32;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_21BCF7C60()
{
  v25 = v0;
  v1 = *(v0 + 240);
  swift_willThrow();

  v2 = *(v0 + 216);
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v23 = *(v0 + 232);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v0 + 248) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9DB8, &qword_21BE42040);
    v10 = sub_21BE28A5C();
    v12 = sub_21BB3D81C(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21BB35000, v3, v4, "Successfully fetched accountInfo: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);

    v23(v5, v7);
  }

  else
  {
    v13 = *(v0 + 232);
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);

    v13(v14, v16);
  }

  v17 = *(v0 + 216);
  v18 = *(v0 + 224);
  v19 = *(v0 + 192);
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = 0;
  *(v0 + 152) = v19;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21BCF7F00(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_21BE26A4C();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_21BE28D7C();
  v2[28] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x2822009F8](sub_21BCF8000, v7, v6);
}

uint64_t sub_21BCF8000()
{
  v1 = v0[23];
  v2 = *(v1 + 72);
  v3 = [v2 entryPoint];
  v4 = *(v1 + 16);
  v5 = [v2 accountID];
  if (!v5)
  {
    sub_21BE28A0C();
    v5 = sub_21BE289CC();
  }

  v0[31] = v5;
  v6 = v0[22];
  v0[2] = v0;
  v0[3] = sub_21BCF8188;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BCF8794;
  v0[13] = &block_descriptor_132;
  v0[14] = v7;
  [v4 setAgeRangeSharingGlobalStateForEntryPoint:v3 viewController:v6 altDSID:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCF8188()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_21BCF8594;
  }

  else
  {
    v6 = sub_21BCF82B8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCF82B8()
{
  v1 = *(v0 + 216);

  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Successfully finished onboarding flow", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  (*(v7 + 8))(v5, v6);
  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = sub_21BCF83F0;
  v9 = *(v0 + 184);

  return sub_21BCFAB04();
}

uint64_t sub_21BCF83F0(int a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_21BCF8518, v5, v4);
}

uint64_t sub_21BCF8518()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 272);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);

  v5 = *(v0 + 8);

  return v5(v2, 0);
}

uint64_t sub_21BCF8594()
{
  v30 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[26];

  swift_willThrow();

  sub_21BE2614C();
  v5 = v2;
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[32];
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[20];
    v17 = sub_21BE29A5C();
    v19 = sub_21BB3D81C(v17, v18, &v29);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_21BB35000, v6, v7, "Returning global state as unknown, error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[32];
  v24 = sub_21BE25A7C();

  v26 = v0[26];
  v25 = v0[27];

  v27 = v0[1];

  return v27(0, v24);
}

uint64_t sub_21BCF8794(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
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

uint64_t sub_21BCF8840()
{
  v1[4] = v0;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_21BCF894C, v6, v5);
}

uint64_t sub_21BCF894C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v2 = *(v1 + 64);
  v0[13] = v2;
  if (v2)
  {
    v3 = v0[9];

    sub_21BE2614C();
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21BB35000, v4, v5, "Update task in progress.", v6, 2u);
      MEMORY[0x21CF05C50](v6, -1, -1);
    }

    v7 = v0[9];
    v8 = v0[5];
    v9 = v0[6];

    v10 = *(v9 + 8);
    v0[14] = v10;
    v10(v7, v8);
    v11 = *(MEMORY[0x277D857C8] + 4);
    v12 = swift_task_alloc();
    v0[15] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v0[16] = v13;
    *v12 = v0;
    v12[1] = sub_21BCF8BB8;
    v14 = MEMORY[0x277D84950];
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v13, v2, v15, v13, v14);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_21BCF8FE4;
    v17 = v0[4];

    return sub_21BCF9398();
  }
}

uint64_t sub_21BCF8BB8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_21BCF9188;
  }

  else
  {
    v7 = sub_21BCF8CF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BCF8CF4()
{
  v1 = v0[8];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Successfully executed updateTask.", v9, 2u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v5(v6, v7);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_21BCF8E38;
  v11 = v0[4];

  return sub_21BCF9398();
}

uint64_t sub_21BCF8E38()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BCF8F58, v4, v3);
}

uint64_t sub_21BCF8F58()
{
  v1 = v0[13];

  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BCF8FE4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BCF9104, v4, v3);
}

uint64_t sub_21BCF9104()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BCF9188()
{
  v26 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  sub_21BE2614C();
  v3 = v1;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 112);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v0 + 24) = v6;
    v12 = v6;
    v13 = sub_21BE28A5C();
    v15 = sub_21BB3D81C(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_21BB35000, v4, v5, "Failed to execute updateTask with error: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    v24(v23, v9);
  }

  else
  {
    v16 = *(v0 + 112);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    v16(v17, v19);
  }

  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_21BCF8E38;
  v21 = *(v0 + 32);

  return sub_21BCF9398();
}

uint64_t sub_21BCF9398()
{
  v1[5] = v0;
  v1[6] = sub_21BE28D7C();
  v1[7] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_21BCF9448;

  return sub_21BCFAB04();
}

uint64_t sub_21BCF9448(int a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(v3 + 144) = a1;

  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v8;
  v5[1] = sub_21BCF9594;
  v6 = *(v2 + 40);

  return sub_21BCF9DB0();
}

uint64_t sub_21BCF9594()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v8 = *v0;

  v6 = sub_21BE28D0C();
  *(v1 + 80) = v6;
  *(v1 + 88) = v5;

  return MEMORY[0x2822009F8](sub_21BCF96D8, v6, v5);
}

uint64_t sub_21BCF96D8()
{
  v1 = [*(v0[5] + 72) accountID];
  v2 = sub_21BE28A0C();
  v4 = v3;

  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_21BCF97AC;
  v6 = v0[5];

  return sub_21BCF7378(v2, v4);
}

uint64_t sub_21BCF97AC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BCF98F0, v5, v4);
}

uint64_t sub_21BCF98F0()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 40);
    swift_getKeyPath();
    *(v0 + 112) = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
    *(v0 + 16) = v1;
    *(v0 + 120) = sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F1C();

    v2 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
    *(v0 + 128) = v2;
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_21BCF9B48;
    v5 = *(v0 + 40);

    return sub_21BCFCE00(v2);
  }

  else
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);

    if (*(v8 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) == 1)
    {
      *(v8 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = 1;
    }

    else
    {
      v9 = *(v0 + 40);
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 1;
      *(v0 + 32) = v9;
      sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
      sub_21BE25F0C();
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_21BCF9B48(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 148) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21BCF9C90, v6, v5);
}

uint64_t sub_21BCF9C90()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  if (v1 == *(v3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding))
  {
    *(v3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = *(v0 + 148);
  }

  else
  {
    v4 = *(v0 + 148);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 40);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    *(v0 + 24) = v7;
    sub_21BE25F0C();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BCF9DB0()
{
  v1[21] = v0;
  v2 = sub_21BE26A4C();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_21BE28D7C();
  v1[26] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[27] = v6;
  v1[28] = v5;

  return MEMORY[0x2822009F8](sub_21BCF9EB0, v6, v5);
}

uint64_t sub_21BCF9EB0()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  v3 = *(v1 + 72);
  v0[29] = v3;
  v4 = [v3 accountID];
  if (!v4)
  {
    sub_21BE28A0C();
    v4 = sub_21BE289CC();
  }

  v0[30] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BCFA018;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E68, &qword_21BE422A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BCFA928;
  v0[13] = &block_descriptor_123;
  v0[14] = v5;
  [v2 fetchAgeRangesWith:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCFA018()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = sub_21BCFA6B8;
  }

  else
  {
    v6 = sub_21BCFA148;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

char *sub_21BCFA148()
{
  v55 = v0;
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = *(v0 + 144);
    }

    v2 = sub_21BE2951C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v54[0] = MEMORY[0x277D84F90];
  result = sub_21BC59CD4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v52 = v0;
  v4 = 0;
  v5 = v54[0];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CF047C0](v4, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v6 bundleID];
    v9 = sub_21BE28A0C();
    v11 = v10;

    v12 = sub_21BCFE564(v9, v11);
    v14 = v13;

    v54[0] = v5;
    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      sub_21BC59CD4((v15 > 1), v16 + 1, 1);
      v5 = v54[0];
    }

    ++v4;
    *(v5 + 2) = v16 + 1;
    v17 = &v5[24 * v16];
    *(v17 + 4) = v7;
    *(v17 + 5) = v12;
    *(v17 + 6) = v14;
  }

  while (v2 != v4);

  v0 = v52;
LABEL_16:

  v54[0] = v5;

  sub_21BCFD530(v54);
  v19 = *(v0 + 208);

  v20 = v54[0];
  v21 = *(v54[0] + 2);
  if (v21)
  {
    v54[0] = MEMORY[0x277D84F90];
    sub_21BE296DC();
    v22 = 32;
    do
    {
      v23 = *&v20[v22];
      sub_21BE296BC();
      v24 = *(v54[0] + 2);
      sub_21BE296EC();
      sub_21BE296FC();
      sub_21BE296CC();
      v22 += 24;
      --v21;
    }

    while (v21);

    v25 = v54[0];
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 168);
  sub_21BE2614C();

  v28 = sub_21BE26A2C();
  v29 = sub_21BE28FCC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 232);
    v31 = *(v0 + 184);
    v51 = *(v0 + 176);
    v53 = *(v0 + 200);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54[0] = v33;
    *v32 = 136315394;
    v34 = sub_21BB3A2A4(0, &qword_27CDB75A0, 0x277D08200);
    v35 = MEMORY[0x21CF03DF0](v25, v34);
    v37 = sub_21BB3D81C(v35, v36, v54);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = [v30 accountID];
    v39 = sub_21BE28A0C();
    v41 = v40;

    v42 = sub_21BB3D81C(v39, v41, v54);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_21BB35000, v28, v29, "Successfully fetched age range list: %s for accountID: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v33, -1, -1);
    MEMORY[0x21CF05C50](v32, -1, -1);

    (*(v31 + 8))(v53, v51);
  }

  else
  {
    v43 = *(v0 + 200);
    v44 = *(v0 + 176);
    v45 = *(v0 + 184);

    (*(v45 + 8))(v43, v44);
  }

  v46 = *(v0 + 168);
  swift_getKeyPath();
  v47 = swift_task_alloc();
  *(v47 + 16) = v46;
  *(v47 + 24) = v25;
  *(v47 + 32) = 0;
  *(v0 + 160) = v46;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);

  sub_21BE25F0C();

  sub_21BCF4F08(v25);
  v49 = *(v0 + 192);
  v48 = *(v0 + 200);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_21BCFA6B8()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[26];
  v4 = v0[24];

  swift_willThrow();

  sub_21BE2614C();
  v5 = v2;
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21BB35000, v6, v7, "Failed to fetch age range list with error: %@", v9, 0xCu);
    sub_21BB3A4CC(v10, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v13 = v0[31];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[21];
  v17 = v0[22];

  (*(v15 + 8))(v14, v17);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  v19 = MEMORY[0x277D84F90];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  *(v18 + 32) = 0;
  v0[19] = v16;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  sub_21BCF4F08(v19);

  v21 = v0[24];
  v20 = v0[25];

  v22 = v0[1];

  return v22();
}

uint64_t sub_21BCFA928(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_21BB3A2A4(0, &qword_27CDB75A0, 0x277D08200);
    **(*(v4 + 64) + 40) = sub_21BE28C3C();

    return MEMORY[0x282200950](v4);
  }
}

id sub_21BCFAA1C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21BE289CC();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_21BE25A8C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21BCFAB04()
{
  v1[20] = v0;
  v2 = sub_21BE26A4C();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_21BE28D7C();
  v1[25] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[26] = v6;
  v1[27] = v5;

  return MEMORY[0x2822009F8](sub_21BCFAC04, v6, v5);
}

uint64_t sub_21BCFAC04()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  v3 = *(v1 + 72);
  v0[28] = v3;
  v4 = [v3 accountID];
  if (!v4)
  {
    sub_21BE28A0C();
    v4 = sub_21BE289CC();
  }

  v0[29] = v4;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_21BCFAD6C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E60, &qword_21BE42298);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BCFB3C0;
  v0[13] = &block_descriptor_119;
  v0[14] = v5;
  [v2 globalStateForAltDSID:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCFAD6C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_21BCFB15C;
  }

  else
  {
    v6 = sub_21BCFAE9C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCFAE9C()
{
  v27 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 248);

  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 28) = 0;
  *(v0 + 152) = v3;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  sub_21BE2614C();

  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 176);
    v24 = *(v0 + 168);
    v25 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 67109378;
    *(v10 + 4) = v4;
    *(v10 + 8) = 2080;
    v12 = [v8 accountID];
    v13 = sub_21BE28A0C();
    v15 = v14;

    v16 = sub_21BB3D81C(v13, v15, &v26);

    *(v10 + 10) = v16;
    _os_log_impl(&dword_21BB35000, v6, v7, "Successfully fetched age range sharing option: %d for accountID: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);

    (*(v19 + 8))(v17, v18);
  }

  v21 = *(v0 + 184);
  v20 = *(v0 + 192);

  v22 = *(v0 + 8);

  return v22(v4);
}

uint64_t sub_21BCFB15C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[23];

  swift_willThrow();

  sub_21BE2614C();
  v5 = v2;
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21BB35000, v6, v7, "Failed to fetch age range sharing option with error: %@", v9, 0xCu);
    sub_21BB3A4CC(v10, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v13 = v0[30];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];

  (*(v15 + 8))(v14, v16);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  *(v18 + 28) = 0;
  v0[18] = v17;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  v20 = v0[23];
  v19 = v0[24];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_21BCFB3C0(uint64_t a1, int a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BCFB48C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = sub_21BE25D1C();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCFB584, 0, 0);
}

uint64_t sub_21BCFB584()
{
  v1 = [*(v0 + 144) altDSID];
  if (!v1)
  {
    sub_21BE28A0C();
    v2 = sub_21BE289CC();

    v1 = v2;
  }

  v30 = v1;
  v3 = [*(v0 + 144) bundleID];
  if (!v3)
  {
    sub_21BE28A0C();
    v4 = sub_21BE289CC();

    v3 = v4;
  }

  v29 = v3;
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 144);
  v28 = [v9 lowerbound];
  v27 = [v9 upperbound];
  v10 = [v9 response];
  v11 = [v9 createdAt];
  sub_21BE25CDC();

  sub_21BE25CEC();
  (*(v6 + 56))(v8, 0, 1, v7);
  v12 = [v9 validationLevel];
  v13 = sub_21BE25CAC();
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v14 = 0;
  }

  else
  {
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 160);
    v14 = sub_21BE25CAC();
    (*(v15 + 8))(v17, v16);
  }

  if (v10 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 184);
  v26 = *(v0 + 152);
  v20 = [objc_allocWithZone(MEMORY[0x277D08200]) initWithAltDSID:v30 bundleID:v29 lowerbound:v28 upperbound:v27 response:v18 responseType:1 createdAt:v13 invalidatedAt:v14 validationLevel:v12];
  *(v0 + 192) = v20;

  (*(v19 + 8))(v25, v24);
  v21 = *(v26 + 16);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BCFB8DC;
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BCF8794;
  *(v0 + 104) = &block_descriptor_115;
  *(v0 + 112) = v22;
  [v21 updateAgeRangeWith:v20 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BCFB8DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_21BCFBA64;
  }

  else
  {
    v3 = sub_21BCFB9EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BCFB9EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BCFBA64()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t sub_21BCFBAF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = a4;
  *(v4 + 216) = a2;
  *(v4 + 144) = a1;
  sub_21BE28D7C();
  *(v4 + 168) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v4 + 176) = v6;
  *(v4 + 184) = v5;

  return MEMORY[0x2822009F8](sub_21BCFBB94, v6, v5);
}

uint64_t sub_21BCFBB94()
{
  v1 = [*(v0 + 152) accountID];
  if (!v1)
  {
    sub_21BE28A0C();
    v1 = sub_21BE289CC();
  }

  *(v0 + 192) = v1;
  v2 = *(v0 + 160);
  v3 = *(v0 + 216);
  v4 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 80) = v2;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v5 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  *(v0 + 200) = v5;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BCFBD84;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BCF8794;
  *(v0 + 104) = &block_descriptor_162;
  *(v0 + 112) = v6;
  [v4 setGlobalStateForAltDSID:v3 forAltDSID:v1 privacyVersion:v5 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BCFBD84()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_21BCFBF24;
  }

  else
  {
    v6 = sub_21BCFBEB4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCFBEB4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BCFBF24()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_21BCFBFA4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = sub_21BE264FC();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = sub_21BE26A4C();
  v2[28] = v7;
  v8 = *(v7 - 8);
  v2[29] = v8;
  v9 = *(v8 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_21BE28D7C();
  v2[33] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v2[34] = v11;
  v2[35] = v10;

  return MEMORY[0x2822009F8](sub_21BCFC144, v11, v10);
}

uint64_t sub_21BCFC144()
{
  v1 = *(v0 + 184);
  if (*(v1 + 48))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    *(v0 + 168) = v1;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v1 + 48) = 0;
  }

  *(v0 + 288) = 0;
  if ([*(v0 + 176) response] == 2)
  {
    v3 = *(v0 + 264);
    if (*(v1 + 48) == 1)
    {
      v4 = *(v0 + 264);

      *(v1 + 48) = 1;
    }

    else
    {
      v9 = *(v0 + 184);
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 1;
      *(v0 + 160) = v9;
      sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
      sub_21BE25F0C();
    }

    v11 = *(v0 + 256);
    sub_21BE2614C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = 1;
      _os_log_impl(&dword_21BB35000, v12, v13, "Setting showShareAgeRangeAgain to: %{BOOL}d", v14, 8u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);

    (*(v17 + 8))(v15, v16);
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v20 = *(v0 + 240);
    v21 = *(v0 + 216);
    v22 = *(v0 + 192);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 184);
    sub_21BE264EC();
    v7 = *(v6 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_21BCFC558;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BBB25CC;
    *(v0 + 104) = &block_descriptor_110;
    *(v0 + 112) = v8;
    [v7 fetchAgeWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BCFC558()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 280);
  v5 = *(v1 + 272);
  if (v3)
  {
    v6 = sub_21BCFCC14;
  }

  else
  {
    v6 = sub_21BCFC688;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCFC688()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = [v2 integerValue];

  v4 = [v1 upperbound];
  if (!v4)
  {
    v21 = *(v0 + 264);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
LABEL_8:

    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v4 integerValue];
  v7 = *(v0 + 216);
  if (v6 >= v3)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 176);
  v10 = *(v0 + 216);
  v11 = sub_21BE264DC();
  if (v8)
  {
    v12 = *(v0 + 264);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v13 = *(v0 + 240);
    sub_21BE2614C();
    v14 = v8;
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FDC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      v19 = v8;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 1024;
      *(v17 + 14) = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "Failed to fetch age with error: %@, setting showShareAgeRangeAgain to: %{BOOL}d", v17, 0x12u);
      sub_21BB3A4CC(v18, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v18, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_14;
  }

  if ((v11 & 1) == 0)
  {
LABEL_7:
    v22 = *(v0 + 264);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    goto LABEL_8;
  }

  v23 = [*(v0 + 176) invalidatedAt];
  if (v23)
  {
    v24 = v23;
    v25 = *(v0 + 264);
    v27 = *(v0 + 208);
    v26 = *(v0 + 216);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);

    sub_21BE25CDC();

    (*(v27 + 8))(v26, v28);
    v30 = sub_21BE25D1C();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    sub_21BB3A4CC(v29, &qword_27CDB9720, &unk_21BE39F00);
  }

  else
  {
    v39 = *(v0 + 184);
    v38 = *(v0 + 192);
    v40 = sub_21BE25D1C();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
    sub_21BB3A4CC(v38, &qword_27CDB9720, &unk_21BE39F00);
    v41 = *(v39 + 48);
    v42 = *(v0 + 264);
    v43 = *(v0 + 184);
    if (v41 == 1)
    {
      v44 = *(v0 + 264);

      *(v43 + 48) = 1;
    }

    else
    {
      swift_getKeyPath();
      v45 = swift_task_alloc();
      *(v45 + 16) = v43;
      *(v45 + 24) = 1;
      *(v0 + 152) = v43;
      sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
      sub_21BE25F0C();
    }

    v46 = *(v0 + 248);
    sub_21BE2614C();
    v47 = sub_21BE26A2C();
    v48 = sub_21BE28FDC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = 1;
      _os_log_impl(&dword_21BB35000, v47, v48, "Successfully fetched age and within grace period, setting showShareAgeRangeAgain to: %{BOOL}d", v49, 8u);
      MEMORY[0x21CF05C50](v49, -1, -1);
    }

    v50 = *(v0 + 248);
    v51 = *(v0 + 224);
    v52 = *(v0 + 232);
    v54 = *(v0 + 208);
    v53 = *(v0 + 216);
    v55 = *(v0 + 200);

    (*(v52 + 8))(v50, v51);
    (*(v54 + 8))(v53, v55);
  }

LABEL_14:
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 240);
  v34 = *(v0 + 216);
  v35 = *(v0 + 192);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_21BCFCC14()
{
  v1 = v0[37];
  v2 = v0[33];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  swift_willThrow();
  (*(v4 + 8))(v3, v5);
  v6 = v0[37];
  v7 = v0[30];
  sub_21BE2614C();
  v8 = v6;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 1024;
    *(v11 + 14) = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "Failed to fetch age with error: %@, setting showShareAgeRangeAgain to: %{BOOL}d", v11, 0x12u);
    sub_21BB3A4CC(v12, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[29] + 8))(v0[30], v0[28]);
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[30];
  v18 = v0[27];
  v19 = v0[24];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21BCFCE00(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_21BE26A4C();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCFCEC0, 0, 0);
}

uint64_t sub_21BCFCEC0()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  v3 = [*(v1 + 72) accountID];
  if (!v3)
  {
    sub_21BE28A0C();
    v3 = sub_21BE289CC();
  }

  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BCFD024;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_107_0;
  v0[14] = v4;
  [v2 fetchPrivacyVersionForAltDSID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCFD024()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_21BCFD200;
  }

  else
  {
    v3 = sub_21BCFD134;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BCFD134()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  if (v1)
  {
    v3 = *(v0 + 184);
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v4 = v3;
    v5 = sub_21BE2940C();

    v6 = v5 ^ 1;
  }

  else
  {

    v6 = 1;
  }

  v7 = *(v0 + 216);

  v8 = *(v0 + 8);

  return v8(v6 & 1);
}

uint64_t sub_21BCFD200()
{
  v26 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  swift_willThrow();

  sub_21BE2614C();
  v4 = v2;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 208);
    v24 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = sub_21BE29A5C();
    v17 = sub_21BB3D81C(v15, v16, &v25);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_21BB35000, v5, v6, "Failed to fetch privacy version from server: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v8 + 8))(v24, v9);
  }

  else
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22(1);
}

uint64_t AgeRangeSharingViewModel.deinit()
{
  sub_21BCBD3D4(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  v5 = sub_21BE25D6C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss + 8);
  sub_21BB5AEC4(*(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss));

  v7 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
  v8 = sub_21BE25F5C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t AgeRangeSharingViewModel.__deallocating_deinit()
{
  AgeRangeSharingViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCFD530(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21BDFD5FC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21BCFD59C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21BCFD59C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21BE2991C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21BE28C7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21BCFD774(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21BCFD694(0, v2, 1, a1);
  }

  return result;
}