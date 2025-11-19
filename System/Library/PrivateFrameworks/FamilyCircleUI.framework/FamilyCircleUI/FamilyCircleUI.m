uint64_t static FamilySettingsFactory.sharedProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280BD7EB8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_21BB3A35C(&qword_280BD7EC0, v1);
}

void sub_21BB38DF4()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [v0 aa_primaryAppleAccount];

  v2 = type metadata accessor for FamilyViewsProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_21BB38FD8(v1);

  qword_280BD7ED8 = v2;
  unk_280BD7EE0 = &off_282D8BE00;
  qword_280BD7EC0 = v5;
}

uint64_t type metadata accessor for FamilyViewsProvider()
{
  result = qword_280BD8208;
  if (!qword_280BD8208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BB38EE8()
{
  result = sub_21BE2626C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void *sub_21BB38FD8(void *a1)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - v5;
  v7 = sub_21BE2626C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v12 = qword_280BD7CD0;
  v1[2] = qword_280BD7CD0;
  v13 = qword_280BD79D8;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v2[3] = qword_280BD79E0;
  v15 = qword_280BD86B0;

  if (v15 != -1)
  {
    swift_once();
  }

  v2[4] = qword_280BD86B8;
  v16 = qword_280BD83C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v2[5] = qword_280BDCBF0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v17 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v17 = MEMORY[0x277D84FA0];
  }

  v2[6] = v17;
  v2[7] = 0;
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount) = 0;
  v18 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages);
  if (qword_280BD84F8 != -1)
  {
    swift_once();
  }

  v20 = *algn_280BD8508;
  v21 = qword_280BD8510;
  v22 = unk_280BD8518;
  *v19 = qword_280BD8500;
  v19[1] = v20;
  v19[2] = v21;
  v19[3] = v22;
  v23 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_rowCache;
  type metadata accessor for FamilyRowCache();
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  swift_allocObject();

  *(v2 + v23) = FamilyRowCache.init(defaults:)(v37);
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView) = 0;
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 5;
  v24 = v2[7];
  if (v24)
  {
    v25 = v2[7];
  }

  else
  {
    v25 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    v24 = 0;
  }

  v26 = v24;
  sub_21BE2909C();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus, v11, v7);
  v27 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount);
  v28 = v36;
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount) = v36;
  v29 = v28;

  v30 = sub_21BE28DAC();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  sub_21BE28D7C();

  v31 = sub_21BE28D6C();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v2;
  sub_21BBA932C(0, 0, v6, &unk_21BE39E48, v32);

  sub_21BB42168();

  return v2;
}

id sub_21BB39468()
{
  result = [objc_allocWithZone(type metadata accessor for FamilySettingsApplication()) init];
  qword_280BD7CD0 = result;
  return result;
}

uint64_t type metadata accessor for FamilySettingsApplication()
{
  result = qword_280BD7CA8;
  if (!qword_280BD7CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB394E8()
{
  sub_21BB395DC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21BE25D1C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BB395DC()
{
  if (!qword_280BD6A88)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A88);
    }
  }
}

uint64_t sub_21BB3962C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB8, &qword_21BE45DE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication__state;
  aBlock = 0;
  v44 = 0;
  v45 = 0x8000000000000000;
  sub_21BE26C6C();
  (*(v7 + 32))(&v1[v11], v10, v6);
  v12 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_familyCircleStore;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *&v1[v12] = qword_280BD79E0;
  v13 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesStore;
  v14 = qword_280BD76F0;

  if (v14 != -1)
  {
    swift_once();
  }

  *&v1[v13] = qword_280BDCB98;
  v15 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_checklistRankingConfigStore;
  v16 = qword_280BD6CD0;

  if (v16 != -1)
  {
    swift_once();
  }

  *&v1[v15] = qword_280BDCB48;
  v17 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_navigationPathSubject;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFC0, &qword_21BE45DF0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  *&v1[v17] = sub_21BE26C2C();
  v21 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_appleCardStore;
  if (qword_280BD7508 != -1)
  {
    swift_once();
  }

  *&v1[v21] = qword_280BDCB60;

  sub_21BE25D0C();
  v22 = [objc_opt_self() defaultStore];
  if (v22)
  {
    v23 = v22;
    *&v1[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_accountStore] = v22;
    v24 = objc_allocWithZone(MEMORY[0x277CED1D0]);
    v25 = v23;
    v26 = [v24 initWithAccountStore_];
    *&v1[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager] = v26;
    v27 = objc_allocWithZone(MEMORY[0x277CED1E8]);
    v28 = v26;
    v29 = [v27 initWithAccountStore_];
    *&v1[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesOwnerManager] = v29;
    v30 = type metadata accessor for FamilySettingsApplication();
    v49.receiver = v1;
    v49.super_class = v30;
    v31 = objc_msgSendSuper2(&v49, sel_init);
    [v28 setDelegate_];
    v32 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v47 = sub_21BD43BDC;
    v48 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_21BE012D4;
    v46 = &block_descriptor_23_0;
    v33 = _Block_copy(&aBlock);
    v34 = v31;

    [v28 addAccountChangeObserver:v34 handler:v33];
    _Block_release(v33);

    v35 = sub_21BE28DAC();
    v36 = *(*(v35 - 8) + 56);
    v36(v5, 1, 1, v35);
    sub_21BE28D7C();
    v37 = sub_21BE28D6C();
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    v38[2] = v37;
    v38[3] = v39;
    v38[4] = v34;
    sub_21BBA932C(0, 0, v5, &unk_21BE45E00, v38);

    v36(v5, 1, 1, v35);
    v40 = sub_21BE28D6C();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;
    sub_21BBA932C(0, 0, v5, &unk_21BE45E10, v41);

    sub_21BB3DD30();
    sub_21BB3E2EC();

    return v34;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BB39C14()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB39C50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

char *sub_21BB39CD0()
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v0 = objc_allocWithZone(type metadata accessor for AccountStatusObserver());
  v1 = sub_21BB39D64(v7);
  v2 = type metadata accessor for FamilyCircleStore(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  result = sub_21BB3A990(v1);
  qword_280BD79E0 = v5;
  return result;
}

id sub_21BB39D64(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC14FamilyCircleUI21AccountStatusObserver_accountStore];
  v4 = type metadata accessor for AccountStatusObserver();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v25.receiver = v1;
  v25.super_class = v4;
  v5 = objc_msgSendSuper2(&v25, sel_init);
  sub_21BB3A078(a1, &v20);
  if (v21)
  {
    sub_21BB3D104(&v20, v22);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    v7 = *MEMORY[0x277CB8BA0];
    *(inited + 32) = sub_21BE28A0C();
    *(inited + 40) = v8;
    v9 = v5;
    sub_21BB3A0E8(inited);
    swift_setDeallocating();
    sub_21BB3A250(inited + 32);
    v10 = objc_allocWithZone(MEMORY[0x277CB8F80]);
    v11 = v9;
    v12 = sub_21BE28E3C();

    v13 = [v10 initWithAccountTypes:v12 delegate:v11];

    v23 = sub_21BB3A2A4(0, &qword_280BD6918, 0x277CB8F80);
    v24 = &off_282D95F48;

    v22[0] = v13;
    if (v21)
    {
      sub_21BB3A4CC(&v20, &qword_27CDBC818, &qword_21BE4B448);
    }
  }

  v14 = v5 + OBJC_IVAR____TtC14FamilyCircleUI21AccountStatusObserver_accountStore;
  swift_beginAccess();
  sub_21BB3A2EC(v22, v14);
  swift_endAccess();
  swift_beginAccess();
  if (*(v14 + 24))
  {
    sub_21BB3A35C(v14, v22);
    swift_endAccess();
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v16[1];

    v18(sub_21BB3A7F8, v17, v15, v16);

    sub_21BB3A4CC(a1, &qword_27CDBC818, &qword_21BE4B448);

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_21BB3A4CC(a1, &qword_27CDBC818, &qword_21BE4B448);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_21BB3A040()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB3A078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC818, &qword_21BE4B448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB3A0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
    v3 = sub_21BE295CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_21BE29ACC();

      sub_21BE28ABC();
      result = sub_21BE29B0C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_21BE2995C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21BB3A2A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_21BB3A2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC818, &qword_21BE4B448);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB3A35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_21BB3A404(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21BB3A73C;
  v5[3] = &block_descriptor_113;
  v4 = _Block_copy(v5);

  [v3 registerWithCompletion_];
  _Block_release(v4);
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BB3A4CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21BB3A598(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3A5D0()
{
  sub_21BB3A6E8(319, &qword_280BD6A68, &qword_27CDB5990, &qword_21BE36DA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21BB3A6E8(319, &qword_280BD6A48, &unk_27CDBC730, &qword_21BE4B290);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_21BB3A6E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21BE26CCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21BB3A73C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_21BB3A2A4(0, &qword_280BD68E0, 0x277CB8F30);
    v4 = sub_21BE28C3C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_21BB3A830()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v1 = [objc_opt_self() defaultCenter];
    if (qword_280BD7E90 != -1)
    {
      swift_once();
    }

    [v1 postNotificationName:qword_280BDCBD8 object:0 userInfo:0 deliverImmediately:1];
  }
}

uint64_t sub_21BB3A958()
{
  result = sub_21BE289CC();
  qword_280BDCBD8 = result;
  return result;
}

char *sub_21BB3A990(void *a1)
{
  v2 = v1;
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v54 - v6;
  v7 = sub_21BE26A4C();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = qword_280BD7A28;
  v57[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5990, &qword_21BE36DA0);
  sub_21BE26C6C();
  (*(v17 + 32))(&v2[v21], v20, v16);
  v22 = qword_280BD7A00;
  v57[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC730, &qword_21BE4B290);
  sub_21BE26C6C();
  (*(v12 + 32))(&v2[v22], v15, v11);
  *&v2[qword_280BD7A08] = 0;
  v2[qword_280BD7A18] = 0;
  *&v2[qword_280BD79F0] = a1;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v53 = a1;
    v24 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v23 = a1;
    v24 = MEMORY[0x277D84FA0];
  }

  *(v2 + 4) = v24;
  *(v2 + 5) = 0;
  *(v2 + 2) = 0xD000000000000011;
  *(v2 + 3) = 0x800000021BE4B230;
  v25 = objc_opt_self();
  swift_retain_n();
  v26 = [v25 defaultCenter];
  [v26 addObserver:v2 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  v27 = [v25 defaultCenter];
  if (qword_280BD7E90 != -1)
  {
    swift_once();
  }

  [v27 addObserver:v2 selector:? name:? object:?];

  v28 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  [v28 setCachePolicy_];
  v57[0] = 0;
  v29 = [v28 fetchCachedFamilyCircle_];
  v30 = v57[0];
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v32 = v30;
    v33 = sub_21BE25A8C();

    swift_willThrow();
    v31 = 0;
  }

  sub_21BE2613C();
  v34 = v29;
  v35 = sub_21BE26A2C();
  v36 = sub_21BE28FFC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v31;
    *v38 = v31;
    v39 = v34;
    _os_log_impl(&dword_21BB35000, v35, v36, "Circle store request fetched %@", v37, 0xCu);
    sub_21BB3A4CC(v38, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v38, -1, -1);
    MEMORY[0x21CF05C50](v37, -1, -1);
  }

  v41 = v54;
  v40 = v55;
  (*(v54 + 8))(v10, v55);
  v42 = *(v2 + 2);
  v43 = *(v2 + 3);
  swift_retain_n();

  v44 = v56;
  sub_21BE2613C();
  (*(v41 + 56))(v44, 0, 1, v40);
  v57[0] = v31;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC860, &qword_21BE4B4C8);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = v34;
  v49 = sub_21BE262AC();
  v50 = *(v2 + 5);
  *(v2 + 5) = v49;

  sub_21BD9C948();

  v51 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21BB3B038(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3B080()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ServicesStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = swift_retain_n();
  v5 = sub_21BB3B274(v4, v3);

  qword_280BDCB98 = v5;
  return result;
}

uint64_t type metadata accessor for ServicesStore()
{
  result = qword_280BD76D8;
  if (!qword_280BD76D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3B160()
{
  sub_21BB3B210();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BB3B210()
{
  if (!qword_280BD6A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76A8, &qword_21BE38780);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A78);
    }
  }
}

uint64_t sub_21BB3B274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-1] - v11;
  v27[3] = type metadata accessor for FamilyCircleStore(0);
  v27[4] = &protocol witness table for FamilyCircleStore;
  v27[0] = a1;
  v13 = qword_280BD76E8;
  v14 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB76A8, &qword_21BE38780);
  sub_21BE26C6C();
  (*(v9 + 32))(a2 + v13, v12, v8);
  *(a2 + qword_280BDCB88) = 1;
  *(a2 + qword_280BDCB90) = 0;
  sub_21BB3A35C(v27, a2 + 48);
  if (v14 >> 62 && sub_21BE2951C())
  {
    v15 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *(a2 + 32) = v15;
  *(a2 + 40) = 0;
  strcpy((a2 + 16), "ServicesStore");
  *(a2 + 30) = -4864;
  swift_retain_n();
  sub_21BE2613C();
  v16 = sub_21BE26A4C();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v26 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC890, &qword_21BE4B4E0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = sub_21BE262AC();
  v21 = *(a2 + 40);
  *(a2 + 40) = v20;

  sub_21BB3B610();

  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  [v23 addObserver:a2 selector:sel_updateNotification name:*MEMORY[0x277D08138] object:0];

  v24 = [v22 defaultCenter];
  [v24 addObserver:a2 selector:sel_updateNotification name:*MEMORY[0x277D080E0] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return a2;
}

void sub_21BB3B610()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC890, &qword_21BE4B4E0);
    sub_21BB3B038(&qword_280BD89A8, &unk_27CDBC890, &qword_21BE4B4E0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB3B758()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

char *sub_21BB3B794()
{
  v0 = type metadata accessor for ChecklistRankingConfigStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_21BB3B920();
  qword_280BDCB48 = result;
  return result;
}

uint64_t type metadata accessor for ChecklistRankingConfigStore()
{
  result = qword_280BD6CB8;
  if (!qword_280BD6CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3B820()
{
  sub_21BB3B8C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BB3B8C0()
{
  if (!qword_280BD6A80)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A80);
    }
  }
}

char *sub_21BB3B920()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_21BE264CC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 6) = sub_21BE264BC();
  v14 = qword_280BD6CD8;
  *&v24 = 0x6B6361626C6C6166;
  *(&v24 + 1) = 0xE800000000000000;
  v15 = MEMORY[0x277D84F90];
  *&v25 = 1;
  *(&v25 + 1) = MEMORY[0x277D84F90];
  sub_21BE26C6C();
  (*(v7 + 32))(&v1[v14], v10, v6);
  if (v15 >> 62 && sub_21BE2951C())
  {
    v16 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *(v1 + 4) = v16;
  *(v1 + 5) = 0;
  *(v1 + 2) = 0xD000000000000015;
  *(v1 + 3) = 0x800000021BE605F0;
  swift_retain_n();
  sub_21BE2613C();
  v17 = sub_21BE26A4C();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  v24 = 0u;
  v25 = 0u;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBF0, &unk_21BE488C0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_21BE262AC();
  v22 = *(v1 + 5);
  *(v1 + 5) = v21;

  sub_21BB3BC4C();

  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BB3BC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

void sub_21BB3BC4C()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBF0, &unk_21BE488C0);
    sub_21BB3B038(&qword_280BD89C0, &qword_27CDBBBF0, &unk_21BE488C0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BB3BD98()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(FAAppleCardUtilities);

  v1 = [v0 init];
  v2 = type metadata accessor for AppleCardStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();

  v7 = sub_21BB3C114(v6, v1, v5);

  qword_280BDCB60 = v7;
}

Class __getPKAppleCardUtilitiesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PassKitUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782F3E38;
    v7 = 0;
    PassKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (PassKitUILibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKAppleCardUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKAppleCardUtilitiesClass_block_invoke_cold_1();
  }

  getPKAppleCardUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for AppleCardStore()
{
  result = qword_280BD74F0;
  if (!qword_280BD74F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3BFF4()
{
  sub_21BB3C0BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BB3C0BC()
{
  if (!qword_280BD6A98)
  {
    sub_21BE25D1C();
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A98);
    }
  }
}

uint64_t sub_21BB3C114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v58 - v22;
  v24 = sub_21BE25D1C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v58 - v30;
  v69[3] = type metadata accessor for FamilyCircleStore(0);
  v69[4] = &protocol witness table for FamilyCircleStore;
  v69[0] = a1;
  *(a3 + qword_280BDCB78) = 0;
  *(a3 + qword_280BDCB80) = 0;
  *(a3 + qword_280BDCB58) = 0;
  v32 = a3 + qword_280BD7510;
  *v32 = sub_21BBDC524;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  sub_21BB3A35C(v69, a3 + qword_280BDCB68);
  *(a3 + qword_280BDCB70) = a2;
  swift_unknownObjectRetain();
  sub_21BE25D0C();
  swift_beginAccess();
  (*(v25 + 16))(v29, v31, v24);
  sub_21BE26C6C();
  (*(v25 + 8))(v31, v24);
  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v33 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(a3 + 32) = v33;
  *(a3 + 40) = 0;
  strcpy((a3 + 16), "AppleCardStore");
  *(a3 + 31) = -18;
  swift_retain_n();
  sub_21BE2613C();
  v34 = sub_21BE26A4C();
  (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  (*(v25 + 56))(v19, 1, 1, v24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7E8, &qword_21BE4B428);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  v38 = sub_21BE262AC();
  v39 = *(a3 + 40);
  *(a3 + 40) = v38;

  sub_21BB3CA64();

  sub_21BB3A35C(a3 + qword_280BDCB68, v66);
  v40 = v67;
  v41 = v68;
  __swift_project_boxed_opaque_existential_1Tm(v66, v67);
  (*(v41 + 32))(v40, v41);
  v42 = swift_allocObject();
  swift_weakInit();

  v43 = sub_21BE2635C();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v47 = v58;
  v48 = v62;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v49 = v63;
  v50 = v60;
  sub_21BE26CFC();
  (*(v59 + 8))(v47, v50);
  v51 = swift_allocObject();
  v51[2] = v46;
  v51[3] = &unk_21BE50AB8;
  v51[4] = v42;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v52 = v65;
  sub_21BE26D1C();

  (*(v64 + 8))(v49, v52);
  (*(v61 + 8))(v15, v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  swift_beginAccess();

  sub_21BE26BBC();
  swift_endAccess();

  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = [ObjCClassFromMetadata defaultCenter];
  [v54 addObserver:a3 selector:sel_serviceAccountDidChange name:*MEMORY[0x277D38358] object:0];

  v55 = [ObjCClassFromMetadata defaultCenter];
  v56 = qword_280BD6B10;

  if (v56 != -1)
  {
    swift_once();
  }

  [v55 addObserver:a3 selector:sel_serviceApplicationDidChange name:qword_280BD6B18 object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  return a3;
}

uint64_t sub_21BB3CA14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21BB3CA64()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7E8, &qword_21BE4B428);
    sub_21BB3B038(&unk_280BD89B0, &unk_27CDBC7E8, &qword_21BE4B428);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB3CBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *v5;
  v9 = *a3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BB3CC48(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21BB3A2A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3CC8C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21BB3A2A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BB3CCDC()
{
  result = qword_280BD6978;
  if (!qword_280BD6978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5990, &qword_21BE36DA0);
    sub_21BB3CC48(&qword_280BD6970, &qword_280BD6980, 0x277D08248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6978);
  }

  return result;
}

uint64_t sub_21BB3CD8C()
{
  result = sub_21BE289CC();
  qword_280BD6B18 = result;
  return result;
}

uint64_t block_copy_helper_21_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BB3CDDC()
{
  v0 = sub_21BE26D8C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v18[3] = v0;
  v18[4] = &off_282D8CF10;
  v18[0] = sub_21BE26D7C();
  v3 = type metadata accessor for FamilyNetworkMonitor();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v0);
  v8 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = v0;
  v17 = &off_282D8CF10;
  *&v15 = v12;
  v14[15] = 1;

  sub_21BE26C6C();
  *(v6 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus) = 0;
  *(v6 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_running) = 0;
  sub_21BB3D104(&v15, v6 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);

  qword_280BD7FE0 = v6;
  return result;
}

uint64_t type metadata accessor for FamilyNetworkMonitor()
{
  result = qword_280BD7FB8;
  if (!qword_280BD7FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3CFB8()
{
  sub_21BB3D064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21BB3D064()
{
  if (!qword_280BD6A70)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A70);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_21BB3D104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21BB3D11C()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_21BE2924C();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21BE2922C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_21BE2874C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_running;
  if (*(v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_running))
  {
    sub_21BE2618C();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, v44);
      _os_log_impl(&dword_21BB35000, v18, v19, "%s Monitor is already running", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    return (*(v42 + 8))(v6, v2);
  }

  else
  {
    v40 = v2;
    v38 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor;
    sub_21BB3A35C(v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor, v44);
    v37 = __swift_project_boxed_opaque_existential_1Tm(v44, v45);
    v23 = sub_21BB3D724();
    v35 = "s";
    v36 = v23;
    sub_21BE2872C();
    v43 = MEMORY[0x277D84F90];
    sub_21BB3D770(&unk_280BD6938, MEMORY[0x277D85230]);
    v39 = v8;
    v34 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8278, &qword_21BE3B5F8);
    sub_21BB3D7B8(&qword_280BD6998, &qword_27CDB8278, &qword_21BE3B5F8);
    sub_21BE294DC();
    (*(v41 + 104))(v12, *MEMORY[0x277D85260], v34);
    v24 = sub_21BE2927C();
    v25 = *v37;
    sub_21BE26D6C();

    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    *(v1 + v17) = 1;
    sub_21BB3A35C(v1 + v38, v44);
    v26 = *__swift_project_boxed_opaque_existential_1Tm(v44, v45);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_21BB3E654;
    *(v27 + 24) = v1;
    swift_retain_n();
    sub_21BB3D80C(sub_21BB3E4F4);
    v28 = v39;
    sub_21BE26D5C();

    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    sub_21BE2618C();
    v29 = sub_21BE26A2C();
    v30 = sub_21BE28FFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, v44);
      _os_log_impl(&dword_21BB35000, v29, v30, "%s Monitor started", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x21CF05C50](v32, -1, -1);
      MEMORY[0x21CF05C50](v31, -1, -1);
    }

    return (*(v42 + 8))(v28, v40);
  }
}

uint64_t sub_21BB3D6EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_21BB3D724()
{
  result = qword_280BD6930;
  if (!qword_280BD6930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6930);
  }

  return result;
}

uint64_t sub_21BB3D770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BB3D7B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3D80C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21BB3D81C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21BB3D8E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21BB3DCD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21BB3D8E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21BB3D9F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21BE2967C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21BB3D9F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BB3DA40(a1, a2);
  sub_21BB3DBE8(&unk_282D84DC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21BB3DA40(uint64_t a1, unint64_t a2)
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

  v6 = sub_21BB3DB70(v5, 0);
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

  result = sub_21BE2967C();
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
        v10 = sub_21BE28B1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21BB3DB70(v10, 0);
        result = sub_21BE295DC();
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

void *sub_21BB3DB70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AE8, &qword_21BE33040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_21BB3DBE8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21BBBE01C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21BB3DCD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21BB3DD30()
{
  v27 = sub_21BE2870C();
  v30 = *(v27 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE2874C();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE2876C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = [objc_opt_self() defaultCenter];
  if (qword_280BD6FA0 != -1)
  {
    swift_once();
  }

  [v16 addObserver:v0 selector:? name:? object:?];
  if (qword_280BD6CE8 != -1)
  {
    swift_once();
  }

  [v16 addObserver:v0 selector:? name:? object:?];
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v17 = sub_21BE2925C();
  v25 = v16;
  v18 = v17;
  sub_21BE2875C();
  sub_21BE2877C();
  v26 = *(v9 + 8);
  v26(v13, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_21BD445C4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_37_1;
  v20 = _Block_copy(aBlock);
  v21 = v0;
  sub_21BE2872C();
  v31 = MEMORY[0x277D84F90];
  sub_21BB3E240(&qword_280BD69E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3E288();
  v22 = v27;
  sub_21BE294DC();
  MEMORY[0x21CF043E0](v15, v7, v3, v20);
  _Block_release(v20);

  (*(v30 + 8))(v3, v22);
  (*(v28 + 8))(v7, v29);
  v26(v15, v8);
}

uint64_t sub_21BB3E1D4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB3E240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BB3E288()
{
  result = qword_280BD69A0;
  if (!qword_280BD69A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBAF0, &unk_21BE3B600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD69A0);
  }

  return result;
}

void sub_21BB3E2EC()
{
  sub_21BE287FC();
  v0 = sub_21BE287EC();
  sub_21BB3E4A0();
  sub_21BE287DC();

  v1 = sub_21BE287EC();
  type metadata accessor for FamilyMemberToggleRowRUI();
  sub_21BB3E240(&qword_280BD7E80, type metadata accessor for FamilyMemberToggleRowRUI);
  sub_21BE287DC();

  v2 = sub_21BE287EC();
  sub_21BB400A4();
  sub_21BE287DC();

  v3 = sub_21BE287EC();
  type metadata accessor for FamilyManagePaymentsLinkRUI();
  sub_21BB3E240(&qword_280BD7C90, type metadata accessor for FamilyManagePaymentsLinkRUI);
  sub_21BE287DC();
}

unint64_t sub_21BB3E4A0()
{
  result = qword_280BD7EA8;
  if (!qword_280BD7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7EA8);
  }

  return result;
}

uint64_t sub_21BB3E500(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = sub_21BE26DCC();
  v7[3] = v4;
  v7[4] = &off_282D8CEF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

unint64_t sub_21BB3E59C()
{
  result = qword_280BD7EA0;
  if (!qword_280BD7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7EA0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21BB3E660(void *a1, uint64_t a2)
{
  v85 = a2;
  v82 = sub_21BE26DAC();
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21BE26A4C();
  v86 = *(v87 - 8);
  v5 = *(v86 + 64);
  v6 = MEMORY[0x28223BE20](v87);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v76 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v76 = &v76 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v77 = &v76 - v13;
  MEMORY[0x28223BE20](v12);
  v83 = &v76 - v14;
  v15 = sub_21BE26D2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  v21 = sub_21BE26D9C();
  v22 = sub_21BB3F214(v21);

  v24 = *(v22 + 16);
  if (!v24)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_19:

    if (*(v27 + 16))
    {
      v42 = v83;
      sub_21BE2618C();

      v43 = sub_21BE26A2C();
      v44 = sub_21BE28FCC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v99 = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v99);
        *(v45 + 12) = 2048;
        v47 = *(v27 + 16);

        *(v45 + 14) = v47;

        _os_log_impl(&dword_21BB35000, v43, v44, "%s Network interfaces %ld", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x21CF05C50](v46, -1, -1);
        MEMORY[0x21CF05C50](v45, -1, -1);
      }

      else
      {
      }

      v53 = *(v86 + 8);
      v54 = v42;
      v55 = v87;
      v53(v54, v87);
      v56 = v82;
      v57 = v81;
      v58 = v84;
      v59 = v80;
      __swift_project_boxed_opaque_existential_1Tm(v79, v79[3]);
      sub_21BE26DBC();
      v60 = (*(v57 + 88))(v58, v56);
      if (v60 == *MEMORY[0x277CD8F78])
      {
        v61 = v77;
        sub_21BE2618C();
        v62 = sub_21BE26A2C();
        v63 = sub_21BE28FFC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v99 = v65;
          *v64 = 136315138;
          *(v64 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v99);
          _os_log_impl(&dword_21BB35000, v62, v63, "%s Network satisfied", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v65);
          MEMORY[0x21CF05C50](v65, -1, -1);
          MEMORY[0x21CF05C50](v64, -1, -1);
        }

        v53(v61, v55);
        *(v85 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus) = 0;
        return sub_21BB3F774();
      }

      if (v60 != *MEMORY[0x277CD8F68] && v60 != *MEMORY[0x277CD8F70])
      {
        sub_21BE2618C();
        v66 = sub_21BE26A2C();
        v67 = sub_21BE28FDC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v99 = v69;
          *v68 = 136315138;
          *(v68 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v99);
          _os_log_impl(&dword_21BB35000, v66, v67, "%s Unknown monitor state", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v69);
          MEMORY[0x21CF05C50](v69, -1, -1);
          v70 = v68;
          v58 = v84;
          MEMORY[0x21CF05C50](v70, -1, -1);
        }

        v53(v59, v55);
        return (*(v57 + 8))(v58, v56);
      }

      v71 = v76;
      sub_21BE2618C();
      v72 = sub_21BE26A2C();
      v73 = sub_21BE28FFC();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v99 = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v99);
        _os_log_impl(&dword_21BB35000, v72, v73, "%s Network unsatisfied/requiresConnection", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        MEMORY[0x21CF05C50](v75, -1, -1);
        MEMORY[0x21CF05C50](v74, -1, -1);
      }

      v53(v71, v55);
    }

    else
    {

      v48 = v78;
      sub_21BE2618C();
      v49 = sub_21BE26A2C();
      v50 = sub_21BE28FFC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v99 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v99);
        _os_log_impl(&dword_21BB35000, v49, v50, "%s No useful network interfaces found", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x21CF05C50](v52, -1, -1);
        MEMORY[0x21CF05C50](v51, -1, -1);
      }

      (*(v86 + 8))(v48, v87);
    }

    *(v85 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus) = 1;
    return sub_21BB3F774();
  }

  v25 = 0;
  v26 = v22 + 32;
  v93 = *MEMORY[0x277CD8CA8];
  v92 = *MEMORY[0x277CD8CB8];
  v91 = *MEMORY[0x277CD8CA0];
  v88 = (v16 + 8);
  v27 = MEMORY[0x277D84F90];
  v89 = v24;
  v90 = v15;
  while (v25 < *(v22 + 16))
  {
    sub_21BB3A35C(v26, &v99);
    __swift_project_boxed_opaque_existential_1Tm(&v99, v100);
    sub_21BE26D3C();
    v28 = (*(v16 + 88))(v19, v15);
    if (v28 == v93 || v28 == v92 || v28 == v91)
    {
      sub_21BB3D104(&v99, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21BB3F444(0, *(v27 + 16) + 1, 1);
        v27 = v101;
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21BB3F444((v32 > 1), v33 + 1, 1);
      }

      v34 = v98;
      v35 = __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
      v36 = *(*(v34 - 8) + 64);
      MEMORY[0x28223BE20](v35);
      v38 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38);
      v40 = sub_21BE26D4C();
      v95 = v40;
      v96 = &off_282D8CEE8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v94);
      (*(*(v40 - 8) + 32))(boxed_opaque_existential_1, v38, v40);
      v27 = v101;
      *(v101 + 16) = v33 + 1;
      sub_21BB3D104(&v94, v27 + 40 * v33 + 32);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v24 = v89;
      v15 = v90;
    }

    else
    {
      (*v88)(v19, v15);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v99);
    }

    ++v25;
    v26 += 40;
    if (v24 == v25)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21BB3F1C0()
{
  result = qword_280BD7E98;
  if (!qword_280BD7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7E98);
  }

  return result;
}

uint64_t sub_21BB3F214(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    sub_21BB3F444(0, v1, 0);
    v2 = v27;
    v4 = sub_21BE26D4C();
    v5 = 0;
    v6 = *(v4 - 8);
    v20 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v19[0] = v6;
    v19[1] = v6 + 16;
    v7 = (v6 + 32);
    do
    {
      v25 = v4;
      v26 = &off_282D8CEE8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
      (*(v19[0] + 16))(boxed_opaque_existential_1, v20 + *(v19[0] + 72) * v5, v4);
      v27 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21BB3F444((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v11 = v25;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v13 = *(*(v11 - 8) + 64);
      MEMORY[0x28223BE20](v12);
      v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      v22 = v4;
      v23 = &off_282D8CEE8;
      v17 = __swift_allocate_boxed_opaque_existential_1(&v21);
      (*v7)(v17, v15, v4);
      v2 = v27;
      *(v27 + 16) = v10 + 1;
      sub_21BB3D104(&v21, v2 + 40 * v10 + 32);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    while (v1 != v5);
  }

  return v2;
}

void *sub_21BB3F444(void *a1, int64_t a2, char a3)
{
  result = sub_21BB3F4B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21BB3F464()
{
  result = qword_280BD7EB0;
  if (!qword_280BD7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7EB0);
  }

  return result;
}

uint64_t type metadata accessor for FamilyMemberToggleRowRUI()
{
  result = qword_280BD7E60;
  if (!qword_280BD7E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3F528()
{
  sub_21BB3FA30(319, &qword_280BD69C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21BE2881C();
    if (v1 <= 0x3F)
    {
      sub_21BB3FEF0();
      if (v2 <= 0x3F)
      {
        sub_21BB3FA30(319, &qword_280BD6A00, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_21BB3F62C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_21BB3F774()
{
  v1 = sub_21BE2870C();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE2874C();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3D724();
  v9 = sub_21BE2925C();
  aBlock[4] = sub_21BB42A5C;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_19;
  v10 = _Block_copy(aBlock);

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BB3D770(&qword_280BD69E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3D7B8(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v8, v4, v10);
  _Block_release(v10);

  (*(v13 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v12);
}

void sub_21BB3FA30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21BB3FA80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21BB3FEF0()
{
  if (!qword_280BD6A10)
  {
    sub_21BE2883C();
    sub_21BB3FF84(&qword_280BD69D8, MEMORY[0x277D461B0]);
    v0 = sub_21BE2728C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A10);
    }
  }
}

uint64_t sub_21BB3FF84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BB400A4()
{
  result = qword_280BD7058;
  if (!qword_280BD7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7058);
  }

  return result;
}

unint64_t sub_21BB400FC()
{
  result = qword_280BD7048;
  if (!qword_280BD7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7048);
  }

  return result;
}

unint64_t sub_21BB40154()
{
  result = qword_280BD7040;
  if (!qword_280BD7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7040);
  }

  return result;
}

unint64_t sub_21BB401AC()
{
  result = qword_280BD7060;
  if (!qword_280BD7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7060);
  }

  return result;
}

uint64_t type metadata accessor for FamilyManagePaymentsLinkRUI()
{
  result = qword_280BD7C70;
  if (!qword_280BD7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB4024C()
{
  sub_21BB40310();
  if (v0 <= 0x3F)
  {
    sub_21BB4035C();
    if (v1 <= 0x3F)
    {
      sub_21BB403C0();
      if (v2 <= 0x3F)
      {
        sub_21BB40410();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21BB40310()
{
  result = qword_280BD6900;
  if (!qword_280BD6900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6900);
  }

  return result;
}

void sub_21BB4035C()
{
  if (!qword_280BD6A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB57F0, &qword_21BE328A0);
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A08);
    }
  }
}

void sub_21BB403C0()
{
  if (!qword_280BD6A00)
  {
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A00);
    }
  }
}

void sub_21BB40410()
{
  if (!qword_280BD6A40)
  {
    sub_21BE26F5C();
    v0 = sub_21BE26E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A40);
    }
  }
}

uint64_t sub_21BB40468(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21BB40588()
{
  v0 = type metadata accessor for FamilyMarqueStore();
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_21BB40740(v5);
  qword_280BD86B8 = v3;
  return result;
}

uint64_t type metadata accessor for FamilyMarqueStore()
{
  result = qword_280BD8698;
  if (!qword_280BD8698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB4062C()
{
  sub_21BB406E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BB406E0()
{
  if (!qword_280BD6A90)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A90);
    }
  }
}

void *sub_21BB40740(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v71 - v6;
  v8 = qword_280BD86C8;
  *(v2 + v8) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  *(v2 + qword_280BD86C0) = MEMORY[0x277D84F90];
  v71[0] = a1;
  sub_21BB41118(a1, &v76);
  if (v77)
  {
    sub_21BB3D104(&v76, &aBlock);
  }

  else
  {
    sub_21BB41188(&v76);
    if (qword_280BD8A50 != -1)
    {
      swift_once();
    }

    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_21BE289CC();
    v11 = [v9 initWithSuiteName_];

    *(&v73 + 1) = sub_21BB41228();
    v74 = MEMORY[0x277D08080];
    if (!v11)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    }

    *&aBlock = v11;
  }

  sub_21BB3D104(&aBlock, v2 + qword_280BD86D0);
  v12 = qword_280BD86D0;
  sub_21BB3A35C(v2 + qword_280BD86D0, &aBlock);
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, *(&v73 + 1));
  v13 = sub_21BE264AC();
  sub_21BE2647C();
  v14 = sub_21BE2604C();
  v16 = v15;

  sub_21BB3A35C(v2 + v12, &v76);
  __swift_project_boxed_opaque_existential_1Tm(&v76, v77);
  v71[1] = v13;
  sub_21BE2646C();
  v17 = sub_21BE2604C();
  v19 = v18;

  if (v16 && (v20 = sub_21BB41E7C(v14, v16), v22 = v21, , v22))
  {
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v20 = 0;
    v22 = 0xE000000000000000;
    if (!v19)
    {
LABEL_14:

      v23 = 0;
      v25 = 0xE000000000000000;
      goto LABEL_15;
    }
  }

  v23 = sub_21BB41E7C(v17, v19);
  v25 = v24;

  if (!v25)
  {
    goto LABEL_14;
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_0Tm(&v76);
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  swift_beginAccess();
  *&aBlock = v20;
  *(&aBlock + 1) = v22;
  *&v73 = v23;
  *(&v73 + 1) = v25;
  sub_21BE26C6C();
  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v26 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  v2[4] = v26;
  v2[5] = 0;
  v2[2] = 0xD000000000000011;
  v2[3] = 0x800000021BE42F60;
  swift_retain_n();
  sub_21BE2613C();
  v27 = sub_21BE26A4C();
  (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  aBlock = 0u;
  v73 = 0u;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC840, &unk_21BE42FE0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_21BE262AC();
  v32 = v2[5];
  v2[5] = v31;

  sub_21BB41274();

  v33 = qword_280BD86C8;
  v34 = *(v2 + qword_280BD86C8);
  v35 = (v2 + qword_280BD86D0);
  v36 = *(v2 + qword_280BD86D0 + 24);
  v37 = __swift_project_boxed_opaque_existential_1Tm((v2 + qword_280BD86D0), v36);
  v38 = *(v36 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = v71 - v40;
  (*(v38 + 16))(v71 - v40);
  v42 = v34;
  v43 = sub_21BE2994C();
  (*(v38 + 8))(v41, v36);
  sub_21BE2647C();
  v44 = sub_21BE289CC();

  v45 = swift_allocObject();
  swift_weakInit();
  v74 = sub_21BD0D84C;
  v75 = v45;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_21BD0CC7C;
  *(&v73 + 1) = &block_descriptor_35;
  v46 = _Block_copy(&aBlock);

  v47 = [v42 na:v43 addNotificationBlockObserverForObject:v44 keyPath:1 options:v46 usingBlock:?];

  swift_unknownObjectRelease();
  _Block_release(v46);
  sub_21BE294BC();
  swift_unknownObjectRelease();
  v48 = qword_280BD86C0;
  swift_beginAccess();
  v49 = *(v2 + v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v48) = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = sub_21BB413C0(0, *(v49 + 2) + 1, 1, v49);
    *(v2 + v48) = v49;
  }

  v52 = *(v49 + 2);
  v51 = *(v49 + 3);
  if (v52 >= v51 >> 1)
  {
    v49 = sub_21BB413C0((v51 > 1), v52 + 1, 1, v49);
  }

  *(v49 + 2) = v52 + 1;
  sub_21BB414D0(&aBlock, &v49[32 * v52 + 32]);
  *(v2 + v48) = v49;
  swift_endAccess();
  v53 = *(v2 + v33);
  v54 = v35[3];
  v55 = __swift_project_boxed_opaque_existential_1Tm(v35, v54);
  v56 = *(v54 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = v71 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v59);
  v60 = v53;
  v61 = sub_21BE2994C();
  (*(v56 + 8))(v59, v54);
  sub_21BE2646C();
  v62 = sub_21BE289CC();

  v63 = swift_allocObject();
  swift_weakInit();

  v74 = sub_21BD0D854;
  v75 = v63;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_21BD0CC7C;
  *(&v73 + 1) = &block_descriptor_23;
  v64 = _Block_copy(&aBlock);

  v65 = [v60 na:v61 addNotificationBlockObserverForObject:v62 keyPath:1 options:v64 usingBlock:?];

  swift_unknownObjectRelease();
  _Block_release(v64);
  sub_21BE294BC();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v66 = *(v2 + v48);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v48) = v66;
  if ((v67 & 1) == 0)
  {
    v66 = sub_21BB413C0(0, *(v66 + 2) + 1, 1, v66);
    *(v2 + v48) = v66;
  }

  v69 = *(v66 + 2);
  v68 = *(v66 + 3);
  if (v69 >= v68 >> 1)
  {
    v66 = sub_21BB413C0((v68 > 1), v69 + 1, 1, v66);
  }

  *(v66 + 2) = v69 + 1;
  sub_21BB414D0(&aBlock, &v66[32 * v69 + 32]);
  *(v2 + v48) = v66;
  swift_endAccess();
  sub_21BB41188(v71[0]);

  return v2;
}

uint64_t sub_21BB410E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB41118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2C8, &qword_21BE42FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB41188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2C8, &qword_21BE42FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB411F0()
{
  sub_21BE25FEC();
  result = sub_21BE25FDC();
  qword_280BDCC00 = result;
  *algn_280BDCC08 = v1;
  return result;
}

unint64_t sub_21BB41228()
{
  result = qword_280BD8A28;
  if (!qword_280BD8A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD8A28);
  }

  return result;
}

void sub_21BB41274()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC840, &unk_21BE42FE0);
    sub_21BB3B038(&qword_280BD89C8, &unk_27CDBC840, &unk_21BE42FE0);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

char *sub_21BB413C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
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

_OWORD *sub_21BB414D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21BB414E0()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for FamilyPictureStore(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = swift_retain_n();
  v5 = sub_21BB41698(v4, v3);

  qword_280BDCBF0 = v5;
  return result;
}

void sub_21BB41594()
{
  sub_21BB41630();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BB41630()
{
  if (!qword_280BD6A58)
  {
    sub_21BB3A2A4(255, &qword_280BD8A10, off_2782F0CC0);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A58);
    }
  }
}

void *sub_21BB41698(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v44 - v18;
  v20 = type metadata accessor for FamilyCircleStore(0);
  v53[3] = v20;
  v53[4] = &protocol witness table for FamilyCircleStore;
  v53[0] = a1;
  sub_21BB3A35C(v53, (a2 + 6));
  v21 = sub_21BB41D84();
  if (!v21)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v22 = v21;
  v23 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];

  swift_beginAccess();
  v51 = v23;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BE26C6C();
  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v24 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  a2[4] = v24;
  a2[5] = 0;
  a2[2] = 0xD000000000000012;
  a2[3] = 0x800000021BE4B2F0;
  swift_retain_n();
  sub_21BE2613C();
  v25 = sub_21BE26A4C();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  v26 = sub_21BB41D84();
  if (!v26)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v27 = v26;
  v28 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];

  v52 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C8, &qword_21BE4B3B0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  swift_retain_n();
  v32 = sub_21BE262AC();
  v33 = a2[5];
  a2[5] = v32;

  sub_21BD9CA90();

  sub_21BB3CC2C(v20, &protocol witness table for FamilyCircleStore);
  v34 = swift_allocObject();
  swift_weakInit();

  v35 = sub_21BE2635C();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  v39 = v48;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  v40 = v46;
  sub_21BE26CFC();
  (*(v45 + 8))(v7, v40);
  v41 = swift_allocObject();
  v41[2] = v38;
  v41[3] = &unk_21BE4B3C0;
  v41[4] = v34;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v42 = v50;
  sub_21BE26D1C();

  (*(v49 + 8))(v11, v42);
  (*(v47 + 8))(v15, v39);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  return a2;
}

uint64_t sub_21BB41DA0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v3;
}

uint64_t sub_21BB41E14()
{
  v0 = sub_21BB41E7C(0, 0xE000000000000000);
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  result = sub_21BB41E7C(0, 0xE000000000000000);
  if (v5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  qword_280BD8500 = v2;
  *algn_280BD8508 = v3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  qword_280BD8510 = v6;
  unk_280BD8518 = v7;
  return result;
}

uint64_t sub_21BB41E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE257FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a1;
  v14[1] = a2;
  sub_21BE257DC();
  sub_21BB41FA4();
  v9 = sub_21BE2948C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 0;
  }

  return v9;
}

unint64_t sub_21BB41FA4()
{
  result = qword_280BD69D0;
  if (!qword_280BD69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD69D0);
  }

  return result;
}

uint64_t FamilyRowCache.init(defaults:)(uint64_t a1)
{
  v2 = v1;
  sub_21BB41118(a1, &v8);
  if (v9)
  {
    sub_21BB3A4CC(a1, &qword_27CDBA2C8, &qword_21BE42FC8);
    sub_21BB3D104(&v8, &v10);
  }

  else
  {
    sub_21BE25FEC();
    sub_21BE25FDC();
    v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v5 = sub_21BE289CC();

    v6 = [v4 initWithSuiteName_];

    v11 = sub_21BB41228();
    v12 = MEMORY[0x277D08080];
    if (!v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    }

    *&v10 = v6;
    sub_21BB3A4CC(a1, &qword_27CDBA2C8, &qword_21BE42FC8);
    if (v9)
    {
      sub_21BB3A4CC(&v8, &qword_27CDBA2C8, &qword_21BE42FC8);
    }
  }

  sub_21BB3D104(&v10, v2 + 16);
  return v2;
}

void sub_21BB42168()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D76670];
  v5[4] = sub_21BC504D0;
  v6 = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21BC4E8BC;
  v5[3] = &block_descriptor_13;
  v3 = _Block_copy(v5);

  v4 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

FamilyCircleUI::FamilyRowStatus sub_21BB422BC@<W0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  sub_21BE260FC();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v50 = a1;
    v18 = v17;
    v19 = v9;
    v20 = v12;
    v21 = v4;
    v22 = v5;
    v23 = swift_slowAlloc();
    v51 = v23;
    *v18 = 136315138;
    *(v18 + 4) = sub_21BB3D81C(0x7574617453776F72, 0xE900000000000073, &v51);
    _os_log_impl(&dword_21BB35000, v15, v16, "%s request for current status ", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v24 = v23;
    v5 = v22;
    v4 = v21;
    v12 = v20;
    v9 = v19;
    MEMORY[0x21CF05C50](v24, -1, -1);
    v25 = v18;
    a1 = v50;
    MEMORY[0x21CF05C50](v25, -1, -1);
  }

  v26 = *(v5 + 8);
  v26(v14, v4);
  if (*(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount))
  {
    v27 = *(v2 + 56);
    if (v27)
    {
      goto LABEL_5;
    }

    v48 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_rowCache);
    result = FamilyRowCache.rowStatusFromCache()().value;
    LOBYTE(v30) = v51;
    if (v51 != 5)
    {
      goto LABEL_27;
    }

    v27 = *(v2 + 56);
    if (v27)
    {
LABEL_5:
      v28 = v27;
    }

    else
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      v27 = 0;
    }

    v29 = v27;
    FAFamilyCircle.rowStatusForFamily()();
    v30 = v51;
    sub_21BE260FC();
    v31 = sub_21BE26A2C();
    v32 = sub_21BE28FCC();
    if (os_log_type_enabled(v31, v32))
    {
      v49[0] = v26;
      v49[1] = v5;
      v50 = a1;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_21BB3D81C(0x7574617453776F72, 0xE900000000000073, &v51);
      *(v33 + 12) = 2080;
      v35 = 0x6E6564646968;
      v36 = 0xEA00000000006574;
      v37 = 0x69766E49746E6573;
      v38 = 0xEE00657469766E49;
      v39 = 0x6465766965636572;
      if (v30 != 3)
      {
        v39 = 0xD000000000000013;
        v38 = 0x800000021BE54640;
      }

      if (v30 != 2)
      {
        v37 = v39;
        v36 = v38;
      }

      if (v30)
      {
        v35 = 0x796C696D6166;
      }

      if (v30 <= 1)
      {
        v40 = v35;
      }

      else
      {
        v40 = v37;
      }

      if (v30 <= 1)
      {
        v41 = 0xE600000000000000;
      }

      else
      {
        v41 = v36;
      }

      v42 = sub_21BB3D81C(v40, v41, &v51);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_21BB35000, v31, v32, "%s returned %s ", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v34, -1, -1);
      MEMORY[0x21CF05C50](v33, -1, -1);

      result = (v49[0])(v12, v4);
      a1 = v50;
    }

    else
    {

      result = v26(v12, v4);
    }
  }

  else
  {
    sub_21BE260FC();
    v44 = sub_21BE26A2C();
    v45 = sub_21BE28FFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_21BB3D81C(0x7574617453776F72, 0xE900000000000073, &v51);
      _os_log_impl(&dword_21BB35000, v44, v45, "%s not logged in iCloud", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x21CF05C50](v47, -1, -1);
      MEMORY[0x21CF05C50](v46, -1, -1);
    }

    result = v26(v9, v4);
    LOBYTE(v30) = 0;
  }

LABEL_27:
  *a1 = v30;
  return result;
}

uint64_t sub_21BB42864(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x796C696D6166;
    }

    else
    {
      v5 = 0x6E6564646968;
    }

    v6 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x6465766965636572;
    v4 = 0xEE00657469766E49;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x800000021BE54640;
    }

    if (a1 == 2)
    {
      v5 = 0x69766E49746E6573;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEA00000000006574;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x796C696D6166;
    }

    else
    {
      v11 = 0x6E6564646968;
    }

    v10 = 0xE600000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x6465766965636572;
    v8 = 0x800000021BE54640;
    if (a2 == 3)
    {
      v8 = 0xEE00657469766E49;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x69766E49746E6573;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000006574;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_21BE2995C();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_21BB42A10()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21BE28ABC();
}

uint64_t sub_21BB42A18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21BB42A64(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus))
  {
    sub_21BE2995C();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

uint64_t block_destroy_helper_45(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

uint64_t block_destroy_helper_54(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_21BB42E80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BB42FF0(a1, v5);
}

uint64_t sub_21BB42F38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BB42FF0(a1, v5);
}

uint64_t sub_21BB42FF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BC706A0;

  return v7(a1);
}

uint64_t sub_21BB430E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BB4319C(a1, v4, v5, v6);
}

uint64_t sub_21BB4319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_21BB447B0;

  return sub_21BB4324C();
}

uint64_t sub_21BB4324C()
{
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DB8, &qword_21BE39C58);
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC0, &unk_21BE39C60);
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v1[30] = v11;
  v12 = *(v11 - 8);
  v1[31] = v12;
  v13 = *(v12 + 64) + 15;
  v1[32] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v1[33] = v14;
  v15 = *(v14 - 8);
  v1[34] = v15;
  v16 = *(v15 + 64) + 15;
  v1[35] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD0, &unk_21BE39C80);
  v1[36] = v17;
  v18 = *(v17 - 8);
  v1[37] = v18;
  v19 = *(v18 + 64) + 15;
  v1[38] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v1[39] = v20;
  v21 = *(v20 - 8);
  v1[40] = v21;
  v22 = *(v21 + 64) + 15;
  v1[41] = swift_task_alloc();
  sub_21BE28D7C();
  v1[42] = sub_21BE28D6C();
  v24 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BB435BC, v24, v23);
}

uint64_t sub_21BB435BC()
{
  v2 = v0[41];
  v1 = v0[42];
  v26 = v0[39];
  v3 = v0[38];
  v27 = v0[37];
  v28 = v0[40];
  v4 = v0[36];
  v42 = v0[35];
  v32 = v0[34];
  v29 = v0[33];
  v43 = v0[32];
  v30 = v0[30];
  v31 = v0[31];
  v33 = v0[29];
  v34 = v0[27];
  v36 = v0[26];
  v39 = v0[25];
  v40 = v0[28];
  v38 = v0[24];
  v44 = v0[23];
  v37 = v0[22];
  v35 = v0[21];
  v5 = v0[20];

  v6 = *(v5 + 24);
  v41 = v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  swift_endAccess();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_21BE2635C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_21BE2634C();
  sub_21BB3B038(&unk_280BD6AA0, &unk_27CDBC720, &unk_21BE41BD0);
  sub_21BB43D80();
  sub_21BE26D0C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &unk_21BE39CA0;
  v12[4] = v7;
  sub_21BB3B038(&unk_280BD6AE0, &qword_27CDB7DD0, &unk_21BE39C80);

  sub_21BE26D1C();

  (*(v27 + 8))(v3, v4);
  (*(v28 + 8))(v2, v26);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C7C();
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(v8 + 48);
  v15 = *(v8 + 52);
  swift_allocObject();
  v16 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  sub_21BE26D0C();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &unk_21BE39CB0;
  v17[4] = v13;
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);

  sub_21BE26D1C();

  (*(v31 + 8))(v43, v30);
  (*(v32 + 8))(v42, v29);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  v18 = *(v41 + 32);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  swift_endAccess();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = *(v8 + 48);
  v21 = *(v8 + 52);
  swift_allocObject();
  v22 = sub_21BE2634C();
  sub_21BB3B038(&unk_280BD6AC0, &qword_27CDB7DC8, &qword_21BE42EA0);
  sub_21BB4429C();
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF8, &qword_27CDB7DB8, &qword_21BE39C58);
  sub_21BE26CFC();
  (*(v37 + 8))(v44, v35);
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &unk_21BE39CD0;
  v23[4] = v19;
  sub_21BB3B038(&qword_280BD6AD8, &qword_27CDB7DC0, &unk_21BE39C60);

  sub_21BE26D1C();

  (*(v39 + 8))(v36, v38);
  (*(v40 + 8))(v33, v34);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_21BB43D28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_21BB43D80()
{
  result = qword_280BD68D0;
  if (!qword_280BD68D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBC730, &qword_21BE4B290);
    sub_21BB3CC8C(&qword_280BD68C8, &qword_280BD68E0, 0x277CB8F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD68D0);
  }

  return result;
}

uint64_t sub_21BB43E60(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;
  v8 = v6;

  sub_21BE2633C();
}

uint64_t sub_21BB43F28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB43FD8(v2, v3, v0 + 4);
}

uint64_t sub_21BB43FD8(int *a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_21BC4F798;

  return v7(v3 + 16);
}

uint64_t sub_21BB440D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB4416C(a1, v1);
}

uint64_t sub_21BB4416C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4B5E8, v8, v7);
}

unint64_t sub_21BB4429C()
{
  result = qword_280BD84F0;
  if (!qword_280BD84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD84F0);
  }

  return result;
}

uint64_t sub_21BB442F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

uint64_t sub_21BB443A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44534(a1, v1);
}

uint64_t sub_21BB44438(int *a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_21BC085C8;

  return v7(v3 + 16);
}

uint64_t sub_21BB44534(uint64_t a1, uint64_t a2)
{
  v2[24] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE8, &qword_21BE39D48);
  v2[26] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = sub_21BE2626C();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF0, &qword_21BE39D50) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v10 = sub_21BE26A4C();
  v2[37] = v10;
  v11 = *(v10 - 8);
  v2[38] = v11;
  v12 = *(v11 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = sub_21BE28D7C();
  v2[41] = sub_21BE28D6C();
  v14 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4B848, v14, v13);
}

uint64_t sub_21BB44770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BB447B0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_21BC4C608;
  v5 = *(v1 + 16);

  return sub_21BB448F0();
}

uint64_t sub_21BB448F0()
{
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_21BE28D7C();
  v1[14] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x2822009F8](sub_21BB449DC, v4, v3);
}

uint64_t sub_21BB449DC()
{
  v1 = v0[13];
  v0[17] = *(v0[9] + 24);
  v0[18] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[19] = v3;
  v0[20] = v2;

  return MEMORY[0x2822009F8](sub_21BB44A74, v3, v2);
}

void sub_21BB44A74()
{
  v1 = *(v0[17] + 40);
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[12];
    v3 = sub_21BE28DAC();
    v0[22] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[23] = v5;
    v0[24] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    v6 = *(MEMORY[0x277D07FD0] + 4);
    v9 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_21BC4A978;
    v8 = v0[12];

    v9(v0 + 6, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB44BCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_21BB3B038(a5, a3, a4);
    sub_21BE26C0C();

    sub_21BE26C4C();
  }

  return result;
}

uint64_t sub_21BB44C94(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21BE2715C();
  }

  else
  {
    sub_21BE2701C();
  }

  return sub_21BE2719C();
}

uint64_t sub_21BB44CFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21BE2715C();
    sub_21BE2719C();
    sub_21BBA2694();
  }

  else
  {
    sub_21BE2701C();
    sub_21BE2719C();
    sub_21BBA4B1C(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_21BB44DF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21BE279DC();

    return sub_21BE2719C();
  }

  else
  {
    sub_21BE2724C();
    swift_getWitnessTable();
    sub_21BE2793C();
    sub_21BE2719C();
    sub_21BE2946C();
    swift_getWitnessTable();
    sub_21BE2724C();
    swift_getWitnessTable();
    sub_21BE2793C();
    return sub_21BE2719C();
  }
}

uint64_t sub_21BB44F54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21BE279DC();
    sub_21BE2719C();
  }

  else
  {
    sub_21BE2724C();
    swift_getWitnessTable();
    sub_21BE2793C();
    sub_21BE2719C();
    sub_21BE2946C();
    swift_getWitnessTable();
    sub_21BE2724C();
    swift_getWitnessTable();
    sub_21BE2793C();
    sub_21BE2719C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB45180@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21BE28A0C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21BB451D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE28EBC();
  *a1 = result;
  return result;
}

void *sub_21BB451FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for BorderView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BorderView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21BB45310()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB45394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB45460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB455FC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB45634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_21BB45690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

id sub_21BB456EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21BB45758()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB45790()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB457E0()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB45834()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB45880()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB458B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB45900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB459A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB45A64()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB45A9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

id sub_21BB45B34()
{
  v1 = *v0;
  v2 = sub_21BE289CC();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21BB45BA0()
{
  v1 = *v0;
  v2 = sub_21BE289CC();
  [v1 removeObjectForKey_];
}

uint64_t sub_21BB45C3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_21BB45C90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21BB45CA4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_21BB45D0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BC8, &qword_21BE33388);
  sub_21BBC7140();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB45D84()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_21BB45DFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_21BB45E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecoveryContactDataItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB45F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecoveryContactDataItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB45FE0()
{
  v1 = type metadata accessor for RecoveryContactNotSetupCell();
  v12 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_21BBC9024(*v2, *(v2 + 8));

  v3 = v2 + v1[6];
  v4 = type metadata accessor for RecoveryContactDataItem(0);
  v5 = *(v4 + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v3 + *(v4 + 24));

  v9 = v2 + v1[8];
  v10 = *(v9 + 8);

  return swift_deallocObject();
}

uint64_t sub_21BB46174()
{
  v1 = type metadata accessor for RecoveryContactNotSetupCell();
  v13 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_21BBC9024(*(v0 + v2), *(v0 + v2 + 8));

  v4 = v0 + v2 + v1[6];
  v5 = type metadata accessor for RecoveryContactDataItem(0);
  v6 = *(v5 + 20);
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v4 + *(v5 + 24));

  v10 = v3 + v1[8];
  v11 = *(v10 + 8);

  return swift_deallocObject();
}

uint64_t sub_21BB46320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21BE25B9C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21BB46444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21BE25B9C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21BB46558()
{
  MyButton = type metadata accessor for FindMyButton();
  v2 = (*(*(MyButton - 8) + 80) + 16) & ~*(*(MyButton - 8) + 80);
  v3 = *(*(MyButton - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26FEC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(MyButton + 20);
  v8 = sub_21BE25B9C();
  (*(*(v8 - 8) + 8))(&v4[v7], v8);

  return swift_deallocObject();
}

uint64_t sub_21BB46700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21BBBF5B8();
  *a2 = result;
  return result;
}

uint64_t sub_21BB4672C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BBBF678();
}

__n128 sub_21BB46764(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21BB46770()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB467B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4686C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4696C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE274DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB469C4()
{
  v1 = (type metadata accessor for AppleCardFamilySettingsCell() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE27B0C();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
    v6 = *(v3 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB46AE8()
{
  v1 = (type metadata accessor for AppleCardFamilySettingsCell() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB46CC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB46CFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BB46D5C()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB46D94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_21BB46DE0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB46E18()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB46E50()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB46EA0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_21BB46EEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB46F24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB46FAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB46FF0()
{
  v1 = *(v0 + qword_27CDB63F0);
  v2 = *(v0 + qword_27CDB63F0 + 8);

  return v1;
}

uint64_t sub_21BB47220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB472EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB473BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB47450()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6608, &qword_21BE34E78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6620, &qword_21BE34E90);
  sub_21BBF2DB4();
  sub_21BB3B038(&qword_27CDB6640, &qword_27CDB6620, &qword_21BE34E90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB47514()
{

  return swift_deallocObject();
}

uint64_t sub_21BB47564()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB475AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB47668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB47718()
{
  v1 = (type metadata accessor for FamilyPrivacyDisclosureView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE27B0C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB47834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6760, &unk_21BE353B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB478A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21BB4792C()
{
  swift_getWitnessTable();

  return sub_21BE28EFC();
}

uint64_t sub_21BB479B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21BB47BC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB47C04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB47C58()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB47C90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB47CD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_21BB47D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C8, &unk_21BE35AF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB47E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C8, &unk_21BE35AF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB48064()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4809C()
{
  v1 = type metadata accessor for FamilyLandingPageMainView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_21BB47CD0(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v5 = *(v0 + v3 + 48);

  v6 = (v0 + v3 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v6 + 1);

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B0, &qword_21BE35938) + 32);
    v11 = sub_21BE2722C();
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE2690C();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  else
  {
    v14 = *(v4 + v12);
  }

  v15 = *(v4 + v1[9] + 8);

  v16 = *(v4 + v1[10] + 8);

  MEMORY[0x21CF05D90](v4 + v1[13]);
  v17 = *(v4 + v1[14] + 8);

  sub_21BB47CD0(*(v4 + v1[15]), *(v4 + v1[15] + 8), *(v4 + v1[15] + 16));
  v18 = (v4 + v1[16]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  sub_21BB47CE0();
  v22 = (v4 + v1[17]);
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  sub_21BB47CE0();
  v26 = *(v4 + v1[18] + 8);

  v27 = (v4 + v1[20]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  sub_21BB47CE0();
  v31 = (v4 + v1[21]);
  v32 = *v31;

  v33 = v31[1];

  v34 = *(v4 + v1[22] + 8);

  v35 = *(v4 + v1[23]);

  return swift_deallocObject();
}

uint64_t sub_21BB48388()
{

  return swift_deallocObject();
}

uint64_t sub_21BB483C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB48400()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6968, &qword_21BE35C48);
  type metadata accessor for FAFamilyImageLoader();
  sub_21BC0B100(&qword_27CDB6970, &qword_27CDB6968, &qword_21BE35C48, sub_21BC09438);
  sub_21BC089F4(&qword_27CDB69A8, 255, type metadata accessor for FAFamilyImageLoader);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB48534()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_21BE2575C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB48654()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB4868C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB486D4()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB4870C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4874C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB48784()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB487C4()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB487FC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_21BB48854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2743C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB48880(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BE2744C();
}

uint64_t sub_21BB488AC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  v3 = *(v0 + 104);

  v4 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_21BB48928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE274DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB48990()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7048, &unk_21BE36610);
  sub_21BB3B038(&qword_27CDB7050, &qword_27CDB7048, &unk_21BE36610);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB48A2C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48AC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  type metadata accessor for FamilyDestinationModifier();
  sub_21BE2719C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB48B64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21BE2719C();
  sub_21BC16790();
  return swift_getWitnessTable();
}

uint64_t sub_21BB48BCC()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_21BB48C24()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_21BB48C60()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB48C98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BB48CDC(uint64_t *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v2 = a1[3];
  v3 = a1[2];
  type metadata accessor for FamilyDestinationModifier();
  swift_getWitnessTable();
  sub_21BE2794C();
  type metadata accessor for FamilyDestinationModifier.DestinationSheet();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7138, &qword_21BE36988);
  swift_getOpaqueTypeConformance2();
  sub_21BC177EC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7148, &unk_21BE36990);
  type metadata accessor for NavigationManager();
  sub_21BC17840();
  sub_21BC16738();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for FamilyDestinationModifier.DestinationContent();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21BE270BC();
  sub_21BE2719C();
  swift_getWitnessTable();
  sub_21BC17798();
  swift_getWitnessTable();
  sub_21BE2782C();
  sub_21BE2719C();
  sub_21BE2719C();
  sub_21BE2785C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB4911C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_21BE2946C();
  sub_21BE2946C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB491A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_21BE2946C();
  return swift_getWitnessTable();
}

uint64_t sub_21BB49210()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB49248()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB49358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB49428()
{

  return swift_deallocObject();
}

uint64_t sub_21BB49470()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB49550@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21BB49624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21BE25B9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB496D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21BE25B9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB49774()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21BB497B4()
{
  v1 = type metadata accessor for PurchaseSharingItem(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = v0 + v2;
  v6 = v1[5];
  v7 = sub_21BE25B9C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB49908()
{
  v1 = (type metadata accessor for PurchaseSharingItemView() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = *(v0 + v2);

  v5 = v0 + v2 + v1[7];
  v6 = type metadata accessor for PurchaseSharingItem(0);
  v7 = v6[5];
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB49A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB49B00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB49B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21BB49C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21BB49DC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB49E2C()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26FEC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *&v4[v1[9] + 8];

  v8 = *&v4[v1[10]];

  v9 = *&v4[v1[11] + 8];

  v10 = &v4[v1[12]];

  v11 = *(v10 + 1);

  v12 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    (*(*(v13 - 8) + 8))(&v4[v12], v13);
  }

  else
  {
    v14 = *&v4[v12];
  }

  v15 = *&v4[v1[14] + 8];

  return swift_deallocObject();
}

uint64_t sub_21BB4A054()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26FEC();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[9] + 8];

  v9 = *&v5[v1[10]];

  v10 = *&v5[v1[11] + 8];

  v11 = &v5[v1[12]];

  v12 = *(v11 + 1);

  v13 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE27B0C();
    (*(*(v14 - 8) + 8))(&v5[v13], v14);
  }

  else
  {
    v15 = *&v5[v13];
  }

  v16 = *&v5[v1[14] + 8];

  return swift_deallocObject();
}

uint64_t sub_21BB4A294()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7890, &qword_21BE38AB8);
  sub_21BE25D6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7898, &unk_21BE38AC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5060, &qword_21BE31038);
  sub_21BC3510C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BC35B30(&qword_27CDB78D8, MEMORY[0x277CC95F0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4A41C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BB4A464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4A4AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4A4F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_21BB4A554@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_21BB4A5B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BB4A60C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21BB4A65C()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB4A694()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A6CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_21BB4A71C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4A758()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BB4A7A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB4A7DC()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB4A834()
{
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = (type metadata accessor for EnumeratedForEach() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 64) & ~*(*v1 + 80));
  (*(*(v7 - 8) + 8))(v3);
  v4 = *&v3[v1[19]];

  v5 = *&v3[v1[20] + 8];

  return swift_deallocObject();
}

uint64_t sub_21BB4A938()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_21BB4A970(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_21BE268BC();
  swift_getWitnessTable();
  v7 = *(a1 + 1);
  sub_21BE285DC();
  return swift_getWitnessTable();
}

uint64_t sub_21BB4AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ParentalControlDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB4AAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ParentalControlDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB4ABEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = *(v0 + 40);

  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4AD30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21BB4ADEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4AE9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4AFE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2735C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4B010(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BE2736C();
}

uint64_t sub_21BB4B03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2740C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4B09C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4B11C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_21BB4B194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecoveryContactDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB4B250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecoveryContactDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB4B314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB4B3A8()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B3E8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB4B444(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BC55A7C(v4);
}

uint64_t sub_21BB4B470()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_21BB4B4C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_21BB4B52C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4B570(uint64_t a1, uint64_t *a2)
{
  sub_21BBA3854(a1, v5, &qword_27CDB7278, &qword_21BE3A250);
  v3 = *a2;
  return sub_21BC55008(v5);
}

uint64_t sub_21BB4B5C8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BB4B600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4B68C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F88, &qword_21BE3AA38);
  sub_21BC5E0E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4B6F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21BB4B758()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB4B790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4B7D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4B810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E8, &unk_21BE3AE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB4BA48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_21BB4BA98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4BAD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4BB30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4BB68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4BBB8()
{
  MEMORY[0x21CF05D90](v0 + 56);
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  v7 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_21BB4BC50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  MEMORY[0x21CF05D90](v0 + 88);
  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  v6 = *(v0 + 160);

  v7 = *(v0 + 176);

  v8 = *(v0 + 192);

  return swift_deallocObject();
}

uint64_t sub_21BB4BCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4BDB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4BE64()
{
  v1 = (type metadata accessor for AskToBuyMemberView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[8];
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4BFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2729C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4C054()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_21BB4C0AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4C0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB84D8, &qword_21BE3BE10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BC7B2E0();
  sub_21BC7B400();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4C180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ParentalControlDataItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4C22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ParentalControlDataItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4C2D0()
{
  v1 = type metadata accessor for ParentalControlCell();
  v12 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = *(v2 + 8);

  v4 = *(v2 + 24);

  v5 = v2 + v1[6];
  v6 = type metadata accessor for ParentalControlDataItem(0);
  v7 = *(v6 + 20);
  v8 = sub_21BE25D1C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_21BB4C458()
{
  v1 = type metadata accessor for ParentalControlCell();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 24);

  v7 = v0 + v2 + v1[6];
  v8 = type metadata accessor for ParentalControlDataItem(0);
  v9 = *(v8 + 20);
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v4 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_21BB4C604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21BB4C670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21BB4C6E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_21BB4C758(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21BE284DC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DF8, &qword_21BE3B850);
  sub_21BE2719C();
  swift_getOpaqueTypeConformance2();
  sub_21BC89FC0();
  return swift_getWitnessTable();
}

uint64_t sub_21BB4C854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4C88C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4C8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21BE28CBC();
  v3 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PersonPickerCell();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_21BE285DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  sub_21BE2719C();
  swift_getWitnessTable();
  sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0);
  swift_getWitnessTable();
  sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8);
  swift_getWitnessTable();
  sub_21BE26E2C();
  sub_21BE2719C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21BE2719C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21BE2705C();
  sub_21BE2719C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB4CD58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PersonPickerCell.SelectionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE2851C();
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8850, &qword_21BE3CA10);
  swift_getTupleTypeMetadata();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE284FC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21BE27AEC();
  sub_21BE2719C();
  swift_getOpaqueTypeConformance2();
  sub_21BC8E498(&qword_27CDB6790, MEMORY[0x277CDE470]);
  return swift_getWitnessTable();
}

uint64_t sub_21BB4CF78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB4CFB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4D04C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB4D1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB4D2B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4D33C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_21BB4D484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB4D5CC()
{
  v1 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 8) + 64);
  v4 = sub_21BE2694C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = *(v0 + v3 + 24);
  swift_unknownObjectRelease();
  v10 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
    v12 = *(v8 + v10);
  }

  v13 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE288BC();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  (*(v5 + 8))(v0 + ((v3 + v17 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_21BB4D82C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_21BB4D88C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4D8CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_21BB4D98C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21CF02600]();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4D9B8(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x21CF02610](v2);
}

uint64_t sub_21BB4DC00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4DC38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB4DC90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_21BB4DCD4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21BCA80CC(v2);
}

void sub_21BB4DD08(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21BCA7B98(v2);
}

uint64_t sub_21BB4DD38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21BE25B9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21BB4DDE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21BE25B9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4DE88()
{
  v1 = (type metadata accessor for FAAMSWebView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = v1[7];
  v6 = sub_21BE25B9C();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = (v0 + v2 + v1[8]);
  v8 = *v7;

  v9 = v7[1];

  return swift_deallocObject();
}

uint64_t sub_21BB4DFA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21BB4E004(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BB4E070()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_21BB4E0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E08, &qword_21BE3E2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB4E22C()
{
  v1 = type metadata accessor for TapToRadarDraft();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 24);

  if (*(v0 + v2 + 48))
  {

    v8 = v5[8];
  }

  v9 = v5[10];

  v10 = v5[13];

  v11 = v5[16];

  v12 = v5[18];

  v13 = v5[20];

  v14 = v5[22];

  v15 = v5[24];

  v16 = v5[25];

  v17 = v5 + v1[11];
  v18 = *(v17 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120) + 36);
  v20 = sub_21BE25D1C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v17[v19], 1, v20))
  {
    (*(v21 + 8))(&v17[v19], v20);
  }

  v22 = v5 + v1[12];
  v23 = *(v22 + 1);

  v24 = *(v22 + 2);

  v25 = v5 + v1[13];
  v26 = *(v25 + 1);

  v27 = *(v25 + 2);

  v28 = v5 + v1[14];
  v29 = *(v28 + 1);

  v30 = *(v28 + 2);

  v31 = *(v5 + v1[15] + 8);

  v32 = v5 + v1[16];
  v33 = *(v32 + 1);

  v34 = *(v32 + 2);

  v35 = v5 + v1[17];
  v36 = *(v35 + 1);

  v37 = *(v35 + 2);

  v38 = v5 + v1[18];
  v39 = *(v38 + 1);

  v40 = *(v38 + 2);

  v41 = *(v5 + v1[19] + 8);

  v42 = *(v5 + v1[20] + 8);

  v43 = *(v5 + v1[21] + 8);

  v44 = v5 + v1[22];
  v45 = *(v44 + 1);

  v46 = *(v44 + 2);

  v47 = v5 + v1[23];
  v48 = *(v47 + 1);

  v49 = *(v47 + 3);

  v50 = v5 + v1[24];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  return swift_deallocObject();
}

uint64_t sub_21BB4E500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CommLimitsItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4E5AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CommLimitsItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4E650()
{
  v1 = (type metadata accessor for CommLimitsManagedCell() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v4 = *(v3 + 16);

  v5 = *(v3 + 40);

  v6 = *(v3 + 56);

  v7 = *(v3 + 72);

  v8 = v3 + v1[11];
  v9 = type metadata accessor for CommLimitsItem(0);
  v10 = *(v9 + 20);
  v11 = sub_21BE25D1C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4E7C8()
{
  v1 = (type metadata accessor for CommLimitsManagedCell() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = *(v0 + v2 + 16);

  v5 = *(v0 + v2 + 40);

  v6 = *(v0 + v2 + 56);

  v7 = *(v0 + v2 + 72);

  v8 = v0 + v2 + v1[11];
  v9 = type metadata accessor for CommLimitsItem(0);
  v10 = *(v9 + 20);
  v11 = sub_21BE25D1C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4E950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9038, &qword_21BE3E778);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9040, &unk_21BE3E780);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB4EA8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9038, &qword_21BE3E778);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9040, &unk_21BE3E780);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB4EBE4()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_21BB4EC38@<X0>(void *a1@<X8>)
{
  result = sub_21BE2731C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BB4ECD8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_21BB4EEBC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21BB4F0A8()
{
  v1 = type metadata accessor for AgeRangeSharingView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 32);

  v8 = *(v0 + v2 + 48);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE26FEC();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
    v11 = *(v4 + v9);
  }

  sub_21BCBC920(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE288BC();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  else
  {
    v14 = *(v4 + v12);
  }

  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21BE27B0C();
    (*(*(v16 - 8) + 8))(v4 + v15, v16);
  }

  else
  {
    v17 = *(v4 + v15);
  }

  v18 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_21BE26F5C();
    (*(*(v19 - 8) + 8))(v4 + v18, v19);
  }

  else
  {
    v20 = *(v4 + v18);
  }

  v21 = *(v4 + v1[14] + 8);

  v22 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_21BB4F378()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4F408()
{
  v1 = type metadata accessor for AgeRangeSharingView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 20) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v3[2];

  v6 = v3[4];

  v7 = v3[6];

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE26FEC();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  sub_21BCBC920(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21BE288BC();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21BE27B0C();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
    v16 = *(v3 + v14);
  }

  v17 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21BE26F5C();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
    v19 = *(v3 + v17);
  }

  v20 = *(v3 + v1[14] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BB4F6C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB4F6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9168, &qword_21BE3ED30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9170, &unk_21BE3ED38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9190, &qword_21BE3EDA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5078, &unk_21BE31050);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9178, &qword_21BE3ED48);
  sub_21BE25D6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9180, &unk_21BE3ED50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
  sub_21BB3B038(&qword_27CDB9188, &qword_27CDB9180, &unk_21BE3ED50);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
  swift_getOpaqueTypeConformance2();
  sub_21BCBEAF0(&qword_27CDB78D8, MEMORY[0x277CC95F0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BCBD140(&qword_27CDB9198, &qword_27CDB9190, &qword_21BE3EDA8, sub_21BCBCACC);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9330, &unk_21BE3F1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB4FA7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93B0, &qword_21BE3F490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93A8, &qword_21BE3F488);
  sub_21BCC01D0();
  sub_21BBF32A0();
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4FBBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4FC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93E8, &qword_21BE3F548);
  sub_21BB3B038(&qword_27CDB93F0, &qword_27CDB93E8, &qword_21BE3F548);
  sub_21BBF32A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4FCCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4FD0C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FD5C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FDA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4FE00()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4FE50()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB4FEA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_21BB4FF40()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_21BB4FF90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21BE2846C();
  sub_21BE2721C();
  swift_getWitnessTable();
  sub_21BCC83F4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationControllerReader();
  return swift_getWitnessTable();
}

uint64_t sub_21BB50080()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_21BB500D8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_21BB50130()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_21BB50180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_21BE2846C();

  return swift_getWitnessTable();
}

uint64_t sub_21BB501D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_21BE2934C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21BB50314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB50454()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB96A8, &qword_21BE3FF40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB96B8, &qword_27CDB96A8, &qword_21BE3FF40);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB505B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB50648()
{

  return swift_deallocObject();
}

id sub_21BB506E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27CDB9740;
  *a1 = qword_27CDB9740;

  return v2;
}

uint64_t sub_21BB50854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB508F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB50940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CommLimitsItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB509EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CommLimitsItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB50A90()
{
  v1 = (type metadata accessor for CommLimitsNotManagedCell() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3[5];

  v6 = v3[7];

  v7 = v3 + v1[10];
  v8 = type metadata accessor for CommLimitsItem(0);
  v9 = *(v8 + 20);
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB50C00()
{
  v1 = (type metadata accessor for CommLimitsNotManagedCell() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);

  v5 = *(v0 + v2 + 40);

  v6 = *(v0 + v2 + 56);

  v7 = v0 + v2 + v1[10];
  v8 = type metadata accessor for CommLimitsItem(0);
  v9 = *(v8 + 20);
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB50E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB50E58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB50F54(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9978, &qword_21BE40A90);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE2848C();
  sub_21BE2719C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB51074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9998, &qword_21BE40B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB510FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3 = *(a1 + 8);
  sub_21BE270BC();
  sub_21BE2785C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21BB511C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BB51200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PurchaseSharingItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB512A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PurchaseSharingItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB51344()
{
  v1 = (type metadata accessor for PurchaseSharingItemView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);

  v5 = v0 + v2 + v1[7];
  v6 = type metadata accessor for PurchaseSharingItem(0);
  v7 = v6[5];
  v8 = sub_21BE25B9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB514A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_21BE27D2C();
  return swift_getWitnessTable();
}

uint64_t sub_21BB51504()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB51544()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB51638(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB516F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB517A8()
{
  v1 = *(v0 + 24);

  sub_21BCEFCC0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_21BBC9024(*(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 104);
  if (v2 >> 60 != 15)
  {
    sub_21BBBEF94(*(v0 + 96), v2);
  }

  v3 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_21BB5181C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_21BCEFCC0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_21BBC9024(*(v0 + 96), *(v0 + 104));
  v3 = *(v0 + 120);
  if (v3 >> 60 != 15)
  {
    sub_21BBBEF94(*(v0 + 112), v3);
  }

  v4 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_21BB518AC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB51950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21BE2881C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB519FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21BE2881C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB51AA0()
{
  v1 = (type metadata accessor for FamilyMemberToggleRowRUI() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[8];
  v7 = sub_21BE2881C();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = *(v3 + v1[9]);

  v9 = *(v3 + v1[10] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BB51CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BCF56DC(v4);
}

uint64_t sub_21BB51D64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BCF4F08(v4);
}

uint64_t sub_21BB51DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA030, &qword_21BE426A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA060, &qword_21BE426C8);
  sub_21BD089E0();
  sub_21BC354E4();
  sub_21BD08D5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB51E60()
{
  v1 = *(v0 + 24);

  sub_21BD09234(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_21BB51EC4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB51EFC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB51F44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_21BB47CE0();
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  sub_21BB47CE0();
  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  MEMORY[0x21CF05D90](v0 + 160);
  v10 = *(v0 + 168);

  v11 = *(v0 + 192);

  v12 = *(v0 + 200);

  v13 = *(v0 + 224);

  v14 = *(v0 + 240);

  v15 = *(v0 + 256);

  v16 = *(v0 + 272);

  v17 = *(v0 + 288);

  v18 = *(v0 + 304);

  return swift_deallocObject();
}

uint64_t sub_21BB52038@<X0>(void *a1@<X8>)
{
  sub_21BD0A07C();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BB5209C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA0D0, &qword_21BE42A50);
  sub_21BD090B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB52114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EmergencyContactDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB521D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EmergencyContactDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB52288()
{
  v1 = type metadata accessor for EmergencyContactView();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = type metadata accessor for EmergencyContactDataItem(0);
  v5 = *(v4 + 28);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v3 + *(v4 + 32));
  swift_unknownObjectRelease();
  v9 = *(v3 + *(v1 + 20));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5240C()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB52460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB52530()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21BB52568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB52608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB526C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB52780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB5284C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB52920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3D0, &qword_21BE43350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB529B8()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[6] + 8);

  v9 = v5 + v1[8];
  v10 = *(v9 + 1);

  v11 = *(v5 + v1[9] + 8);

  v12 = *(v5 + v1[10] + 8);

  v13 = v5 + v1[11];

  v14 = *(v13 + 1);

  return swift_deallocObject();
}

uint64_t sub_21BB52B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5090, &qword_21BE43430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB52BB8()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + v1[6] + 8);

  v10 = v5 + v1[8];
  v11 = *(v10 + 1);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = v5 + v1[11];

  v15 = *(v14 + 1);

  return swift_deallocObject();
}

uint64_t sub_21BB52D54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2751C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB52D80(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BE2752C();
}

uint64_t sub_21BB52DAC()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v4 + v1[6] + 8);

  v9 = v4 + v1[8];
  v10 = *(v9 + 1);

  v11 = *(v4 + v1[9] + 8);

  v12 = *(v4 + v1[10] + 8);

  v13 = v4 + v1[11];

  v14 = *(v13 + 1);

  v15 = *(v0 + v7 + 8);

  return swift_deallocObject();
}

uint64_t sub_21BB52F44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  sub_21BD16CA8(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB52FC0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_21BB53150(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21BB53358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeneficiaryItemDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB53414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BeneficiaryItemDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

id sub_21BB534D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21BB5353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB5366C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB537B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB537E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA800, &unk_21BE44448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB53850()
{
  v1 = type metadata accessor for MultipleInviteViewForInvitee();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 24);

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE26F5C();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
    v9 = *(v4 + v7);
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[7];
  v12 = sub_21BE2934C();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);
  v13 = *(v4 + v1[8] + 8);

  return swift_deallocObject();
}