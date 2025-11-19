void sub_2297103E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_22971630C;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_229710488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_229710530;
    v4[3] = &block_descriptor_124;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

uint64_t sub_229710568()
{
  v1 = [v0 activeDevices];
  sub_229562F68(0, &qword_281401928, 0x277D44170);
  v2 = sub_22A4DD83C();

  return v2;
}

void sub_2297105F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_22953E640;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_2297106C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_229710770;
    v4[3] = &block_descriptor_106;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_229710778(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_229710800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2295AAF60;
    v7[3] = a5;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_2297108B8()
{
  v1 = OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_uuid;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_229710968()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E1D0(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_229710A08()
{
  v1 = *v0;
  sub_22A4DB7DC();
  sub_22953E1D0(&qword_281403880, MEMORY[0x277CC95F0]);
  return sub_22A4DD4FC();
}

uint64_t sub_229710A90()
{
  v1 = *v0;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E1D0(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_229710B2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22A4DB78C();
}

uint64_t sub_229710B48()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v4 + 24));
    sub_2297162BC((v4 + 16), &v7);
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

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_229710C14()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v4 + 24));
    sub_2295B2DD4((v4 + 16), &v8);
    os_unfair_lock_unlock((v4 + 24));
    v5 = v8;

    sub_229714B54(v3);
    if (v5)
    {
      sub_2297145E4();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 32) = 0;
  swift_unknownObjectWeakAssign();
  v6 = *(v1 + 16);

  sub_2296B874C(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_229710CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  sub_229571C90(&v9, a2);

  v6 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *a1;
    }

    result = sub_22A4DE0EC();
  }

  else
  {
    result = *(v6 + 16);
  }

  *a3 = result;
  return result;
}

uint64_t sub_229710D78@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  sub_229579104();

  v4 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *a1;
    }

    result = sub_22A4DE0EC();
  }

  else
  {
    result = *(v4 + 16);
  }

  *a2 = result == 0;
  return result;
}

char *sub_229710DE8(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = v5;
  v58 = a5;
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v57 = a1;
  v53 = sub_22A4DDD7C();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DDD5C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_22A4DD29C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = OBJC_IVAR___HMDDiscoveryController_queue;
  v15 = sub_229562F68(0, &qword_281401980, 0x277D85C78);
  v51[0] = &unk_22A580CE0;
  v51[1] = v15;
  sub_22A4DD28C();
  v59 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401990, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_229579858(&qword_281401CA0, &unk_27D87BAF0, &unk_22A5761E0);
  sub_22A4DE03C();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v53);
  v16 = sub_22A4DDDCC();
  v17 = v52;
  *&v5[v52] = v16;
  v18 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v5[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] = 0;
  v19 = OBJC_IVAR___HMDDiscoveryController_visibleSFDevices;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87BB00, &unk_22A580DD0);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F98];
  *(v20 + 24) = 0;
  *(v20 + 16) = v21;
  *&v5[v19] = v20;
  v22 = OBJC_IVAR___HMDDiscoveryController_assertions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87BB08, &qword_22A5761F0);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = MEMORY[0x277D84FA0];
  *&v5[v22] = v23;
  v24 = &v5[OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory];
  v26 = v54;
  v25 = v55;
  *v24 = v54;
  v24[1] = v25;
  v27 = &v5[OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory];
  v28 = v56;
  v29 = v58;
  *v27 = v56;
  v27[1] = v29;
  v6[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] = v57;
  v30 = *&v6[v17];

  v31 = v30;
  v32 = v28();
  v34 = v33;
  ObjectType = swift_getObjectType();
  v36 = *(v34 + 16);
  v37 = v31;
  v36();
  (*(v34 + 88))(1, ObjectType, v34);

  v38 = &v6[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient];
  *v38 = v32;
  v38[1] = v34;
  v39 = *&v6[v17];
  v40 = v26();
  v42 = v41;
  v43 = swift_getObjectType();
  v44 = *(v42 + 16);
  v45 = v39;
  v44();
  (*(v42 + 40))(0x60000400004, v43, v42);

  v46 = &v6[OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient];
  *v46 = v40;
  v46[1] = v42;
  v47 = type metadata accessor for DiscoveryController(0);
  v60.receiver = v6;
  v60.super_class = v47;
  v48 = objc_msgSendSuper2(&v60, sel_init);
  sub_2297115D8();
  v49 = OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
  swift_beginAccess();
  sub_229715F74(v48, &v48[v49]);
  swift_endAccess();

  return v48;
}

char *DiscoveryController.__allocating_init(discoveryNeedsAssertion:)(int a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_229710DE8(a1, sub_229711484, 0, sub_2297114B8, 0);
  swift_getObjectType();
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

char *DiscoveryController.init(discoveryNeedsAssertion:)(int a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_229710DE8(a1, sub_229711484, 0, sub_2297114B8, 0);
  swift_getObjectType();
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_2297115D8()
{
  v1 = (v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
  v2 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v3 + 112);
  swift_unknownObjectRetain();

  v6(sub_229715F2C, v5, ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = *v1;
  v8 = v1[1];
  v9 = swift_getObjectType();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(v8 + 160);
  swift_unknownObjectRetain();

  v11(sub_229715F4C, v10, v9, v8);
  swift_unknownObjectRelease();

  v12 = *v1;
  v13 = v1[1];
  v14 = swift_getObjectType();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v13 + 136);
  swift_unknownObjectRetain();

  v16(sub_229715F54, v15, v14, v13);
  swift_unknownObjectRelease();
}

void sub_2297117C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_229712DDC(2u, a1);
  }
}

void sub_229711824(void *a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_229712DDC(a3, a1);
  }
}

void sub_229711894(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      v8 = sub_22A4DD05C();
      v9 = sub_22A4DDCCC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_229538000, v8, v9, "Queue setup after invalidation.", v10, 2u);
        MEMORY[0x22AAD4E50](v10, -1, -1);
      }

      sub_229713980(v6, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2297119C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_229538000, v2, v3, "RPClient was interrupted", v4, 2u);
      MEMORY[0x22AAD4E50](v4, -1, -1);
    }
  }
}

void sub_229711A90(void *a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCDC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_229538000, v8, v9, a3, v10, 0xCu);
      sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }
  }
}

void sub_229711BCC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_229538000, v5, v6, "device changed from RPClient: %@", v7, 0xCu);
      sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v8, -1, -1);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }
  }
}

uint64_t sub_229711D28(uint64_t a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) & 1) == 0)
  {
    v8 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v7 = v8;
    (*(v3 + 104))(v7, *MEMORY[0x277D85200], v2);
    v9 = v8;
    LOBYTE(v8) = sub_22A4DD31C();
    result = (*(v3 + 8))(v7, v2);
    if (v8)
    {
      v10 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
      swift_beginAccess();
      v12 = *v10;
      v11 = v10[1];
      v13 = swift_unknownObjectRetain();
      sub_229713368(v13, v11);
      swift_unknownObjectRelease();
      return sub_229712854();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_229711EE0()
{
  v1 = sub_22A4DBB4C();
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = (v0 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 56);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, v7);
  swift_unknownObjectRelease();
  if (v11 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v13 = 0;
    v33 = v11 & 0xFFFFFFFFFFFFFF8;
    v34 = v11 & 0xC000000000000001;
    v14 = (v32 + 32);
    v15 = MEMORY[0x277D84F90];
    v29 = i;
    v30 = v11;
    while (1)
    {
      if (v34)
      {
        v16 = MEMORY[0x22AAD13F0](v13, v11);
      }

      else
      {
        if (v13 >= *(v33 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = [v16 idsDeviceIdentifier];
      if (v19)
      {
        v35 = v15;
        v20 = v19;
        sub_22A4DD5EC();

        v21 = [v17 mediaRouteIdentifier];
        if (v21)
        {
          v22 = v21;
          sub_22A4DD5EC();
        }

        v23 = v31;
        sub_22A4DBB1C();

        v24 = *v14;
        (*v14)(v36, v23, v1);
        v15 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_22958AD88(0, v15[2] + 1, 1, v15);
        }

        v26 = v15[2];
        v25 = v15[3];
        if (v26 >= v25 >> 1)
        {
          v15 = sub_22958AD88(v25 > 1, v26 + 1, 1, v15);
        }

        v15[2] = v26 + 1;
        v24(v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v36, v1);
        i = v29;
        v11 = v30;
      }

      else
      {
      }

      ++v13;
      if (v18 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_23:

  return v15;
}

uint64_t DiscoveryController.obtainNetworkVisibleDevicesProto()()
{
  v0 = sub_22A4DBB4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_229711EE0();
  v23 = MEMORY[0x277D84F90];
  v6 = v5[2];
  if (v6)
  {
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v21[1] = v5;
    v22 = v8;
    v9 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = MEMORY[0x277D84F90];
    v11 = (v7 - 8);
    v12 = *(v7 + 56);
    v8(v4, v9, v0);
    while (1)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v13)
      {
        v14 = v13;
        sub_22A4DBB2C();
        v15 = sub_22A4DD5AC();

        [v14 setIdsIdentifierString_];

        sub_22A4DBB3C();
        if (v16)
        {
          v17 = sub_22A4DD5AC();

          [v14 setMediaRouteIdString_];
        }

        v18 = (*v11)(v4, v0);
        MEMORY[0x22AAD09E0](v18);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v10 = v23;
      }

      else
      {
        (*v11)(v4, v0);
      }

      v9 += v12;
      if (!--v6)
      {
        break;
      }

      v22(v4, v9, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t DiscoveryController.obtainSFVisibleDevicesProto()()
{
  v1 = sub_22A4DBB4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_229714F94(*(v7 + 16), 0, &qword_27D87D4D0, &unk_22A580DC0, MEMORY[0x277D0EFA8]);
    v10 = sub_22971528C(&v29, (v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80))), v8, v7);
    sub_22953EE84();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  v29 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  if (v11)
  {
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v27[1] = v9;
    v28 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = MEMORY[0x277D84F90];
    v16 = (v12 - 8);
    v17 = *(v12 + 56);
    v13(v5, v14, v1);
    while (1)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v18)
      {
        v19 = v18;
        v20 = v12;
        sub_22A4DBB2C();
        v21 = sub_22A4DD5AC();

        [v19 setIdsIdentifierString_];

        sub_22A4DBB3C();
        if (v22)
        {
          v23 = sub_22A4DD5AC();

          [v19 setMediaRouteIdString_];
        }

        v24 = (*v16)(v5, v1);
        MEMORY[0x22AAD09E0](v24);
        v12 = v20;
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
          v12 = v20;
        }

        sub_22A4DD87C();
        v15 = v29;
      }

      else
      {
        (*v16)(v5, v1);
      }

      v14 += v17;
      if (!--v11)
      {
        break;
      }

      v28(v5, v14, v1);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

id sub_2297127D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
  v5 = sub_22A4DD81C();

  return v5;
}

uint64_t sub_229712854()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22A4DD31C();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (v0[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] != 1 || v0[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] == 1)
    {
      v9 = *&v0[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient];
      v10 = *&v0[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8];
      ObjectType = swift_getObjectType();
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      v13 = *(v10 + 176);
      swift_unknownObjectRetain();
      v14 = v0;
      v13(sub_229715F24, v12, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_229712A20(NSObject *a1)
{
  if (!a1)
  {
    oslog = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_229538000, oslog, v8, "Started sfDiscovery", v9, 2u);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    goto LABEL_6;
  }

  v2 = a1;
  oslog = sub_22A4DD05C();
  v3 = sub_22A4DDCEC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_229538000, oslog, v3, "Unable to start sfDiscovery %@", v4, 0xCu);
    sub_22953EAE4(v5, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);

LABEL_6:
    v10 = oslog;

    goto LABEL_8;
  }

  v10 = a1;

LABEL_8:
}

uint64_t sub_229712BEC()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  v8 = sub_22A4DD31C();
  result = (*(v2 + 8))(v5, v1);
  if (v8)
  {
    v10 = (v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
    v11 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
    v12 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 184);
    swift_unknownObjectRetain();
    v15 = v0;
    v14(ObjectType, v12);
    v16 = swift_unknownObjectRelease();
    v17 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory + 8);
    v18 = (*(v15 + OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory))(v16);
    v20 = v19;
    v21 = swift_getObjectType();
    (*(v20 + 16))(v7, v21, v20);
    (*(v20 + 88))(1, v21, v20);
    v22 = *v10;
    *v10 = v18;
    v10[1] = v20;
    swift_unknownObjectRelease();
    return sub_2297115D8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_229712DDC(unsigned __int8 a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882100, &unk_22A580DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30[-v7];
  v9 = sub_22A4DD2FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_22A4DD31C();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    result = [a2 idsIdentifier];
    if (result)
    {
      v17 = a1;
      v18 = result;
      v19 = sub_22A4DD5EC();
      v21 = v20;

      v22 = [a2 mediaRouteID];
      if (v22)
      {
        v23 = v22;
        v24 = sub_22A4DD5EC();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      if ((v17 - 1) > 1)
      {

        v29 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v28);
        *&v30[-16] = v19;
        *&v30[-8] = v21;

        os_unfair_lock_lock((v29 + 24));
        sub_229715EE8((v29 + 16), v8);
        os_unfair_lock_unlock((v29 + 24));

        sub_22953EAE4(v8, &qword_27D882100, &unk_22A580DB0);
      }

      else
      {
        v27 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v22);
        *&v30[-32] = v19;
        *&v30[-24] = v21;
        *&v30[-16] = v24;
        *&v30[-8] = v26;

        os_unfair_lock_lock(v27 + 6);
        sub_229715F04(&v27[4]);
        os_unfair_lock_unlock(v27 + 6);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2297130C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = sub_229543DBC(a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v19 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_229898834();
      v12 = v19;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_22A4DBB4C();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a4, v14 + *(v16 + 72) * v9, v15);
    sub_2297FE0FC(v9, v12);
    *a1 = v12;
    return (*(v16 + 56))(a4, 0, 1, v15);
  }

  else
  {
    v18 = sub_22A4DBB4C();
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }
}

uint64_t sub_229713248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882100, &unk_22A580DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;

  swift_bridgeObjectRetain_n();
  sub_22A4DBB1C();
  v9 = sub_22A4DBB4C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return sub_229891494(v8, a2, a3);
}

uint64_t sub_229713368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_22A4DD2FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_22A4DD31C();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (*(v3 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) != 1 || *(v3 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) == 1)
    {
      v32 = v5;
      swift_unknownObjectRetain();
      v19 = sub_22A4DD05C();
      v20 = sub_22A4DDCCC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        ObjectType = swift_getObjectType();
        v23 = v34;
        *(v21 + 4) = (*(v34 + 32))(ObjectType, v34);
        swift_unknownObjectRelease();
        _os_log_impl(&dword_229538000, v19, v20, "Set up the companion link client, controlFlags = %llu", v21, 0xCu);
        MEMORY[0x22AAD4E50](v21, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
        v23 = v34;
      }

      v34 = swift_getObjectType();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35[0] = a1;
      v35[1] = v23;
      swift_unknownObjectRetain();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880140, &unk_22A580DA0);
      MEMORY[0x22AACEC10](v35, v25);
      v27 = v32;
      v26 = v33;
      (*(v6 + 16))(v33, v10, v32);
      v28 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      (*(v6 + 32))(v29 + v28, v26, v27);
      v30 = *(v23 + 184);

      v30(sub_229715E68, v29, v34, v23);

      (*(v6 + 8))(v10, v27);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_229713770(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      v5 = sub_22A4DD05C();
      v6 = sub_22A4DDCEC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = a1;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_229538000, v5, v6, "Error activating RPClient: '%@'", v7, 0xCu);
        sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v8, -1, -1);
        MEMORY[0x22AAD4E50](v7, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
      sub_22A4DBA4C();
      sub_229713980(v14, v15);

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = sub_22A4DD05C();
      v12 = sub_22A4DDCCC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_229538000, v11, v12, "RPClient activated successfully", v13, 2u);
        MEMORY[0x22AAD4E50](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_229713980(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v41 = sub_22A4DD26C();
  v43 = *(v41 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22A4DD29C();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v44);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = sub_22A4DD2CC();
  v38 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v35 = *(v2 + OBJC_IVAR___HMDDiscoveryController_queue);
  sub_22A4DD2AC();
  sub_22A4DD30C();
  v37 = *(v15 + 8);
  v37(v19, v14);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock = a1;
  v47 = v34;
  swift_unknownObjectRetain();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880140, &unk_22A580DA0);
  v33 = v13;
  MEMORY[0x22AACEC10](&aBlock, v23);
  v24 = v13;
  v25 = v44;
  (*(v8 + 16))(v11, v24, v44);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  (*(v8 + 32))(v27 + v26, v11, v25);
  v50 = sub_229715D28;
  v51 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_22953E640;
  v49 = &block_descriptor_90;
  v28 = _Block_copy(&aBlock);

  v29 = v36;
  sub_22A4DD28C();
  v45 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  v30 = v39;
  v31 = v41;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F40](v21, v29, v30, v28);
  _Block_release(v28);
  (*(v43 + 8))(v30, v31);
  (*(v40 + 8))(v29, v42);
  (*(v8 + 8))(v33, v44);
  v37(v21, v38);
}

void sub_229713ECC()
{
  v0 = sub_22A4DD2FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_229538000, v7, v8, "Restarting RPDevice discovery", v9, 2u);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
    sub_22A4DBA4C();
    v10 = v15;
    v11 = *&v6[OBJC_IVAR___HMDDiscoveryController_queue];
    *v4 = v11;
    (*(v1 + 104))(v4, *MEMORY[0x277D85200], v0);
    v12 = v11;
    LOBYTE(v11) = sub_22A4DD31C();
    (*(v1 + 8))(v4, v0);
    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 192))(ObjectType, v10);
      swift_unknownObjectRelease();
      sub_22A4DBA4C();
      sub_229713368(v14[1], v15);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_229714138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DD26C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22A4DD29C();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR___HMDDiscoveryController_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_22A4DD28C();
  v21 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_2297143E4(uint64_t a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDD0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Became asserted", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 1;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    v10 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v6 = v10;
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    v11 = v10;
    LOBYTE(v10) = sub_22A4DD31C();
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      v12 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
      swift_beginAccess();
      v14 = *v12;
      v13 = v12[1];
      v15 = swift_unknownObjectRetain();
      sub_229713368(v15, v13);
      swift_unknownObjectRelease();
      sub_229712854();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2297145E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD26C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22A4DD29C();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = ObjectType;
  aBlock[4] = sub_229716280;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_147;
  v12 = _Block_copy(aBlock);
  v13 = v0;
  sub_22A4DD28C();
  v17 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16);
}

void sub_2297148AC(uint64_t a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDD0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "No more assertions", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 0;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    sub_229712BEC();
    v10 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v6 = v13;
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    swift_unknownObjectRetain();
    v14 = v13;
    v15 = sub_22A4DD31C();
    (*(v3 + 8))(v6, v2);
    if (v15)
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 192))(ObjectType, v12);
      v17 = swift_unknownObjectRelease();
      v18 = *(a1 + OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory + 8);
      v19 = (*(a1 + OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory))(v17);
      v21 = v20;
      v22 = swift_getObjectType();
      (*(v21 + 16))(v14, v22, v21);
      (*(v21 + 40))(0x60000400004, v22, v21);
      v23 = *v10;
      *v10 = v19;
      v10[1] = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_229714B60(uint64_t a1, const char *a2)
{

  oslog = sub_22A4DD05C();
  v4 = sub_22A4DDCDC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason), *(a1 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason + 8), &v11);
    *(v5 + 12) = 2080;
    sub_22A4DB7DC();
    sub_22953E1D0(&qword_281403860, MEMORY[0x277CC95F0]);
    v7 = sub_22A4DE5CC();
    v9 = sub_2295A3E30(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_229538000, oslog, v4, a2, v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }
}

id DiscoveryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoveryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_229714EC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_229714F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_229715090(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_229715134(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22971528C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_22A4DBB4C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
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
    v38 = a4 + 64;
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
      v24 = *(a4 + 56);
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

uint64_t sub_22971557C()
{
  result = sub_22A4DB7DC();
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

uint64_t sub_22971561C()
{
  result = sub_22A4DD07C();
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

uint64_t sub_22971573C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for HomeDeviceEntity();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_22959E67C(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_22959E73C(v12, v15);
      sub_22959E73C(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_229715980(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_229715AF0(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22A4DE09C();
  sub_229562F68(0, a5, a6);
  sub_22959E62C(a7, a5, a6);
  result = sub_22A4DDBAC();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22A4DE12C())
      {
        goto LABEL_30;
      }

      sub_229562F68(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void sub_229715D28()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98) - 8) + 80);
  v2 = *(v0 + 16);

  sub_229713ECC();
}

uint64_t objectdestroy_86Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_229715E68(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98) - 8) + 80);
  v4 = *(v1 + 16);

  sub_229713770(a1);
}

uint64_t sub_229715F04(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_229713248(a1, v1[2], v1[3]);
}

uint64_t sub_229715F74(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 24) = v2;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = v2[12];

  v8(sub_229716220, v7, ObjectType, v2);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v2[9];

  v10(sub_229716228, v9, ObjectType, v2);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v2[15];

  v12(sub_229716230, v11, ObjectType, v2);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v2[18];

  v14(sub_229716254, v13, ObjectType, v2);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v2[21];

  v16(sub_229716278, v15, ObjectType, v2);
}

char *sub_229716318(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v7 = 0;
    v17 = MEMORY[0x277D84F90];
    v16 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAD13F0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v17;
      }

      v11 = i;

      v12 = v18;
      if (v18 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_22958B0B0(0, *(v17 + 2) + 1, 1, v17);
        }

        v14 = *(v17 + 2);
        v13 = *(v17 + 3);
        if (v14 >= v13 >> 1)
        {
          v17 = sub_22958B0B0((v13 > 1), v14 + 1, 1, v17);
        }

        *(v17 + 2) = v14 + 1;
        v17[v14 + 32] = v12 & 1;
        a1 = v16;
      }

      ++v7;
      i = v11;
      if (v10 == v11)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_229716544(void (*a1)(void *__return_ptr, id *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, a4, a5);
    sub_22959E62C(a6, a4, a5);
    sub_22A4DDBAC();
    v8 = v34[1];
    v12 = v34[2];
    v13 = v34[3];
    v14 = v34[4];
    v15 = v34[5];
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v32 = v8;
  v33 = MEMORY[0x277D84F90];
  while (v8 < 0)
  {
    v24 = sub_22A4DE12C();
    if (!v24 || (v34[0] = v24, sub_229562F68(0, a4, a5), swift_dynamicCast(), v23 = v35, v21 = v14, v22 = v15, !v35))
    {
LABEL_26:
      sub_22953EE84();
      return;
    }

LABEL_19:
    v35 = v23;
    a1(v34, &v35);
    if (v7)
    {

      sub_22953EE84();

      return;
    }

    v25 = v34[0];
    if (LOBYTE(v34[0]) == 2)
    {
      v8 = v32;
    }

    else
    {
      v26 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22958B0B0(0, *(v33 + 2) + 1, 1, v33);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v8 = v32;
      if (v28 >= v27 >> 1)
      {
        v8 = v32;
        v26 = sub_22958B0B0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v33 = v26;
      v26[v28 + 32] = v25 & 1;
    }

    v14 = v21;
    v15 = v22;
  }

  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v13 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v20 = *(v12 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22971682C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v29 = sub_22A4DB7DC();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v26 = v5 + 16;
  v28 = (v5 + 8);
  v30 = a3;

  v15 = 0;
  v25 = MEMORY[0x277D84F90];
  while (v12)
  {
    v16 = v29;
LABEL_11:
    (*(v5 + 16))(v8, *(v30 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v27(&v31, v8);
    if (v3)
    {
      (*v28)(v8, v16);

LABEL_19:

      return v25;
    }

    v12 &= v12 - 1;
    result = (*v28)(v8, v16);
    v18 = v31;
    if (v31 != 2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22958B0B0(0, *(v25 + 2) + 1, 1, v25);
        v25 = result;
      }

      v20 = *(v25 + 2);
      v19 = *(v25 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v23 = *(v25 + 2);
        v24 = v20 + 1;
        result = sub_22958B0B0((v19 > 1), v20 + 1, 1, v25);
        v20 = v23;
        v21 = v24;
        v25 = result;
      }

      v22 = v25;
      *(v25 + 2) = v21;
      v22[v20 + 32] = v18 & 1;
    }
  }

  v16 = v29;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_19;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_229716AC4(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v15 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAD13F0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20 = v9;
      a1(__src, &v20);
      if (v3)
      {

        return v8;
      }

      memcpy(v18, __src, sizeof(v18));
      if (get_enum_tag_for_layout_string_13HomeKitDaemon23ExpectedUpdatePassErrorO_0(v18) == 1)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_22953EAE4(__dst, &qword_27D880158, &qword_22A580E40);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22958B68C(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_22958B68C((v12 > 1), v13 + 1, 1, v8);
        }

        memcpy(v16, __dst, sizeof(v16));
        *(v8 + 2) = v13 + 1;
        memcpy(&v8[272 * v13 + 32], v16, 0x110uLL);
        a1 = v15;
      }

      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229716CE4(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x22AAD09E0]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229716E90(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_22A4DB74C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22958A770(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_22958A770((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

char *sub_229717020(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB49C();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB57C();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19);
  v51 = &v47 - v22;
  v23 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v24 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v25 = type metadata accessor for HomePassData(0);
  v26 = (v24 + v25[14]);
  v27 = v26[1];
  if (v27)
  {
    v28 = v25;
    if (*(v24 + v25[19]) == 1 && *(a2 + 40) == 1)
    {
      v29 = *v26;
      if (*(v24 + v25[11]) == 1 && *(v24 + v25[10]) != 5)
      {
        sub_22A4DB54C();
        v42 = v54;
        sub_22A4DBD4C();
        v23 = v42;
        sub_22953EAE4(v18, &qword_27D880180, &unk_22A586590);
        if (v42)
        {
          return v23;
        }

        v47 = v29;
        v54 = 0;
        v43 = v24 + v28[6];
        v55 = sub_22A4DB76C();
        v56 = v44;
        v46 = v48;
        v45 = v49;
        (*(v48 + 104))(v7, *MEMORY[0x277CC91D8], v49);
        sub_22962F254();
        sub_22A4DB56C();
        (*(v46 + 8))(v7, v45);

        v30 = v52;
        v32 = v53;
        (*(v52 + 8))(v11, v53);
        (*(v30 + 56))(v21, 0, 1, v32);
        v31 = v51;
        sub_2297193E8(v21, v51);
      }

      else
      {
        v47 = *v26;
        v31 = v51;
        v30 = v52;
        v32 = v53;
        (*(v52 + 56))(v51, 1, 1, v53);
      }

      v23 = sub_22958A53C(0, 1, 1, MEMORY[0x277D84F90]);
      v34 = *(v23 + 2);
      v33 = *(v23 + 3);
      if (v34 >= v33 >> 1)
      {
        v23 = sub_22958A53C((v33 > 1), v34 + 1, 1, v23);
      }

      *(v23 + 2) = v34 + 1;
      v35 = &v23[16 * v34];
      *(v35 + 4) = 0xD000000000000028;
      *(v35 + 5) = 0x800000022A593BB0;
      v36 = sub_229717AE8(v47, v27, v31);
      sub_2296F0AA0(v36);
      v37 = v50;
      sub_229719378(v31, v50);
      if ((*(v30 + 48))(v37, 1, v32) == 1)
      {
        sub_22953EAE4(v31, &qword_27D880180, &unk_22A586590);
        sub_22953EAE4(v37, &qword_27D880180, &unk_22A586590);
      }

      else
      {
        sub_22953EAE4(v37, &qword_27D880180, &unk_22A586590);
        v39 = *(v23 + 2);
        v38 = *(v23 + 3);
        if (v39 >= v38 >> 1)
        {
          v23 = sub_22958A53C((v38 > 1), v39 + 1, 1, v23);
        }

        sub_22953EAE4(v31, &qword_27D880180, &unk_22A586590);
        *(v23 + 2) = v39 + 1;
        v40 = &v23[16 * v39];
        *(v40 + 4) = 0xD00000000000002ELL;
        *(v40 + 5) = 0x800000022A593BE0;
      }
    }
  }

  return v23;
}

id sub_2297175BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_229717DE4(a1, a2, a3, __dst);
  v50 = a3;
  v8 = *(&__dst[7] + 1);
  v7 = *&__dst[8];
  __src[17] = __dst[0];
  *v57 = __dst[1];
  *&v57[16] = __dst[2];
  *&v57[32] = __dst[3];
  *&v57[48] = __dst[4];
  *&v57[64] = __dst[5];
  v58 = __dst[6];
  v59 = __dst[7];
  v60 = *(&__dst[7] + 1);
  v61 = __dst[8];
  v62 = __dst[9];
  v66 = *&v57[56];
  v67 = __dst[0];
  v64 = *&v57[24];
  v65 = *&v57[40];
  v63 = *&v57[8];
  if (!*&__dst[1])
  {

    sub_229718F54(__src);

    memcpy(__dst, __src, 0x110uLL);
    return memcpy(a4, __dst, 0x110uLL);
  }

  v40 = __dst[7];
  v41 = *(&__dst[5] + 1);
  v42 = *&__dst[1];
  v43 = *(&__dst[8] + 1);
  v47 = *(&__dst[6] + 1);
  v48 = *&__dst[6];
  v49 = __dst[9];
  [a1 paymentType];
  result = PKPaymentMethodTypeToString();
  if (result)
  {
    v10 = result;
    v45 = v7;
    v39 = sub_22A4DD5EC();
    v12 = v11;

    v38 = v50[5];
    v13 = [a1 secureElementIdentifier];
    v46 = a4;
    v44 = v8;
    if (v13)
    {
      v14 = v13;
      v15 = sub_22A4DD5EC();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *&__dst[0] = v15;
    *(&__dst[0] + 1) = v17;
    v36 = MEMORY[0x277D837D0];
    sub_22A4DBD4C();

    v18 = [a1 applicationIdentifier];
    if (v18)
    {
      v19 = v18;
      sub_22A4DD5EC();
    }

    v37 = MEMORY[0x277D837D0];
    sub_22A4DBD4C();

    v20 = v12;
    v21 = *v50;
    v22 = v50[1];
    swift_bridgeObjectRetain_n();
    v23 = sub_2297192BC(4uLL, v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = MEMORY[0x22AAD0860](v23, v25, v27, v29);
    v32 = v31;

    v33 = [a1 paymentNetworkIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880168, &qword_22A580E50);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22A576180;
    __src[11] = v67;
    *(&__src[12] + 8) = v63;
    *(&__src[13] + 8) = v64;
    v35 = v66;
    *(&__src[14] + 8) = v65;
    *(v34 + 32) = v41;
    *(v34 + 40) = v48;
    *(v34 + 48) = v47;
    *(v34 + 56) = v40;
    *(v34 + 64) = v44;
    *(v34 + 72) = v45;
    *(&__src[15] + 8) = v35;
    *&__src[0] = v39;
    *(&__src[0] + 1) = v20;
    *&__src[1] = v38;
    *(&__src[1] + 1) = v54;
    *&__src[2] = v55;
    *(&__src[2] + 1) = v52;
    *&__src[3] = v53;
    *(&__src[3] + 1) = v21;
    *&__src[4] = v22;
    *(&__src[4] + 1) = v30;
    *&__src[5] = v32;
    *(&__src[5] + 8) = xmmword_22A57E210;
    *(&__src[6] + 1) = v33;
    *&__src[7] = 1701670728;
    *(&__src[7] + 1) = 0xE400000000000000;
    LOBYTE(__src[8]) = 0;
    *(&__src[8] + 1) = *v51;
    DWORD1(__src[8]) = *&v51[3];
    *(&__src[8] + 1) = 1;
    *&__src[9] = MEMORY[0x277D84F90];
    *(&__src[9] + 1) = v43;
    *&__src[10] = v49;
    *(&__src[10] + 1) = v34;
    *&__src[12] = v42;
    *(&__src[16] + 1) = *(&v49 + 1);
    nullsub_1(__src);
    memcpy(__dst, __src, 0x110uLL);
    a4 = v46;
    return memcpy(a4, __dst, 0x110uLL);
  }

  __break(1u);
  return result;
}

uint64_t sub_229717AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_22A4DB57C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3B0, &unk_22A578530);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22A576180;
  *(v15 + 32) = 0xD000000000000028;
  *(v15 + 40) = 0x800000022A593BB0;
  *(v15 + 48) = xmmword_22A580DE0;
  *(v15 + 64) = a1;
  *(v15 + 72) = a2;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  sub_229719378(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_22953EAE4(v9, &qword_27D880180, &unk_22A586590);
    v16 = *(v15 + 16);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);

    v17 = sub_22A4DB4BC();
    v19 = v18;
    v16 = 2;
    v15 = sub_22958B580(1, 2, 1, v15);
    (*(v11 + 8))(v14, v10);
    *(v15 + 16) = 2;
    *(v15 + 96) = 0xD00000000000002ELL;
    *(v15 + 104) = 0x800000022A593BE0;
    *(v15 + 112) = 0;
    *(v15 + 120) = 0;
    *(v15 + 128) = 0xD000000000000019;
    *(v15 + 136) = 0x800000022A593D10;
    *(v15 + 144) = v17;
    *(v15 + 152) = v19;
  }

  v20 = *(v15 + 24);
  if (v16 >= v20 >> 1)
  {
    v15 = sub_22958B580((v20 > 1), v16 + 1, 1, v15);
  }

  *(v15 + 16) = v16 + 1;
  v21 = (v15 + (v16 << 6));
  v21[4] = 0xD00000000000002DLL;
  v21[5] = 0x800000022A589110;
  v21[6] = 0xD000000000000011;
  v21[7] = 0x800000022A593C70;
  v21[8] = 0;
  v21[9] = 0;
  v21[10] = 0xD000000000000076;
  v21[11] = 0x800000022A593C90;
  return v15;
}

uint64_t sub_229717DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 paymentNetworkIdentifier];
  if (v8 == 139)
  {
    sub_2297182F8(a1, a2, a3, v43);
    v37 = v43[0];
    v38 = v43[1];
    v35 = v43[2];
    v36 = v43[3];
    v9 = v44;
    v10 = v45;
    v11 = v46;
    sub_229718F80(a2, v47);
    v27 = a2 + *(type metadata accessor for HomePassState(0) + 48);
    v28 = v27 + *(type metadata accessor for HomePassData(0) + 32);
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    v31 = sub_22A4DB61C();
    v32 = [v31 hmf_hexadecimalRepresentation];

    v18 = sub_22A4DD5EC();
    v20 = v33;

    result = sub_2297187D0(a2);
    v21 = v49;
    v22 = v48;
    v23 = v47[1];
    v26 = v47[2];
    v24 = v47[0];
    goto LABEL_5;
  }

  if (v8 == 133)
  {
    sub_229718044(a1, a2, a3, v39);
    v37 = v39[0];
    v38 = v39[1];
    v35 = v39[2];
    v36 = v39[3];
    v9 = v40;
    v10 = v41;
    v11 = v42;
    v12 = a2 + *(type metadata accessor for HomePassState(0) + 48);
    v13 = v12 + *(type metadata accessor for HomePassData(0) + 32);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = sub_22A4DB61C();
    v17 = [v16 hmf_hexadecimalRepresentation];

    v18 = sub_22A4DD5EC();
    v20 = v19;

    v21 = 0uLL;
    v22 = 1;
    v23 = 0xE900000000000069;
    v24 = 0x63742E322E706365;
    result = MEMORY[0x277D84F90];
    v26 = &unk_283CDBBC8;
LABEL_5:
    *a4 = v37;
    *(a4 + 16) = v38;
    *(a4 + 32) = v35;
    *(a4 + 48) = v36;
    *(a4 + 64) = v9;
    *(a4 + 72) = v10;
    *(a4 + 80) = v11;
    *(a4 + 88) = v24;
    *(a4 + 96) = v23;
    *(a4 + 104) = v26;
    *(a4 + 112) = v22;
    *(a4 + 120) = v21;
    *(a4 + 136) = v18;
    *(a4 + 144) = v20;
    *(a4 + 152) = result;
    return result;
  }

  sub_22962F2A8();
  swift_allocError();
  *v34 = 0xD000000000000018;
  *(v34 + 8) = 0x800000022A593B30;
  *(v34 + 16) = 0;
  return swift_willThrow();
}

void sub_229718044(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 subcredentials];
  if (v7)
  {
    v8 = v7;
    sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
    sub_22959E62C(&qword_27D87E258, &qword_27D87E250, 0x277D37D48);
    sub_22A4DDB6C();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880170, &qword_22A580E58);
  sub_22A4DBD4C();

  v11 = sub_22962D638(v29);

  if (v11)
  {
    v12 = [v11 identifier];

    if (v12)
    {
      v11 = sub_22A4DD5EC();
      v14 = v13;

      v15 = *(a3 + 40);
      v16 = a2 + *(type metadata accessor for HomePassState(0) + 48);
      v17 = v16 + *(type metadata accessor for HomePassData(0) + 32);
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = sub_22A4DB61C();
      v21 = [v20 hmf_hexadecimalRepresentation];

      v22 = sub_22A4DD5EC();
      v24 = v23;

      v25 = sub_22A4DB61C();
      v26 = [v25 hmf_hexadecimalRepresentation];

      v12 = sub_22A4DD5EC();
      v9 = v27;

      v10 = 1;
      goto LABEL_5;
    }

    v15 = 0;
    v11 = 0;
    v14 = 0;
    v22 = 0;
    v24 = 0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v22 = 0;
    v24 = 0;
    v12 = 0;
  }

  v9 = 0;
  v10 = 0;
LABEL_5:
  *a4 = v15;
  a4[1] = v11;
  a4[2] = v14;
  a4[3] = v22;
  a4[4] = v24;
  a4[5] = v12;
  a4[6] = v9;
  a4[7] = v10;
  a4[9] = 0;
  a4[10] = 0;
  a4[8] = 0;
}

void sub_2297182F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 subcredentials];
  if (v7)
  {
    v8 = v7;
    sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
    sub_22959E62C(&qword_27D87E258, &qword_27D87E250, 0x277D37D48);
    sub_22A4DDB6C();
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880170, &qword_22A580E58);
  sub_22A4DBD4C();

  v9 = sub_22962D638(v71);

  v10 = 0uLL;
  if (v9)
  {
    v11 = [v9 identifier];

    if (v11)
    {
      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = a2 + *(type metadata accessor for HomePassState(0) + 48);
      v16 = type metadata accessor for HomePassData(0);
      v17 = *(v15 + v16[18]);
      if (v17 == 2 || (v17 & 1) == 0)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      v67 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22A576180;
      v25 = (v15 + v16[15]);
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_22A4DB61C();
      v29 = [v28 hmf_hexadecimalRepresentation];

      v30 = sub_22A4DD5EC();
      v32 = v31;

      *(v24 + 32) = v30;
      *(v24 + 40) = v32;
      v64 = v24;
      v65 = v16;
      v66 = v15;
      v33 = *(v15 + v16[16]);
      v34 = *(v33 + 16);
      v35 = MEMORY[0x277D84F90];
      if (v34)
      {
        v60 = v14;
        v61 = v12;
        v62 = a3;
        v63 = a4;
        v70 = MEMORY[0x277D84F90];
        sub_229583334(0, v34, 0);
        v35 = v70;
        v36 = (v33 + 40);
        do
        {
          v69 = v35;
          v38 = *(v36 - 1);
          v37 = *v36;
          v40 = v36[1];
          v39 = v36[2];
          v41 = v36[3];
          v42 = v36[4];
          sub_22956C148(v38, *v36);
          sub_22956C148(v40, v39);
          sub_22956C148(v41, v42);
          v43 = sub_22A4DB61C();
          v44 = [v43 hmf_hexadecimalRepresentation];

          v45 = sub_22A4DD5EC();
          v68 = v46;

          sub_2295798D4(v38, v37);
          sub_2295798D4(v40, v39);
          sub_2295798D4(v41, v42);
          v35 = v69;
          v48 = *(v69 + 16);
          v47 = *(v69 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_229583334((v47 > 1), v48 + 1, 1);
            v35 = v69;
          }

          v36 += 6;
          *(v35 + 16) = v48 + 1;
          v49 = v35 + 16 * v48;
          *(v49 + 32) = v45;
          *(v49 + 40) = v68;
          --v34;
        }

        while (v34);
        a3 = v62;
        a4 = v63;
        v14 = v60;
        v12 = v61;
      }

      sub_2296F0858(v35);
      v9 = v64;
      v19 = *(a3 + 40);
      v50 = v66 + v65[8];
      v51 = *(v50 + 32);
      v52 = *(v50 + 40);
      v53 = sub_22A4DB61C();
      v54 = [v53 hmf_hexadecimalRepresentation];

      v20 = sub_22A4DD5EC();
      v11 = v55;

      v56 = sub_22A4DB61C();
      v57 = [v56 hmf_hexadecimalRepresentation];

      v21 = sub_22A4DD5EC();
      v22 = v58;

      v10 = xmmword_22A580DF0;
      v23 = v67;
    }

    else
    {
      v19 = 0;
      v12 = 0;
      v14 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v9 = 0;
      v10 = 0uLL;
    }
  }

  else
  {
    v19 = 0;
    v12 = 0;
    v14 = 0;
    v20 = 0;
    v11 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *a4 = v19;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14;
  *(a4 + 24) = v20;
  *(a4 + 32) = v11;
  *(a4 + 40) = v21;
  *(a4 + 48) = v22;
  *(a4 + 56) = v23;
  *(a4 + 64) = v10;
  *(a4 + 80) = v9;
}

uint64_t sub_2297187D0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v2 = *(v1 + *(type metadata accessor for HomePassData(0) + 64));
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v31 = MEMORY[0x277D84F90];
    sub_229583A00(0, v3, 0);
    v4 = v31;
    v5 = (v2 + 40);
    do
    {
      v30 = v3;
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      v10 = v5[3];
      v11 = v5[4];
      v26 = v11;
      v27 = v10;
      sub_22956C148(v6, *v5);
      sub_22956C148(v8, v9);
      sub_22956C148(v10, v11);
      v12 = sub_22A4DB61C();
      v13 = [v12 hmf_hexadecimalRepresentation];

      v14 = sub_22A4DD5EC();
      v28 = v15;
      v29 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880178, &qword_22A580E60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_22A576180;
      v17 = sub_22A4DB61C();
      v18 = [v17 hmf_hexadecimalRepresentation];

      v19 = sub_22A4DD5EC();
      v21 = v20;

      *(v16 + 32) = 0x31762E6F72696C61;
      *(v16 + 40) = 0xE800000000000000;
      *(v16 + 48) = v19;
      *(v16 + 56) = v21;
      sub_2295798D4(v6, v7);
      sub_2295798D4(v8, v9);
      sub_2295798D4(v27, v26);
      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_229583A00((v22 > 1), v23 + 1, 1);
      }

      v5 += 6;
      *(v31 + 16) = v23 + 1;
      v24 = (v31 + 24 * v23);
      v24[4] = v29;
      v24[5] = v28;
      v24[6] = v16;
      v3 = v30 - 1;
    }

    while (v30 != 1);
  }

  return v4;
}

double sub_2297189F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_229717020(a1, a2);
  if (v4)
  {
    return result;
  }

  v12 = v9;
  v13 = v10;
  MEMORY[0x28223BE20](v9);
  v35[2] = a1;
  v35[3] = a2;
  v14 = sub_229716AC4(sub_229718EFC, v35, a3);
  if (!*(v14 + 2))
  {

    sub_22962F2A8();
    swift_allocError();
    *v23 = xmmword_22A580E20;
    *(v23 + 16) = 3;
    swift_willThrow();
    return result;
  }

  v42 = 0;
  v15 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v16 = type metadata accessor for HomePassData(0);
  v17 = (v15 + v16[22]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  v40 = v19;
  v20 = (v15 + v16[9]);
  v21 = v20[1];
  v43 = *v20;
  v22 = *(v15 + v16[13]);
  if (v22 <= 14935010)
  {
    if (v22)
    {
      goto LABEL_13;
    }

    v24 = "rgb(137, 136, 136)";
    v38 = 0x6B63616C62;
    v26 = 0xE500000000000000;
LABEL_17:
    v39 = v26;
    goto LABEL_18;
  }

  if (v22 == 14935011)
  {
    v24 = "rgb(141, 125, 100)";
    v38 = 0x7265766C6973;
    v26 = 0xE600000000000000;
    goto LABEL_17;
  }

  if (v22 != 15521450)
  {
LABEL_13:
    v24 = "v16@?0@SFDevice8";
    v39 = 0xE300000000000000;
    v25 = 7233908;
    goto LABEL_14;
  }

  v24 = "rgb(118, 112, 104)";
  v39 = 0xE400000000000000;
  v25 = 1684828007;
LABEL_14:
  v38 = v25;
LABEL_18:
  v27 = *a2;
  v28 = *(a2 + 8);
  v36 = *(a2 + 48) & 1;
  v37 = v24 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880148, &qword_22A580E30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22A576180;
  *(v29 + 32) = 0x656D614E656D6F68;
  *(v29 + 40) = 0xE800000000000000;
  *(v29 + 48) = v43;
  *(v29 + 56) = v21;
  if (*(v13 + 16))
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v13 = 0;
  }

  v41 = v18;
  if (*(v12 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880150, &qword_22A580E38);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22A5761A0;
    *(v30 + 32) = &unk_283CDBB40;
    *(v30 + 40) = 0;
    *(v30 + 48) = 1;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    *(v30 + 72) = v12;
    *(v30 + 80) = 1;
    *(v30 + 88) = 0;
    *(v30 + 96) = xmmword_22A580E00;
  }

  else
  {

    v30 = 0;
  }

  *a4 = sub_22A4DD5EC();
  *(a4 + 8) = v31;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  strcpy((a4 + 32), "appleHomeKey");
  *(a4 + 45) = 0;
  *(a4 + 46) = -5120;
  *(a4 + 48) = v43;
  *(a4 + 56) = v21;
  v32 = v39;
  *(a4 + 64) = v38;
  *(a4 + 72) = v32;
  *(a4 + 80) = v36;
  *&result = 1;
  *(a4 + 88) = xmmword_22A580E10;
  *(a4 + 104) = 0xE400000000000000;
  *(a4 + 112) = 0x504B393539593835;
  *(a4 + 120) = 0xEA00000000004554;
  *(a4 + 128) = 0xD000000000000030;
  *(a4 + 136) = 0x800000022A589290;
  *(a4 + 144) = 1127498050;
  *(a4 + 152) = 0xE400000000000000;
  *(a4 + 160) = &unk_283CDBB70;
  *(a4 + 168) = 0xD000000000000010;
  *(a4 + 176) = 0x800000022A5892D0;
  *(a4 + 184) = 0xD000000000000012;
  *(a4 + 192) = v37;
  *(a4 + 200) = 0xD000000000000010;
  *(a4 + 208) = 0x800000022A5892F0;
  *(a4 + 216) = 1701670728;
  *(a4 + 224) = 0xE400000000000000;
  *(a4 + 232) = 0;
  *(a4 + 240) = 7105633;
  *(a4 + 248) = 0xE300000000000000;
  *(a4 + 256) = 0xD000000000000033;
  *(a4 + 264) = 0x800000022A589310;
  *(a4 + 272) = 0xD000000000000013;
  *(a4 + 280) = 0x800000022A589350;
  *(a4 + 288) = 0;
  *(a4 + 296) = 0;
  *(a4 + 304) = 0;
  *(a4 + 312) = v29;
  *(a4 + 320) = v13;
  v33 = MEMORY[0x277D84F90];
  *(a4 + 328) = v30;
  *(a4 + 336) = v14;
  *(a4 + 344) = 0;
  *(a4 + 352) = v33;
  *(a4 + 360) = 0;
  *(a4 + 368) = 0x4E746361746E6F63;
  *(a4 + 376) = 0xEB00000000656D61;
  *(a4 + 384) = 0;
  *(a4 + 386) = 0;
  *(a4 + 392) = 0xD000000000000010;
  *(a4 + 400) = 0x800000022A5892D0;
  *(a4 + 408) = 0x737365636341;
  *(a4 + 416) = 0xE600000000000000;
  v34 = v41;
  *(a4 + 424) = v40;
  *(a4 + 432) = v34;
  return result;
}

double sub_229718F54(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_229718F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v4 = type metadata accessor for HomePassData(0);
  v5 = v4;
  v6 = *(v3 + *(v4 + 64));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = v4;
    v50 = v3;
    v51 = a2;
    v55 = MEMORY[0x277D84F90];
    sub_2295839E0(0, v7, 0);
    v9 = (v6 + 40);
    v8 = v55;
    do
    {
      v54 = v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = v9[3];
      v15 = v9[4];
      v52 = v12;
      v53 = v15;
      sub_22956C148(v10, *v9);
      sub_22956C148(v12, v13);
      sub_22956C148(v14, v15);
      v16 = sub_22A4DB61C();
      v17 = [v16 hmf_hexadecimalRepresentation];

      sub_22A4DD5EC();
      sub_22A4DD6DC();
      v18 = sub_22A4DD79C();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = MEMORY[0x22AAD0860](v18, v20, v22, v24);
      v27 = v26;

      v28 = v10;
      v8 = v54;
      sub_2295798D4(v28, v11);
      sub_2295798D4(v52, v13);
      sub_2295798D4(v14, v53);
      v30 = *(v54 + 16);
      v29 = *(v54 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2295839E0((v29 > 1), v30 + 1, 1);
        v8 = v54;
      }

      v9 += 6;
      *(v8 + 16) = v30 + 1;
      v31 = (v8 + 24 * v30);
      v31[4] = v25;
      v31[5] = v27;
      v31[6] = 1;
      --v7;
    }

    while (v7);
    v3 = v50;
    a2 = v51;
    v5 = v49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22A576180;
  v33 = v3 + *(v5 + 32);
  v34 = *(v33 + 32);
  v35 = *(v33 + 40);
  v36 = sub_22A4DB61C();
  v37 = [v36 hmf_hexadecimalRepresentation];

  sub_22A4DD5EC();
  v38 = sub_2295ACB54(16);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = MEMORY[0x22AAD0860](v38, v40, v42, v44);
  v47 = v46;

  *(v32 + 32) = v45;
  *(v32 + 40) = v47;
  *a2 = 0x63742E322E706365;
  *(a2 + 8) = 0xE900000000000069;
  *(a2 + 16) = &unk_283CDBB98;
  *(a2 + 24) = 1;
  *(a2 + 32) = v8;
  *(a2 + 40) = v32;
  return result;
}

unint64_t sub_2297192BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_22A4DD6DC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_22A4DD79C();
}

uint64_t sub_229719378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297193E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229719458()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880188);
  __swift_project_value_buffer(v0, qword_27D880188);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

void sub_2297194D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v97 - v5;
  v7 = [v1 home];
  if (!v7)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v29 = sub_22A4DD07C();
    __swift_project_value_buffer(v29, qword_27D880188);
    v30 = v1;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v104 = v34;
      *v33 = 136315394;
      v102 = 91;
      v103 = 0xE100000000000000;
      v35 = [v30 logIdentifier];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(v102, v103, &v104);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v104);
      _os_log_impl(&dword_229538000, v31, v32, "[%s %s] Invalid home", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    type metadata accessor for HMError(0);
    v104 = 12;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v40 = v102;
    v41 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_27;
  }

  v8 = v7;
  v9 = [objc_msgSend(v7 dataSource)];
  swift_unknownObjectRelease();
  if (!v9)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v42 = sub_22A4DD07C();
    __swift_project_value_buffer(v42, qword_27D880188);
    v43 = v1;
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v104 = v47;
      *v46 = 136315394;
      v102 = 91;
      v103 = 0xE100000000000000;
      v48 = [v43 logIdentifier];
      v49 = sub_22A4DD5EC();
      v51 = v50;

      MEMORY[0x22AAD08C0](v49, v51);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v52 = sub_2295A3E30(v102, v103, &v104);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v104);
      _os_log_impl(&dword_229538000, v44, v45, "[%s %s] Missing bulletinBoard", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);
    }

    type metadata accessor for HMError(0);
    v104 = -1;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v53 = v102;
    v41 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_27;
  }

  if ([v1 adaptiveTemperatureAutomationsDisclosureStatus])
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v10 = sub_22A4DD07C();
    __swift_project_value_buffer(v10, qword_27D880188);
    v11 = v1;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104 = v101;
      *v14 = 136315650;
      v102 = 91;
      v103 = 0xE100000000000000;
      v15 = [v11 logIdentifier];
      v16 = v8;
      v17 = v9;
      v18 = a1;
      v19 = sub_22A4DD5EC();
      v21 = v20;

      v22 = v19;
      a1 = v18;
      v9 = v17;
      v8 = v16;
      MEMORY[0x22AAD08C0](v22, v21);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(v102, v103, &v104);

      *(v14 + 4) = v23;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v104);
      *(v14 + 22) = 2080;
      v102 = [v11 adaptiveTemperatureAutomationsDisclosureStatus];
      type metadata accessor for HMDUserAdaptiveTemperatureAutomationsDisclosureStatus(0);
      v24 = sub_22A4DBA6C();
      v26 = sub_2295A3E30(v24, v25, &v104);

      *(v14 + 24) = v26;
      _os_log_impl(&dword_229538000, v12, v13, "[%s %s] Not posting bulletin because user is already notified %s", v14, 0x20u);
      v27 = v101;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    type metadata accessor for HMError(0);
    v28 = 1;
LABEL_26:
    v104 = v28;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v73 = v102;
    v41 = sub_22A4DB3DC();

    [a1 respondWithError_];
LABEL_27:

    return;
  }

  v101 = v9;
  v54 = [v1 swiftExtensions];
  ObjectType = swift_getObjectType();
  v100 = &_s15SwiftExtensionsPMp;
  v56 = swift_conformsToProtocol2();
  if (v56)
  {
    v57 = (*(v56 + 16))(&v102, ObjectType, v56);
    v59 = v58;
    os_unfair_lock_lock(v58);
    os_unfair_lock_opaque_low = LOBYTE(v59[1]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v59);
    v57(&v102, 0);
    swift_unknownObjectRelease();
    if (os_unfair_lock_opaque_low == 1)
    {
      if (qword_27D87BA60 != -1)
      {
        swift_once();
      }

      v61 = sub_22A4DD07C();
      __swift_project_value_buffer(v61, qword_27D880188);
      v62 = v1;
      v63 = sub_22A4DD05C();
      v64 = sub_22A4DDCEC();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v104 = v66;
        *v65 = 136315394;
        v102 = 91;
        v103 = 0xE100000000000000;
        v67 = [v62 logIdentifier];
        v68 = sub_22A4DD5EC();
        v69 = a1;
        v71 = v70;

        MEMORY[0x22AAD08C0](v68, v71);
        a1 = v69;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v72 = sub_2295A3E30(v102, v103, &v104);

        *(v65 + 4) = v72;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v104);
        _os_log_impl(&dword_229538000, v63, v64, "[%s %s] Bulletin posting already in progress", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v66, -1, -1);
        MEMORY[0x22AAD4E50](v65, -1, -1);
      }

      v9 = v101;
      type metadata accessor for HMError(0);
      v28 = 15;
      goto LABEL_26;
    }

    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v74 = sub_22A4DD07C();
    __swift_project_value_buffer(v74, qword_27D880188);
    v75 = v1;
    v76 = sub_22A4DD05C();
    v77 = sub_22A4DDCCC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v104 = v99;
      *v78 = 136315394;
      v102 = 91;
      v103 = 0xE100000000000000;
      v79 = [v75 logIdentifier];
      v98 = v77;
      v80 = v79;
      v81 = sub_22A4DD5EC();
      v82 = a1;
      v84 = v83;

      MEMORY[0x22AAD08C0](v81, v84);
      a1 = v82;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v85 = sub_2295A3E30(v102, v103, &v104);

      *(v78 + 4) = v85;
      *(v78 + 12) = 2080;
      *(v78 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v104);
      _os_log_impl(&dword_229538000, v76, v98, "[%s %s] Handling", v78, 0x16u);
      v86 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v86, -1, -1);
      MEMORY[0x22AAD4E50](v78, -1, -1);
    }

    v87 = [v75 swiftExtensions];
    v88 = swift_getObjectType();
    v89 = swift_conformsToProtocol2();
    if (v89)
    {
      v90 = (*(v89 + 16))(&v102, v88, v89);
      v92 = v91;
      os_unfair_lock_lock(v91);
      LOBYTE(v92[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v92);
      v90(&v102, 0);
      swift_unknownObjectRelease();
      v93 = sub_22A4DD9DC();
      (*(*(v93 - 8) + 56))(v6, 1, 1, v93);
      v94 = swift_allocObject();
      v94[2] = 0;
      v94[3] = 0;
      v94[4] = v8;
      v94[5] = v75;
      v94[6] = v101;
      v94[7] = a1;
      v95 = v75;
      v96 = a1;
      sub_22957F3C0(0, 0, v6, &unk_22A580EC8, v94);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22971A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971A2CC, 0, 0);
}

uint64_t sub_22971A2CC()
{
  v1 = *(v0 + 184);
  v2 = [*(v0 + 176) name];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  sub_22955B93C(v3, v5, [v1 dataSource]);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v9 = sub_22A4DD5AC();
  *(v0 + 232) = v9;
  v10 = sub_22A4DD5AC();
  *(v0 + 240) = v10;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22971A850;
  swift_continuation_init();
  *(v0 + 136) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229787290;
  *(v0 + 104) = &block_descriptor_60;
  [v13 insertClimateBulletinForHome:v14 title:v9 body:v10 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22971A850()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_22971ABC4;
  }

  else
  {
    v3 = sub_22971A960;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22971A960()
{
  v20 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);

  [v2 updateAdaptiveTemperatureAutomationsDisclosureStatus_];
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D880188);
  v5 = v3;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315394;
    v19[1] = 91;
    v19[2] = 0xE100000000000000;
    v11 = [v8 logIdentifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    MEMORY[0x22AAD08C0](v12, v14);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v15 = sub_2295A3E30(91, 0xE100000000000000, v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, v19);
    _os_log_impl(&dword_229538000, v6, v7, "[%s %s] Posted bulletin", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  [*(v0 + 200) respondWithSuccess];
  v16 = *(v0 + 224);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22971ABC4()
{
  v32 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  swift_willThrow();

  v4 = *(v0 + 248);
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 184);
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D880188);
  v7 = v5;
  v8 = v4;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315650;
    v31[0] = v14;
    v31[1] = 91;
    v31[2] = 0xE100000000000000;
    v15 = [v11 logIdentifier];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v31);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, v31);
    *(v12 + 22) = 2112;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v13 = v21;
    _os_log_impl(&dword_229538000, v9, v10, "[%s %s] Failed to post bulletin with error %@", v12, 0x20u);
    sub_2295A1C40(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  [*(v0 + 184) swiftExtensions];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v24 = *(v0 + 200);
    v25 = (*(result + 16))(v0 + 144, ObjectType, result);
    v27 = v26;
    os_unfair_lock_lock(v26);
    LOBYTE(v27[1]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v27);
    v25(v0 + 144, 0);
    swift_unknownObjectRelease();
    v28 = sub_22A4DB3DC();
    [v24 respondWithError_];

    v29 = *(v0 + 224);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22971AFA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v43 - v5;
  if (![v1 isCurrentUser])
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D880188);
    v12 = v1;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v44 = 91;
    v45 = 0xE100000000000000;
    v46 = v16;
    v17 = [v12 logIdentifier];
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(v44, v45, &v46);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, &v46);
    v22 = "[%s %s] Cannot complete for non-current user";
    goto LABEL_9;
  }

  if ([v1 adaptiveTemperatureAutomationsDisclosureStatus] != 1)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v23 = sub_22A4DD07C();
    __swift_project_value_buffer(v23, qword_27D880188);
    v24 = v1;
    v13 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v13, v25))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315650;
    v44 = 91;
    v45 = 0xE100000000000000;
    v46 = v16;
    v26 = [v24 logIdentifier];
    v27 = sub_22A4DD5EC();
    v29 = v28;

    MEMORY[0x22AAD08C0](v27, v29);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v30 = sub_2295A3E30(v44, v45, &v46);

    *(v15 + 4) = v30;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, &v46);
    *(v15 + 22) = 2080;
    v44 = [v24 adaptiveTemperatureAutomationsDisclosureStatus];
    type metadata accessor for HMDUserAdaptiveTemperatureAutomationsDisclosureStatus(0);
    v31 = sub_22A4DBA6C();
    v33 = sub_2295A3E30(v31, v32, &v46);

    *(v15 + 24) = v33;
    _os_log_impl(&dword_229538000, v13, v25, "[%s %s] Received request for user that is not notified %s", v15, 0x20u);
    goto LABEL_14;
  }

  if ([v1 updateAdaptiveTemperatureAutomationsDisclosureStatus_])
  {
    v7 = sub_22A4DD9DC();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = a1;
    v9 = v1;
    v10 = a1;
    sub_22957F3C0(0, 0, v6, &unk_22A580EB0, v8);

    return;
  }

  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v36 = sub_22A4DD07C();
  __swift_project_value_buffer(v36, qword_27D880188);
  v37 = v1;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v44 = 91;
    v45 = 0xE100000000000000;
    v46 = v16;
    v38 = [v37 logIdentifier];
    v39 = sub_22A4DD5EC();
    v41 = v40;

    MEMORY[0x22AAD08C0](v39, v41);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v42 = sub_2295A3E30(v44, v45, &v46);

    *(v15 + 4) = v42;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, &v46);
    v22 = "[%s %s] Unable to update local status";
LABEL_9:
    _os_log_impl(&dword_229538000, v13, v14, v22, v15, 0x16u);
LABEL_14:
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

LABEL_15:

  type metadata accessor for HMError(0);
  v46 = 48;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  v34 = v44;
  v35 = sub_22A4DB3DC();

  [a1 respondWithError_];
}

uint64_t sub_22971B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_22971B6F8;

  return sub_22971BB38();
}

uint64_t sub_22971B6F8()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_22971B874;
  }

  else
  {
    v3 = sub_22971B80C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22971B80C()
{
  [*(v0 + 24) respondWithSuccess];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22971B874()
{
  v26 = v0;
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, v25);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s %s] Failed to complete disclosure with error %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v20 = v0[5];
  v21 = v0[3];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22971BB38()
{
  v1[4] = v0;
  v2 = sub_22A4DB7DC();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971BC04, 0, 0);
}

uint64_t sub_22971BC04()
{
  v64 = v0;
  v1 = [*(v0 + 32) home];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 32) messageDispatcher];
    *(v0 + 80) = v3;
    if (v3)
    {
      v4 = v3;
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v9 = [*(v0 + 32) messageTargetUUID];
      sub_22A4DB79C();

      v10 = [v2 uuid];
      sub_22A4DB79C();

      v11 = objc_allocWithZone(HMDRemoteHomeMessageDestination);
      v12 = sub_22A4DB77C();
      v13 = sub_22A4DB77C();
      v14 = [v11 initWithTarget:v12 homeUUID:v13];
      *(v0 + 88) = v14;

      v15 = *(v7 + 8);
      v15(v6, v8);
      v15(v5, v8);
      v16 = objc_opt_self();
      v17 = @"HMDUser.completeDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage";
      sub_22956AC5C(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v18 = sub_22A4DD47C();

      v19 = [v16 secureMessageWithName:v17 qualityOfService:-1 destination:v14 messagePayload:v18];
      *(v0 + 96) = v19;

      if (qword_27D87BA60 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 32);
      v21 = sub_22A4DD07C();
      __swift_project_value_buffer(v21, qword_27D880188);
      v22 = v20;
      v23 = v19;
      v24 = sub_22A4DD05C();
      v25 = sub_22A4DDCCC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 32);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v60;
        *v27 = 136315650;
        v62 = 91;
        v63 = 0xE100000000000000;
        v29 = [v26 logIdentifier];
        v30 = v4;
        v31 = sub_22A4DD5EC();
        v33 = v32;

        v34 = v31;
        v4 = v30;
        MEMORY[0x22AAD08C0](v34, v33);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v35 = sub_2295A3E30(91, 0xE100000000000000, &v61);

        *(v27 + 4) = v35;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_2295A3E30(0xD000000000000045, 0x800000022A593ED0, &v61);
        *(v27 + 22) = 2112;
        *(v27 + 24) = v23;
        *v28 = v23;
        v36 = v23;
        _os_log_impl(&dword_229538000, v24, v25, "%s %s Sending disclosure notification device message%@", v27, 0x20u);
        sub_2295A1C40(v28);
        MEMORY[0x22AAD4E50](v28, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v60, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);
      }

      else
      {
      }

      v55 = *(v0 + 32);
      v56 = swift_task_alloc();
      *(v0 + 104) = v56;
      v56[2] = v23;
      v56[3] = v55;
      v56[4] = v4;
      v57 = *(MEMORY[0x277D85A40] + 4);
      v58 = swift_task_alloc();
      *(v0 + 112) = v58;
      *v58 = v0;
      v58[1] = sub_22971C350;
      v59 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v58, 0, 0, 0xD000000000000045, 0x800000022A593ED0, sub_2297212F4, v56, v59);
    }
  }

  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 32);
  v38 = sub_22A4DD07C();
  __swift_project_value_buffer(v38, qword_27D880188);
  v39 = v37;
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCEC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 32);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 136315394;
    v61 = v44;
    v62 = 91;
    v63 = 0xE100000000000000;
    v45 = [v42 logIdentifier];
    v46 = sub_22A4DD5EC();
    v48 = v47;

    MEMORY[0x22AAD08C0](v46, v48);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v49 = sub_2295A3E30(91, 0xE100000000000000, &v61);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2295A3E30(0xD000000000000045, 0x800000022A593ED0, &v61);
    _os_log_impl(&dword_229538000, v40, v41, "%s %s Missing context, failed to save", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v43, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  v50 = *(v0 + 16);
  swift_willThrow();
  v52 = *(v0 + 56);
  v51 = *(v0 + 64);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_22971C350()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_22971C504;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_22971C46C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22971C46C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22971C504()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  v5 = *(v0 + 120);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

void sub_22971C604(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D880188);
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = a1;
    v13 = v12;
    *v11 = 136315394;
    v37 = 91;
    v38 = 0xE100000000000000;
    v39 = v12;
    v14 = [v8 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(v37, v38, &v39);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD000000000000048, 0x800000022A593E30, &v39);
    _os_log_impl(&dword_229538000, v9, v10, "%s %s Handling", v11, 0x16u);
    swift_arrayDestroy();
    v19 = v13;
    a1 = v36;
    MEMORY[0x22AAD4E50](v19, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  if ([v8 updateAdaptiveTemperatureAutomationsDisclosureStatus_])
  {
    v20 = sub_22A4DD9DC();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v8;
    v21[5] = a1;
    v22 = v8;
    v23 = a1;
    sub_22957F3C0(0, 0, v6, &unk_22A580EA0, v21);
  }

  else
  {
    v24 = v8;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCCC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315394;
      v37 = 91;
      v38 = 0xE100000000000000;
      v39 = v28;
      v29 = [v24 logIdentifier];
      v30 = sub_22A4DD5EC();
      v32 = v31;

      MEMORY[0x22AAD08C0](v30, v32);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(v37, v38, &v39);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2295A3E30(0xD000000000000048, 0x800000022A593E30, &v39);
      _os_log_impl(&dword_229538000, v25, v26, "%s %s Unable to update local status", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    type metadata accessor for HMError(0);
    v39 = 48;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v34 = v37;
    v35 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

uint64_t sub_22971CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_22971CAF4, 0, 0);
}

uint64_t sub_22971CAF4()
{
  v1 = [*(v0 + 56) swiftExtensions];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_22957F1C4(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_storage, v0 + 16);
    swift_unknownObjectRelease();
    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_22971CBF4;

    return sub_2297C8DA8(2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22971CBF4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22971CD7C;
  }

  else
  {
    v3 = sub_22971CD08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22971CD08()
{
  v1 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v1 respondWithSuccess];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22971CD7C()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000048, 0x800000022A593E30, v25);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s %s] Failed to complete disclosure with error %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v20 = v0[10];
  v21 = v0[8];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22971D0B0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22971D0D0, 0, 0);
}

uint64_t sub_22971D0D0()
{
  v47 = v0;
  if ([*(v0 + 72) adaptiveTemperatureAutomationsDisclosureStatus])
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 72);
    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D880188);
    v3 = v1;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315906;
    v45 = 91;
    v46 = 0xE100000000000000;
    v9 = [v6 logIdentifier];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    MEMORY[0x22AAD08C0](v10, v12);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v13 = sub_2295A3E30(91, 0xE100000000000000, &v44);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, &v44);
    *(v7 + 22) = 2080;
    v14 = [v6 shortDescription];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    v18 = sub_2295A3E30(v15, v17, &v44);

    *(v7 + 24) = v18;
    *(v7 + 32) = 2080;
    *(v0 + 56) = [v6 adaptiveTemperatureAutomationsDisclosureStatus];
    type metadata accessor for HMDUserAdaptiveTemperatureAutomationsDisclosureStatus(0);
    v19 = sub_22A4DBA6C();
    v21 = sub_2295A3E30(v19, v20, &v44);

    *(v7 + 34) = v21;
    _os_log_impl(&dword_229538000, v4, v5, "%s %s Not sending disclosure notification for user %s status %s", v7, 0x2Au);
LABEL_6:
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
LABEL_7:

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = *(v0 + 64);
  if (!v24)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 72);
    v35 = sub_22A4DD07C();
    __swift_project_value_buffer(v35, qword_27D880188);
    v36 = v34;
    v4 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v4, v37))
    {
      goto LABEL_7;
    }

    v38 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v45 = 91;
    v46 = 0xE100000000000000;
    v39 = [v38 logIdentifier];
    v40 = sub_22A4DD5EC();
    v42 = v41;

    MEMORY[0x22AAD08C0](v40, v42);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v43 = sub_2295A3E30(91, 0xE100000000000000, &v44);

    *(v7 + 4) = v43;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, &v44);
    _os_log_impl(&dword_229538000, v4, v37, "%s %s Missing causing device", v7, 0x16u);
    goto LABEL_6;
  }

  v25 = v24;
  v26 = [v25 version];
  if (!v26 || (v27 = v26, v28 = [objc_opt_self() version13_0], v29 = objc_msgSend(v27, sel_compare_, v28), v27, v28, v29 == -1))
  {
    v32 = swift_task_alloc();
    *(v0 + 96) = v32;
    *v32 = v0;
    v32[1] = sub_22971DB04;
    v33 = *(v0 + 72);

    return sub_22971EF74();
  }

  else
  {
    v30 = swift_task_alloc();
    *(v0 + 80) = v30;
    *v30 = v0;
    v30[1] = sub_22971D6AC;
    v31 = *(v0 + 72);

    return sub_22971E5C8(v25);
  }
}

uint64_t sub_22971D6AC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22971E058;
  }

  else
  {
    v3 = sub_22971D7C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22971D7C0()
{
  v22 = v0;
  if ([*(v0 + 72) updateAdaptiveTemperatureAutomationsDisclosureStatus_])
  {
    v1 = [*(v0 + 72) swiftExtensions];
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      sub_22957F1C4(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_storage, v0 + 16);
      swift_unknownObjectRelease();
      v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v4 = swift_task_alloc();
      *(v0 + 112) = v4;
      *v4 = v0;
      v4[1] = sub_22971DC18;

      return sub_2297C8DA8(1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D880188);
    v7 = v5;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315394;
      v21[0] = v13;
      v21[1] = 91;
      v21[2] = 0xE100000000000000;
      v14 = [v10 logIdentifier];
      v15 = sub_22A4DD5EC();
      v17 = v16;

      MEMORY[0x22AAD08C0](v15, v17);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v18 = sub_2295A3E30(91, 0xE100000000000000, v21);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v21);
      _os_log_impl(&dword_229538000, v8, v9, "[%s %s] Unable to update local status", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    else
    {
      v19 = *(v0 + 64);
    }

    v20 = *(v0 + 8);

    return v20();
  }

  return result;
}

uint64_t sub_22971DB04()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22971E310;
  }

  else
  {
    v3 = sub_2297215D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22971DC18()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_22971DD94;
  }

  else
  {
    v3 = sub_22971DD2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22971DD2C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22971DD94()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v10 = v0[9];
    v24 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136315650;
    v25[0] = v13;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v14 = [v10 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v25);
    *(v11 + 22) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v20;
    *v12 = v20;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to save disclosure status %@", v11, 0x20u);
    sub_2295A1C40(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  else
  {
    v21 = v0[8];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_22971E058()
{
  v24 = v0;
  v1 = v0[11];
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v22 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v23[0] = v11;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v23);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v23);
    *(v9 + 22) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Request disclosure notification failed with error %@", v9, 0x20u);
    sub_2295A1C40(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
    v19 = v0[8];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22971E310()
{
  v24 = v0;
  v1 = v0[13];
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v22 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v23[0] = v11;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v23);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v23);
    *(v9 + 22) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Request disclosure notification failed with error %@", v9, 0x20u);
    sub_2295A1C40(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
    v19 = v0[8];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22971E5C8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_22A4DB7DC();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971E688, 0, 0);
}

uint64_t sub_22971E688()
{
  v56 = v0;
  v1 = [*(v0 + 40) messageDispatcher];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = [*(v0 + 40) messageTargetUUID];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithTarget:v9 device:v6];
    *(v0 + 80) = v10;

    (*(v4 + 8))(v3, v5);
    v11 = objc_opt_self();
    v12 = @"HMDUser.requestDisclosureNotificationAccountMessage";
    sub_22956AC5C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v13 = sub_22A4DD47C();

    v14 = [v11 secureMessageWithName:v12 qualityOfService:-1 destination:v10 messagePayload:v13];
    *(v0 + 88) = v14;

    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 40);
    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D880188);
    v17 = v15;
    v18 = v14;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 40);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v22 = 136315650;
      v54 = 91;
      v55 = 0xE100000000000000;
      v24 = [v21 logIdentifier];
      v25 = sub_22A4DD5EC();
      v27 = v26;

      MEMORY[0x22AAD08C0](v25, v27);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(91, 0xE100000000000000, &v53);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DB0, &v53);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v18;
      *v23 = v18;
      v29 = v18;
      _os_log_impl(&dword_229538000, v19, v20, "%s %s Sending disclosure notification device message %@", v22, 0x20u);
      sub_2295A1C40(v23);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    else
    {
    }

    v47 = *(v0 + 40);
    v48 = swift_task_alloc();
    *(v0 + 96) = v48;
    v48[2] = v18;
    v48[3] = v47;
    v48[4] = v2;
    v49 = *(MEMORY[0x277D85A40] + 4);
    v50 = swift_task_alloc();
    *(v0 + 104) = v50;
    *v50 = v0;
    v50[1] = sub_22971ED50;
    v51 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v50, 0, 0, 0xD000000000000031, 0x800000022A593DB0, sub_229720FA4, v48, v51);
  }

  else
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 40);
    v31 = sub_22A4DD07C();
    __swift_project_value_buffer(v31, qword_27D880188);
    v32 = v30;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 40);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136315394;
      v53 = v37;
      v54 = 91;
      v55 = 0xE100000000000000;
      v38 = [v35 logIdentifier];
      v39 = sub_22A4DD5EC();
      v41 = v40;

      MEMORY[0x22AAD08C0](v39, v41);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v42 = sub_2295A3E30(91, 0xE100000000000000, &v53);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DB0, &v53);
      _os_log_impl(&dword_229538000, v33, v34, "%s %s Message dispatcher is nil", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    type metadata accessor for HMError(0);
    *(v0 + 24) = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v43 = *(v0 + 16);
    swift_willThrow();
    v44 = *(v0 + 64);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_22971ED50()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22971EEEC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22971EE6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22971EE6C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22971EEEC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 112);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22971EF74()
{
  v1[4] = v0;
  v2 = sub_22A4DB7DC();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971F034, 0, 0);
}

uint64_t sub_22971F034()
{
  v55 = v0;
  v1 = [*(v0 + 32) accountHandle];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 32) messageDispatcher];
    *(v0 + 72) = v3;
    if (v3)
    {
      v4 = v3;
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      v8 = [*(v0 + 32) messageTargetUUID];
      sub_22A4DB79C();

      v9 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
      v10 = v2;
      v11 = sub_22A4DB77C();
      v12 = [v9 initWithTarget:v11 handle:v10 multicast:1];
      *(v0 + 80) = v12;

      (*(v6 + 8))(v5, v7);
      v13 = [objc_allocWithZone(HMDRemoteMessage) initWithName:@"HMDUser.requestDisclosureNotificationAccountMessage" qualityOfService:-1 destination:v12 payload:0 type:0 timeout:1 secure:0.0 restriction:-1 sendOptions:2];
      *(v0 + 88) = v13;
      if (qword_27D87BA60 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 32);
      v15 = sub_22A4DD07C();
      __swift_project_value_buffer(v15, qword_27D880188);
      v16 = v14;
      v17 = v13;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 32);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = v51;
        *v21 = 136315650;
        v53 = 91;
        v54 = 0xE100000000000000;
        v23 = [v20 logIdentifier];
        v24 = sub_22A4DD5EC();
        v26 = v25;

        MEMORY[0x22AAD08C0](v24, v26);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v27 = sub_2295A3E30(91, 0xE100000000000000, &v52);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v52);
        *(v21 + 22) = 2112;
        *(v21 + 24) = v17;
        *v22 = v17;
        v28 = v17;
        _os_log_impl(&dword_229538000, v18, v19, "%s %s Sending disclosure notification account message %@", v21, 0x20u);
        sub_2295A1C40(v22);
        MEMORY[0x22AAD4E50](v22, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v51, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);
      }

      else
      {
      }

      v46 = *(v0 + 32);
      v47 = swift_task_alloc();
      *(v0 + 96) = v47;
      v47[2] = v46;
      v47[3] = v17;
      v47[4] = v4;
      v48 = *(MEMORY[0x277D85A40] + 4);
      v49 = swift_task_alloc();
      *(v0 + 104) = v49;
      *v49 = v0;
      v49[1] = sub_22971F6D8;
      v50 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v49, 0, 0, 0xD000000000000031, 0x800000022A593DF0, sub_229721000, v47, v50);
    }
  }

  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 32);
  v30 = sub_22A4DD07C();
  __swift_project_value_buffer(v30, qword_27D880188);
  v31 = v29;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 32);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 136315394;
    v52 = v36;
    v53 = 91;
    v54 = 0xE100000000000000;
    v37 = [v34 logIdentifier];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v41 = sub_2295A3E30(91, 0xE100000000000000, &v52);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v52);
    _os_log_impl(&dword_229538000, v32, v33, "%s %s Invalid home", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  v42 = *(v0 + 16);
  swift_willThrow();
  v43 = *(v0 + 56);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_22971F6D8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22971F87C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22971F7F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22971F7F4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22971F87C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 112);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22971FA94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22971FB54;

  return sub_22971D0B0(a1);
}

uint64_t sub_22971FB54()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v3)
  {
    v7 = *(v1 + 32);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_22971FCB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_22971FA94(v2, v3, v4);
}

uint64_t sub_22971FD68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v9 + 32))(v15 + v14, v12, v8);
  *(v13 + 16) = 0;
  *(v13 + 24) = sub_22972100C;
  *(v13 + 32) = v15;
  v16 = a2;
  aBlock[4] = sub_2297210A4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_29;
  v17 = _Block_copy(aBlock);

  [a3 setResponseHandler_];
  _Block_release(v17);
  [a4 sendMessage_];
}

void sub_22971FF88(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_27D880188);
  v9 = a3;
  v10 = v6;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  if (os_log_type_enabled(v11, v12))
  {
    v59 = v7;
    v60 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v64 = v15;
    *v13 = 136315650;
    v62 = 91;
    v63 = 0xE100000000000000;
    v16 = [v9 logIdentifier];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, &v64);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v64);
    *(v13 + 22) = 2112;
    if (v6)
    {
      v21 = v6;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v13 + 24) = v22;
    *v14 = v23;
    _os_log_impl(&dword_229538000, v11, v12, "%s %s Received response, error %@", v13, 0x20u);
    sub_2295A1C40(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    a4 = v60;
    v7 = v59;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (!v6)
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
      sub_22A4DD8FC();
      goto LABEL_21;
    }
  }

  if (!v7)
  {
    v32 = v6;
LABEL_18:
    v34 = v9;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136315394;
      v62 = 91;
      v63 = 0xE100000000000000;
      v39 = [v34 logIdentifier];
      v40 = sub_22A4DD5EC();
      v42 = v41;

      MEMORY[0x22AAD08C0](v40, v42);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v43 = sub_2295A3E30(v62, v63, &v64);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v64);
      _os_log_impl(&dword_229538000, v35, v36, "%s %s Missing kRemoteMessageIsFinalResponseKey from response", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);
    }

    type metadata accessor for HMError(0);
    v64 = -1;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v64 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();

    goto LABEL_21;
  }

  v24 = sub_22A4DD5EC();
  v26 = v25;
  if (!*(v7 + 16))
  {
    v33 = v6;

    goto LABEL_18;
  }

  v27 = v24;
  v28 = v6;
  v29 = sub_229543DBC(v27, v26);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2295404B0(*(v7 + 56) + 32 * v29, &v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v64)
  {
    v62 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
LABEL_21:
    v44 = 1;
    goto LABEL_22;
  }

  v45 = v9;
  v46 = v6;
  v47 = sub_22A4DD05C();
  v48 = sub_22A4DDCCC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v49 = 136315650;
    v62 = 91;
    v63 = 0xE100000000000000;
    v51 = [v45 logIdentifier];
    v52 = sub_22A4DD5EC();
    v53 = a4;
    v55 = v54;

    MEMORY[0x22AAD08C0](v52, v55);
    a4 = v53;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v56 = sub_2295A3E30(v62, v63, &v64);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v64);
    *(v49 + 22) = 2112;
    v57 = v6;
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 24) = v58;
    *v50 = v58;
    _os_log_impl(&dword_229538000, v47, v48, "%s %s Received response with error %@, waiting for response from other devices", v49, 0x20u);
    sub_2295A1C40(v50);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v61, -1, -1);
    MEMORY[0x22AAD4E50](v49, -1, -1);
  }

  else
  {
  }

  v44 = 0;
LABEL_22:
  *a4 = v44;
}

void sub_2297206EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));
  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(a3 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_2295A1C30(v6);

  if (a2)
  {
    v9 = sub_2296F7AE8(a2);
  }

  else
  {
    v9 = 0;
  }

  v13 = v9;
  v14 = a1;
  v6(&v12, &v14, &v13);

  if (v12 == 1)
  {

    sub_2295571A0(v6);
LABEL_7:
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  sub_2295571A0(v6);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2297210AC;
  *(v11 + 24) = v8;
  v10 = sub_2297210F0;
LABEL_9:
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;

  os_unfair_lock_unlock((a3 + 16));
}

uint64_t sub_229720844(void *a1, uint64_t a2, void *a3)
{
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_27D880188);
  v6 = a3;
  v7 = a1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v23 = v12;
    v13 = [v6 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DB0, &v23);
    *(v10 + 22) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v10 + 24) = v19;
    *v11 = v20;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Received response, error %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  if (a1)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

id sub_229720B0C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  (*(v13 + 16))(&v22 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  [a2 setResponseHandler_];
  _Block_release(v19);
  return [v23 sendMessage_];
}

uint64_t sub_229720CDC(void *a1, uint64_t a2, void *a3)
{
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_27D880188);
  v6 = a3;
  v7 = a1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v23 = v12;
    v13 = [v6 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000045, 0x800000022A593ED0, &v23);
    *(v10 + 22) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v10 + 24) = v19;
    *v11 = v20;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Received disclosure notification response, error: %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  if (a1)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

void sub_22972100C(void **a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8) + 80);
  v8 = *(v3 + 16);

  sub_22971FF88(a1, a2, v8, a3);
}

uint64_t sub_2297210AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v8 = a1;
  v3(&v6, &v8, &v7);
  return v6;
}

uint64_t sub_2297210F0@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22972112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22971CAD4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229721234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22971B664(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229721420(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_2297214C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22971A1FC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_22972163C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_2295A7CB0();
  v1 = sub_22A4DD81C();
  [Strong accessoryReachabilityDidChange_];
}

id sub_229721724()
{
  v2.receiver = v0;
  v2.super_class = _s15SwiftExtensionsCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_229721870()
{
  v1 = [objc_allocWithZone(_s15SwiftExtensionsCMa_0()) init];
  [v0 setSwiftExtensions_];

  v2 = [v0 _swiftExtensions];
  v3 = [v0 notificationCenter];
  v4 = type metadata accessor for WidgetAccessoryReachabilityMonitor();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v5[14] = MEMORY[0x277D84F98];
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = v3;
  v14.receiver = v5;
  v14.super_class = v4;
  v6 = objc_msgSendSuper2(&v14, sel_init);
  v7 = *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitor];
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitor] = v6;

  v8 = [v0 _swiftExtensions];
  v9 = _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectUnownedInit();
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  v12 = *&v8[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitorDelegateAdapter];
  *&v8[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitorDelegateAdapter] = v11;
}

void sub_229721A24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = [v0 _swiftExtensions];
  v7 = *&v6[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitor];

  if (v7)
  {
    v8 = [v1 _swiftExtensions];
    v9 = *&v8[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitorDelegateAdapter];
    v10 = v9;

    if (v9)
    {
      v11 = sub_22A4DD9DC();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v10;
      v12[6] = &off_283CE2C18;
      sub_22957F3C0(0, 0, v5, &unk_22A580F38, v12);
    }

    else
    {
    }
  }
}

uint64_t sub_229721CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2297CA334(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_229721DA0()
{
  if ([v0 isAccessPolicySet])
  {
    v1 = ([v0 userAccessPolicy] >> 1) & 1;
  }

  else
  {
    v2 = [v0 privilege];
    LODWORD(v1) = 0x13u >> v2;
    if (v2 >= 5)
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

void sub_22972206C(void *a1)
{
  v1 = [a1 privilege];
  if (v1)
  {
    v2 = v1;
    sub_22A4DDBEC();
  }
}

id sub_2297220F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v68 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v68 - v17;
  v19 = sub_22A4DB7DC();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v27 = v68 - v26;
  if (!*(a1 + 16))
  {

LABEL_13:
    v43 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v73[0] = v47;
      *v46 = 136315394;
      v48 = sub_22A4DE8EC();
      v50 = sub_2295A3E30(v48, v49, v73);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2295A3E30(0xD000000000000011, 0x800000022A594310, v73);
      _os_log_impl(&dword_229538000, v44, v45, "[%s]%s Missing reducedUsageCount", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v47, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v69 = v25;
  v70 = v4;
  v28 = v24;
  v29 = sub_229543DBC(0xD000000000000011, 0x800000022A58C7F0);
  if ((v30 & 1) == 0 || (v68[1] = v2, sub_2295404B0(*(a1 + 56) + 32 * v29, v73), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {

    v4 = v70;
    goto LABEL_13;
  }

  if (!*(a1 + 16) || (v31 = v72, v32 = sub_229543DBC(0x44495555656D6F68, 0xEB0000000079654BLL), (v33 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v32, v73);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v52 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v53 = sub_22A4DD05C();
    v54 = sub_22A4DDCEC();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v70;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73[0] = v58;
      *v57 = 136315394;
      v59 = sub_22A4DE8EC();
      v61 = sub_2295A3E30(v59, v60, v73);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_2295A3E30(0xD000000000000011, 0x800000022A594310, v73);
      _os_log_impl(&dword_229538000, v53, v54, "[%s]%s Missing homeUUID", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);
    }

    (*(v5 + 8))(v12, v56);
    return 0;
  }

  sub_22A4DB75C();

  v34 = v69;
  if ((*(v69 + 48))(v18, 1, v28) == 1)
  {
    sub_22970D68C(v18);
    v35 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v73[0] = v39;
      *v38 = 136315394;
      v40 = sub_22A4DE8EC();
      v42 = sub_2295A3E30(v40, v41, v73);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2295A3E30(0xD000000000000011, 0x800000022A594310, v73);
      _os_log_impl(&dword_229538000, v36, v37, "[%s]%s Unable to parse homeUUID", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);
    }

    (*(v5 + 8))(v14, v70);
    return 0;
  }

  (*(v34 + 32))(v27, v18, v28);
  (*(v34 + 16))(v23, v27, v28);
  v62 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
  v63 = objc_allocWithZone(v62);
  v64 = &v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
  *v64 = 0xD000000000000034;
  v64[1] = 0x800000022A58C750;
  *&v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
  *&v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = 0;
  *&v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = 0;
  v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
  v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
  *&v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v31;
  v63[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 0;
  v65 = sub_22A4DB77C();
  v71.receiver = v63;
  v71.super_class = v62;
  v66 = objc_msgSendSuper2(&v71, sel_initWithHomeUUID_, v65);

  v67 = *(v34 + 8);
  v67(v23, v28);
  v67(v27, v28);
  return v66;
}

uint64_t sub_229722A50()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v2, 0x726F737365636361, 0xEE00746E756F4379, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v5, 0xD000000000000021, 0x800000022A594240, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v7, 0x6375646552736168, 0xEA00000000006465, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v9, 0xD000000000000018, 0x800000022A594270, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v11, 0xD00000000000001DLL, 0x800000022A594290, v12);
  return v3;
}

unint64_t sub_229722C64()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000022A58C7F0;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(inited + 48) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = 0x44495555656D6F68;
  *(inited + 88) = 0xEB0000000079654BLL;
  v10 = [v1 homeUUID];
  sub_22A4DB79C();

  v11 = sub_22A4DB76C();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v11;
  *(inited + 104) = v13;
  v14 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_229722EE0()
{
  swift_getObjectType();
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 91;
  v13[1] = 0xE100000000000000;
  v6 = sub_22A4DE8EC();
  MEMORY[0x22AAD08C0](v6);

  MEMORY[0x22AAD08C0](47, 0xE100000000000000);
  v7 = [v0 homeUUID];
  sub_22A4DB79C();

  sub_229586A3C();
  v8 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v8);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
  sub_229722A50();
  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v9 = sub_22A4DD4AC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  return v13[0];
}

id sub_2297231BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229723228()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297232A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2297232FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_22972336C(uint64_t *a1)
{
  v3 = *a1;
  if (*a1 && v3 != *v1)
  {
    *v1 = v3;
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
  }

  v23[4] = KeyPath;
  v5 = a1[1];
  if (v5 && v5 != *(v1 + 8))
  {
    *(v1 + 8) = v5;
    v6 = swift_getKeyPath();
  }

  else
  {
    v6 = 0;
  }

  v23[5] = v6;
  v7 = a1[2];
  if (v7 && v7 != *(v1 + 16))
  {
    *(v1 + 16) = v7;
    v8 = swift_getKeyPath();
  }

  else
  {
    v8 = 0;
  }

  v23[6] = v8;
  v9 = a1[3];
  if (v9 && v9 != *(v1 + 24))
  {
    *(v1 + 24) = v9;
    v10 = swift_getKeyPath();
  }

  else
  {
    v10 = 0;
  }

  v23[7] = v10;
  if ((*(a1 + 36) & 1) != 0 || (v12 = *(a1 + 8), (*(v1 + 36) & 1) == 0) && *MEMORY[0x277CD1F78] >= vabds_f32(v12, *(v1 + 32)))
  {
    v11 = 0;
  }

  else
  {
    *(v1 + 32) = v12;
    *(v1 + 36) = 0;
    v11 = swift_getKeyPath();
  }

  v23[8] = v11;
  result = sub_2297235B0(a1[5], a1[6]);
  v14 = 0;
  v23[9] = result;
  v15 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
LABEL_23:
  if (v14 <= 6)
  {
    v16 = 6;
  }

  else
  {
    v16 = v14;
  }

  while (1)
  {
    if (v14 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880218, &qword_22A581060);
      swift_arrayDestroy();
      v21 = sub_229672478(v15);

      return v21;
    }

    if (v16 == v14)
    {
      break;
    }

    v17 = &v23[v14++];
    if (v17[4])
    {
      v18 = v17[4];

      MEMORY[0x22AAD09E0](v19);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      result = sub_22A4DD87C();
      v15 = v22;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2297235B0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    if (*(v2 + 40) == a1 && v5 == a2)
    {
      return 0;
    }

    v7 = *(v2 + 48);
    if (sub_22A4DE60C())
    {
      return 0;
    }
  }

  else
  {
  }

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return swift_getKeyPath();
}

uint64_t sub_229723644()
{
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_22A4DE1FC();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0x6B63616279616C70, 0xEF203A6574617453);
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
      goto LABEL_19;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v2 = 0xE600000000000000;
        v3 = 0x646573756150;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v2 = 0xE700000000000000;
    v4 = 2036427856;
LABEL_18:
    v3 = v4 | 0x676E6900000000;
    goto LABEL_19;
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v2 = 0xE700000000000000;
      v4 = 1801807187;
    }

    else
    {
      if (v1 != 6)
      {
LABEL_14:
        v2 = 0xE700000000000000;
        v3 = 0x746C7561666564;
        goto LABEL_19;
      }

      v2 = 0xE700000000000000;
      v4 = 1684107084;
    }

    goto LABEL_18;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      v2 = 0xEB00000000646574;
      v3 = 0x7075727265746E49;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v2 = 0xE700000000000000;
  v3 = 0x646570706F7453;
LABEL_19:
  MEMORY[0x22AAD08C0](v3, v2);

  MEMORY[0x22AAD08C0](0x656C666675687320, 0xEF203A6574617453);
  v5 = *(v0 + 8);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v6 = 0xEB00000000736E6FLL;
        v7 = 0x697463656C6C6F43;
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v6 = 0xE500000000000000;
    v7 = 0x736D657449;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 0xE300000000000000;
        v7 = 6710863;
        goto LABEL_29;
      }

LABEL_26:
      v6 = 0xE700000000000000;
      v7 = 0x746C7561666564;
      goto LABEL_29;
    }

    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
  }

LABEL_29:
  MEMORY[0x22AAD08C0](v7, v6);

  MEMORY[0x22AAD08C0](0x5374616570657220, 0xEE00203A65746174);
  v8 = *(v0 + 16);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v9 = 0xE300000000000000;
        v10 = 7105601;
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = 0xE300000000000000;
    v10 = 6647375;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 0xE300000000000000;
        v10 = 6710863;
        goto LABEL_39;
      }

LABEL_36:
      v9 = 0xE700000000000000;
      v10 = 0x746C7561666564;
      goto LABEL_39;
    }

    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E55;
  }

LABEL_39:
  MEMORY[0x22AAD08C0](v10, v9);

  MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A594330);
  v11 = *(v0 + 24);
  v12 = 0xE500000000000000;
  v13 = 0x656B617741;
  v14 = 0xE700000000000000;
  v15 = 0x746C7561666564;
  if (v11 == 1)
  {
    v15 = 0x7065656C53;
    v14 = 0xE500000000000000;
  }

  if (v11 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (v11)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0x6E776F6E6B6E55;
  }

  if (v11)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x22AAD08C0](v16, v17);

  MEMORY[0x22AAD08C0](0x3A656D756C6F7620, 0xE900000000000020);
  LODWORD(v21[0]) = *(v0 + 32);
  BYTE4(v21[0]) = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880210, &unk_22A583B10);
  v18 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v18);

  MEMORY[0x22AAD08C0](0xD000000000000018, 0x800000022A594350);
  v22 = *(v0 + 40);
  sub_2295F59D4(v0, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v19 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v19);

  return v23;
}

uint64_t sub_229723A80()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_229723644();
}

uint64_t sub_229723AE0(unint64_t a1)
{
  v2 = v1;
  v210 = a1;
  v226 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 appleMediaAccessories];
  v216 = 0;
  v9 = sub_229562F68(0, &qword_281401920, off_278666038);
  v10 = sub_22A4DD83C();

  v11 = sub_2296721D4(v10);

  v12 = MEMORY[0x277D84FA0];
  v211 = v9;
  v206 = v3;
  v205 = v4;
  v204 = v7;
  v209 = v11;
  v217 = v2;
  if ((v11 & 0xC000000000000001) == 0)
  {
    v31 = *(v11 + 32);
    v14 = v31 & 0x3F;
    v32 = ((1 << v31) + 63) >> 6;
    v33 = 8 * v32;

    if (v14 <= 0xD)
    {
      goto LABEL_21;
    }

    goto LABEL_247;
  }

  v221 = MEMORY[0x277D84FA0];

  sub_22A4DE09C();
  v13 = sub_22A4DE12C();
  if (!v13)
  {
    v215 = v12;
LABEL_53:

    v63 = MEMORY[0x277D84FA0];
    v221 = MEMORY[0x277D84FA0];

    sub_22A4DE09C();
    v64 = sub_22A4DE12C();
    if (v64)
    {
      v212 = MEMORY[0x277D84FA0];
      v14 = MEMORY[0x277D84F68];
      do
      {
        v219 = v64;
        swift_dynamicCast();
        v65 = [v220[0] isAppleTV];
        v66 = v220[0];
        if (v65)
        {
          v67 = *(v212 + 16);
          if (*(v212 + 24) <= v67)
          {
            sub_229572BB0(v67 + 1);
          }

          v68 = v221;
          v69 = v221[5];
          v70 = sub_22A4DDECC();
          v71 = v68 + 56;
          v72 = -1 << *(v68 + 32);
          v73 = v70 & ~v72;
          v74 = v73 >> 6;
          if (((-1 << v73) & ~*(v68 + 56 + 8 * (v73 >> 6))) != 0)
          {
            v75 = __clz(__rbit64((-1 << v73) & ~*(v68 + 56 + 8 * (v73 >> 6)))) | v73 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v76 = 0;
            v77 = (63 - v72) >> 6;
            do
            {
              if (++v74 == v77 && (v76 & 1) != 0)
              {
                goto LABEL_127;
              }

              v78 = v74 == v77;
              if (v74 == v77)
              {
                v74 = 0;
              }

              v76 |= v78;
              v79 = *(v71 + 8 * v74);
            }

            while (v79 == -1);
            v75 = __clz(__rbit64(~v79)) + (v74 << 6);
          }

          *(v71 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
          *(*(v68 + 48) + 8 * v75) = v66;
          v80 = *(v68 + 16) + 1;
          v212 = v68;
          *(v68 + 16) = v80;
        }

        else
        {
        }

        v64 = sub_22A4DE12C();
      }

      while (v64);
    }

    else
    {
      v212 = v63;
    }

    goto LABEL_73;
  }

  v215 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84F68];
LABEL_6:
  v219 = v13;
  swift_dynamicCast();
  v15 = [v220[0] isHomePod];
  v16 = v220[0];
  if (!v15)
  {

    goto LABEL_5;
  }

  v17 = v215[2];
  if (v215[3] <= v17)
  {
    sub_229572BB0(v17 + 1);
  }

  v18 = v221;
  v19 = v221[5];
  v20 = sub_22A4DDECC();
  v21 = v18 + 56;
  v215 = v18;
  v22 = -1 << *(v18 + 32);
  v23 = v20 & ~v22;
  v24 = v23 >> 6;
  if (((-1 << v23) & ~*(v18 + 56 + 8 * (v23 >> 6))) != 0)
  {
    v25 = __clz(__rbit64((-1 << v23) & ~*(v18 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_19;
  }

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
    v29 = *(v21 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
LABEL_19:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = v215;
      *(v215[6] + 8 * v25) = v16;
      ++*(v30 + 16);
LABEL_5:
      v13 = sub_22A4DE12C();
      if (!v13)
      {
        goto LABEL_53;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    v83 = sub_22A4DE0EC();
LABEL_76:
    v84 = MEMORY[0x277D84F90];
    if (!v83)
    {
      break;
    }

    v85 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x22AAD13F0](v85, v14);
      }

      else
      {
        if (v85 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        v86 = *(v14 + 8 * v85 + 32);
      }

      v87 = v86;
      v88 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      v89 = [v86 accessories];
      if (v89 && (v90 = v89, sub_229562F68(0, &qword_281401C30, off_278665FE8), v91 = sub_22A4DD83C(), v90, v92 = sub_22986AD04(v91), , v92))
      {

        sub_22A4DE27C();
        v93 = v221[2];
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v85;
      if (v88 == v83)
      {
        v94 = v221;
        goto LABEL_90;
      }
    }
  }

  v94 = MEMORY[0x277D84F90];
LABEL_90:
  v95 = v84;

  v96 = v216;
  v97 = sub_229725110(v94);
  v216 = v96;
  v98 = sub_2296721D4(v97);

  v99 = v215;

  v207 = v98;
  v100 = sub_22974DE8C(v98, v99);
  v220[0] = v95;
  v214 = (v212 & 0xC000000000000001);
  if ((v212 & 0xC000000000000001) != 0)
  {

    sub_22A4DE09C();
    sub_2297270D8();
    sub_22A4DDBAC();
    v101 = v221;
    v14 = v222;
    v103 = v223;
    v102 = v224;
    v104 = v225;
  }

  else
  {
    v105 = -1 << *(v212 + 32);
    v14 = v212 + 56;
    v103 = ~v105;
    v106 = -v105;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    else
    {
      v107 = -1;
    }

    v104 = v107 & *(v212 + 56);
    v101 = v212;

    v102 = 0;
  }

  v208 = v103;
  v108 = (v103 + 64) >> 6;
  v217 = v101;
  while ((v101 & 0x8000000000000000) == 0)
  {
    v110 = v102;
    v111 = v104;
    for (i = v102; !v111; ++v110)
    {
      i = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        goto LABEL_128;
      }

      if (i >= v108)
      {
        goto LABEL_110;
      }

      v111 = *(v14 + 8 * i);
    }

    v113 = (v111 - 1) & v111;
    v114 = *(*(v101 + 48) + ((i << 9) | (8 * __clz(__rbit64(v111)))));
    if (!v114)
    {
      goto LABEL_110;
    }

LABEL_108:
    v116 = [v114 audioDestination];
    if (v116)
    {

      sub_22A4DE27C();
      v109 = *(v220[0] + 2);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      v101 = v217;
    }

    else
    {
    }

    v102 = i;
    v104 = v113;
  }

  v115 = sub_22A4DE12C();
  if (v115)
  {
    v218 = v115;
    swift_dynamicCast();
    v114 = v219;
    i = v102;
    v113 = v104;
    v101 = v217;
    if (v219)
    {
      goto LABEL_108;
    }
  }

LABEL_110:
  sub_22953EE84();
  v11 = v220[0];
  v14 = v212;

  v117 = v14;
  if (v214)
  {
    v118 = sub_22A4DE0EC();
    v117 = sub_229572498(v14, v118);
  }

  v208 = sub_22975E690(v11, v117);
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v33 = sub_22A4DE0EC();
    if (!v33)
    {
      goto LABEL_137;
    }

LABEL_115:
    v220[0] = MEMORY[0x277D84F90];
    v32 = v220;
    sub_2295836B4(0, v33 & ~(v33 >> 63), 0);
    if ((v33 & 0x8000000000000000) == 0)
    {
      v214 = v94;
      v119 = 0;
      v217 = v220[0];
      while (1)
      {
        v120 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_131;
        }

        v14 = v214;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v121 = MEMORY[0x22AAD13F0](v119, v11);
        }

        else
        {
          if (v119 >= *(v11 + 16))
          {
            goto LABEL_134;
          }

          v121 = *(v11 + 8 * v119 + 32);
        }

        v122 = v121;
        v218 = v121;
        v123 = v100;
        v124 = v216;
        sub_2297255B8(&v218, v14, v100, ObjectType, &v219);
        v216 = v124;

        v125 = v219;
        v126 = v217;
        v220[0] = v217;
        v14 = v217[2];
        v127 = v217[3];
        if (v14 >= v127 >> 1)
        {
          sub_2295836B4((v127 > 1), v14 + 1, 1);
          v126 = v220[0];
        }

        v126[2] = v14 + 1;
        v217 = v126;
        v126[v14 + 4] = v125;
        ++v119;
        v100 = v123;
        if (v120 == v33)
        {

          v94 = v214;
          goto LABEL_138;
        }
      }
    }

    goto LABEL_245;
  }

  v33 = *(v11 + 16);
  if (v33)
  {
    goto LABEL_115;
  }

LABEL_137:

  v217 = MEMORY[0x277D84F90];
LABEL_138:
  v220[0] = MEMORY[0x277D84F90];
  if ((v94 & 0x8000000000000000) == 0 && (v94 & 0x4000000000000000) == 0)
  {
    v33 = *(v94 + 16);
    goto LABEL_141;
  }

  while (1)
  {
    v33 = sub_22A4DE0EC();
LABEL_141:
    v215 = v100;
    v128 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    if (!v33)
    {
      break;
    }

    v129 = 0;
    v100 = v94 & 0xC000000000000001;
    while (1)
    {
      if (v100)
      {
        v131 = MEMORY[0x22AAD13F0](v129, v94);
      }

      else
      {
        if (v129 >= *(v94 + 16))
        {
          goto LABEL_172;
        }

        v131 = *(v94 + 8 * v129 + 32);
      }

      v132 = v131;
      v133 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      v134 = [v131 audioDestination];
      if (v134)
      {
        v135 = v134;
      }

      else
      {
        sub_22A4DE27C();
        v130 = *(v220[0] + 2);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      ++v129;
      if (v133 == v33)
      {
        v136 = v220[0];
        v128 = v14;
        goto LABEL_154;
      }
    }

    __break(1u);
LABEL_172:
    __break(1u);
  }

  v136 = MEMORY[0x277D84F90];
LABEL_154:

  if ((v136 & 0x8000000000000000) != 0 || (v136 & 0x4000000000000000) != 0)
  {
    v11 = sub_22A4DE0EC();
    if (!v11)
    {
      goto LABEL_175;
    }

LABEL_157:
    v220[0] = v128;
    v32 = v220;
    sub_2295836B4(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      goto LABEL_246;
    }

    v137 = 0;
    v138 = v220[0];
    do
    {
      if ((v136 & 0xC000000000000001) != 0)
      {
        v139 = MEMORY[0x22AAD13F0](v137, v136);
      }

      else
      {
        v139 = *(v136 + 8 * v137 + 32);
      }

      v140 = v139;
      v141 = [v139 accessories];
      if (v141)
      {
        v142 = v141;
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v143 = sub_22A4DD83C();

        v144 = sub_22986AD04(v143);

        if (v144)
        {
          v145 = v144;
        }

        else
        {
          v145 = v128;
        }
      }

      else
      {
        v145 = v128;
      }

      v146 = sub_2296721D4(v145);

      v220[0] = v138;
      v148 = v138[2];
      v147 = v138[3];
      if (v148 >= v147 >> 1)
      {
        sub_2295836B4((v147 > 1), v148 + 1, 1);
        v138 = v220[0];
      }

      ++v137;
      v138[2] = v148 + 1;
      v138[v148 + 4] = v146;
      v128 = v14;
    }

    while (v11 != v137);
  }

  else
  {
    v11 = *(v136 + 16);
    if (v11)
    {
      goto LABEL_157;
    }

LABEL_175:

    v138 = MEMORY[0x277D84F90];
  }

  v14 = v210;
  v11 = MEMORY[0x277D84FA0];
  if ((v215 & 0xC000000000000001) != 0)
  {
    v220[0] = MEMORY[0x277D84FA0];
    sub_22A4DE09C();
    for (j = sub_22A4DE12C(); j; j = sub_22A4DE12C())
    {
      v218 = j;
      swift_dynamicCast();
      v150 = [v219 audioDestination];
      if (v150)
      {
      }

      else
      {
        v33 = v219;
        v151 = *(v11 + 16);
        if (*(v11 + 24) <= v151)
        {
          sub_229572BB0(v151 + 1);
        }

        v11 = v220[0];
        v152 = *(v220[0] + 5);
        v32 = v33;
        v153 = sub_22A4DDECC();
        v154 = v11 + 56;
        v155 = -1 << *(v11 + 32);
        v156 = v153 & ~v155;
        v157 = v156 >> 6;
        if (((-1 << v156) & ~*(v11 + 56 + 8 * (v156 >> 6))) != 0)
        {
          v158 = __clz(__rbit64((-1 << v156) & ~*(v11 + 56 + 8 * (v156 >> 6)))) | v156 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v159 = 0;
          v160 = (63 - v155) >> 6;
          do
          {
            if (++v157 == v160 && (v159 & 1) != 0)
            {
              __break(1u);
              goto LABEL_243;
            }

            v161 = v157 == v160;
            if (v157 == v160)
            {
              v157 = 0;
            }

            v159 |= v161;
            v162 = *(v154 + 8 * v157);
          }

          while (v162 == -1);
          v158 = __clz(__rbit64(~v162)) + (v157 << 6);
        }

        *(v154 + ((v158 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v158;
        *(*(v11 + 48) + 8 * v158) = v33;
        ++*(v11 + 16);
      }
    }
  }

  else
  {
    v163 = v216;
    v11 = sub_229726A9C(v215);
    v216 = v163;
  }

  v164 = sub_22956EBC4(v14, v208);

  v165 = v217;
  if (v164)
  {

    goto LABEL_200;
  }

  v32 = sub_22956EBC4(v14, v11);

  if (v32)
  {
LABEL_200:

    goto LABEL_201;
  }

  v33 = v138[2];
  if (v33)
  {
    v170 = 0;
    v11 = (v138 + 4);
    v215 = v138 + 4;
    while (v170 < v138[2])
    {
      v171 = *(v11 + 8 * v170);
      if ((v171 & 0xC000000000000001) != 0)
      {
        if (v171 < 0)
        {
          v172 = *(v11 + 8 * v170);
        }

        v173 = v14;

        v32 = sub_22A4DE13C();

        if (v32)
        {
          goto LABEL_240;
        }
      }

      else if (*(v171 + 16))
      {
        v174 = *(v171 + 40);
        v175 = *(v11 + 8 * v170);

        v32 = v14;
        v176 = sub_22A4DDECC();
        v177 = -1 << *(v171 + 32);
        v178 = v176 & ~v177;
        if ((*(v171 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
        {
          v179 = ~v177;
          while (1)
          {
            v180 = *(*(v171 + 48) + 8 * v178);
            v32 = sub_22A4DDEDC();

            if (v32)
            {
              break;
            }

            v178 = (v178 + 1) & v179;
            if (((*(v171 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
            {
              goto LABEL_205;
            }
          }

LABEL_240:

LABEL_241:

          v220[0] = sub_22975E05C(v171);
          v198 = v216;
          sub_2297254D4(v220);
          if (!v198)
          {

            v166 = v220[0];
            goto LABEL_202;
          }

          __break(1u);
          return result;
        }

LABEL_205:

        v14 = v210;
        v165 = v217;
        v11 = v215;
      }

      if (++v170 == v33)
      {
        goto LABEL_219;
      }
    }

LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_21:
      v214 = &v203;
      MEMORY[0x28223BE20](v34);
      v35 = &v203 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v35, v33);
      v36 = 0;
      v37 = 0;
      v38 = v11;
      v39 = v11 + 56;
      v40 = 1 << *(v11 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & *(v11 + 56);
      v43 = (v40 + 63) >> 6;
      while (v42)
      {
        v44 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
LABEL_31:
        v14 = v44 | (v37 << 6);
        if ([*(*(v38 + 48) + 8 * v14) isHomePod])
        {
          *&v35[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          v47 = __OFADD__(v36++, 1);
          if (v47)
          {
            __break(1u);
LABEL_35:
            v11 = v38;
            v215 = sub_22966F34C(v35, v32, v36, v38);
            goto LABEL_36;
          }
        }
      }

      v45 = v37;
      while (1)
      {
        v37 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_132;
        }

        if (v37 >= v43)
        {
          goto LABEL_35;
        }

        v46 = *(v39 + 8 * v37);
        ++v45;
        if (v46)
        {
          v44 = __clz(__rbit64(v46));
          v42 = (v46 - 1) & v46;
          goto LABEL_31;
        }
      }
    }

    v199 = swift_slowAlloc();
    v200 = v216;
    v215 = sub_229727048(v199, v32, v11, sub_229725550);
    v216 = v200;

    MEMORY[0x22AAD4E50](v199, -1, -1);
LABEL_36:
    v48 = *(v11 + 32);
    v14 = v48 & 0x3F;
    v49 = ((1 << v48) + 63) >> 6;
    v50 = 8 * v49;

    if (v14 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v201 = swift_slowAlloc();
        v202 = v216;
        v212 = sub_229727048(v201, v49, v11, sub_229725584);
        v216 = v202;

        MEMORY[0x22AAD4E50](v201, -1, -1);
LABEL_73:
        v81 = [v217 mediaSystems];
        if (!v81)
        {
          __break(1u);
        }

        v82 = v81;
        sub_229562F68(0, &qword_27D880220, off_278666288);
        v14 = sub_22A4DD83C();

        v221 = MEMORY[0x277D84F90];
        if (!(v14 >> 62))
        {
          v83 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_76;
        }

        goto LABEL_135;
      }
    }

    MEMORY[0x28223BE20](v51);
    v52 = &v203 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v52, v50);
    v53 = 0;
    v54 = 0;
    v55 = v11 + 56;
    v56 = 1 << *(v11 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v11 + 56);
    v59 = (v56 + 63) >> 6;
    while (v58)
    {
      v60 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
LABEL_47:
      v14 = v60 | (v54 << 6);
      if ([*(*(v209 + 48) + 8 * v14) isAppleTV])
      {
        *&v52[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        v47 = __OFADD__(v53++, 1);
        if (v47)
        {
          __break(1u);
LABEL_51:
          v212 = sub_22966F34C(v52, v49, v53, v209);
          goto LABEL_73;
        }
      }
    }

    v61 = v54;
    while (1)
    {
      v54 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_133;
      }

      if (v54 >= v59)
      {
        goto LABEL_51;
      }

      v62 = *(v55 + 8 * v54);
      ++v61;
      if (v62)
      {
        v60 = __clz(__rbit64(v62));
        v58 = (v62 - 1) & v62;
        goto LABEL_47;
      }
    }
  }

LABEL_219:

  v33 = v165[2];
  if (v33)
  {
    v181 = 0;
    v182 = (v165 + 4);
    while (v181 < v165[2])
    {
      v171 = *&v182[8 * v181];
      if ((v171 & 0xC000000000000001) != 0)
      {
        if (v171 < 0)
        {
          v183 = *&v182[8 * v181];
        }

        v184 = v14;

        v32 = sub_22A4DE13C();

        if (v32)
        {
          goto LABEL_241;
        }
      }

      else if (*(v171 + 16))
      {
        v185 = *(v171 + 40);
        v186 = *&v182[8 * v181];

        v32 = v14;
        v187 = sub_22A4DDECC();
        v11 = v171 + 56;
        v188 = -1 << *(v171 + 32);
        v189 = v187 & ~v188;
        if ((*(v171 + 56 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189))
        {
          v190 = ~v188;
          do
          {
            v191 = *(*(v171 + 48) + 8 * v189);
            v32 = sub_22A4DDEDC();

            if (v32)
            {
              goto LABEL_241;
            }

            v189 = (v189 + 1) & v190;
          }

          while (((*(v11 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) != 0);
        }

        v14 = v210;
        v165 = v217;
      }

      if (++v181 == v33)
      {
        goto LABEL_236;
      }
    }

    goto LABEL_244;
  }

LABEL_236:

  v192 = v204;
  sub_2297A46D4();
  v14 = v14;
  v193 = sub_22A4DD05C();
  v194 = sub_22A4DDCEC();

  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    *v195 = 138412290;
    *(v195 + 4) = v14;
    *v196 = v14;
    v197 = v14;
    _os_log_impl(&dword_229538000, v193, v194, "Accessory was not found in the home graph: %@", v195, 0xCu);
    sub_2295A1C40(v196);
    MEMORY[0x22AAD4E50](v196, -1, -1);
    MEMORY[0x22AAD4E50](v195, -1, -1);
  }

  (*(v205 + 8))(v192, v206);
LABEL_201:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v166 = swift_allocObject();
  v166[1] = xmmword_22A576190;
  *(v166 + 4) = v14;
  v167 = v14;
LABEL_202:
  v168 = *MEMORY[0x277D85DE8];
  return v166;
}

unint64_t sub_229725110(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_55;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v42 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v37 = isUniquelyReferenced_nonNull_bridgeObject;
    v39 = v1;
    v40 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v42)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v3, v37);
      }

      else
      {
        if (v3 >= *(v41 + 16))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v40 + 8 * v3);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
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
        __break(1u);
LABEL_55:
        v36 = isUniquelyReferenced_nonNull_bridgeObject;
        v1 = sub_22A4DE0EC();
        isUniquelyReferenced_nonNull_bridgeObject = v36;
        goto LABEL_3;
      }

      v8 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      if (v8)
      {
        v9 = v8;
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v10 = sub_22A4DD83C();

        v11 = sub_22986AD04(v10);

        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v2;
        }
      }

      else
      {

        v12 = v2;
      }

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_22A4DE0EC();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v4 >> 62;
      if (v4 >> 62)
      {
        v34 = sub_22A4DE0EC();
        v17 = v34 + v14;
        if (__OFADD__(v34, v14))
        {
LABEL_46:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 + v14;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_46;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v15)
        {
          goto LABEL_27;
        }

        v18 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v15)
        {
LABEL_27:
          sub_22A4DE0EC();
          goto LABEL_28;
        }

        v18 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = *(v18 + 16);
LABEL_28:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_29:
      v20 = v2;
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v13)
      {
        v23 = v12;
        v25 = v18;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v18 = v25;
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          v5 = v39;
          v2 = v20;
          if (v14 > 0)
          {
            goto LABEL_51;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v23 = v12;
        v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_5;
        }
      }

      if (((v22 >> 1) - v21) < v14)
      {
        goto LABEL_52;
      }

      v45 = v14;
      v43 = v3;
      v26 = v18 + 8 * v21 + 32;
      v38 = v18;
      if (v13)
      {
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        sub_229727140();
        v27 = 0;
        v28 = v23;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880228, &unk_22A5810C0);
          v29 = sub_22958C03C(v44, v27, v28);
          v31 = *v30;
          (v29)(v44, 0);
          *(v26 + 8 * v27++) = v31;
        }

        while (v24 != v27);
      }

      else
      {
        sub_229562F68(0, &qword_281401920, off_278666038);
        swift_arrayInitWithCopy();
      }

      v5 = v39;
      v2 = MEMORY[0x277D84F90];
      v3 = v43;
      if (v45 >= 1)
      {
        v32 = *(v38 + 16);
        v7 = __OFADD__(v32, v45);
        v33 = v32 + v45;
        if (v7)
        {
          goto LABEL_53;
        }

        *(v38 + 16) = v33;
      }

LABEL_6:
      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t sub_2297254D4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_229669DB8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_229725C20(v6);
  return sub_22A4DE28C();
}

uint64_t sub_2297255B8@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v71 = a3;
  v10 = sub_22A4DD07C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = *a1;
  v69 = a5;
  v70 = v5;
  v67 = v14;
  v68 = v12;
  v65 = a4;
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_45;
  }

  v73 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = &selRef_applicationProxyForIdentifier_;
  if (!v73)
  {
    goto LABEL_16;
  }

  v16 = 0;
  v17 = a2 & 0xC000000000000001;
  v18 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v17)
    {
      v19 = MEMORY[0x22AAD13F0](v16, a2);
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_44;
      }

      v19 = *(a2 + 8 * v16 + 32);
    }

    v20 = v19;
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_43;
    }

    v22 = a2;
    v23 = [v19 v15[216]];
    if (v23)
    {
      v24 = v23;
      v25 = [v72 v15[216]];
      v26 = [v24 isEqual_];

      v15 = &selRef_applicationProxyForIdentifier_;
      if (v26)
      {
        break;
      }
    }

    ++v16;
    a2 = v22;
    if (v21 == v73)
    {
      goto LABEL_16;
    }
  }

  v27 = [v20 accessories];

  if (!v27 || (sub_229562F68(0, &qword_281401C30, off_278665FE8), v28 = sub_22A4DD83C(), v27, v29 = sub_22986AD04(v28), , !v29))
  {
LABEL_16:
    v30 = v71;
    if ((v71 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_229562F68(0, &qword_281401920, off_278666038);
      sub_2297270D8();
      sub_22A4DDBAC();
      v30 = v75;
      v31 = v76;
      v32 = v77;
      a2 = v78;
      v33 = v79;
    }

    else
    {
      v34 = -1 << *(v71 + 32);
      v31 = v71 + 56;
      v32 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v33 = v36 & *(v71 + 56);

      a2 = 0;
    }

    v64 = v32;
    while (1)
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        v42 = sub_22A4DE12C();
        if (!v42 || (v74 = v42, sub_229562F68(0, &qword_281401920, off_278666038), swift_dynamicCast(), v41 = v80, v39 = a2, v40 = v33, !v80))
        {
LABEL_39:
          sub_22953EE84();
          v51 = v66;
          sub_2297A46D4();
          v52 = v72;
          v53 = sub_22A4DD05C();
          v54 = sub_22A4DDCEC();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *v55 = 138412290;
            *(v55 + 4) = v52;
            *v56 = v52;
            v57 = v52;
            _os_log_impl(&dword_229538000, v53, v54, "ATV doesn't have an audio destination: %@", v55, 0xCu);
            sub_2295A1C40(v56);
            MEMORY[0x22AAD4E50](v56, -1, -1);
            MEMORY[0x22AAD4E50](v55, -1, -1);
          }

          (*(v67 + 8))(v51, v68);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A576190;
          *(inited + 32) = v52;
          v59 = v52;
          sub_22965C014(inited);
          v61 = v60;
          swift_setDeallocating();
          v62 = *(inited + 16);
          result = swift_arrayDestroy();
          *v69 = v61;
          return result;
        }
      }

      else
      {
        v37 = a2;
        v38 = v33;
        v39 = a2;
        if (!v33)
        {
          while (1)
          {
            v39 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if (v39 >= ((v32 + 64) >> 6))
            {
              goto LABEL_39;
            }

            v38 = *(v31 + 8 * v39);
            ++v37;
            if (v38)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v73 = sub_22A4DE0EC();
          goto LABEL_3;
        }

LABEL_29:
        v40 = (v38 - 1) & v38;
        v41 = *(*(v30 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
        if (!v41)
        {
          goto LABEL_39;
        }
      }

      v71 = a2;
      v73 = v33;
      v43 = [v41 audioDestination];
      if (v43)
      {
        v44 = v43;
        v45 = [v72 audioDestination];
        v46 = [v44 isEqual_];

        if (v46)
        {
          sub_22953EE84();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_22A576190;
          *(v29 + 32) = v41;
          break;
        }
      }

      a2 = v39;
      v33 = v40;
    }
  }

  v80 = v29;
  v47 = v72;
  MEMORY[0x22AAD09E0]();
  v48 = v69;
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v63 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22A4DD85C();
  }

  sub_22A4DD87C();
  v49 = sub_2296721D4(v80);

  *v48 = v49;
  return result;
}

uint64_t sub_229725C20(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22A4DE5BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_229562F68(0, &qword_281401920, off_278666038);
        v6 = sub_22A4DD86C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_229725EB0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_229725D34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_229725D34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_22A4DD5EC();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = sub_22A4DD5EC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_22A4DE60C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_229725EB0(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_2297266B0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_229668AF0(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_229668A64(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_229668AF0(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      v19 = [v14 identifier];
      v20 = sub_22A4DD5EC();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_22A4DE60C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = sub_22A4DD5EC();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = sub_22A4DD5EC();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_22A4DE60C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_22958A414(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_22958A414((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_2297266B0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_229668AF0(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_229668A64(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = sub_22A4DD5EC();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = sub_22A4DD5EC();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_22A4DE60C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}