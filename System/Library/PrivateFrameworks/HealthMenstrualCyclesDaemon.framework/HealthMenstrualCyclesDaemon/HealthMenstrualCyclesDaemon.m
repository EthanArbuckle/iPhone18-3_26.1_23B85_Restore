void sub_2293D2E78(void *a1)
{
  v2 = [a1 entitlements];
  v3 = [v2 hasEntitlement_];

  v4 = [a1 entitlements];
  v5 = [v4 hasPrivateAccessEntitlementWithIdentifier_];

  if ((v5 & 1) == 0 && !v3)
  {
    v6 = objc_opt_self();
    sub_22944FC84();

    v7 = sub_22944F894();
    MEMORY[0x22AACB740](v7);

    MEMORY[0x22AACB740](544370464, 0xE400000000000000);
    v8 = sub_22944F894();
    MEMORY[0x22AACB740](v8);

    v9 = sub_22944F864();

    [v6 hk:4 error:v9 description:{0xD00000000000001DLL, 0x80000002294589D0}];

    swift_willThrow();
  }
}

uint64_t sub_2293D30DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *static HDMCPregnancyStateQueryServer.createTaskServer(with:configuration:client:delegate:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v55 = a4;
  v52 = a1;
  v8 = sub_22944F0B4();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a3 profile];
  v14 = [v13 profileType];

  if (v14 != 1)
  {
    v19 = objc_opt_self();
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_22944FC84();
    MEMORY[0x22AACB740](0xD000000000000016, 0x8000000229458780);
    v20 = sub_22944FF44();
    MEMORY[0x22AACB740](v20);

    MEMORY[0x22AACB740](0xD00000000000001BLL, 0x80000002294587A0);
    v21 = [a3 profile];
    v22 = [v21 profileType];

    *&v58 = v22;
    v23 = sub_22944FDF4();
    MEMORY[0x22AACB740](v23);

    v24 = sub_22944F864();

    v25 = [v19 hk:3 error:v24 description:?];
LABEL_15:
    v25;

    swift_willThrow();
    return v24;
  }

  v15 = v5;
  v16 = [a3 profile];
  v17 = *MEMORY[0x277D11920];
  v18 = [v16 profileExtensionWithIdentifier_];

  if (v18)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  v24 = v15;
  if (!*(&v59 + 1))
  {
    sub_229415AF0(&v60);
    goto LABEL_14;
  }

  v26 = sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v33 = objc_opt_self();
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_22944FC84();

    *&v60 = 0xD00000000000001FLL;
    *(&v60 + 1) = 0x80000002294587C0;
    v34 = sub_22944FF44();
    MEMORY[0x22AACB740](v34);

    v24 = sub_22944F864();

    v25 = [v33 hk:3 error:v24 description:?];
    goto LABEL_15;
  }

  v50 = v26;
  v27 = v62;
  v51 = [v62 pregnancyManager];
  v57 = &unk_283CE3008;
  v28 = swift_dynamicCastObjCProtocolConditional();
  if (v28)
  {
    if (a2 && (v29 = v28, objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
    {
      v49 = v30;
      (*(v54 + 16))(v12, v52, v53);
      v48 = objc_allocWithZone(v15);
      v52 = a2;
      swift_unknownObjectRetain();
      v31 = [a3 profile];
      v32 = [v31 profileExtensionWithIdentifier_];

      if (v32)
      {
        sub_22944FB34();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v40 = v51;
      v60 = v58;
      v61 = v59;
      v51 = v27;
      if (*(&v59 + 1))
      {
        v41 = swift_dynamicCast();
        v42 = v62;
        if (!v41)
        {
          v42 = 0;
        }
      }

      else
      {
        sub_229415AF0(&v60);
        v42 = 0;
      }

      v43 = v48;
      *&v48[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_profileExtension] = v42;
      *&v43[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager] = v40;
      v44 = v40;
      v45 = sub_22944F074();
      v56.receiver = v43;
      v56.super_class = v15;
      v24 = objc_msgSendSuper2(&v56, sel_initWithUUID_configuration_client_delegate_, v45, v49, a3, v29);

      v46 = v52;
      swift_unknownObjectRelease();

      (*(v54 + 8))(v12, v53);
    }

    else
    {
      v36 = objc_opt_self();
      v24 = v55;
      swift_unknownObjectRetain();
      v37 = sub_22944F864();
      [v36 hk:3 error:v37 description:?];

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v38 = objc_opt_self();
    v39 = sub_22944F864();
    [v38 hk:3 error:v39 description:?];

    swift_willThrow();
  }

  return v24;
}

void sub_2293D3AA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2293D3AF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22944FE04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2293D3B3C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_22944FBD4())
    {
LABEL_3:
      sub_2293D3E20();
      v3 = sub_22944FC54();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_22944FBD4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AACBB00](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_22944FAF4();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_22944FB04();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_22944FAF4();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_22944FB04();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_2293D3E20()
{
  if (!qword_2813DBDD0)
  {
    sub_2293D30DC(255, &qword_2813DBEE0, 0x277CCD720);
    sub_2293D3E94();
    v0 = sub_22944FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBDD0);
    }
  }
}

unint64_t sub_2293D3E94()
{
  result = qword_2813DBED8;
  if (!qword_2813DBED8)
  {
    sub_2293D30DC(255, &qword_2813DBEE0, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DBED8);
  }

  return result;
}

Swift::Void __swiftcall HDMCPregnancyStateQueryServer._queue_start()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22944F0B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel__queue_start);
  v8 = [v1 clientProxy];
  if (v8 && (v9 = [v8 remoteObjectProxy], swift_unknownObjectRelease(), sub_22944FB34(), swift_unknownObjectRelease(), sub_2293D4260(), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v19[1];
    v11 = [v1 configuration];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 isRunningForMaintenance];
      v14 = *&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager];
      [*(v14 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers) registerObserver_];
      if (v13)
      {
        v15 = 2;
      }

      else
      {
        [*(v14 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) registerObserver_];
        v15 = 1;
      }

      sub_2293D42C4(v15, 4u);
      swift_unknownObjectRelease();
    }

    else
    {

      v16 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
      v17 = sub_22944EF64();

      v18 = [v1 queryUUID];
      sub_22944F094();

      v11 = sub_22944F074();
      (*(v4 + 8))(v7, v3);
      [v10 client:v17 deliverError:v11 forQuery:?];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22944FD44();
    __break(1u);
  }
}

unint64_t sub_2293D4260()
{
  result = qword_2813DBE20;
  if (!qword_2813DBE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DBE20);
  }

  return result;
}

void sub_2293D42C4(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v42[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_22944F174();
  __swift_project_value_buffer(v7, qword_2813DBFB8);
  v8 = sub_22944F154();
  v9 = sub_22944FA84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = ObjectType;
    v42[0] = v11;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_2293D47B8();
    v14 = sub_2293D4824(v12, v13, v42);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2 <= 2u)
    {
      v20 = 0xEB00000000646564;
      v21 = 0x6441656C706D6153;
      if (a2 != 1)
      {
        v21 = 0x6544656C706D6153;
        v20 = 0xED0000646574656CLL;
      }

      if (a2)
      {
        v18 = v21;
      }

      else
      {
        v18 = 0x696C616974696E49;
      }

      if (a2)
      {
        v19 = v20;
      }

      else
      {
        v19 = 0xEE006E6F6974617ALL;
      }
    }

    else
    {
      v15 = 0xD000000000000015;
      v16 = 0x8000000229459650;
      if (a2 != 5)
      {
        v15 = 0x6974736575716552;
        v16 = 0xEF6E69616741676ELL;
      }

      v17 = 0x8000000229459690;
      if (a2 != 3)
      {
        v17 = 0x8000000229459670;
      }

      if (a2 <= 4u)
      {
        v18 = 0xD000000000000015;
      }

      else
      {
        v18 = v15;
      }

      if (a2 <= 4u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }
    }

    v22 = sub_2293D4824(v18, v19, v42);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_2293D1000, v8, v9, "[%s] Requesting protected data operation, reason: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v11, -1, -1);
    MEMORY[0x22AACCC00](v10, -1, -1);
  }

  else
  {
  }

  v23 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_protectedDataOperation);
  v41 = 0;
  if ([v23 requestWorkWithPriority:a1 error:&v41])
  {
    v24 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
    v25 = v41;
    os_unfair_lock_lock((v24 + 20));
    *(v24 + 16) = 1;
    os_unfair_lock_unlock((v24 + 20));
  }

  else
  {
    v26 = v41;
    v27 = sub_22944EF74();

    swift_willThrow();
    v28 = v27;
    v29 = sub_22944F154();
    v30 = sub_22944FA64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = ObjectType;
      v42[0] = v33;
      *v31 = 136315394;
      swift_getMetatypeMetadata();
      v34 = sub_2293D47B8();
      v36 = sub_2293D4824(v34, v35, v42);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      v37 = v27;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v32 = v38;
      _os_log_impl(&dword_2293D1000, v29, v30, "[%s] Failed to request protected data operation error: %@", v31, 0x16u);
      sub_2294423D4(v32);
      MEMORY[0x22AACCC00](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x22AACCC00](v33, -1, -1);
      MEMORY[0x22AACCC00](v31, -1, -1);
    }

    v39 = *(v3 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
    os_unfair_lock_lock((v39 + 20));
    *(v39 + 16) = 0;
    os_unfair_lock_unlock((v39 + 20));
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2293D47B8()
{
  sub_22944FE14();
  v0 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22944FB34();
  swift_unknownObjectRelease();
  return sub_22944F8A4();
}

uint64_t sub_2293D4824(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2293D48F0(v11, 0, 0, 1, a1, a2);
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
    sub_2293D5F68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2293D48F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_229423A7C(a5, a6);
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
    result = sub_22944FCC4();
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

uint64_t sub_2293D4AC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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

void sub_2293D4B44(uint64_t (*a1)(void))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
  os_unfair_lock_lock((v5 + 20));
  *(v5 + 16) = 2;
  os_unfair_lock_unlock((v5 + 20));
  sub_2293D4E68(aBlock);
  v6 = LOBYTE(aBlock[0]);
  os_unfair_lock_lock((v5 + 20));
  *(v5 + 16) = v6;
  os_unfair_lock_unlock((v5 + 20));
  if (v6 == 3)
  {
    v8 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_2293D8588((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers);
    aBlock[4] = sub_2294411CC;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2293D89A8;
    aBlock[3] = &block_descriptor_3;
    v10 = _Block_copy(aBlock);
    [v9 notifyObservers_];
    _Block_release(v10);
  }

  v11 = a1();
  MEMORY[0x28223BE20](v11);
  os_unfair_lock_lock((v5 + 20));
  sub_2293D8A08((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  v12 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork;
  if (*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork) == 1)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_22944F174();
    __swift_project_value_buffer(v13, qword_2813DBFB8);
    v14 = sub_22944F154();
    v15 = sub_22944FA84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      aBlock[0] = ObjectType;
      swift_getMetatypeMetadata();
      v18 = sub_2293D47B8();
      v20 = sub_2293D4824(v18, v19, &v21);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2293D1000, v14, v15, "[%s] Re-requesting work", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AACCC00](v17, -1, -1);
      MEMORY[0x22AACCC00](v16, -1, -1);
    }

    sub_2293D42C4(1, 6u);
    *(v2 + v12) = 0;
  }
}

void sub_2293D4E68(char *a1@<X8>)
{
  v112 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_22944F054();
  v106 = *(v2 - 8);
  v107 = v2;
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v2);
  v105 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HDMCPregnancyStateFactory();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v109 = (v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v101 = v100 - v9;
  v10 = sub_22944F0C4();
  v114 = *(v10 - 8);
  v11 = v114[8];
  MEMORY[0x28223BE20](v10);
  v104 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22944F134();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (v100 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = v100 - v22;
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v24 = sub_22944F174();
  v111 = __swift_project_value_buffer(v24, qword_2813DBFB8);
  v25 = sub_22944F154();
  v26 = sub_22944FA84();
  v27 = os_log_type_enabled(v25, v26);
  v110 = v13;
  v108 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v103 = v14;
    v118[0] = v102;
    *v28 = 136315138;
    *&v115 = ObjectType;
    swift_getMetatypeMetadata();
    v29 = sub_2293D47B8();
    v31 = v10;
    v32 = v21;
    v33 = v5;
    v34 = v23;
    v35 = sub_2293D4824(v29, v30, v118);

    *(v28 + 4) = v35;
    v23 = v34;
    v5 = v33;
    v21 = v32;
    v10 = v31;
    _os_log_impl(&dword_2293D1000, v25, v26, "[%s] Starting derivation work", v28, 0xCu);
    v36 = v102;
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    v14 = v103;
    MEMORY[0x22AACCC00](v36, -1, -1);
    MEMORY[0x22AACCC00](v28, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v103 = ObjectType;
    v39 = v114;
    v40 = v104;
    (v114[13])(v104, *MEMORY[0x277CC9830], v10);
    sub_22944F0D4();
    (v39[1])(v40, v10);
    v41 = type metadata accessor for HDMCExperienceDaemonStore();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    v43 = v23;
    v44 = objc_allocWithZone(MEMORY[0x277D10718]);
    v45 = v38;
    v46 = sub_22944F864();
    v47 = [v44 initWithCategory:100 domainName:v46 profile:v45];

    *(v42 + 24) = v47;
    v116 = v41;
    v117 = sub_2293D5CA4(&qword_2813DC470, type metadata accessor for HDMCExperienceDaemonStore);
    *&v115 = v42;
    v114 = v45;

    v48 = sub_22944F0F4();
    v49 = HKMCTodayIndex();

    v50 = [*(v113 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_calendarCache) currentCalendar];
    sub_22944F104();

    v51 = *(v14 + 16);
    v104 = v43;
    v102 = v21;
    v51(v108, v43, v110);
    *(v109 + *(v5 + 36)) = 0x4167124000000000;
    v52 = objc_opt_self();
    v53 = sub_22944F0F4();
    v54 = [v52 hk:v49 dateOnDayIndex:12 atHour:v53 calendar:?];

    v55 = v5;
    v56 = v105;
    sub_22944F014();

    sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
    _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE26predicateForOngoingSamples2onABSi_tFZ_0(v49);
    v58 = v57;
    v67 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(v114, v57);
    v100[1] = v42;
    v68 = v102;

    v69 = v109;
    *v109 = v67;
    v70 = _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE45predicateForSamplesThatEndedInTheTwelveMonths6beforeAB10Foundation4DateV_tFZ_0(v56);
    v71 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(v114, v70);
    (*(v106 + 8))(v56, v107);

    *(v69 + 8) = v71;
    sub_2293D78F8(&v115, v69 + 16);
    v72 = *(v14 + 32);
    v73 = v110;
    v72(v69 + *(v55 + 28), v68, v110);
    v72(v69 + *(v55 + 32), v108, v73);
    v74 = v101;
    sub_2293D7910(v69, v101);
    v75 = HDMCPregnancyStateFactory.deriveState()();
    v76 = HKShowSensitiveLogItems();
    if (v76)
    {
      v77 = sub_22944F154();
      v78 = sub_22944FA84();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v118[0] = v80;
        *v79 = 136315138;
        *&v115 = v103;
        swift_getMetatypeMetadata();
        v81 = sub_2293D47B8();
        v83 = sub_2293D4824(v81, v82, v118);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_2293D1000, v77, v78, "[%s] Updating pregnancy state", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x22AACCC00](v80, -1, -1);
        MEMORY[0x22AACCC00](v79, -1, -1);

        sub_2293D84A8(v101);
      }

      else
      {

        sub_2293D84A8(v74);
      }

      (*(v14 + 8))(v104, v110);
    }

    else
    {

      sub_2293D84A8(v74);
      (*(v14 + 8))(v104, v73);
    }

    v84 = HKShowSensitiveLogItems();
    if (v84)
    {
      v85 = v75;
      v86 = sub_22944F154();
      v87 = sub_22944FA84();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v115 = v89;
        *v88 = 136446466;
        v90 = sub_22944FF44();
        v92 = v75;
        v93 = sub_2293D4824(v90, v91, &v115);

        *(v88 + 4) = v93;
        *(v88 + 12) = 2080;
        v94 = [v85 description];
        v95 = sub_22944F894();
        v97 = v96;

        v98 = sub_2293D4824(v95, v97, &v115);
        v75 = v92;

        *(v88 + 14) = v98;
        _os_log_impl(&dword_2293D1000, v86, v87, "[%{public}s] Updating model: %s", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v89, -1, -1);
        MEMORY[0x22AACCC00](v88, -1, -1);
      }
    }

    v99 = *(v113 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
    MEMORY[0x28223BE20](v84);
    v100[-2] = v75;
    os_unfair_lock_lock((v99 + 24));
    sub_2293D8544((v99 + 16));
    os_unfair_lock_unlock((v99 + 24));

    v66 = 3;
  }

  else
  {
    v59 = sub_22944F154();
    v60 = sub_22944FA84();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v118[0] = v62;
      *v61 = 136315138;
      *&v115 = ObjectType;
      swift_getMetatypeMetadata();
      v63 = sub_2293D47B8();
      v65 = sub_2293D4824(v63, v64, v118);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_2293D1000, v59, v60, "[%s] Profile not available", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x22AACCC00](v62, -1, -1);
      MEMORY[0x22AACCC00](v61, -1, -1);
    }

    v66 = 5;
  }

  *v112 = v66;
}

uint64_t type metadata accessor for HDMCPregnancyStateFactory()
{
  result = qword_2813DC390;
  if (!qword_2813DC390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2293D5C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2293D5CA4(unint64_t *a1, void (*a2)(uint64_t))
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

void _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE26predicateForOngoingSamples2onABSi_tFZ_0(uint64_t a1)
{
  v2 = sub_22944F054();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() hk:a1 latestPossibleDateWithDayIndex:?];
  v8 = HDSampleEntityPredicateForStartDate();
  sub_22944EFB4();
  v9 = sub_22944EFD4();
  (*(v3 + 8))(v6, v2);
  v10 = HDSampleEntityPredicateForEndDate();

  sub_2293D5EC8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_229455370;
  v12 = sub_2293D5F1C();
  *(v11 + 32) = v8;
  *(v11 + 88) = v12;
  *(v11 + 56) = v12;
  *(v11 + 64) = v10;
  v13 = v8;
  v14 = v10;
  v15 = sub_22944F924();

  v16 = [objc_opt_self() predicateMatchingAllPredicates_];

  if (v16)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_2293D5EC8()
{
  if (!qword_2813DBD98)
  {
    v0 = sub_22944FE04();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBD98);
    }
  }
}

unint64_t sub_2293D5F1C()
{
  result = qword_2813DBEA8;
  if (!qword_2813DBEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBEA8);
  }

  return result;
}

uint64_t sub_2293D5F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2293D5FC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  aBlock[11] = *MEMORY[0x277D85DE8];
  sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2293D65A4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229454440;
  sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x22AACB900](*MEMORY[0x277CCBA68]);
  sub_2293D65F8(inited);
  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
  sub_2293D6A34(&qword_2813DBED8, &qword_2813DBEE0, 0x277CCD720);
  v11 = sub_22944F9A4();

  aBlock[0] = 0;
  v12 = [ObjCClassFromMetadata entityEnumeratorWithTypes:v11 profile:a1 error:aBlock];

  if (v12)
  {
    v13 = aBlock[0];
    v14 = v12;
    [v14 setPredicate_];
    v15 = sub_22944F994();
    [v14 setEncodingOption:v15 forKey:*MEMORY[0x277D10400]];

    [v14 setLimitCount_];
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    aBlock[4] = sub_229433DF0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229432B6C;
    aBlock[3] = &block_descriptor_0;
    v17 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v18 = [v14 enumerateIncludingDeletedObjects:a3 & 1 error:aBlock handler:v17];
    _Block_release(v17);
    v19 = aBlock[0];
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    if (v18)
    {

      goto LABEL_12;
    }

    v21 = sub_22944EF74();

    swift_willThrow();
  }

  else
  {
    v20 = aBlock[0];
    v21 = sub_22944EF74();

    swift_willThrow();
  }

  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v22 = sub_22944F174();
  __swift_project_value_buffer(v22, qword_2813DBFB8);
  v23 = v21;
  v24 = sub_22944F154();
  v25 = sub_22944FA64();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    v28 = sub_22944FF44();
    v30 = sub_2293D4824(v28, v29, aBlock);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    swift_getErrorValue();
    v31 = sub_22944FE64();
    v33 = sub_2293D4824(v31, v32, aBlock);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_2293D1000, v24, v25, "[%{public}s] Error enumerating entities: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v27, -1, -1);
    MEMORY[0x22AACCC00](v26, -1, -1);
  }

  swift_willThrow();
LABEL_12:
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84F90];
  v5[2] = &v7;
  sub_2293D5FC4(a1, a2, 0, sub_229433B64, v5);
  if (v2)
  {
  }

  v6 = sub_2293D6D18(v4);
  sub_2293D6DAC(sub_22943297C, 0);

  return v6;
}

void sub_2293D65A4()
{
  if (!qword_2813DBDA0)
  {
    v0 = sub_22944FE04();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBDA0);
    }
  }
}

uint64_t sub_2293D6628(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22944FBD4())
  {
    v12 = sub_2293D30DC(0, a2, a3);
    v13 = sub_2293D6A84(a4, a2, a3);
    result = MEMORY[0x22AACB840](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AACBB00](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22944FBD4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2293D6794(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22944FBE4();

    if (v17)
    {

      sub_2293D30DC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22944FBD4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_229424644(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_229424ACC(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_2294254D0(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_2293D30DC(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22944FAF4();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22944FB04();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_2293D6AC8(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2293D6A34(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2293D30DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2293D6A84(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2293D30DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2293D6AC8(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_229424ACC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_229425DF8(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_229426640(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22944FAF4();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_2293D30DC(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22944FB04();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22944FE44();
  __break(1u);
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
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

uint64_t sub_2293D6D18(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22944FBD4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_229432BEC(v3, 0);
  sub_2294339B0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2293D6DAC(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2293D6E44(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_2293D6E58(a1, a2);
  return sub_22944FCE4();
}

void sub_2293D6E58(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_22944FDE4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2293D30DC(0, &unk_2813DBEC0, 0x277CCD0B0);
        v9 = sub_22944F964();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_229432D68(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_229432C68(0, v5, 1, a1);
  }
}

uint64_t _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE45predicateForSamplesThatEndedInTheTwelveMonths6beforeAB10Foundation4DateV_tFZ_0(void *a1)
{
  v2 = sub_22944F124();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = sub_22944F054();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v47 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v52 = sub_22944F134();
  v50 = *(v52 - 8);
  v22 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() latestTimeZoneCalendar];
  sub_22944F104();

  (*(v3 + 104))(v6, *MEMORY[0x277CC9998], v2);
  v53 = a1;
  sub_22944F114();
  (*(v3 + 8))(v6, v2);
  v26 = v14[6];
  v27 = v13;
  if (v26(v12, 1, v13) != 1)
  {
    v28 = v14[4];
    v28(v21, v12, v27);
    v51 = v21;
    v29 = v27;
    v30 = sub_22944EFD4();
    v53 = HDSampleEntityPredicateForEndDate();

    v31 = v54;
    sub_22944F044();
    v32 = v55;
    v49 = v24;
    sub_2293D75E8(v55);
    v33 = v14[1];
    v54 = (v14 + 1);
    v48 = v33;
    v33(v31, v29);
    if (v26(v32, 1, v29) == 1)
    {
      sub_2294312E4(v32);
      goto LABEL_8;
    }

    v34 = v56;
    v28(v56, v32, v29);
    v35 = sub_22944EFD4();
    v36 = HDSampleEntityPredicateForEndDate();

    sub_2293D5EC8();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_229455370;
    v38 = sub_2293D5F1C();
    v39 = v53;
    *(v37 + 32) = v53;
    *(v37 + 88) = v38;
    *(v37 + 56) = v38;
    *(v37 + 64) = v36;
    v40 = v39;
    v41 = v36;
    v42 = sub_22944F924();

    v12 = [objc_opt_self() predicateMatchingAllPredicates_];

    if (v12)
    {

      v43 = v34;
      v44 = v48;
      v48(v43, v29);
      v44(v51, v29);
      (*(v50 + 8))(v49, v52);
      return v12;
    }

    __break(1u);
  }

  sub_2294312E4(v12);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_22944FC84();

  v57 = 0xD000000000000021;
  v58 = 0x8000000229459200;
  sub_22943DDBC();
  v46 = sub_22944FDF4();
  MEMORY[0x22AACB740](v46);

LABEL_8:
  result = sub_22944FD44();
  __break(1u);
  return result;
}

void sub_2293D7594(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944FB14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2293D75E8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_22944F124();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22944F054();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v26 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  v18 = *MEMORY[0x277CC9968];
  v25 = v3[13];
  v25(v6, v18, v2);
  v28 = v1;
  sub_22944F114();
  v19 = v3[1];
  v27 = v2;
  v19(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2294312E4(v10);
    return (*(v12 + 56))(v29, 1, 1, v11);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v21 = v26;
    sub_22944F0E4();
    v22 = v27;
    v25(v6, *MEMORY[0x277CC99A8], v27);
    sub_22944F114();
    v19(v6, v22);
    v23 = *(v12 + 8);
    v23(v21, v11);
    return (v23)(v17, v11);
  }
}

uint64_t sub_2293D78F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2293D7910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HDMCPregnancyStateFactory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HDMCPregnancyStateFactory.deriveState()()
{
  v1 = v0;
  v2 = sub_22944F0B4();
  v81 = *(v2 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for HDMCPregnancyStateFactory();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v74 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v74 - v21);
  if (!HKShowSensitiveLogItems())
  {
    goto LABEL_14;
  }

  v79 = v5;
  v80 = v17;
  v78 = v10;
  if (qword_2813DBFB0 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v23 = sub_22944F174();
    __swift_project_value_buffer(v23, qword_2813DBFB8);
    sub_229433B6C(v1, v22);
    v24 = sub_22944F154();
    v25 = sub_22944FA84();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v77 = v12;
      v27 = v26;
      v75 = swift_slowAlloc();
      v76 = v2;
      v85 = v75;
      *v27 = 136446466;
      *(v27 + 4) = sub_2293D4824(0xD000000000000019, 0x80000002294550D0, &v85);
      *(v27 + 12) = 2080;
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_22944FC84();

      v82 = 0xD000000000000015;
      v83 = 0x8000000229458DD0;
      v28.isa = v22->isa;
      v29 = sub_2293D30DC(0, &unk_2813DBEC0, 0x277CCD0B0);
      v30 = MEMORY[0x22AACB7B0](v28.isa, v29);
      MEMORY[0x22AACB740](v30);

      sub_22944FE34();
      v31 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v32 = sub_22944F8A4();
      v34 = v33;
      sub_2293D8448(v22, type metadata accessor for HDMCPregnancyStateFactory);
      v35 = sub_2293D4824(v32, v34, &v85);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_2293D1000, v24, v25, "[%{public}s] %s", v27, 0x16u);
      v36 = v75;
      swift_arrayDestroy();
      v2 = v76;
      MEMORY[0x22AACCC00](v36, -1, -1);
      v37 = v27;
      v12 = v77;
      MEMORY[0x22AACCC00](v37, -1, -1);
    }

    else
    {

      sub_2293D8448(v22, type metadata accessor for HDMCPregnancyStateFactory);
    }

    sub_229433B6C(v1, v20);
    v38 = v80;
    sub_229433B6C(v1, v80);
    v22 = sub_22944F154();
    v39 = sub_22944FA84();
    if (os_log_type_enabled(v22, v39))
    {
      v40 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v85 = v77;
      *v40 = 136446722;
      *(v40 + 4) = sub_2293D4824(0xD000000000000019, 0x80000002294550D0, &v85);
      *(v40 + 12) = 2080;
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_22944FC84();

      v82 = 0xD00000000000001BLL;
      v83 = 0x8000000229458D80;
      v41 = *v20;
      if (*v20 >> 62)
      {
        if (v41 < 0)
        {
          v72 = *v20;
        }

        v42 = sub_22944FBD4();
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v84 = v42;
      v43 = sub_22944FDF4();
      MEMORY[0x22AACB740](v43);

      sub_22944FE34();
      v44 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v45 = sub_22944F8A4();
      v47 = v46;
      sub_2293D8448(v20, type metadata accessor for HDMCPregnancyStateFactory);
      v48 = sub_2293D4824(v45, v47, &v85);

      *(v40 + 14) = v48;
      *(v40 + 22) = 2080;
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_22944FC84();

      v82 = 0xD000000000000022;
      v83 = 0x8000000229458DA0;
      v49 = *v80;
      if (*v80 >> 62)
      {
        if (v49 < 0)
        {
          v73 = *v80;
        }

        v50 = sub_22944FBD4();
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v84 = v50;
      v51 = sub_22944FDF4();
      MEMORY[0x22AACB740](v51);

      sub_22944FE34();
      v52 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v20 = MEMORY[0x277D84F70];
      v53 = sub_22944F8A4();
      v55 = v54;
      sub_2293D8448(v80, type metadata accessor for HDMCPregnancyStateFactory);
      v56 = sub_2293D4824(v53, v55, &v85);

      *(v40 + 24) = v56;
      _os_log_impl(&dword_2293D1000, v22, v39, "[%{public}s] %s, %s", v40, 0x20u);
      v57 = v77;
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v57, -1, -1);
      MEMORY[0x22AACCC00](v40, -1, -1);
    }

    else
    {

      sub_2293D8448(v20, type metadata accessor for HDMCPregnancyStateFactory);
      sub_2293D8448(v38, type metadata accessor for HDMCPregnancyStateFactory);
    }

    v10 = v78;
    v5 = v79;
LABEL_14:
    v58 = *v1;
    if (*v1 >> 62)
    {
      break;
    }

    if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_16:
    if ((v58 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x22AACBB00](0, v58);
      goto LABEL_19;
    }

    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 32);
LABEL_19:
      v60 = v59;
      v61 = [v59 UUID];
      sub_22944F094();

      sub_229431F24(v5, v12);
      (*(v81 + 8))(v5, v2);
      v62 = [objc_allocWithZone(MEMORY[0x277CCD5A0]) initWithPregnancySample:v60 state:1];
      v63 = sub_22944FAD4();

      goto LABEL_32;
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  if (v58 < 0)
  {
    v64 = *v1;
  }

  if (sub_22944FBD4())
  {
    goto LABEL_16;
  }

LABEL_23:
  v65 = v1[1];
  if (!(v65 >> 62))
  {
    result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v62 = [objc_allocWithZone(MEMORY[0x277CCD5A0]) initWithPregnancySample:0 state:0];
    v70 = sub_22944F054();
    (*(*(v70 - 8) + 56))(v12, 1, 1, v70);
    v63 = sub_22944FAD4();
LABEL_32:

    sub_2293D8448(v12, sub_2293D7574);
    return v63;
  }

  if (v65 < 0)
  {
    v71 = v1[1];
  }

  result = sub_22944FBD4();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_25:
  if ((v65 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x22AACBB00](0, v65);
    goto LABEL_28;
  }

  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v65 + 32);
LABEL_28:
    v68 = v67;
    v69 = [v67 UUID];
    sub_22944F094();

    sub_229431F24(v5, v10);
    (*(v81 + 8))(v5, v2);
    if ((sub_229432574(v68) & 1) == 0)
    {
      sub_2293D8448(v10, sub_2293D7574);

      goto LABEL_31;
    }

    v62 = [objc_allocWithZone(MEMORY[0x277CCD5A0]) initWithPregnancySample:v68 state:2];
    v63 = sub_22944FAD4();

    v12 = v10;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_2293D83E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2293D8448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2293D84A8(uint64_t a1)
{
  v2 = type metadata accessor for HDMCPregnancyStateFactory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HDMCExperienceDaemonStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2293D8544(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

void sub_2293D85A4(id *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = qword_2813DBFB0;
    v6 = *a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_22944F174();
    __swift_project_value_buffer(v7, qword_2813DBFB8);
    v8 = a2;
    v9 = sub_22944F154();
    v10 = sub_22944FA84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      aBlock[0] = a3;
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315394;
      swift_getMetatypeMetadata();
      v13 = sub_2293D47B8();
      v15 = sub_2293D4824(v13, v14, &v30);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      v16 = [*&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers] count];

      *(v11 + 14) = v16;
      _os_log_impl(&dword_2293D1000, v9, v10, "[%s] Notifying %ld observers", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x22AACCC00](v12, -1, -1);
      MEMORY[0x22AACCC00](v11, -1, -1);
    }

    else
    {
    }

    v25 = *&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers];
    v26 = swift_allocObject();
    *(v26 + 16) = v6;
    aBlock[4] = sub_2293D8A2C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2293D89A8;
    aBlock[3] = &block_descriptor_14_0;
    v27 = _Block_copy(aBlock);
    v28 = v6;

    [v25 notifyObservers_];
    _Block_release(v27);
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v17 = sub_22944F174();
    __swift_project_value_buffer(v17, qword_2813DBFB8);
    v18 = sub_22944F154();
    v19 = sub_22944FA64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      aBlock[0] = a3;
      swift_getMetatypeMetadata();
      v22 = sub_2293D47B8();
      v24 = sub_2293D4824(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2293D1000, v18, v19, "[%s] Not notifying clients due to nil model with .complete state", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x22AACCC00](v21, -1, -1);
      MEMORY[0x22AACCC00](v20, -1, -1);
    }
  }
}

uint64_t sub_2293D8950()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293D89A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

_BYTE *sub_2293D8A08(_BYTE *result)
{
  if (!*result)
  {
    *(*(v1 + 16) + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork) = 1;
  }

  return result;
}

void HDMCPregnancyStateQueryServer.pregnancyModelDidUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22944F0B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 clientProxy];
  if (v9 && (v10 = [v9 remoteObjectProxy], swift_unknownObjectRelease(), sub_22944FB34(), swift_unknownObjectRelease(), sub_2293D4260(), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v14[1];
    v12 = [v2 queryUUID];
    sub_22944F094();

    v13 = sub_22944F074();
    (*(v5 + 8))(v8, v4);
    [v11 client:a1 deliverPregnancyModel:v13 queryUUID:?];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22944FD44();
    __break(1u);
  }
}

uint64_t sub_2293D8DB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2293D8E60(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [a1 state];
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    sub_2293D9118(2);
  }

  else
  {
    if (v3 == 1)
    {
      if (!HKShowSensitiveLogItems())
      {
        return;
      }

      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v5 = sub_22944F174();
      __swift_project_value_buffer(v5, qword_2813DBFB8);
      oslog = sub_22944F154();
      v6 = sub_22944FA84();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v19 = v8;
        *v7 = 136315138;
        v9 = sub_22944FF44();
        v11 = sub_2293D4824(v9, v10, &v19);

        *(v7 + 4) = v11;
LABEL_19:
        _os_log_impl(&dword_2293D1000, oslog, v6, v12, v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x22AACCC00](v8, -1, -1);
        MEMORY[0x22AACCC00](v7, -1, -1);

        return;
      }
    }

    else
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v13 = sub_22944F174();
      __swift_project_value_buffer(v13, qword_2813DBFB8);
      oslog = sub_22944F154();
      v6 = sub_22944FA64();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v18 = v8;
        v19 = ObjectType;
        *v7 = 136315138;
        swift_getMetatypeMetadata();
        v14 = sub_2293D47B8();
        v16 = sub_2293D4824(v14, v15, &v18);

        *(v7 + 4) = v16;
        v12 = "[%s] Received an unexpected state.";
        goto LABEL_19;
      }
    }
  }
}

void sub_2293D9118(uint64_t a1)
{
  v2 = v1;
  v46[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v4 = [objc_opt_self() sharedBehavior];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v6 = [v4 isiPad];

  v7 = HKShowSensitiveLogItems();
  if (v6)
  {
    if (!v7)
    {
LABEL_28:
      v44 = *MEMORY[0x277D85DE8];
      return;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_22944F174();
    __swift_project_value_buffer(v8, qword_2813DBFB8);
    oslog = sub_22944F154();
    v9 = sub_22944FA84();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46[0] = v11;
      *v10 = 136315138;
      v12 = sub_22944FF44();
      v14 = sub_2293D4824(v12, v13, v46);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2293D1000, oslog, v9, "[%s] Should not request work since this is an iPad", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AACCC00](v11, -1, -1);
      MEMORY[0x22AACCC00](v10, -1, -1);

      goto LABEL_28;
    }

    v43 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (v7)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v15 = sub_22944F174();
      __swift_project_value_buffer(v15, qword_2813DBFB8);
      v16 = sub_22944F154();
      v17 = sub_22944FA84();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v46[0] = v19;
        *v18 = 136315138;
        v20 = sub_22944FF44();
        v22 = sub_2293D4824(v20, v21, v46);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_2293D1000, v16, v17, "[%s] Requesting protected data operation", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x22AACCC00](v19, -1, -1);
        MEMORY[0x22AACCC00](v18, -1, -1);
      }
    }

    v23 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation);
    v46[0] = 0;
    v24 = [v23 requestWorkWithPriority:a1 error:v46];
    v25 = v46[0];
    if (!v24)
    {
      v28 = v46[0];
      v29 = sub_22944EF74();

      swift_willThrow();
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v30 = sub_22944F174();
        __swift_project_value_buffer(v30, qword_2813DBFB8);
        v31 = v29;
        v32 = sub_22944F154();
        v33 = sub_22944FA64();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v46[0] = v35;
          *v34 = 136315394;
          v36 = sub_22944FF44();
          v38 = sub_2293D4824(v36, v37, v46);

          *(v34 + 4) = v38;
          *(v34 + 12) = 2080;
          v39 = v29;
          sub_22942B194(0, &qword_2813DBD90);
          v40 = sub_22944F8A4();
          v42 = sub_2293D4824(v40, v41, v46);

          *(v34 + 14) = v42;
          _os_log_impl(&dword_2293D1000, v32, v33, "[%s] Failed to request protected data operation error: %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AACCC00](v35, -1, -1);
          MEMORY[0x22AACCC00](v34, -1, -1);

          goto LABEL_28;
        }
      }

      goto LABEL_28;
    }

    v26 = *MEMORY[0x277D85DE8];

    v27 = v25;
  }
}

uint64_t sub_2293D96AC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22944F054();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = objc_opt_self();
  [a1 featureAvailabilityRequirement:objc_msgSend(v16 didUpdateSatisfaction:{sel_noOngoingPregnancy), objc_msgSend(a3, sel_state) != 1}];
  swift_unknownObjectRelease();
  v17 = [v16 isNotInPostPregnancy];
  v18 = [a3 physiologicalWashoutEndDate];
  if (v18)
  {
    v19 = v18;
    sub_22944F014();

    (*(v6 + 32))(v15, v13, v5);
    sub_22944F044();
    v20 = sub_22944EFF4();
    v21 = *(v6 + 8);
    v21(v10, v5);
    v21(v15, v5);
  }

  else
  {
    v20 = 1;
  }

  [a1 featureAvailabilityRequirement:v17 didUpdateSatisfaction:v20 & 1];
  return swift_unknownObjectRelease();
}

uint64_t sub_2293D999C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293D99DC(void (*a1)(void), uint64_t a2)
{
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_22944F174();
    __swift_project_value_buffer(v4, qword_2813DBFB8);
    v5 = sub_22944F154();
    v6 = sub_22944FA84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_22944FF44();
      v11 = sub_2293D4824(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2293D1000, v5, v6, "[%s] Performing requested work", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x22AACCC00](v8, -1, -1);
      MEMORY[0x22AACCC00](v7, -1, -1);
    }
  }

  return sub_2293D9B7C(a1, a2, 0, 0, 0, 0);
}

uint64_t sub_2293D9B7C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v12 = sub_22944F174();
    __swift_project_value_buffer(v12, qword_2813DBFB8);
    v13 = sub_22944F154();
    v14 = sub_22944FA84();
    if (os_log_type_enabled(v13, v14))
    {
      bufa = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *bufa = 136315138;
      v15 = sub_22944FF44();
      v17 = a1;
      v18 = a2;
      v19 = sub_2293D4824(v15, v16, &v59);

      *(bufa + 4) = v19;
      a2 = v18;
      a1 = v17;
      _os_log_impl(&dword_2293D1000, v13, v14, "[%s] Updating adjusted features", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x22AACCC00](v57, -1, -1);
      MEMORY[0x22AACCC00](bufa, -1, -1);
    }
  }

  v20 = [*&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] getCurrentPregnancyModel];
  if (v20)
  {
    v58 = v20;
    Strong = swift_unknownObjectUnownedLoadStrong();
    type metadata accessor for HDMCExperienceDaemonStore();
    v22 = swift_allocObject();
    *(v22 + 16) = Strong;
    v23 = objc_allocWithZone(MEMORY[0x277D10718]);
    v24 = Strong;
    v25 = sub_22944F864();
    v26 = [v23 initWithCategory:100 domainName:v25 profile:v24];

    *(v22 + 24) = v26;
    v52 = v7;
    buf = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
    sub_2294364B8();
    v36 = sub_22944320C();

    v37 = [v36 pregnancyModeSetupCompletionSet];
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    v38 = sub_22944F9B4();

    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = sub_22944FBD4();
    }

    else
    {
      v39 = *(v38 + 16);
    }

    if (v39)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = a3;
      *(v40 + 24) = a4;
      *(v40 + 32) = v52;
      *(v40 + 40) = v22;
      *(v40 + 48) = v36;
      *(v40 + 56) = buf;
      *(v40 + 64) = a5;
      *(v40 + 72) = a6;
      *(v40 + 80) = a1;
      *(v40 + 88) = a2;
      v41 = buf;
      v42 = v36;
      sub_229428914(a3);
      v43 = v52;

      sub_229428914(a5);

      sub_229417FF8(v58, v22, v42, v41, sub_229428884, v40);
    }

    else
    {
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v44 = sub_22944F174();
        __swift_project_value_buffer(v44, qword_2813DBFB8);
        v45 = sub_22944F154();
        v46 = sub_22944FA64();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v59 = v48;
          *v47 = 136315138;
          v49 = sub_22944FF44();
          v51 = sub_2293D4824(v49, v50, &v59);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_2293D1000, v45, v46, "[%s] No completion records, so no need for clean up maintenance", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x22AACCC00](v48, -1, -1);
          MEMORY[0x22AACCC00](v47, -1, -1);
        }
      }

      a1();
    }
  }

  else
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v27 = sub_22944F174();
      __swift_project_value_buffer(v27, qword_2813DBFB8);
      v28 = sub_22944F154();
      v29 = sub_22944FA64();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59 = v31;
        *v30 = 136315138;
        v32 = sub_22944FF44();
        v34 = sub_2293D4824(v32, v33, &v59);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_2293D1000, v28, v29, "[%s] Could not get pregnancy state from pregnancy manager", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x22AACCC00](v31, -1, -1);
        MEMORY[0x22AACCC00](v30, -1, -1);
      }
    }

    return (a1)();
  }
}

uint64_t sub_2293DA598()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 40);

  if (*(v0 + 64))
  {
    v3 = *(v0 + 72);
  }

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

id sub_2293DA69C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_22944F174();
  __swift_project_value_buffer(v6, qword_2813DBFB8);
  v7 = sub_22944F154();
  v8 = sub_22944FA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    v16[2] = a2;
    swift_getMetatypeMetadata();
    v11 = sub_2293D47B8();
    v13 = sub_2293D4824(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2293D1000, v7, v8, "[%s] Returning currently cached model", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AACCC00](v10, -1, -1);
    MEMORY[0x22AACCC00](v9, -1, -1);
  }

  v14 = *a1;
  *a3 = *a1;
  return v14;
}

id HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()()
{
  v2 = *v0;
  result = HDMCExperienceDaemonStore.fetchLocallyPersistedData()();
  if (!v1 && !result)
  {
    sub_2293D6628(MEMORY[0x277D84F90], &qword_2813DBE38, 0x277D119C0, &qword_2813DBE30, sub_229423F44);
    v4 = objc_allocWithZone(MEMORY[0x277D119A0]);
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A84(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    v5 = sub_22944F9A4();

    v6 = [v4 initWithPregnancyModeSetupCompletionSet_];

    sub_2293D30DC(0, &qword_2813DBE18, 0x277D10638);
    v7 = HDCodableMenstrualCyclesExperienceModel.init(model:)(v6);
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_22944F174();
    __swift_project_value_buffer(v8, qword_2813DBFB8);
    v9 = sub_22944F154();
    v10 = sub_22944FA84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      v13 = sub_22944FF44();
      v15 = sub_2293D4824(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2293D1000, v9, v10, "[%{public}s] No model persisted locally, returning default model", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x22AACCC00](v12, -1, -1);
      MEMORY[0x22AACCC00](v11, -1, -1);
    }

    return v7;
  }

  return result;
}

id HDMCExperienceDaemonStore.fetchLocallyPersistedData()()
{
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[3];
  v3 = sub_22944F864();
  v64[0] = 0;
  v4 = [v2 dataForKey:v3 error:v64];

  v5 = v64[0];
  if (v4)
  {
    v6 = v64[0];
    v7 = sub_22944EF94();
    v9 = v8;

    v10 = objc_allocWithZone(MEMORY[0x277D10638]);
    sub_229449288(v7, v9);
    v11 = sub_22944EF84();
    sub_22943A0D8(v7, v9);
    v5 = [v10 initWithData_];

    if (v5)
    {
      v63 = v9;
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v12 = sub_22944F174();
      __swift_project_value_buffer(v12, qword_2813DBFB8);
      v13 = v5;
      v14 = sub_22944F154();
      v15 = sub_22944FA84();

      if (os_log_type_enabled(v14, v15))
      {
        v62 = v6;
        v16 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v64[0] = v61;
        *v16 = 136446466;
        v17 = sub_22944FF44();
        v19 = sub_2293D4824(v17, v18, v64);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v20 = HDCodableMenstrualCyclesExperienceModel.logDescription.getter();
        v22 = sub_2293D4824(v20, v21, v64);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_2293D1000, v14, v15, "[%{public}s] Fetched content from local store: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v61, -1, -1);
        MEMORY[0x22AACCC00](v16, -1, -1);
        sub_22943A0D8(v7, v63);
      }

      else
      {
        sub_22943A0D8(v7, v63);
      }

      goto LABEL_26;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v41 = sub_22944F174();
    __swift_project_value_buffer(v41, qword_2813DBFB8);
    v42 = sub_22944F154();
    v43 = sub_22944FA64();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64[0] = v45;
      *v44 = 136446210;
      v46 = sub_22944FF44();
      v5 = v47;
      v48 = v9;
      v49 = sub_2293D4824(v46, v47, v64);

      *(v44 + 4) = v49;
      v9 = v48;
      _os_log_impl(&dword_2293D1000, v42, v43, "[%{public}s] Error decoding persisted state", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x22AACCC00](v45, -1, -1);
      MEMORY[0x22AACCC00](v44, -1, -1);
    }

    sub_2294491CC();
    swift_allocError();
    *v50 = 0;
    v50[1] = 0;
    swift_willThrow();
    sub_22943A0D8(v7, v9);
LABEL_19:

    goto LABEL_26;
  }

  v23 = qword_2813DBFB0;
  if (v64[0])
  {
    v6 = v64[0];
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_22944F174();
    __swift_project_value_buffer(v24, qword_2813DBFB8);
    v25 = sub_22944F154();
    v26 = sub_22944FA64();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64[0] = v28;
      *v27 = 136446466;
      v29 = sub_22944FF44();
      v31 = sub_2293D4824(v29, v30, v64);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      sub_229449220();
      v32 = v6;
      v33 = sub_22944F8A4();
      v35 = sub_2293D4824(v33, v34, v64);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_2293D1000, v25, v26, "[%{public}s] Error trying to fetch data from local kvd: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v28, -1, -1);
      MEMORY[0x22AACCC00](v27, -1, -1);
    }

    v36 = [v6 localizedDescription];
    v37 = sub_22944F894();
    v39 = v38;

    sub_2294491CC();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    swift_willThrow();
    goto LABEL_19;
  }

  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v51 = sub_22944F174();
  __swift_project_value_buffer(v51, qword_2813DBFB8);
  v52 = sub_22944F154();
  v53 = sub_22944FA84();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v64[0] = v55;
    *v54 = 136446210;
    v56 = sub_22944FF44();
    v58 = sub_2293D4824(v56, v57, v64);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_2293D1000, v52, v53, "[%{public}s] No data persisted locally", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x22AACCC00](v55, -1, -1);
    MEMORY[0x22AACCC00](v54, -1, -1);
  }

  v5 = 0;
LABEL_26:
  v59 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.init(model:)(void *a1)
{
  v55 = sub_22944F5A4();
  v53 = *(v55 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22944F7D4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v13 = v12;
  v50 = *(v12 - 8);
  v14 = *(v50 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v51 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v51)
  {
    v47 = a1;
    v19 = [a1 pregnancyModeSetupCompletionSet];
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A84(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    v20 = sub_22944F9B4();

    v21 = sub_229435B90(v20);
    v46 = v1;

    v22 = type metadata accessor for CoherentExperienceSetupRecordDatabaseWrapper(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v54 = swift_allocObject();
    sub_2293DB9D8();
    sub_22943ABE0(&qword_2813DBF70, sub_2293DB9D8);
    sub_22943ABE0(&qword_2813DBF68, sub_2293DB9D8);
    sub_22944F544();
    *&v11[*(v8 + 20)] = MEMORY[0x277D84F98];
    sub_22944F7C4();
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase);
    v25 = sub_22944F744();
    MEMORY[0x28223BE20](v25);
    *(&v46 - 2) = v21;
    v26 = v13;
    v27 = v46;
    sub_22944F724();
    v11 = v27;
    if (!v27)
    {
      v28 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
      v29 = v50;
      v30 = v54;
      (*(v50 + 32))(v54 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule, v18, v26);

      sub_22944F7B4();
      v31 = sub_22944F7A4();
      v32 = v52;
      v33 = v53;
      (*(v53 + 104))(v52, *MEMORY[0x277CFB5F0], v55);
      swift_beginAccess();
      v34 = v30 + v28;
      v35 = v49;
      (*(v29 + 16))(v49, v34, v26);
      v36 = sub_22944F6F4();
      v37 = v35;
      v39 = v38;
      (*(v29 + 8))(v37, v26);
      v40 = v32;
      v41 = sub_22944EF84();
      sub_22943A0D8(v36, v39);
      v42 = v51;
      [v51 setMenstrualCyclesExperienceModelData_];

      (*(v33 + 8))(v40, v55);
      return v42;
    }
  }

  else
  {
    __break(1u);
  }

  v44 = *(*v54 + 48);
  v45 = *(*v54 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_2293DB818()
{
  if (!qword_2813DBF50)
  {
    type metadata accessor for CoherentExperienceSetupRecordDatabase(255);
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase);
    v0 = sub_22944F734();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF50);
    }
  }
}

uint64_t sub_2293DB8CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2293DB924(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2293DB96C()
{
  result = qword_2813DBE38;
  if (!qword_2813DBE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBE38);
  }

  return result;
}

void sub_2293DB9D8()
{
  if (!qword_2813DBF60)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_2293D5C5C(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord);
    v0 = sub_22944F5C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF60);
    }
  }
}

void sub_2293DBA80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2293DBB38(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_2293DBB58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2293DB9D8();
    v7 = v6;
    v8 = sub_2293D5C5C(&qword_2813DBF70, sub_2293DB9D8);
    v9 = sub_2293D5C5C(&qword_2813DBF68, sub_2293DB9D8);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2293DBC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2293DBB38(0);
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

uint64_t sub_2293DBCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7B0](a1, a2, v4);
}

uint64_t sub_2293DBD78()
{
  if (qword_2813DC160 != -1)
  {
    swift_once();
  }

  v0 = qword_2813DD238;

  return v0;
}

uint64_t sub_2293DBE04(uint64_t a1, uint64_t a2)
{
  sub_2293DC254(0, &qword_2813DBF48, MEMORY[0x277CFB7B8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = v31 - v6;
  v35 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v34 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  sub_2293DB9D8();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v37[0] = MEMORY[0x277D84F90];
    v31[0] = a1;
    sub_22943F24C(0, v18, 0);
    v19 = v37[0];
    v20 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    v31[2] = v14 + 32;
    v32 = v21;
    do
    {
      sub_229445C70(v20, v12);
      v22 = v34;
      sub_229445C70(v12, v34);
      v23 = sub_22944F7D4();
      v24 = v36;
      (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
      v25 = sub_2293DB924(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord);

      MEMORY[0x22AACB440](v26, v22, v24, v35, v25);
      sub_229445FCC(v12, type metadata accessor for CoherentExperienceSetupRecord);
      v37[0] = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22943F24C(v27 > 1, v28 + 1, 1);
        v19 = v37[0];
      }

      *(v19 + 16) = v28 + 1;
      (*(v14 + 32))(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v17, v33);
      v20 += v32;
      --v18;
    }

    while (v18);
  }

  swift_getKeyPath();
  v37[5] = v19;
  v29 = sub_22944F704();
  sub_2293DBB38(0);
  sub_2293DC2B8(0);
  sub_2293DB924(&qword_2813DBF28, sub_2293DC2B8);
  sub_22944F504();
  v29(v37, 0);
}

void sub_2293DC254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2293DC2EC(uint64_t a1)
{
  v2 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7D8](a1, v2);
}

uint64_t sub_2293DC3FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22944F894();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2293DC428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2293DC488()
{
  v1 = *(v0 + 16);
  sub_2293D7574(0);
  v16 = v1;
  v17 = *(*(v2 - 8) + 80);
  v3 = (v17 + 48) & ~v17;
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v10 = (*(v6 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v0 + 40);

  v12 = sub_22944F054();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3, 1, v12))
  {
    (*(v13 + 8))(v0 + v3, v12);
  }

  (*(v7 + 8))(v0 + v9, v16);
  if (*(v0 + v10))
  {
    v14 = *(v0 + v10 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | v8 | 7);
}

uint64_t sub_2293DC68C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22942B554();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_22942B5AC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_22942B6F0();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_22942B750(0, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_22942B8A4();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[11]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

void sub_2293DC928(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22942B554();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_22942B5AC();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        sub_22942B6F0();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          sub_22942B750(0, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[9];
          }

          else
          {
            sub_22942B8A4();
            if (*(*(v19 - 8) + 84) != a3)
            {
              *(a1 + a4[11]) = (a2 - 1);
              return;
            }

            v10 = v19;
            v14 = *(v19 - 8);
            v15 = a4[10];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2293DCBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22944F054();
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

uint64_t sub_2293DCC7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22944F054();
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

uint64_t sub_2293DCD64(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22944F134();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2293DCE10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22944F134();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2293DCEB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293DCF04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2293DCF4C()
{
  MEMORY[0x22AACCC90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293DCF84()
{
  MEMORY[0x22AACCC90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2293DCFBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id OUTLINED_FUNCTION_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2293DD7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293DE674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_2293E1914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293E3844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293E4F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293E5588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293E78A8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x3F8], 8);
  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x458], 8);
  _Block_object_dispose(&STACK[0x478], 8);
  _Block_object_dispose(&STACK[0x498], 8);
  _Unwind_Resume(a1);
}

id _UserCharacteristicOfType(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 userCharacteristicsManager];
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v3];
  v10 = 0;
  v6 = [v4 userCharacteristicForType:v5 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      _UserCharacteristicOfType_cold_1();
    }
  }

  return v6;
}

uint64_t _UserCharacteristicModificationDayOfType(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 userCharacteristicsManager];
  v8 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v5];
  v14 = 0;
  v9 = [v7 modificationDateForCharacteristicWithType:v8 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      _UserCharacteristicModificationDayOfType_cold_1();
    }
  }

  v12 = [v9 hk_dayIndexWithCalendar:v6];

  return v12;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_2_1(id a1, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;

  return a1;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = result;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v3;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2293EA66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293ED06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_6_0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_2293F2D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293F334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293F5268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void sub_2293F685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_3_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

void sub_2293FAB3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHDMCOvulationConfirmationNotificationState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"FeatureOff";
  }

  else
  {
    return off_27865AE80[a1 - 1];
  }
}

void sub_2293FC734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2293FD748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293FE3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293FFDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229403FC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2294046C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2294048A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27865A678, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22940527C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void sub_229406448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22940DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22940EDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t HDMCPregnancyStateQueryServer.objectTypes.getter()
{
  sub_2293D3AA0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229454440;
  sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x22AACB900](*MEMORY[0x277CCBA68]);
  sub_2293D3B3C(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

id HDMCPregnancyStateQueryServer.__allocating_init(uuid:configuration:client:delegate:pregnancyManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = [a3 profile];
  v14 = [v13 profileExtensionWithIdentifier_];

  if (v14)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
    v15 = swift_dynamicCast();
    v16 = v22;
    if (!v15)
    {
      v16 = 0;
    }
  }

  else
  {
    sub_229415AF0(v26);
    v16 = 0;
  }

  *&v12[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_profileExtension] = v16;
  *&v12[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager] = a5;
  v17 = a5;
  v18 = sub_22944F074();
  v23.receiver = v12;
  v23.super_class = v6;
  v19 = objc_msgSendSuper2(&v23, sel_initWithUUID_configuration_client_delegate_, v18, a2, a3, a4);

  swift_unknownObjectRelease();
  v20 = sub_22944F0B4();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

id HDMCPregnancyStateQueryServer.init(uuid:configuration:client:delegate:pregnancyManager:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = [a3 profile];
  v14 = [v13 profileExtensionWithIdentifier_];

  if (v14)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
    v15 = swift_dynamicCast();
    v16 = v22;
    if (!v15)
    {
      v16 = 0;
    }
  }

  else
  {
    sub_229415AF0(v26);
    v16 = 0;
  }

  *&v6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_profileExtension] = v16;
  *&v6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager] = a5;
  v17 = a5;
  v18 = sub_22944F074();
  v23.receiver = v6;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, sel_initWithUUID_configuration_client_delegate_, v18, a2, a3, a4);

  swift_unknownObjectRelease();
  v20 = sub_22944F0B4();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

Swift::Void __swiftcall HDMCPregnancyStateQueryServer._queue_stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager);
  [*(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers) unregisterObserver_];
  v2 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers);

  [v2 unregisterObserver_];
}

id HDMCPregnancyStateQueryServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_229415668(uint64_t a1, id *a2)
{
  result = sub_22944F874();
  *a2 = 0;
  return result;
}

uint64_t sub_2294156E0(uint64_t a1, id *a2)
{
  v3 = sub_22944F884();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_229415760@<X0>(uint64_t *a1@<X8>)
{
  sub_22944F894();
  v2 = sub_22944F864();

  *a1 = v2;
  return result;
}

uint64_t sub_2294157A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22944F864();

  *a2 = v5;
  return result;
}

uint64_t sub_2294157EC(uint64_t a1)
{
  v2 = sub_229415CA4(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v3 = sub_229415CA4(&qword_27D86E508, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2294158A8(uint64_t a1)
{
  v2 = sub_229415CA4(&qword_27D86E4F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v3 = sub_229415CA4(&qword_27D86E4F8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_229415964()
{
  v1 = *v0;
  v2 = sub_22944F894();
  v3 = MEMORY[0x22AACB760](v2);

  return v3;
}

uint64_t sub_2294159A0()
{
  v1 = *v0;
  sub_22944F894();
  sub_22944F8C4();
}

uint64_t sub_2294159F4()
{
  v1 = *v0;
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v2 = sub_22944FEE4();

  return v2;
}

uint64_t sub_229415A68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22944F894();
  v6 = v5;
  if (v4 == sub_22944F894() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22944FE24();
  }

  return v9 & 1;
}

uint64_t sub_229415AF0(uint64_t a1)
{
  sub_2293D3AA0(0, &qword_2813DBD88, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229415CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229415E1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229415E3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_229415EDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_229415F44()
{
  v1 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_229415F8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *HDMCPregnancyFeatureAdjustmentManager.__allocating_init(pregnancyManager:profile:experienceModelProvider:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  swift_getObjectType();
  v8 = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D10800]);
  v11 = a1;
  v12 = a2;
  v13 = sub_22944F864();
  v14 = [v10 initWithProfile:v12 debugIdentifier:v13 delegate:0];

  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v14;
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = 0;
  *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = 0;
  sub_229428480(v22, &v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v21.receiver = v9;
  v21.super_class = v8;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v17 = result;

    v18 = [v17 isiPad];
    if (v18)
    {
      sub_229428944(v22, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = *&v15[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v20 = v15;
      [v19 setDelegate_];
      [*&v20[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v20 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      sub_229428944(v22, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    swift_deallocPartialClassInstance();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *HDMCPregnancyFeatureAdjustmentManager.init(pregnancyManager:profile:experienceModelProvider:)(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  v6 = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  v8 = objc_allocWithZone(MEMORY[0x277D10800]);
  v9 = a1;
  v10 = a2;
  v11 = sub_22944F864();
  v12 = [v8 initWithProfile:v10 debugIdentifier:v11 delegate:0];

  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v12;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = 0;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = 0;
  sub_229428480(v20, &v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v19.receiver = v7;
  v19.super_class = v6;
  v13 = objc_msgSendSuper2(&v19, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v15 = result;

    v16 = [v15 isiPad];
    if (v16)
    {
      sub_229428944(v20, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = *&v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v18 = v13;
      [v17 setDelegate_];
      [*&v18[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v18 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      sub_229428944(v20, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    swift_deallocPartialClassInstance();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_229416768(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v92 = a1;
  v93 = a3;
  ObjectType = swift_getObjectType();
  v88 = sub_22944F0B4();
  v84 = *(v88 - 8);
  v7 = *(v84 + 64);
  v8 = MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v80 - v10;
  v11 = sub_22944F054();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v80 - v17;
  v100 = MEMORY[0x277D84FA0];
  v99 = MEMORY[0x277D84F90];
  v90 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(a2);
  sub_22944F044();
  sub_22944F034();
  v19 = [a2 pregnancyModeSetupCompletionSet];
  v20 = sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  v21 = sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v89 = v20;
  v85 = v21;
  v22 = sub_22944F9B4();

  v95 = v16;
  v96 = ObjectType;
  v91 = ObjectType;
  sub_22941F490(sub_22942B4F8, v94, v22);
  v24 = v23;
  v25 = *(v12 + 8);
  v25(v18, v11);
  v83 = v11;
  v25(v16, v11);
  v101 = v90;
  v26 = v92;
  sub_229423E54(v24);
  sub_22941CC08(v101, v26, v93);

  sub_2294364B8();
  v27 = sub_22944320C();

  v82 = v4;
  v28 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(v27);
  sub_22944F044();
  sub_22944F034();
  v81 = v27;
  v29 = [v27 pregnancyModeSetupCompletionSet];
  v30 = sub_22944F9B4();

  MEMORY[0x28223BE20](v31);
  v32 = v91;
  *(&v80 - 2) = v16;
  *(&v80 - 1) = v32;
  sub_22941F490(sub_22942B4F8, (&v80 - 4), v30);
  v34 = v33;
  v35 = v83;
  v25(v18, v83);
  v25(v16, v35);
  v101 = v28;
  sub_229423E54(v34);
  v36 = sub_22944919C(v101);

  if ((v36 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    v37 = v89;
    sub_22944FA04();
    v36 = v101;
    v38 = v102;
    v39 = v103;
    v40 = v104;
    v41 = v105;
  }

  else
  {
    v40 = 0;
    v42 = -1 << *(v36 + 32);
    v38 = v36 + 56;
    v39 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v41 = v44 & *(v36 + 56);
    v37 = v89;
  }

  v85 = v39;
  v45 = (v39 + 64) >> 6;
  v90 = (v84 + 8);
  v46 = MEMORY[0x277D84F90];
LABEL_8:
  v89 = v46;
  while (v36 < 0)
  {
    v53 = sub_22944FC04();
    if (!v53)
    {
      goto LABEL_25;
    }

    v97 = v53;
    swift_dynamicCast();
    v52 = v98[0];
    if (!v98[0])
    {
      goto LABEL_25;
    }

LABEL_19:
    v54 = [v52 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v55 = sub_22944F9B4();

    v56 = *(v55 + 16);

    if (v56)
    {
      v57 = _s27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManagerC10cleanDates4fromSo38HKMCPregnancyModeSetupCompletionRecordCAG_tF_0(v52);
      if ((sub_22944FB04() & 1) == 0)
      {
        v58 = v57;
        MEMORY[0x22AACB780]();
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22944F954();
        }

        sub_22944F974();

        v46 = v99;
        goto LABEL_8;
      }
    }

    else
    {
      v47 = [v52 sampleUUID];
      v48 = v87;
      sub_22944F094();

      v49 = v86;
      sub_229424114(v86, v48);

      (*v90)(v49, v88);
    }
  }

  v50 = v40;
  v51 = v41;
  if (!v41)
  {
    while (1)
    {
      v40 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v40 >= v45)
      {
        goto LABEL_25;
      }

      v51 = *(v38 + 8 * v40);
      ++v50;
      if (v51)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_15:
  v41 = (v51 - 1) & v51;
  v52 = *(*(v36 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v51)))));
  if (v52)
  {
    goto LABEL_19;
  }

LABEL_25:
  sub_229429864();
  v38 = v89;
  v37 = v89 >> 62;
  if (!(v89 >> 62))
  {
    v61 = v92;
    v60 = v93;
    if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_46:
  v79 = sub_22944FBD4();
  v61 = v92;
  v60 = v93;
  if (!v79)
  {
    goto LABEL_36;
  }

LABEL_27:
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v62 = sub_22944F174();
    __swift_project_value_buffer(v62, qword_2813DBFB8);
    swift_bridgeObjectRetain_n();
    v63 = sub_22944F154();
    v64 = sub_22944FA84();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v98[0] = v66;
      *v65 = 136315394;
      v67 = sub_22944FF44();
      v69 = sub_2293D4824(v67, v68, v98);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2048;
      v38 = v89;
      if (v37)
      {
        v70 = sub_22944FBD4();
      }

      else
      {
        v70 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v65 + 14) = v70;

      _os_log_impl(&dword_2293D1000, v63, v64, "[%s] Cleaning %ld records", v65, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x22AACCC00](v66, -1, -1);
      MEMORY[0x22AACCC00](v65, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  sub_22941DC8C(v38, v60, v61);
LABEL_36:

  if (*(v100 + 16))
  {
    sub_229428B04(v100, v60, v61);
  }

  else
  {

    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v71 = sub_22944F174();
      __swift_project_value_buffer(v71, qword_2813DBFB8);
      v72 = sub_22944F154();
      v73 = sub_22944FA84();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v98[0] = v75;
        *v74 = 136315138;
        v76 = sub_22944FF44();
        v78 = sub_2293D4824(v76, v77, v98);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_2293D1000, v72, v73, "[%s] No records meeting the deletion requirements", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        MEMORY[0x22AACCC00](v75, -1, -1);
        MEMORY[0x22AACCC00](v74, -1, -1);
      }
    }
  }
}

void HDMCPregnancyFeatureAdjustmentManager.cleanUpRecords<A>(experienceStore:experienceModel:codableExperienceModel:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v97 = a4;
  v98 = a5;
  v99 = a1;
  v100 = a3;
  ObjectType = swift_getObjectType();
  v93 = sub_22944F0B4();
  v89 = *(v93 - 8);
  v9 = *(v89 + 64);
  v10 = MEMORY[0x28223BE20](v93);
  v92 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v85 - v12;
  v13 = sub_22944F054();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v85 - v19;
  v107 = MEMORY[0x277D84FA0];
  v106 = MEMORY[0x277D84F90];
  v95 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(a2);
  sub_22944F044();
  sub_22944F034();
  v21 = [a2 pregnancyModeSetupCompletionSet];
  v22 = sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  v23 = sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v94 = v22;
  v90 = v23;
  v24 = sub_22944F9B4();

  v102 = v18;
  v103 = ObjectType;
  v96 = ObjectType;
  sub_22941F490(sub_229428924, v101, v24);
  v26 = v25;
  v27 = *(v14 + 8);
  v27(v20, v13);
  v88 = v13;
  v87 = v14 + 8;
  v27(v18, v13);
  v108 = v95;
  sub_229423E54(v26);
  HDMCPregnancyFeatureAdjustmentManager.updateRecordsForManualFeatureAdjustments<A>(records:experienceStore:codableExperienceModel:)(v108, v99, v100, v97);

  sub_2294364B8();
  v28 = sub_22944320C();

  v86 = v6;
  v29 = HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(v28);
  sub_22944F044();
  sub_22944F034();
  v85 = v28;
  v30 = [v28 pregnancyModeSetupCompletionSet];
  v31 = sub_22944F9B4();

  MEMORY[0x28223BE20](v32);
  v33 = v96;
  *(&v85 - 2) = v18;
  *(&v85 - 1) = v33;
  sub_22941F490(sub_22942B4F8, (&v85 - 4), v31);
  v35 = v34;
  v36 = v88;
  v27(v20, v88);
  v27(v18, v36);
  v108 = v29;
  sub_229423E54(v35);
  v37 = sub_22944919C(v108);

  if ((v37 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    sub_22944FA04();
    v37 = v108;
    v38 = v109;
    v39 = v110;
    v40 = v111;
    v41 = v112;
  }

  else
  {
    v40 = 0;
    v42 = -1 << *(v37 + 32);
    v38 = v37 + 56;
    v39 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v41 = v44 & *(v37 + 56);
  }

  v90 = v39;
  v45 = (v39 + 64) >> 6;
  v95 = (v89 + 8);
  v46 = MEMORY[0x277D84F90];
LABEL_8:
  v94 = v46;
  while (1)
  {
    v50 = v40;
    if ((v37 & 0x8000000000000000) == 0)
    {
      break;
    }

    v54 = sub_22944FC04();
    if (!v54)
    {
      goto LABEL_25;
    }

    v104 = v54;
    swift_dynamicCast();
    v53 = v105[0];
    if (!v105[0])
    {
      goto LABEL_25;
    }

LABEL_19:
    v55 = [v53 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v56 = sub_22944F9B4();

    v57 = *(v56 + 16);

    if (v57)
    {
      v58 = _s27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManagerC10cleanDates4fromSo38HKMCPregnancyModeSetupCompletionRecordCAG_tF_0(v53);
      if ((sub_22944FB04() & 1) == 0)
      {
        v59 = v58;
        MEMORY[0x22AACB780]();
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22944F954();
        }

        sub_22944F974();

        v46 = v106;
        goto LABEL_8;
      }
    }

    else
    {
      v47 = [v53 sampleUUID];
      v48 = v92;
      sub_22944F094();

      v49 = v91;
      sub_229424114(v91, v48);

      (*v95)(v49, v93);
    }
  }

  v51 = v40;
  v52 = v41;
  if (!v41)
  {
    while (1)
    {
      v40 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v40 >= v45)
      {
        goto LABEL_25;
      }

      v52 = *(v38 + 8 * v40);
      ++v51;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_15:
  v41 = (v52 - 1) & v52;
  v53 = *(*(v37 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v52)))));
  if (v53)
  {
    goto LABEL_19;
  }

LABEL_25:
  sub_229429864();
  v40 = v94;
  v50 = v94 >> 62;
  if (!(v94 >> 62))
  {
    v61 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_27;
  }

LABEL_47:
  v61 = sub_22944FBD4();
LABEL_27:
  v63 = v97;
  v62 = v98;
  v64 = v86;
  v65 = v99;
  v66 = v100;
  if (v61)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v67 = sub_22944F174();
      __swift_project_value_buffer(v67, qword_2813DBFB8);
      swift_bridgeObjectRetain_n();
      v68 = sub_22944F154();
      v69 = sub_22944FA84();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v105[0] = v71;
        *v70 = 136315394;
        v72 = sub_22944FF44();
        v74 = sub_2293D4824(v72, v73, v105);

        *(v70 + 4) = v74;
        *(v70 + 12) = 2048;
        if (v50)
        {
          v75 = v94;
          v76 = sub_22944FBD4();
        }

        else
        {
          v75 = v94;
          v76 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = v100;

        *(v70 + 14) = v76;

        _os_log_impl(&dword_2293D1000, v68, v69, "[%s] Cleaning %ld records", v70, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x22AACCC00](v71, -1, -1);
        MEMORY[0x22AACCC00](v70, -1, -1);

        v65 = v99;
        v40 = v75;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    HDMCPregnancyFeatureAdjustmentManager.updateExperienceModel<A>(with:updatedCodableExperienceModel:experienceStore:)(v40, v66, v65, v63);
  }

  if (*(v107 + 16))
  {
    sub_2294291B8(v107, v66, v65, v64, v63, v62);
  }

  else
  {

    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v77 = sub_22944F174();
      __swift_project_value_buffer(v77, qword_2813DBFB8);
      v78 = sub_22944F154();
      v79 = sub_22944FA84();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v105[0] = v81;
        *v80 = 136315138;
        v82 = sub_22944FF44();
        v84 = sub_2293D4824(v82, v83, v105);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_2293D1000, v78, v79, "[%s] No records meeting the deletion requirements", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v81);
        MEMORY[0x22AACCC00](v81, -1, -1);
        MEMORY[0x22AACCC00](v80, -1, -1);
      }
    }
  }
}

void sub_229417FF8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void), void (*a6)(void))
{
  v206 = a6;
  v207 = a5;
  v202 = a2;
  v203 = a4;
  ObjectType = swift_getObjectType();
  sub_22942A804();
  v193 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v195 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22944F054();
  v13 = *(v12 - 8);
  v200 = v12;
  v201 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v198 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v199 = &v186 - v17;
  sub_2293D7574(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v194 = &v186 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v197 = &v186 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v196 = &v186 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v186 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v186 - v32;
  v34 = sub_22944F0B4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v6;
  v208 = sub_22941B6F8();
  if (!v208 || (v39 = [v208 objectForKeyedSubscript_], v40 = objc_msgSend(v39, sel_areAllRequirementsSatisfied), v39, !v40))
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v50 = sub_22944F174();
      __swift_project_value_buffer(v50, qword_2813DBFB8);
      v42 = sub_22944F154();
      v43 = sub_22944FA84();
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_15;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v209[0] = v45;
      *v44 = 136315138;
      v51 = sub_22944FF44();
      v53 = sub_2293D4824(v51, v52, v209);

      *(v44 + 4) = v53;
      v49 = "[%s] LCF Notifications are either not available or currently active. Not making adjustment";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([a1 state] == 1)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v41 = sub_22944F174();
      __swift_project_value_buffer(v41, qword_2813DBFB8);
      v42 = sub_22944F154();
      v43 = sub_22944FA84();
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_15;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v209[0] = v45;
      *v44 = 136315138;
      v46 = sub_22944FF44();
      v48 = sub_2293D4824(v46, v47, v209);

      *(v44 + 4) = v48;
      v49 = "[%s] Pregnancy state is ongoing. Not making adjustment";
LABEL_14:
      _os_log_impl(&dword_2293D1000, v42, v43, v49, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x22AACCC00](v45, -1, -1);
      MEMORY[0x22AACCC00](v44, -1, -1);
LABEL_15:
    }

LABEL_16:
    v207();
LABEL_17:
    v54 = v208;

    return;
  }

  if (![a1 state])
  {
    sub_22942986C(*MEMORY[0x277D11930], a3);
    if (v92 >> 62)
    {
      v180 = v92;
      v181 = sub_22944FBD4();
      v92 = v180;
      if (v181)
      {
        goto LABEL_37;
      }
    }

    else if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_37:
      sub_22941B9A8(v92, v202, v203, v207, v206);

      return;
    }

    if ((HKShowSensitiveLogItems() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v182 = sub_22944F174();
    __swift_project_value_buffer(v182, qword_2813DBFB8);
    v42 = sub_22944F154();
    v43 = sub_22944FA84();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_15;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v209[0] = v45;
    *v44 = 136315138;
    v183 = sub_22944FF44();
    v185 = sub_2293D4824(v183, v184, v209);

    *(v44 + 4) = v185;
    v49 = "[%s] Pregnancy state is none and we don't have any setup records needing an update. Not making adjustment";
    goto LABEL_14;
  }

  if ([a1 state] != 2)
  {
    goto LABEL_17;
  }

  v55 = [a1 sample];
  if (!v55)
  {
    if ((HKShowSensitiveLogItems() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v93 = sub_22944F174();
    __swift_project_value_buffer(v93, qword_2813DBFB8);
    v42 = sub_22944F154();
    v43 = sub_22944FA64();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_15;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v209[0] = v45;
    *v44 = 136315138;
    v94 = sub_22944FF44();
    v96 = sub_2293D4824(v94, v95, v209);

    *(v44 + 4) = v96;
    v49 = "[%s] Pregnancy state is in post pregnancy but we do not have a sample. This should not happen. Not making adjustment";
    goto LABEL_14;
  }

  v192 = v55;
  v56 = [v55 UUID];
  sub_22944F094();

  v57 = [a3 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v58 = sub_22944F9B4();

  MEMORY[0x28223BE20](v59);
  *(&v186 - 2) = v38;
  sub_22941EDE4(sub_22942B514, (&v186 - 4), v58);
  v61 = v60;

  (*(v35 + 8))(v38, v34);
  if (!v61)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v97 = sub_22944F174();
      __swift_project_value_buffer(v97, qword_2813DBFB8);
      v98 = sub_22944F154();
      v99 = sub_22944FA84();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v209[0] = v101;
        *v100 = 136315138;
        v102 = sub_22944FF44();
        v104 = sub_2293D4824(v102, v103, v209);

        *(v100 + 4) = v104;
        _os_log_impl(&dword_2293D1000, v98, v99, "[%s] Pregnancy state is in post pregnancy but we do not have a corresponding setup record, not making adjustment", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v101);
        MEMORY[0x22AACCC00](v101, -1, -1);
        MEMORY[0x22AACCC00](v100, -1, -1);
      }
    }

    v207();

    return;
  }

  v191 = v61;
  v62 = [v61 pregnancyAdjustedFeaturesSet];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v63 = sub_22944F9B4();

  v64 = *MEMORY[0x277D11930];
  LOBYTE(v62) = sub_22941BFE8(*MEMORY[0x277D11930], v63);

  v65 = v200;
  if ((v62 & 1) == 0)
  {
    v66 = [v191 postPregnancyFeatureAdjustmentCompletionLog];
    v67 = sub_22944F7F4();

    if (!*(v67 + 16) || (v68 = sub_22942707C(v64), (v69 & 1) == 0))
    {

      (*(v201 + 56))(v33, 1, 1, v65);
      sub_2293D83E8(v33, sub_2293D7574);
      v105 = HKShowSensitiveLogItems();
      v106 = v191;
      if (v105)
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v107 = sub_22944F174();
        __swift_project_value_buffer(v107, qword_2813DBFB8);
        v108 = sub_22944F154();
        v109 = sub_22944FA84();
        if (!os_log_type_enabled(v108, v109))
        {
          goto LABEL_66;
        }

        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v209[0] = v111;
        *v110 = 136315138;
        v112 = sub_22944FF44();
        v114 = sub_2293D4824(v112, v113, v209);

        *(v110 + 4) = v114;
        v115 = "[%s] Does not require the cardio fitness adjustment, not making adjustment";
        goto LABEL_65;
      }

LABEL_67:
      v207();

      return;
    }

    v70 = v201;
    (*(v201 + 16))(v33, *(v67 + 56) + *(v201 + 72) * v68, v65);

    (*(v70 + 56))(v33, 0, 1, v65);
    sub_2293D83E8(v33, sub_2293D7574);
  }

  v71 = [a1 physiologicalWashoutEndDate];
  if (!v71)
  {
LABEL_58:
    v106 = v191;
    v116 = [v191 postPregnancyFeatureAdjustmentCompletionLog];
    v117 = sub_22944F7F4();

    if (!*(v117 + 16) || (v118 = sub_22942707C(v64), (v119 & 1) == 0))
    {

      (*(v201 + 56))(v22, 1, 1, v65);
      sub_2293D83E8(v22, sub_2293D7574);
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v126 = sub_22944F174();
        __swift_project_value_buffer(v126, qword_2813DBFB8);
        v127 = sub_22944F154();
        v128 = sub_22944FA84();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v209[0] = v130;
          *v129 = 136315138;
          v131 = sub_22944FF44();
          v133 = sub_2293D4824(v131, v132, v209);

          *(v129 + 4) = v133;
          _os_log_impl(&dword_2293D1000, v127, v128, "[%s)] Physiological washout date has passed, but we have not yet adjusted features, making adjustment", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v130);
          v134 = v130;
          v106 = v191;
          MEMORY[0x22AACCC00](v134, -1, -1);
          MEMORY[0x22AACCC00](v129, -1, -1);
        }
      }

      sub_2293D3AF0(0, &qword_2813DBDA0);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_229454440;
      *(v135 + 32) = v106;
      v136 = v106;
      sub_22941B9A8(v135, v202, v203, v207, v206);

      return;
    }

    v120 = v201;
    (*(v201 + 16))(v22, *(v117 + 56) + *(v201 + 72) * v118, v65);

    (*(v120 + 56))(v22, 0, 1, v65);
    sub_2293D83E8(v22, sub_2293D7574);
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v121 = sub_22944F174();
      __swift_project_value_buffer(v121, qword_2813DBFB8);
      v108 = sub_22944F154();
      v109 = sub_22944FA84();
      if (!os_log_type_enabled(v108, v109))
      {
        goto LABEL_66;
      }

      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v209[0] = v111;
      *v110 = 136315138;
      v122 = sub_22944FF44();
      v124 = sub_2293D4824(v122, v123, v209);

      *(v110 + 4) = v124;
      v115 = "[%s] Physiological washout date has passed, and we have a post pregnancy adjustment date. No more work needed here.";
LABEL_65:
      _os_log_impl(&dword_2293D1000, v108, v109, v115, v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      v125 = v111;
      v106 = v191;
      MEMORY[0x22AACCC00](v125, -1, -1);
      MEMORY[0x22AACCC00](v110, -1, -1);
LABEL_66:

      goto LABEL_67;
    }

    goto LABEL_67;
  }

  v190 = v64;
  v72 = v199;
  v73 = v71;
  sub_22944F014();

  v74 = v198;
  sub_22944F044();
  LOBYTE(v73) = sub_22944EFE4();
  v76 = v201 + 8;
  v75 = *(v201 + 8);
  v75(v74, v65);
  if ((v73 & 1) == 0)
  {
    v75(v72, v65);
    v64 = v190;
    goto LABEL_58;
  }

  v188 = v76;
  v189 = v75;
  v77 = [v191 postPregnancyFeatureAdjustmentCompletionLog];
  v78 = sub_22944F7F4();

  if (*(v78 + 16))
  {
    v79 = sub_22942707C(v190);
    if (v80)
    {
      v81 = *(v78 + 56);
      v82 = v201;
      v186 = *(v201 + 72);
      v83 = v191;
      v187 = *(v201 + 16);
      v187(v31, v81 + v186 * v79, v65);

      v84 = v65;
      v85 = *(v82 + 56);
      v86 = 1;
      v85(v31, 0, 1, v84);
      sub_2293D83E8(v31, sub_2293D7574);
      v87 = [v83 postPregnancyFeatureAdjustmentCompletionLog];
      v88 = sub_22944F7F4();

      if (*(v88 + 16))
      {
        v89 = sub_22942707C(v190);
        v90 = v197;
        if (v91)
        {
          v187(v196, *(v88 + 56) + v89 * v186, v200);
          v86 = 0;
        }
      }

      else
      {
        v90 = v197;
      }

      v148 = v196;
      v149 = v86;
      v150 = v200;
      v85(v196, v149, 1, v200);
      sub_22944EFA4();
      v85(v90, 0, 1, v150);
      v151 = v150;
      v152 = *(v193 + 48);
      v153 = v195;
      sub_22942A888(v148, v195);
      sub_22942A888(v90, v153 + v152);
      v154 = *(v201 + 48);
      v155 = v154(v153, 1, v150);
      v156 = v194;
      if (v155 == 1)
      {
        sub_2293D83E8(v90, sub_2293D7574);
        sub_2293D83E8(v148, sub_2293D7574);
        if (v154(v153 + v152, 1, v150) == 1)
        {
          sub_2293D83E8(v153, sub_2293D7574);
LABEL_97:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v172 = sub_22944F174();
            __swift_project_value_buffer(v172, qword_2813DBFB8);
            v173 = sub_22944F154();
            v174 = sub_22944FA84();
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              v176 = swift_slowAlloc();
              v209[0] = v176;
              *v175 = 136315138;
              v177 = sub_22944FF44();
              v179 = sub_2293D4824(v177, v178, v209);

              *(v175 + 4) = v179;
              v151 = v200;
              _os_log_impl(&dword_2293D1000, v173, v174, "[%s] Physiological washout date has not yet passed, but the user has adjusted their notifications to be on again", v175, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v176);
              MEMORY[0x22AACCC00](v176, -1, -1);
              MEMORY[0x22AACCC00](v175, -1, -1);
            }
          }

          v207();

LABEL_104:
          v189(v199, v151);
          return;
        }
      }

      else
      {
        sub_22942A888(v153, v194);
        if (v154(v153 + v152, 1, v150) != 1)
        {
          v168 = v198;
          (*(v201 + 32))(v198, v153 + v152, v150);
          sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578]);
          v169 = sub_22944F854();
          v170 = v168;
          v171 = v189;
          v189(v170, v151);
          sub_2293D83E8(v197, sub_2293D7574);
          sub_2293D83E8(v148, sub_2293D7574);
          v171(v156, v151);
          sub_2293D83E8(v153, sub_2293D7574);
          if (v169)
          {
            goto LABEL_97;
          }

LABEL_89:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v157 = sub_22944F174();
            __swift_project_value_buffer(v157, qword_2813DBFB8);
            v158 = sub_22944F154();
            v159 = sub_22944FA84();
            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v209[0] = v161;
              *v160 = 136315138;
              v162 = sub_22944FF44();
              v164 = sub_2293D4824(v162, v163, v209);

              *(v160 + 4) = v164;
              v151 = v200;
              _os_log_impl(&dword_2293D1000, v158, v159, "[%s)] Physiological washout date has not passed, but we have an adjustment date! We made a mistake - reverting adjustment", v160, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v161);
              MEMORY[0x22AACCC00](v161, -1, -1);
              MEMORY[0x22AACCC00](v160, -1, -1);
            }
          }

          sub_2293D3AF0(0, &qword_2813DBDA0);
          v165 = swift_allocObject();
          *(v165 + 16) = xmmword_229454440;
          v166 = v191;
          *(v165 + 32) = v191;
          v167 = v166;
          sub_22941C13C(v165, v202, v203, v207, v206);

          goto LABEL_104;
        }

        sub_2293D83E8(v197, sub_2293D7574);
        sub_2293D83E8(v148, sub_2293D7574);
        v189(v156, v150);
      }

      sub_2293D83E8(v153, sub_22942A804);
      goto LABEL_89;
    }
  }

  (*(v201 + 56))(v31, 1, 1, v65);
  sub_2293D83E8(v31, sub_2293D7574);
  v137 = HKShowSensitiveLogItems();
  v138 = v191;
  if (v137)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v139 = sub_22944F174();
    __swift_project_value_buffer(v139, qword_2813DBFB8);
    v140 = sub_22944F154();
    v141 = sub_22944FA84();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v209[0] = v143;
      *v142 = 136315138;
      v144 = sub_22944FF44();
      v146 = sub_2293D4824(v144, v145, v209);
      v72 = v199;

      *(v142 + 4) = v146;
      v65 = v200;
      _os_log_impl(&dword_2293D1000, v140, v141, "[%s] Physiological washout date has not yet passed, and we do not have a post pregnancy adjustment date. No adjustment needed yet.", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v143);
      v147 = v143;
      v138 = v191;
      MEMORY[0x22AACCC00](v147, -1, -1);
      MEMORY[0x22AACCC00](v142, -1, -1);
    }
  }

  v207();

  v189(v72, v65);
}

void HDMCPregnancyFeatureAdjustmentManager.updateCardioFitnessSettingsIfNecessary<A>(for:experienceStore:experienceModel:codableExperienceModel:completion:)(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void), void (*a6)(void), uint64_t a7, char *a8)
{
  v198 = a7;
  v199 = a8;
  v202 = a6;
  v203 = a5;
  v196 = a2;
  v197 = a4;
  ObjectType = swift_getObjectType();
  sub_22942A804();
  v188 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v190 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22944F054();
  v15 = *(v14 - 8);
  v194 = v14;
  v195 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v192 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v193 = &v180 - v19;
  sub_2293D7574(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v187 = &v180 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v191 = &v180 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v189 = &v180 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v180 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v180 - v34;
  v36 = sub_22944F0B4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v8;
  v204 = sub_22941B6F8();
  if (!v204 || (v41 = [v204 objectForKeyedSubscript_], v42 = objc_msgSend(v41, sel_areAllRequirementsSatisfied), v41, !v42))
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v52 = sub_22944F174();
      __swift_project_value_buffer(v52, qword_2813DBFB8);
      v44 = sub_22944F154();
      v45 = sub_22944FA84();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_15;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v205[0] = v47;
      *v46 = 136315138;
      v53 = sub_22944FF44();
      v55 = sub_2293D4824(v53, v54, v205);

      *(v46 + 4) = v55;
      v51 = "[%s] LCF Notifications are either not available or currently active. Not making adjustment";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if ([a1 state] == 1)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v43 = sub_22944F174();
      __swift_project_value_buffer(v43, qword_2813DBFB8);
      v44 = sub_22944F154();
      v45 = sub_22944FA84();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_15;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v205[0] = v47;
      *v46 = 136315138;
      v48 = sub_22944FF44();
      v50 = sub_2293D4824(v48, v49, v205);

      *(v46 + 4) = v50;
      v51 = "[%s] Pregnancy state is ongoing. Not making adjustment";
LABEL_14:
      _os_log_impl(&dword_2293D1000, v44, v45, v51, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x22AACCC00](v47, -1, -1);
      MEMORY[0x22AACCC00](v46, -1, -1);
LABEL_15:
    }

LABEL_16:
    v203();
LABEL_17:
    v56 = v204;

    return;
  }

  if (![a1 state])
  {
    sub_22942986C(*MEMORY[0x277D11930], a3);
    if (v93 >> 62)
    {
      v174 = v93;
      v175 = sub_22944FBD4();
      v93 = v174;
      if (v175)
      {
        goto LABEL_37;
      }
    }

    else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_37:
      sub_22941BE80(v93, v196, v197, v203, v202, v198, v199);

      return;
    }

    if (!HKShowSensitiveLogItems())
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v176 = sub_22944F174();
    __swift_project_value_buffer(v176, qword_2813DBFB8);
    v44 = sub_22944F154();
    v45 = sub_22944FA84();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_15;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v205[0] = v47;
    *v46 = 136315138;
    v177 = sub_22944FF44();
    v179 = sub_2293D4824(v177, v178, v205);

    *(v46 + 4) = v179;
    v51 = "[%s] Pregnancy state is none and we don't have any setup records needing an update. Not making adjustment";
    goto LABEL_14;
  }

  if ([a1 state] != 2)
  {
    goto LABEL_17;
  }

  v57 = [a1 sample];
  if (!v57)
  {
    if (!HKShowSensitiveLogItems())
    {
      goto LABEL_16;
    }

    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v94 = sub_22944F174();
    __swift_project_value_buffer(v94, qword_2813DBFB8);
    v44 = sub_22944F154();
    v45 = sub_22944FA64();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_15;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v205[0] = v47;
    *v46 = 136315138;
    v95 = sub_22944FF44();
    v97 = sub_2293D4824(v95, v96, v205);

    *(v46 + 4) = v97;
    v51 = "[%s] Pregnancy state is in post pregnancy but we do not have a sample. This should not happen. Not making adjustment";
    goto LABEL_14;
  }

  v186 = v57;
  v58 = [v57 UUID];
  sub_22944F094();

  v59 = [a3 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v60 = sub_22944F9B4();

  MEMORY[0x28223BE20](v61);
  *(&v180 - 2) = v40;
  sub_22941EDE4(sub_22942A868, (&v180 - 4), v60);
  v63 = v62;

  (*(v37 + 8))(v40, v36);
  if (!v63)
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v98 = sub_22944F174();
      __swift_project_value_buffer(v98, qword_2813DBFB8);
      v99 = sub_22944F154();
      v100 = sub_22944FA84();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v205[0] = v102;
        *v101 = 136315138;
        v103 = sub_22944FF44();
        v105 = sub_2293D4824(v103, v104, v205);

        *(v101 + 4) = v105;
        _os_log_impl(&dword_2293D1000, v99, v100, "[%s] Pregnancy state is in post pregnancy but we do not have a corresponding setup record, not making adjustment", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        MEMORY[0x22AACCC00](v102, -1, -1);
        MEMORY[0x22AACCC00](v101, -1, -1);
      }
    }

    v203();

    v106 = v186;
    goto LABEL_68;
  }

  v185 = v63;
  v64 = [v63 pregnancyAdjustedFeaturesSet];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v65 = sub_22944F9B4();

  v184 = *MEMORY[0x277D11930];
  LOBYTE(v64) = sub_22941BFE8(v184, v65);

  v66 = v194;
  v67 = v195;
  if ((v64 & 1) == 0)
  {
    v68 = [v185 postPregnancyFeatureAdjustmentCompletionLog];
    v69 = sub_22944F7F4();

    if (!*(v69 + 16) || (v70 = sub_22942707C(v184), (v71 & 1) == 0))
    {

      (*(v67 + 56))(v35, 1, 1, v66);
      sub_2293D83E8(v35, sub_2293D7574);
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v107 = sub_22944F174();
        __swift_project_value_buffer(v107, qword_2813DBFB8);
        v108 = sub_22944F154();
        v109 = sub_22944FA84();
        if (!os_log_type_enabled(v108, v109))
        {
          goto LABEL_66;
        }

        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v205[0] = v111;
        *v110 = 136315138;
        v112 = sub_22944FF44();
        v114 = sub_2293D4824(v112, v113, v205);

        *(v110 + 4) = v114;
        v115 = "[%s] Does not require the cardio fitness adjustment, not making adjustment";
        goto LABEL_65;
      }

LABEL_67:
      v203();

      v106 = v185;
LABEL_68:

      return;
    }

    (*(v67 + 16))(v35, *(v69 + 56) + *(v67 + 72) * v70, v66);

    (*(v67 + 56))(v35, 0, 1, v66);
    sub_2293D83E8(v35, sub_2293D7574);
  }

  v72 = [a1 physiologicalWashoutEndDate];
  if (v72)
  {
    v73 = v193;
    v74 = v72;
    sub_22944F014();

    v75 = v192;
    sub_22944F044();
    LOBYTE(v74) = sub_22944EFE4();
    v76 = *(v67 + 8);
    v183 = v67 + 8;
    v76(v75, v66);
    if (v74)
    {
      v182 = v76;
      v77 = [v185 postPregnancyFeatureAdjustmentCompletionLog];
      v78 = sub_22944F7F4();

      if (!*(v78 + 16) || (v79 = sub_22942707C(v184), (v80 & 1) == 0))
      {

        (*(v195 + 56))(v33, 1, 1, v66);
        sub_2293D83E8(v33, sub_2293D7574);
        if (HKShowSensitiveLogItems())
        {
          if (qword_2813DBFB0 != -1)
          {
            swift_once();
          }

          v135 = sub_22944F174();
          __swift_project_value_buffer(v135, qword_2813DBFB8);
          v136 = sub_22944F154();
          v137 = sub_22944FA84();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v205[0] = v139;
            *v138 = 136315138;
            v140 = sub_22944FF44();
            v142 = sub_2293D4824(v140, v141, v205);
            v66 = v194;

            *(v138 + 4) = v142;
            _os_log_impl(&dword_2293D1000, v136, v137, "[%s] Physiological washout date has not yet passed, and we do not have a post pregnancy adjustment date. No adjustment needed yet.", v138, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v139);
            v143 = v139;
            v73 = v193;
            MEMORY[0x22AACCC00](v143, -1, -1);
            MEMORY[0x22AACCC00](v138, -1, -1);
          }
        }

        v203();

        goto LABEL_107;
      }

      v81 = *(v78 + 56);
      v82 = v195;
      v180 = *(v195 + 72);
      v83 = v185;
      v181 = *(v195 + 16);
      v181(v33, v81 + v180 * v79, v66);

      v84 = *(v82 + 56);
      v85 = 1;
      v84(v33, 0, 1, v66);
      sub_2293D83E8(v33, sub_2293D7574);
      v86 = v83;
      v87 = [v83 postPregnancyFeatureAdjustmentCompletionLog];
      v88 = sub_22944F7F4();

      if (*(v88 + 16))
      {
        v89 = sub_22942707C(v184);
        v90 = v189;
        v91 = v191;
        if (v92)
        {
          v181(v189, *(v88 + 56) + v89 * v180, v194);
          v85 = 0;
        }

        else
        {
          v85 = 1;
        }

        v144 = v86;
      }

      else
      {
        v144 = v86;
        v90 = v189;
        v91 = v191;
      }

      v66 = v194;
      v84(v90, v85, 1, v194);
      sub_22944EFA4();
      v84(v91, 0, 1, v66);
      v145 = *(v188 + 48);
      v146 = v190;
      sub_22942A888(v90, v190);
      sub_22942A888(v91, v146 + v145);
      v147 = *(v195 + 48);
      if (v147(v146, 1, v66) == 1)
      {
        sub_2293D83E8(v91, sub_2293D7574);
        sub_2293D83E8(v90, sub_2293D7574);
        v148 = v147(v146 + v145, 1, v66);
        v73 = v193;
        if (v148 == 1)
        {
          sub_2293D83E8(v146, sub_2293D7574);
LABEL_100:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v165 = sub_22944F174();
            __swift_project_value_buffer(v165, qword_2813DBFB8);
            v166 = sub_22944F154();
            v167 = sub_22944FA84();
            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v205[0] = v169;
              *v168 = 136315138;
              v170 = sub_22944FF44();
              v172 = sub_2293D4824(v170, v171, v205);
              v66 = v194;

              *(v168 + 4) = v172;
              _os_log_impl(&dword_2293D1000, v166, v167, "[%s] Physiological washout date has not yet passed, but the user has adjusted their notifications to be on again", v168, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v169);
              v173 = v169;
              v73 = v193;
              MEMORY[0x22AACCC00](v173, -1, -1);
              MEMORY[0x22AACCC00](v168, -1, -1);
            }
          }

          v203();

LABEL_107:
          v182(v73, v66);
          return;
        }
      }

      else
      {
        v149 = v187;
        sub_22942A888(v146, v187);
        if (v147(v146 + v145, 1, v66) != 1)
        {
          v161 = v192;
          (*(v195 + 32))(v192, v146 + v145, v66);
          sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578]);
          v162 = sub_22944F854();
          v163 = v161;
          v164 = v182;
          v182(v163, v66);
          sub_2293D83E8(v191, sub_2293D7574);
          sub_2293D83E8(v90, sub_2293D7574);
          v164(v149, v66);
          sub_2293D83E8(v146, sub_2293D7574);
          v73 = v193;
          if (v162)
          {
            goto LABEL_100;
          }

LABEL_92:
          if (HKShowSensitiveLogItems())
          {
            if (qword_2813DBFB0 != -1)
            {
              swift_once();
            }

            v150 = sub_22944F174();
            __swift_project_value_buffer(v150, qword_2813DBFB8);
            v151 = sub_22944F154();
            v152 = sub_22944FA84();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v205[0] = v154;
              *v153 = 136315138;
              v155 = sub_22944FF44();
              v157 = sub_2293D4824(v155, v156, v205);
              v66 = v194;

              *(v153 + 4) = v157;
              _os_log_impl(&dword_2293D1000, v151, v152, "[%s)] Physiological washout date has not passed, but we have an adjustment date! We made a mistake - reverting adjustment", v153, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v154);
              v158 = v154;
              v73 = v193;
              MEMORY[0x22AACCC00](v158, -1, -1);
              MEMORY[0x22AACCC00](v153, -1, -1);
            }
          }

          sub_2293D3AF0(0, &qword_2813DBDA0);
          v159 = swift_allocObject();
          *(v159 + 16) = xmmword_229454440;
          *(v159 + 32) = v144;
          v160 = v144;
          sub_22941C614(v159, v196, v197, v203, v202, v198, v199);

          goto LABEL_107;
        }

        sub_2293D83E8(v191, sub_2293D7574);
        sub_2293D83E8(v90, sub_2293D7574);
        v182(v149, v66);
        v73 = v193;
      }

      sub_2293D83E8(v146, sub_22942A804);
      goto LABEL_92;
    }

    v76(v73, v66);
  }

  v116 = [v185 postPregnancyFeatureAdjustmentCompletionLog];
  v117 = sub_22944F7F4();

  if (*(v117 + 16))
  {
    v118 = sub_22942707C(v184);
    if (v119)
    {
      (*(v67 + 16))(v24, *(v117 + 56) + *(v67 + 72) * v118, v66);

      (*(v67 + 56))(v24, 0, 1, v66);
      sub_2293D83E8(v24, sub_2293D7574);
      if (HKShowSensitiveLogItems())
      {
        if (qword_2813DBFB0 != -1)
        {
          swift_once();
        }

        v120 = sub_22944F174();
        __swift_project_value_buffer(v120, qword_2813DBFB8);
        v108 = sub_22944F154();
        v109 = sub_22944FA84();
        if (!os_log_type_enabled(v108, v109))
        {
          goto LABEL_66;
        }

        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v205[0] = v111;
        *v110 = 136315138;
        v121 = sub_22944FF44();
        v123 = sub_2293D4824(v121, v122, v205);

        *(v110 + 4) = v123;
        v115 = "[%s] Physiological washout date has passed, and we have a post pregnancy adjustment date. No more work needed here.";
LABEL_65:
        _os_log_impl(&dword_2293D1000, v108, v109, v115, v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x22AACCC00](v111, -1, -1);
        MEMORY[0x22AACCC00](v110, -1, -1);
LABEL_66:

        goto LABEL_67;
      }

      goto LABEL_67;
    }
  }

  (*(v67 + 56))(v24, 1, 1, v66);
  sub_2293D83E8(v24, sub_2293D7574);
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v124 = sub_22944F174();
    __swift_project_value_buffer(v124, qword_2813DBFB8);
    v125 = sub_22944F154();
    v126 = sub_22944FA84();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v205[0] = v128;
      *v127 = 136315138;
      v129 = sub_22944FF44();
      v131 = sub_2293D4824(v129, v130, v205);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_2293D1000, v125, v126, "[%s)] Physiological washout date has passed, but we have not yet adjusted features, making adjustment", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v128);
      MEMORY[0x22AACCC00](v128, -1, -1);
      MEMORY[0x22AACCC00](v127, -1, -1);
    }
  }

  sub_2293D3AF0(0, &qword_2813DBDA0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_229454440;
  v133 = v185;
  *(v132 + 32) = v185;
  v134 = v133;
  sub_22941BE80(v132, v196, v197, v203, v202, v198, v199);
}

id HDMCPregnancyFeatureAdjustmentManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDMCPregnancyFeatureAdjustmentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall HDMCPregnancyFeatureAdjustmentManager.experienceModelManagerDidUpdateModel()()
{
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v0 = sub_22944F174();
    __swift_project_value_buffer(v0, qword_2813DBFB8);
    v1 = sub_22944F154();
    v2 = sub_22944FA84();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136315138;
      v5 = sub_22944FF44();
      v7 = sub_2293D4824(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_2293D1000, v1, v2, "[%s] Received experience model update", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
      MEMORY[0x22AACCC00](v4, -1, -1);
      MEMORY[0x22AACCC00](v3, -1, -1);
    }
  }

  sub_2293D9118(2);
}

id sub_22941B6F8()
{
  v20[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if (*(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager))
  {
    v1 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager);
    goto LABEL_5;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v3)
  {
    v4 = swift_unknownObjectUnownedLoadStrong();
    v5 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v3 healthDataSource:v4 currentCountryCode:0];
    swift_unknownObjectRelease();

    v1 = v5;
LABEL_5:
    v20[0] = 0;
    swift_unknownObjectRetain_n();
    v6 = [v1 featureStatusWithError_];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = v20[0];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = v20[0];
      v9 = sub_22944EF74();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    goto LABEL_15;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v10 = sub_22944F174();
    __swift_project_value_buffer(v10, qword_2813DBFB8);
    v11 = sub_22944F154();
    v12 = sub_22944FA84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      v15 = sub_22944FF44();
      v17 = sub_2293D4824(v15, v16, v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2293D1000, v11, v12, "[%s] Not making LCF Feature Adjustment: Could not get cardio fitness feature availability provider", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x22AACCC00](v14, -1, -1);
      MEMORY[0x22AACCC00](v13, -1, -1);
    }
  }

  v6 = 0;
LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_22941B9A8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v58 = a5;
  v59 = a4;
  v60 = a1;
  ObjectType = swift_getObjectType();
  sub_2293D7574(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v17 = sub_22944FAE4();
  sub_22944F044();
  v18 = sub_22944F054();
  v19 = *(*(v18 - 8) + 56);
  v61 = v16;
  v19(v16, 0, 1, v18);
  v20 = *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager];
  if (v20)
  {
    v53 = v6;
    v54 = v20;
    v55 = a3;
    v56 = a2;
    v57 = ObjectType;
    v21 = v17;
LABEL_5:
    v52 = *MEMORY[0x277CCC120];
    sub_22942A888(v61, v14);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v60;
    *(v30 + 16) = v21;
    *(v30 + 24) = v31;
    sub_22942AD9C(v14, v30 + v24);
    v32 = v53;
    *(v30 + v25) = v53;
    v33 = v55;
    v34 = v56;
    *(v30 + v26) = v55;
    *(v30 + v27) = v34;
    v35 = (v30 + v28);
    v36 = v58;
    v37 = v59;
    *v35 = v59;
    v35[1] = v36;
    *(v30 + v29) = v57;
    aBlock[4] = sub_22942B53C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229423280;
    aBlock[3] = &block_descriptor_28;
    v38 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v39 = v52;
    v40 = v21;

    v41 = v32;
    v42 = v33;

    sub_229428914(v37);

    [v54 setFeatureSettingNumber:v40 forKey:v39 completion:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);

    swift_unknownObjectRelease();
    v17 = v39;
    goto LABEL_6;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v23)
  {
    v53 = v6;
    v54 = v23;
    v55 = a3;
    v56 = a2;
    v57 = ObjectType;
    v21 = v17;
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v44 = sub_22944F174();
    __swift_project_value_buffer(v44, qword_2813DBFB8);
    v45 = sub_22944F154();
    v46 = sub_22944FA64();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      v49 = sub_22944FF44();
      v51 = sub_2293D4824(v49, v50, aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2293D1000, v45, v46, "[%s] Could not get cardio fitness feature availability provider", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x22AACCC00](v48, -1, -1);
      MEMORY[0x22AACCC00](v47, -1, -1);
    }
  }

  if (v59)
  {
    v59();
  }

LABEL_6:

  return sub_2293D83E8(v61, sub_2293D7574);
}

uint64_t sub_22941BE80(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, char *a7)
{
  sub_2293D7574(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v18 = sub_22944FAE4();
  sub_22944F044();
  v19 = sub_22944F054();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  sub_229420134(a1, a2, a3, v18, v17, a4, a5, a6, a7);

  return sub_2293D83E8(v17, sub_2293D7574);
}

uint64_t sub_22941BFE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v4 = sub_22944FEE4();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_22944F894();
      v11 = v10;
      if (v9 == sub_22944F894() && v11 == v12)
      {
        break;
      }

      v14 = sub_22944FE24();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_22941C13C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v56 = a5;
  v57 = a1;
  v59 = a4;
  ObjectType = swift_getObjectType();
  sub_2293D7574(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v17 = sub_22944FAE4();
  v18 = sub_22944F054();
  v19 = *(*(v18 - 8) + 56);
  v58 = v16;
  v19(v16, 1, 1, v18);
  v20 = *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager];
  if (v20)
  {
    v51 = v6;
    v52 = v20;
    v53 = a3;
    v54 = a2;
    v55 = ObjectType;
    v21 = v17;
LABEL_5:
    v50 = *MEMORY[0x277CCC120];
    sub_22942A888(v58, v14);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v57;
    *(v29 + 16) = v21;
    *(v29 + 24) = v30;
    sub_22942AD9C(v14, v29 + v24);
    v31 = v51;
    *(v29 + v25) = v51;
    v32 = v53;
    v33 = v54;
    *(v29 + v26) = v53;
    *(v29 + v27) = v33;
    v34 = (v29 + v28);
    v35 = v56;
    *v34 = v59;
    v34[1] = v35;
    *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v55;
    aBlock[4] = sub_22942B27C;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229423280;
    aBlock[3] = &block_descriptor_21;
    v36 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v37 = v50;
    v38 = v21;

    v39 = v31;
    v40 = v32;

    sub_229428914(v59);

    [v52 setFeatureSettingNumber:v38 forKey:v37 completion:v36];
    swift_unknownObjectRelease();
    _Block_release(v36);

    swift_unknownObjectRelease();
    v17 = v37;
    goto LABEL_6;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v23)
  {
    v51 = v6;
    v52 = v23;
    v53 = a3;
    v54 = a2;
    v55 = ObjectType;
    v21 = v17;
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v42 = sub_22944F174();
    __swift_project_value_buffer(v42, qword_2813DBFB8);
    v43 = sub_22944F154();
    v44 = sub_22944FA64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315138;
      v47 = sub_22944FF44();
      v49 = sub_2293D4824(v47, v48, aBlock);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2293D1000, v43, v44, "[%s] Could not get cardio fitness feature availability provider", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x22AACCC00](v46, -1, -1);
      MEMORY[0x22AACCC00](v45, -1, -1);
    }
  }

  if (v59)
  {
    v59();
  }

LABEL_6:

  return sub_2293D83E8(v58, sub_2293D7574);
}

uint64_t sub_22941C614(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, char *a7)
{
  sub_2293D7574(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v18 = sub_22944FAE4();
  v19 = sub_22944F054();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_229420134(a1, a2, a3, v18, v17, a4, a5, a6, a7);

  return sub_2293D83E8(v17, sub_2293D7574);
}

uint64_t HDMCPregnancyFeatureAdjustmentManager.getTombstoneRecords(experienceModel:)(void *a1)
{
  v23 = a1;
  v22 = sub_22944F0B4();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = HDMCPregnancyFeatureAdjustmentManager.queryDeletedPregnancySamples()();
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
LABEL_19:
      v24 = sub_22944FBD4();
    }

    else
    {
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v19 = (v1 + 8);
    v20 = v4 & 0xC000000000000001;
    v17 = MEMORY[0x277D84F90];
    v7 = v21;
    while (v24 != v6)
    {
      if (v20)
      {
        v8 = MEMORY[0x22AACBB00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v18 = v6 + 1;
      v10 = [v8 UUID];
      sub_22944F094();

      v11 = [v23 pregnancyModeSetupCompletionSet];
      sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
      sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
      v12 = sub_22944F9B4();

      MEMORY[0x28223BE20](v13);
      *(&v17 - 2) = v7;
      sub_22941EDE4(sub_22942B514, (&v17 - 4), v12);
      v1 = v14;

      v15 = (*v19)(v7, v22);
      ++v6;
      if (v1)
      {
        MEMORY[0x22AACB780](v15);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22944F954();
        }

        sub_22944F974();
        v17 = v25;
        v6 = v18;
      }
    }

    return v17;
  }

  return result;
}

uint64_t HDMCPregnancyFeatureAdjustmentManager.getStaleRecords(experienceModel:today:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_22944F054();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22944F034();
  v8 = [a1 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v9 = sub_22944F9B4();

  v14 = v7;
  v15 = ObjectType;
  sub_22941F490(sub_22942B4F8, v13, v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  return v11;
}

uint64_t sub_22941CC08(unint64_t a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v71 = a2;
  sub_2293D7574(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v63 - v10;
  v69 = sub_22944F0B4();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v69);
  v78 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22944F054();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v82 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x277D84F90];
  v81 = *MEMORY[0x277D11930];
  v87 = sub_22941E7F4();
  v18 = *MEMORY[0x277D11938];
  v72 = v3;
  v86 = sub_22941E7F4();
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_38:
    v21 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  result = sub_22944FBD4();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_3:
  v68 = result - 1;
  if (result >= 1)
  {
    v76 = v9;
    v20 = 0;
    v84 = result;
    v85 = a1 & 0xC000000000000001;
    v83 = a1;
    v79 = a1 + 32;
    v80 = v18;
    v74 = (v15 + 48);
    v75 = (v15 + 56);
    v67 = (v15 + 8);
    v66 = (v11 + 8);
    v21 = MEMORY[0x277D84F90];
    do
    {
      v73 = v21;
      v22 = v20;
      while (1)
      {
        if (v85)
        {
          v23 = MEMORY[0x22AACBB00](v22, v83);
        }

        else
        {
          v23 = *(v79 + 8 * v22);
        }

        v24 = v23;
        v25 = [v23 pregnancyAdjustedFeaturesSet];
        type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
        sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
        v26 = sub_22944F9B4();

        v89 = v26;
        v27 = [v24 postPregnancyFeatureAdjustmentCompletionLog];
        v28 = sub_22944F7F4();

        if (v87)
        {
          v29 = v81;
          if (sub_22941BFE8(v81, v26))
          {

            v30 = v82;
            sub_22944EFA4();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v88 = v28;
            sub_229427B14(v30, v29, isUniquelyReferenced_nonNull_native);
            v28 = v88;
          }
        }

        v32 = v89;
        if (v86)
        {
          v33 = v80;
          if (sub_22941BFE8(v80, v89))
          {

            v34 = v82;
            sub_22944EFA4();
            v35 = swift_isUniquelyReferenced_nonNull_native();
            v88 = v28;
            sub_229427B14(v34, v33, v35);
            v32 = v89;
          }
        }

        v36 = *(v32 + 16);
        v37 = [v24 pregnancyAdjustedFeaturesSet];
        v38 = sub_22944F9B4();

        v39 = *(v38 + 16);

        if (v36 != v39)
        {
          break;
        }

        ++v22;

        if (v84 == v22)
        {
          v21 = v73;
          goto LABEL_33;
        }
      }

      v73 = [v24 version];
      v40 = [v24 sampleUUID];
      sub_22944F094();

      v41 = [v24 educationalStepsReviewDate];
      v42 = v77;
      if (v41)
      {
        v43 = v41;
        sub_22944F014();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v45 = *v75;
      (*v75)(v42, v44, 1, v14);
      v46 = [v24 configurationStepsReviewDate];
      if (v46)
      {
        v47 = v46;
        v48 = v76;
        sub_22944F014();

        v49 = 0;
      }

      else
      {
        v48 = v76;
        v49 = 1;
      }

      v45(v48, v49, 1, v14);
      v64 = sub_22944F074();
      v50 = *v74;
      v51 = v77;
      if ((*v74)(v77, 1, v14) == 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = sub_22944EFD4();
        (*v67)(v51, v14);
      }

      v52 = v76;
      if (v50(v76, 1, v14) == 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = sub_22944EFD4();
        (*v67)(v52, v14);
      }

      v54 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v55 = sub_22944F9A4();
      v56 = sub_22944F7E4();

      v57 = v54;
      v58 = v73;
      v59 = v64;
      v60 = v65;
      v63 = [v57 initWithVersion:v73 sampleUUID:v64 educationalStepsReviewDate:v65 configurationStepsReviewDate:v53 pregnancyAdjustedFeaturesSet:v55 postPregnancyFeatureAdjustmentCompletionLog:v56];

      (*v66)(v78, v69);
      v61 = v63;
      MEMORY[0x22AACB780]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v62 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22944F954();
      }

      v20 = v22 + 1;
      sub_22944F974();

      v21 = v90;
    }

    while (v68 != v22);
LABEL_33:
    if (!(v21 >> 62))
    {
LABEL_34:
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }

LABEL_35:
      sub_22941DC8C(v21, v70, v71);
    }

LABEL_39:
    if (!sub_22944FBD4())
    {
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t HDMCPregnancyFeatureAdjustmentManager.updateRecordsForManualFeatureAdjustments<A>(records:experienceStore:codableExperienceModel:)(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v83 = a4;
  v81 = a3;
  v82 = a2;
  sub_2293D7574(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  v80 = sub_22944F0B4();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v80);
  v90 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22944F054();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v95 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v94 = &v71 - v21;
  v104 = MEMORY[0x277D84F90];
  v93 = *MEMORY[0x277D11930];
  v100 = sub_22941E7F4();
  v22 = *MEMORY[0x277D11938];
  v84 = v4;
  result = sub_22941E7F4();
  v99 = result;
  if (!(a1 >> 62))
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_38:
    v26 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  result = sub_22944FBD4();
  v24 = result;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_3:
  v79 = v24 - 1;
  if (v24 >= 1)
  {
    v88 = v12;
    v89 = v10;
    v25 = 0;
    v96 = a1;
    v97 = a1 & 0xC000000000000001;
    v91 = a1 + 32;
    v92 = (v17 + 32);
    v86 = (v17 + 48);
    v87 = (v17 + 56);
    v78 = (v17 + 8);
    v77 = (v13 + 8);
    v26 = MEMORY[0x277D84F90];
    v98 = v22;
    v101 = v16;
    do
    {
      v85 = v26;
      v27 = v25;
      while (1)
      {
        if (v97)
        {
          v28 = MEMORY[0x22AACBB00](v27, v96);
        }

        else
        {
          v28 = *(v91 + 8 * v27);
        }

        v29 = v28;
        v30 = [v28 pregnancyAdjustedFeaturesSet];
        type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
        sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
        v31 = sub_22944F9B4();

        v103 = v31;
        v32 = [v29 postPregnancyFeatureAdjustmentCompletionLog];
        v33 = sub_22944F7F4();

        if (v100)
        {
          v34 = v93;
          if (sub_22941BFE8(v93, v31))
          {

            v35 = v94;
            sub_22944EFA4();
            v36 = v34;
            v37 = v95;
            (*v92)(v95, v35, v101);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v102 = v33;
            v39 = v36;
            v16 = v101;
            sub_229427B14(v37, v39, isUniquelyReferenced_nonNull_native);
            v33 = v102;
          }
        }

        v40 = v103;
        if (v99 & 1) != 0 && (sub_22941BFE8(v22, v103))
        {

          v41 = v94;
          sub_22944EFA4();
          v42 = v95;
          (*v92)(v95, v41, v16);
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v102 = v33;
          sub_229427B14(v42, v22, v43);
          v40 = v103;
        }

        v44 = *(v40 + 16);
        v45 = [v29 pregnancyAdjustedFeaturesSet];
        v46 = sub_22944F9B4();

        v47 = *(v46 + 16);

        if (v44 != v47)
        {
          break;
        }

        ++v27;

        v22 = v98;
        v16 = v101;
        if (v24 == v27)
        {
          v26 = v85;
          goto LABEL_33;
        }
      }

      v76 = [v29 version];
      v48 = [v29 sampleUUID];
      sub_22944F094();

      v49 = [v29 educationalStepsReviewDate];
      if (v49)
      {
        v50 = v88;
        v51 = v49;
        sub_22944F014();

        v52 = 0;
      }

      else
      {
        v52 = 1;
        v50 = v88;
      }

      v53 = *v87;
      (*v87)(v50, v52, 1, v101);
      v54 = [v29 configurationStepsReviewDate];
      if (v54)
      {
        v55 = v54;
        v56 = v89;
        sub_22944F014();

        v57 = 0;
      }

      else
      {
        v56 = v89;
        v57 = 1;
      }

      v58 = v56;
      v16 = v101;
      v53(v58, v57, 1, v101);
      v75 = sub_22944F074();
      v59 = *v86;
      v60 = v88;
      if ((*v86)(v88, 1, v16) == 1)
      {
        v74 = 0;
      }

      else
      {
        v74 = sub_22944EFD4();
        (*v78)(v60, v16);
      }

      v61 = v89;
      if (v59(v89, 1, v16) == 1)
      {
        v73 = 0;
      }

      else
      {
        v73 = sub_22944EFD4();
        (*v78)(v61, v16);
      }

      v62 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v85 = sub_22944F9A4();
      v63 = sub_22944F7E4();

      v64 = v62;
      v65 = v76;
      v66 = v75;
      v67 = v74;
      v68 = v73;
      v72 = [v64 initWithVersion:v76 sampleUUID:v75 educationalStepsReviewDate:v74 configurationStepsReviewDate:v73 pregnancyAdjustedFeaturesSet:v85 postPregnancyFeatureAdjustmentCompletionLog:v63];

      (*v77)(v90, v80);
      v69 = v72;
      MEMORY[0x22AACB780]();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22944F954();
      }

      v25 = v27 + 1;
      sub_22944F974();

      v26 = v104;

      v22 = v98;
    }

    while (v79 != v27);
LABEL_33:
    if (!(v26 >> 62))
    {
LABEL_34:
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }

LABEL_35:
      HDMCPregnancyFeatureAdjustmentManager.updateExperienceModel<A>(with:updatedCodableExperienceModel:experienceStore:)(v26, v81, v82, v83);
    }

LABEL_39:
    if (!sub_22944FBD4())
    {
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_22941DC8C(unint64_t a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_22942A8EC(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = a3;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:
    HDMCExperienceDaemonStore.setModel(_:)(a2);
    return;
  }

  v12 = sub_22944FBD4();
  v31 = a3;
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    *&v9 = 136315394;
    v32 = v9;
    v35 = a1;
    v36 = a2;
    v33 = a1 & 0xC000000000000001;
    v34 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AACBB00](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = sub_22944F0B4();
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
      HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(v15, v11);
      sub_2293D83E8(v11, sub_22942A8EC);

      ++v13;
    }

    while (v12 != v13);
    goto LABEL_11;
  }

  __break(1u);
  swift_once();
  v17 = sub_22944F174();
  __swift_project_value_buffer(v17, qword_2813DBFB8);
  v18 = v3;
  v19 = sub_22944F154();
  v20 = sub_22944FA64();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315394;
    v23 = sub_22944FF44();
    v25 = sub_2293D4824(v23, v24, v39);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v38 = v3;
    v26 = v3;
    sub_22942B194(0, &qword_2813DBD90);
    v27 = sub_22944F8A4();
    v29 = sub_2293D4824(v27, v28, v39);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2293D1000, v19, v20, "[%s] Unable to update the experience store with latest codable experience model: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v22, -1, -1);
    MEMORY[0x22AACCC00](v21, -1, -1);
  }

  else
  {
  }
}

void HDMCPregnancyFeatureAdjustmentManager.updateExperienceModel<A>(with:updatedCodableExperienceModel:experienceStore:)(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_22942A8EC(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v15 + 16))(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  type metadata accessor for HDMCExperienceDaemonStore();
  if (swift_dynamicCast())
  {
    v17 = v45;
  }

  else
  {
    v17 = 0;
  }

  if (!(a1 >> 62))
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v17;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (v37)
    {

      HDMCExperienceDaemonStore.setModel(_:)(a2);
    }

    return;
  }

  v18 = sub_22944FBD4();
  v37 = v17;
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v18 >= 1)
  {
    v19 = 0;
    *&v16 = 136315394;
    v38 = v16;
    v41 = a1;
    v42 = a2;
    v39 = a1 & 0xC000000000000001;
    v40 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x22AACBB00](v19, a1);
      }

      else
      {
        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = sub_22944F0B4();
      (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
      HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(v21, v12);
      sub_2293D83E8(v12, sub_22942A8EC);

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_14;
  }

  __break(1u);
  swift_once();
  v23 = sub_22944F174();
  __swift_project_value_buffer(v23, qword_2813DBFB8);
  v24 = a3;
  v25 = sub_22944F154();
  v26 = sub_22944FA64();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45 = v28;
    *v27 = 136315394;
    v29 = sub_22944FF44();
    v31 = sub_2293D4824(v29, v30, &v45);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v44 = a3;
    v32 = a3;
    sub_22942B194(0, &qword_2813DBD90);
    v33 = sub_22944F8A4();
    v35 = sub_2293D4824(v33, v34, &v45);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_2293D1000, v25, v26, "[%s] Unable to update the experience store with latest codable experience model: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v28, -1, -1);
    MEMORY[0x22AACCC00](v27, -1, -1);
  }

  else
  {
  }
}

id sub_22941E7F4()
{
  v0 = *MEMORY[0x277D11930];
  v1 = sub_22944F894();
  v3 = v2;
  if (v1 == sub_22944F894() && v3 == v4)
  {

LABEL_13:
    result = sub_22941B6F8();
    if (result)
    {
      v15 = result;
      v16 = [result objectForKeyedSubscript_];
      v17 = [v16 areAllRequirementsSatisfied];

      return v17;
    }

    return result;
  }

  v6 = sub_22944FE24();

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = *MEMORY[0x277D11938];
  v8 = sub_22944F894();
  v10 = v9;
  if (v8 == sub_22944F894() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_22944FE24();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v18) = HDMCPregnancyFeatureAdjustmentManager.getMedicalIDContainsPregnancy()();
  return ((v18 != 2) & (v18 ^ 1u));
}

Swift::Bool_optional __swiftcall HDMCPregnancyFeatureAdjustmentManager.getMedicalIDContainsPregnancy()()
{
  swift_getObjectType();
  sub_2293D7574(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229428480(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager, &v25);
  if (v26)
  {
    sub_2293D78F8(&v25, v24);
    sub_2293D78F8(v24, &v25);
    v5 = v26;
    v6 = v27;
  }

  else
  {
    sub_229428944(&v25, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = [objc_allocWithZone(MEMORY[0x277D10750]) initWithProfile_];

    v5 = sub_2293D30DC(0, &qword_2813DBE68, 0x277D10750);
    v6 = &protocol witness table for HDMedicalIDDataManager;
    v26 = v5;
    v27 = &protocol witness table for HDMedicalIDDataManager;
    *&v25 = v8;
  }

  __swift_project_boxed_opaque_existential_1(&v25, v5);
  v9 = (v6[1])(v5, v6);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 pregnancyEstimatedDueDate];
    if (v11)
    {
      sub_22944F014();

      v12 = 0;
      v10 = v11;
    }

    else
    {
      v12 = 1;
    }

    v21 = v11 != 0;

    v22 = sub_22944F054();
    (*(*(v22 - 8) + 56))(v4, v12, 1, v22);
    sub_2293D83E8(v4, sub_2293D7574);
    __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  }

  else
  {
    if (HKShowSensitiveLogItems())
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v13 = sub_22944F174();
      __swift_project_value_buffer(v13, qword_2813DBFB8);
      v14 = sub_22944F154();
      v15 = sub_22944FA64();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v24[0] = v17;
        *v16 = 136315138;
        v18 = sub_22944FF44();
        v20 = sub_2293D4824(v18, v19, v24);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_2293D1000, v14, v15, "[%s] Error retrieving medical ID data", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x22AACCC00](v17, -1, -1);
        MEMORY[0x22AACCC00](v16, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v25);
    return 2;
  }

  return v21;
}

uint64_t sub_22941ECD8(id *a1)
{
  v2 = sub_22944F0B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 sampleUUID];
  sub_22944F094();

  v8 = sub_22944F084();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_22941EDE4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22944FB94();
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    sub_22944FA04();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22944FC04())
        {
          sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_229429864();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22941F040@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a1;
  v39 = a2;
  v33 = a3;
  sub_2293DB9D8();
  v5 = v4;
  v35 = *(v4 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7594(0, &unk_27D86E710, sub_2293DB9D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  sub_2293DBB38(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942AC3C(0);
  v20 = v19;
  v34 = *(v19 - 8);
  v21 = *(v34 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v41, v14);
  v24 = v35;
  sub_2293D5C5C(&qword_27D86E728, sub_2293DBB38);
  sub_22944F904();
  v25 = sub_2293D5C5C(&qword_27D86E730, sub_22942AC3C);
  v40 = v23;
  v41 = v20;
  v36 = v25;
  sub_22944FB24();
  v26 = *(v24 + 48);
  if (v26(v12, 1, v5) == 1)
  {
LABEL_6:
    (*(v34 + 8))(v40, v41);
    v29 = 1;
    v30 = v33;
  }

  else
  {
    v37 = *(v24 + 32);
    v27 = (v24 + 8);
    while (1)
    {
      v37(v8, v12, v5);
      v28 = v38(v8);
      if (v3)
      {
        (*v27)(v8, v5);
        return (*(v34 + 8))(v40, v41);
      }

      if (v28)
      {
        break;
      }

      (*v27)(v8, v5);
      sub_22944FB24();
      if (v26(v12, 1, v5) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v34 + 8))(v40, v41);
    v32 = v33;
    v37(v33, v8, v5);
    v30 = v32;
    v29 = 0;
  }

  return (*(v35 + 56))(v30, v29, 1, v5);
}

void sub_22941F490(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v24 = MEMORY[0x277D84F90];
  if ((a3 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    sub_22944FA04();
    v4 = v23[1];
    v5 = v23[2];
    v6 = v23[3];
    v7 = v23[4];
    v8 = v23[5];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v21 = v4;
  while (v4 < 0)
  {
    if (!sub_22944FC04() || (sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0), swift_dynamicCast(), v17 = v22, v15 = v7, v16 = v8, !v22))
    {
LABEL_22:
      sub_229429864();
      return;
    }

LABEL_19:
    v23[0] = v17;
    v18 = a1(v23);
    if (v3)
    {

      sub_229429864();

      return;
    }

    if (v18)
    {
      sub_22944FCD4();
      v19 = *(v24 + 16);
      sub_22944FD04();
      sub_22944FD14();
      sub_22944FCE4();
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v21;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_22941F718(void *a1, void *a2)
{
  swift_getObjectType();
  sub_22942A8EC(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22944F0B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(a1, v7);
  sub_2293D83E8(v7, sub_22942A8EC);
  HDMCExperienceDaemonStore.setModel(_:)(a2);
}

uint64_t sub_22941FBA8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  sub_22942A8EC(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v15 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  type metadata accessor for HDMCExperienceDaemonStore();
  if (swift_dynamicCast())
  {
    v16 = v19[3];
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_22944F0B4();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(a1, v12);
  result = sub_2293D83E8(v12, sub_22942A8EC);
  if (v16)
  {

    HDMCExperienceDaemonStore.setModel(_:)(a2);
  }

  return result;
}

void sub_229420134(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, char *a9)
{
  v61 = a5;
  v62 = a2;
  v65 = a4;
  v66 = a1;
  v63 = a3;
  ObjectType = swift_getObjectType();
  v14 = *(a8 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](ObjectType);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v9[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager];
  v64 = v20;
  if (v21)
  {
    v57 = v9;
    v58 = ObjectType;
    v59 = a6;
    v60 = a7;
    v55 = v21;
    v56 = v21;
LABEL_5:
    v53 = a9;
    v54 = *MEMORY[0x277CCC120];
    sub_22942A888(v61, v20);
    (v14[2])(v16, v62, a8);
    v24 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v14 + 80) + v26 + 8) & ~*(v14 + 80);
    v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 2) = a8;
    *(v29 + 3) = v30;
    v31 = v66;
    *(v29 + 4) = v65;
    *(v29 + 5) = v31;
    v62 = a8;
    sub_22942AD9C(v64, &v29[v24]);
    v32 = v57;
    *&v29[v25] = v57;
    v33 = v62;
    v34 = v63;
    *&v29[v26] = v63;
    v35 = v34;
    (v14[4])(&v29[v27], v16, v33);
    v36 = &v29[v28];
    v38 = v59;
    v37 = v60;
    *v36 = v59;
    v36[1] = v37;
    *&v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8] = v58;
    aBlock[4] = sub_22942AE00;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229423280;
    aBlock[3] = &block_descriptor;
    v39 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v40 = v54;
    v41 = v65;

    v42 = v32;
    v43 = v35;
    sub_229428914(v38);

    [v56 setFeatureSettingNumber:v41 forKey:v40 completion:v39];
    swift_unknownObjectRelease();
    _Block_release(v39);
    swift_unknownObjectRelease();

    return;
  }

  v53 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v23 = [Strong featureAvailabilityProvidingForFeatureIdentifier_];

  if (v23)
  {
    v57 = v9;
    v58 = ObjectType;
    v59 = a6;
    v60 = a7;
    v56 = v23;
    swift_unknownObjectRetain();
    v55 = 0;
    v16 = v53;
    v14 = v54;
    v20 = v64;
    goto LABEL_5;
  }

  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v44 = sub_22944F174();
    __swift_project_value_buffer(v44, qword_2813DBFB8);
    v45 = sub_22944F154();
    v46 = sub_22944FA64();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      v49 = sub_22944FF44();
      v51 = sub_2293D4824(v49, v50, aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2293D1000, v45, v46, "[%s] Could not get cardio fitness feature availability provider", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x22AACCC00](v48, -1, -1);
      MEMORY[0x22AACCC00](v47, -1, -1);
    }
  }

  if (a6)
  {
    a6();
  }
}

void sub_229420620(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void), uint64_t a10, void *a11)
{
  v214 = a7;
  v215 = a8;
  v213 = a6;
  v187 = a5;
  v216 = a4;
  v217 = a11;
  v212 = sub_22944F0B4();
  v13 = *(v212 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v212);
  v206 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v219 = &v185 - v17;
  v18 = sub_22944F054();
  v193 = *(v18 - 8);
  v19 = *(v193 + 64);
  MEMORY[0x28223BE20](v18);
  v190 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942A804();
  v192 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v185 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v205 = &v185 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v198 = (&v185 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v218 = &v185 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v189 = &v185 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v191 = &v185 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v185 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v185 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v201 = &v185 - v50;
  MEMORY[0x28223BE20](v49);
  v197 = &v185 - v51;
  v52 = HKShowSensitiveLogItems();
  if ((a1 & 1) == 0)
  {
    if (v52)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v129 = sub_22944F174();
      __swift_project_value_buffer(v129, qword_2813DBFB8);
      v130 = a2;
      v131 = sub_22944F154();
      v132 = sub_22944FA64();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v223 = v134;
        *v133 = 136315394;
        v135 = sub_22944FF44();
        v137 = sub_2293D4824(v135, v136, &v223);

        *(v133 + 4) = v137;
        *(v133 + 12) = 2080;
        v222 = a2;
        v138 = a2;
        sub_2294289A0(0, &qword_27D86E750, &qword_2813DBD90, MEMORY[0x277D84948], sub_22942B194);
        v139 = sub_22944F8A4();
        v141 = sub_2293D4824(v139, v140, &v223);

        *(v133 + 14) = v141;
        _os_log_impl(&dword_2293D1000, v131, v132, "[%s] Error updating Low Cardio Fitness Notifications feature settings: %s", v133, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v134, -1, -1);
        MEMORY[0x22AACCC00](v133, -1, -1);
      }
    }

    goto LABEL_79;
  }

  v186 = v45;
  v207 = v29;
  v204 = v32;
  v220 = v18;
  if (v52)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v53 = sub_22944F174();
    __swift_project_value_buffer(v53, qword_2813DBFB8);
    v54 = sub_22944F154();
    v55 = sub_22944FA84();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v223 = v57;
      *v56 = 136315138;
      v58 = sub_22944FF44();
      v60 = sub_2293D4824(v58, v59, &v223);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_2293D1000, v54, v55, "[%s] Successfully adjusted Low Cardio Fitness Notification settings. Attempting to update pregnancy setup record", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x22AACCC00](v57, -1, -1);
      MEMORY[0x22AACCC00](v56, -1, -1);
    }
  }

  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v61 = sub_22944FAE4();
  v62 = sub_22944FB04();

  v63 = v216;
  v64 = v216 >> 62;
  if (v62)
  {
    if (v64)
    {
      v65 = sub_22944FBD4();
      v63 = v216;
      if (v65)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v65 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
LABEL_11:
        if (v65 >= 1)
        {
          v66 = 0;
          v195 = v63 & 0xC000000000000001;
          v202 = (v193 + 16);
          v204 = *MEMORY[0x277D11930];
          v67 = (v193 + 56);
          v211 = (v193 + 48);
          v188 = (v193 + 32);
          v203 = (v193 + 8);
          v194 = (v13 + 8);
          v200 = v24;
          v199 = v48;
          v205 = (v193 + 56);
          v196 = v65;
          while (1)
          {
            v210 = v66;
            v75 = v195 ? MEMORY[0x22AACBB00](v66) : *(v63 + 8 * v66 + 32);
            v76 = v75;
            v77 = [v75 pregnancyAdjustedFeaturesSet];
            type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
            v79 = v78;
            v80 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
            v81 = sub_22944F9B4();

            v223 = v81;
            v82 = v204;

            v83 = [v76 postPregnancyFeatureAdjustmentCompletionLog];
            v208 = v80;
            v209 = v79;
            v84 = sub_22944F7F4();

            v222 = v84;
            v85 = v84[2];
            v217 = v76;
            if (!v85)
            {
              break;
            }

            v86 = sub_22942707C(v82);
            if ((v87 & 1) == 0)
            {
              break;
            }

            v88 = v193;
            v89 = v84[7] + *(v193 + 72) * v86;
            v90 = v197;
            v91 = v220;
            (*(v193 + 16))(v197, v89, v220);
            v92 = *(v88 + 56);
            v92(v90, 0, 1, v91);
            sub_2293D83E8(v90, sub_2293D7574);
            v93 = v198;
LABEL_37:
            v207 = [v76 version];
            v118 = [v76 sampleUUID];
            sub_22944F094();

            v119 = [v76 educationalStepsReviewDate];
            v120 = v218;
            if (v119)
            {
              v121 = v119;
              sub_22944F014();

              v122 = 0;
            }

            else
            {
              v122 = 1;
            }

            v123 = 1;
            v92(v120, v122, 1, v220);
            v124 = [v76 configurationStepsReviewDate];
            if (v124)
            {
              v125 = v124;
              sub_22944F014();

              v123 = 0;
            }

            v126 = v220;
            v92(v93, v123, 1, v220);
            v206 = sub_22944F074();
            v127 = *v211;
            if ((*v211)(v218, 1, v126) == 1)
            {
              v128 = 0;
            }

            else
            {
              v128 = sub_22944EFD4();
              (*v203)(v218, v126);
            }

            if (v127(v93, 1, v126) == 1)
            {
              v68 = 0;
            }

            else
            {
              v68 = sub_22944EFD4();
              (*v203)(v93, v126);
            }

            v66 = v210 + 1;
            v69 = objc_allocWithZone(MEMORY[0x277D119C0]);
            v70 = sub_22944F9A4();

            v71 = sub_22944F7E4();
            v73 = v206;
            v72 = v207;
            v74 = [v69 initWithVersion:v207 sampleUUID:v206 educationalStepsReviewDate:v128 configurationStepsReviewDate:v68 pregnancyAdjustedFeaturesSet:v70 postPregnancyFeatureAdjustmentCompletionLog:v71];

            (*v194)(v219, v212);
            sub_22941F718(v74, v214);

            v63 = v216;
            v24 = v200;
            v48 = v199;
            v67 = v205;
            if (v196 == v66)
            {
              goto LABEL_79;
            }
          }

          v92 = *v67;
          v94 = 1;
          v95 = v197;
          (*v67)(v197, 1, 1, v220);
          sub_2293D83E8(v95, sub_2293D7574);
          v96 = [v76 educationalStepsReviewDate];
          v97 = v201;
          if (v96)
          {
            v98 = v96;
            sub_22944F014();

            v94 = 0;
          }

          v99 = v220;
          v92(v97, v94, 1, v220);
          if (qword_27D86E1E0 != -1)
          {
            swift_once();
          }

          v100 = __swift_project_value_buffer(v99, qword_27D86E640);
          v101 = *v202;
          v207 = v100;
          (v101)(v48);
          v92(v48, 0, 1, v99);
          v102 = *(v192 + 48);
          sub_22942A888(v97, v24);
          sub_22942A888(v48, &v24[v102]);
          v103 = *v211;
          if ((*v211)(v24, 1, v99) == 1)
          {
            sub_2293D83E8(v48, sub_2293D7574);
            sub_2293D83E8(v97, sub_2293D7574);
            if (v103(&v24[v102], 1, v99) == 1)
            {
              v206 = v101;
              sub_2293D83E8(v24, sub_2293D7574);
              v104 = v191;
              v105 = v204;
LABEL_34:
              v107 = v220;
              (v206)(v104, v207, v220);
              v92(v104, 0, 1, v107);
              v93 = v198;
              goto LABEL_35;
            }
          }

          else
          {
            v106 = v186;
            sub_22942A888(v24, v186);
            if (v103(&v24[v102], 1, v99) != 1)
            {
              v206 = v101;
              v111 = v190;
              (*v188)(v190, &v24[v102], v99);
              sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578]);
              v112 = sub_22944F854();
              v113 = *v203;
              (*v203)(v111, v99);
              sub_2293D83E8(v199, sub_2293D7574);
              sub_2293D83E8(v201, sub_2293D7574);
              v113(v106, v99);
              sub_2293D83E8(v200, sub_2293D7574);
              v104 = v191;
              v105 = v204;
              if (v112)
              {
                goto LABEL_34;
              }

LABEL_31:
              sub_22942A888(v187, v104);
              v107 = v220;
              v108 = v103(v104, 1, v220);
              v93 = v198;
              if (v108 == 1)
              {
                v109 = v105;
                sub_2293D83E8(v104, sub_2293D7574);
                v110 = v189;
                sub_229427410(v109, v189);

                sub_2293D83E8(v110, sub_2293D7574);
LABEL_36:
                v76 = v217;
                goto LABEL_37;
              }

LABEL_35:
              v114 = v190;
              (*v188)(v190, v104, v107);
              v115 = v105;
              v116 = v222;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v221 = v116;
              sub_229427B14(v114, v115, isUniquelyReferenced_nonNull_native);

              v222 = v221;
              goto LABEL_36;
            }

            sub_2293D83E8(v48, sub_2293D7574);
            sub_2293D83E8(v201, sub_2293D7574);
            (*v203)(v106, v99);
          }

          sub_2293D83E8(v24, sub_22942A804);
          v104 = v191;
          v105 = v204;
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_83;
      }
    }
  }

  else
  {
    if (v64)
    {
      v142 = sub_22944FBD4();
      v63 = v216;
      if (!v142)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v142 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v142)
      {
        goto LABEL_79;
      }
    }

    if (v142 < 1)
    {
LABEL_83:
      __break(1u);
      return;
    }

    v143 = 0;
    v202 = (v63 & 0xC000000000000001);
    v197 = (v193 + 16);
    v201 = *MEMORY[0x277D11930];
    v144 = (v193 + 56);
    v219 = (v193 + 48);
    v199 = (v193 + 8);
    v198 = (v13 + 8);
    v203 = v142;
    v200 = (v193 + 56);
    do
    {
      v218 = v143;
      if (v202)
      {
        v152 = MEMORY[0x22AACBB00](v143);
      }

      else
      {
        v152 = *(v63 + 8 * v143 + 32);
      }

      v153 = v152;
      v154 = v207;
      v155 = [v152 pregnancyAdjustedFeaturesSet];
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      v157 = v156;
      v158 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
      v159 = sub_22944F9B4();

      v223 = v159;
      v160 = v201;
      sub_229423F68(&v222, v160);

      v161 = [v153 postPregnancyFeatureAdjustmentCompletionLog];
      v209 = v157;
      v211 = v158;
      v162 = sub_22944F7F4();

      v222 = v162;
      if (v162[2] && (v163 = sub_22942707C(v160), (v164 & 1) != 0))
      {
        v165 = v193;
        v166 = v162[7] + *(v193 + 72) * v163;
        v167 = v205;
        v168 = v220;
        (*(v193 + 16))(v205, v166, v220);
        v169 = *(v165 + 56);
        v169(v167, 0, 1, v168);
        sub_2293D83E8(v167, sub_2293D7574);
        v170 = v189;
        sub_229427410(v160, v189);
        v171 = v170;
        v154 = v207;
      }

      else
      {
        v169 = *v144;
        v172 = v205;
        v168 = v220;
        (*v144)(v205, 1, 1, v220);
        v171 = v172;
      }

      v173 = v204;
      sub_2293D83E8(v171, sub_2293D7574);
      v210 = [v153 version];
      v174 = [v153 sampleUUID];
      sub_22944F094();

      v175 = [v153 educationalStepsReviewDate];
      if (v175)
      {
        v176 = v175;
        sub_22944F014();

        v177 = 0;
      }

      else
      {
        v177 = 1;
      }

      v178 = 1;
      v169(v173, v177, 1, v168);
      v179 = [v153 configurationStepsReviewDate];
      v217 = v153;
      if (v179)
      {
        v180 = v179;
        sub_22944F014();

        v178 = 0;
      }

      v169(v154, v178, 1, v168);
      v208 = sub_22944F074();
      v181 = *v219;
      if ((*v219)(v173, 1, v168) == 1)
      {
        v182 = 0;
      }

      else
      {
        v183 = sub_22944EFD4();
        v184 = v173;
        v182 = v183;
        (*v199)(v184, v168);
      }

      if (v181(v154, 1, v168) == 1)
      {
        v145 = 0;
      }

      else
      {
        v145 = sub_22944EFD4();
        (*v199)(v154, v168);
      }

      v143 = v218 + 1;
      v146 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v147 = sub_22944F9A4();

      v148 = sub_22944F7E4();
      v149 = v210;
      v150 = v208;
      v151 = [v146 initWithVersion:v210 sampleUUID:v208 educationalStepsReviewDate:v182 configurationStepsReviewDate:v145 pregnancyAdjustedFeaturesSet:v147 postPregnancyFeatureAdjustmentCompletionLog:v148];

      (*v198)(v206, v212);
      sub_22941F718(v151, v214);

      v63 = v216;
      v144 = v200;
    }

    while (v203 != v143);
  }

LABEL_79:
  if (a9)
  {
    a9();
  }
}

void sub_229421C3C(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void), uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v223 = a7;
  v224 = a8;
  v222 = a6;
  v192 = a5;
  v225 = a4;
  v226 = a11;
  v221 = sub_22944F0B4();
  v15 = *(v221 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v221);
  v19 = &v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v190 - v20;
  v227 = sub_22944F054();
  v199 = *(v227 - 8);
  v22 = *(v199 + 64);
  MEMORY[0x28223BE20](v227);
  v195 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942A804();
  v198 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v197 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v209 = &v190 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v190 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v208 = (&v190 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v190 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v190 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v194 = &v190 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v196 = &v190 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v191 = &v190 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = (&v190 - v49);
  v51 = MEMORY[0x28223BE20](v48);
  v207 = &v190 - v52;
  MEMORY[0x28223BE20](v51);
  v206 = &v190 - v53;
  v54 = HKShowSensitiveLogItems();
  if ((a1 & 1) == 0)
  {
    if (v54)
    {
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v138 = sub_22944F174();
      __swift_project_value_buffer(v138, qword_2813DBFB8);
      v139 = a2;
      v140 = sub_22944F154();
      v141 = sub_22944FA64();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v230 = v143;
        *v142 = 136315394;
        v144 = sub_22944FF44();
        v146 = sub_2293D4824(v144, v145, &v230);

        *(v142 + 4) = v146;
        *(v142 + 12) = 2080;
        v229 = a2;
        v147 = a2;
        sub_2294289A0(0, &qword_27D86E750, &qword_2813DBD90, MEMORY[0x277D84948], sub_22942B194);
        v148 = sub_22944F8A4();
        v150 = sub_2293D4824(v148, v149, &v230);

        *(v142 + 14) = v150;
        _os_log_impl(&dword_2293D1000, v140, v141, "[%s] Error updating Low Cardio Fitness Notifications feature settings: %s", v142, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v143, -1, -1);
        MEMORY[0x22AACCC00](v142, -1, -1);
      }
    }

    goto LABEL_80;
  }

  v218 = a12;
  v219 = a13;
  v211 = v38;
  v204 = v41;
  v205 = v50;
  v220 = v33;
  if (v54)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v55 = sub_22944F174();
    __swift_project_value_buffer(v55, qword_2813DBFB8);
    v56 = sub_22944F154();
    v57 = sub_22944FA84();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v230 = v59;
      *v58 = 136315138;
      v60 = sub_22944FF44();
      v62 = sub_2293D4824(v60, v61, &v230);

      *(v58 + 4) = v62;
      v33 = v220;
      _os_log_impl(&dword_2293D1000, v56, v57, "[%s] Successfully adjusted Low Cardio Fitness Notification settings. Attempting to update pregnancy setup record", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x22AACCC00](v59, -1, -1);
      MEMORY[0x22AACCC00](v58, -1, -1);
    }
  }

  sub_2293D30DC(0, &qword_2813DBE10, 0x277CCABB0);
  v63 = sub_22944FAE4();
  v64 = sub_22944FB04();

  v65 = v225;
  v66 = v225 >> 62;
  if (v64)
  {
    if (v66)
    {
      v67 = sub_22944FBD4();
      v65 = v225;
      if (v67)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v67 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67)
      {
LABEL_11:
        if (v67 >= 1)
        {
          v68 = 0;
          v202 = v65 & 0xC000000000000001;
          v208 = (v199 + 16);
          v69 = *MEMORY[0x277D11930];
          v70 = (v199 + 56);
          v220 = (v199 + 48);
          v193 = (v199 + 32);
          v209 = (v199 + 8);
          v200 = (v15 + 8);
          v210 = v21;
          v201 = v69;
          v212 = v199 + 56;
          v203 = v67;
          while (1)
          {
            v217 = v68;
            v80 = v202 ? MEMORY[0x22AACBB00](v68) : *(v65 + 8 * v68 + 32);
            v81 = v80;
            v82 = v211;
            v83 = [v80 pregnancyAdjustedFeaturesSet];
            type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
            v85 = v84;
            v86 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
            v87 = sub_22944F9B4();

            v230 = v87;
            v88 = [v81 postPregnancyFeatureAdjustmentCompletionLog];
            v215 = v86;
            v216 = v85;
            v89 = sub_22944F7F4();

            v229 = v89;
            v90 = v89[2];
            v226 = v81;
            if (!v90)
            {
              break;
            }

            v91 = sub_22942707C(v69);
            if ((v92 & 1) == 0)
            {
              break;
            }

            v93 = v89[7];
            v94 = v199;
            v95 = v206;
            v96 = v227;
            (*(v199 + 16))(v206, v93 + *(v199 + 72) * v91, v227);
            v97 = *(v94 + 56);
            v97(v95, 0, 1, v96);
            sub_2293D83E8(v95, sub_2293D7574);
LABEL_38:
            v124 = v204;
            v214 = [v81 version];
            v125 = [v81 sampleUUID];
            sub_22944F094();

            v126 = [v81 educationalStepsReviewDate];
            v127 = v220;
            if (v126)
            {
              v128 = v126;
              sub_22944F014();

              v129 = 0;
            }

            else
            {
              v129 = 1;
            }

            v130 = 1;
            v97(v124, v129, 1, v227);
            v131 = [v226 configurationStepsReviewDate];
            if (v131)
            {
              v132 = v131;
              sub_22944F014();

              v130 = 0;
            }

            v133 = v227;
            v97(v82, v130, 1, v227);
            v213 = sub_22944F074();
            v134 = *v127;
            if ((*v127)(v124, 1, v133) == 1)
            {
              v135 = 0;
            }

            else
            {
              v136 = sub_22944EFD4();
              v137 = v124;
              v135 = v136;
              (*v209)(v137, v133);
            }

            if (v134(v82, 1, v133) == 1)
            {
              v71 = 0;
            }

            else
            {
              v71 = sub_22944EFD4();
              (*v209)(v82, v133);
            }

            v72 = v217 + 1;
            v73 = objc_allocWithZone(MEMORY[0x277D119C0]);
            v74 = sub_22944F9A4();

            v75 = sub_22944F7E4();
            v77 = v213;
            v76 = v214;
            v78 = [v73 initWithVersion:v214 sampleUUID:v213 educationalStepsReviewDate:v135 configurationStepsReviewDate:v71 pregnancyAdjustedFeaturesSet:v74 postPregnancyFeatureAdjustmentCompletionLog:v75];

            (*v200)(v210, v221);
            sub_22941FBA8(v78, v223, v224, v218);

            v68 = v72;
            v79 = v203 == v72;
            v65 = v225;
            v69 = v201;
            v70 = v212;
            if (v79)
            {
              goto LABEL_80;
            }
          }

          v97 = *v70;
          v98 = 1;
          v99 = v206;
          (*v70)(v206, 1, 1, v227);
          sub_2293D83E8(v99, sub_2293D7574);
          v100 = [v81 educationalStepsReviewDate];
          if (v100)
          {
            v101 = v207;
            v102 = v100;
            sub_22944F014();

            v98 = 0;
            v103 = v205;
          }

          else
          {
            v103 = v205;
            v101 = v207;
          }

          v104 = v227;
          v97(v101, v98, 1, v227);
          if (qword_27D86E1E0 != -1)
          {
            swift_once();
          }

          v105 = __swift_project_value_buffer(v104, qword_27D86E640);
          v106 = *v208;
          v213 = v105;
          v214 = v106;
          v106(v103);
          v97(v103, 0, 1, v104);
          v107 = *(v198 + 48);
          v108 = v197;
          sub_22942A888(v101, v197);
          sub_22942A888(v103, v108 + v107);
          v109 = *v220;
          if ((*v220)(v108, 1, v104) == 1)
          {
            sub_2293D83E8(v103, sub_2293D7574);
            sub_2293D83E8(v101, sub_2293D7574);
            v110 = v109(v108 + v107, 1, v104);
            v81 = v226;
            if (v110 == 1)
            {
              sub_2293D83E8(v108, sub_2293D7574);
LABEL_35:
              v112 = v196;
              v113 = v227;
              (v214)(v196, v213, v227);
              v97(v112, 0, 1, v113);
              goto LABEL_36;
            }
          }

          else
          {
            v111 = v191;
            sub_22942A888(v108, v191);
            if (v109(v108 + v107, 1, v104) != 1)
            {
              v116 = v108 + v107;
              v117 = v195;
              (*v193)(v195, v116, v104);
              sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578]);
              v118 = sub_22944F854();
              v119 = *v209;
              (*v209)(v117, v104);
              sub_2293D83E8(v205, sub_2293D7574);
              sub_2293D83E8(v207, sub_2293D7574);
              v119(v111, v104);
              sub_2293D83E8(v108, sub_2293D7574);
              v81 = v226;
              if (v118)
              {
                goto LABEL_35;
              }

LABEL_32:
              v112 = v196;
              sub_22942A888(v192, v196);
              v113 = v227;
              if (v109(v112, 1, v227) == 1)
              {
                v114 = v69;
                sub_2293D83E8(v112, sub_2293D7574);
                v115 = v194;
                sub_229427410(v114, v194);

                sub_2293D83E8(v115, sub_2293D7574);
LABEL_37:
                v82 = v211;
                goto LABEL_38;
              }

LABEL_36:
              v120 = v195;
              (*v193)(v195, v112, v113);
              v121 = v69;
              v122 = v229;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v228 = v122;
              sub_229427B14(v120, v121, isUniquelyReferenced_nonNull_native);

              v229 = v228;
              goto LABEL_37;
            }

            sub_2293D83E8(v205, sub_2293D7574);
            sub_2293D83E8(v207, sub_2293D7574);
            (*v209)(v111, v104);
            v81 = v226;
          }

          sub_2293D83E8(v108, sub_22942A804);
          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_84;
      }
    }
  }

  else
  {
    if (v66)
    {
      v151 = sub_22944FBD4();
      v65 = v225;
      if (!v151)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v151 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v151)
      {
        goto LABEL_80;
      }
    }

    if (v151 < 1)
    {
LABEL_84:
      __break(1u);
      return;
    }

    v152 = 0;
    v210 = v65 & 0xC000000000000001;
    v204 = (v199 + 16);
    v207 = *MEMORY[0x277D11930];
    v226 = (v199 + 56);
    v217 = (v199 + 48);
    v206 = (v199 + 8);
    v205 = (v15 + 8);
    v203 = v19;
    v211 = v151;
    do
    {
      v216 = v152;
      if (v210)
      {
        v160 = MEMORY[0x22AACBB00](v152);
      }

      else
      {
        v160 = *(v65 + 8 * v152 + 32);
      }

      v161 = v160;
      v162 = v209;
      v163 = [v160 pregnancyAdjustedFeaturesSet];
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      v164 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
      v165 = sub_22944F9B4();

      v230 = v165;
      v166 = v207;
      sub_229423F68(&v229, v166);

      v167 = [v161 postPregnancyFeatureAdjustmentCompletionLog];
      v168 = v227;
      v214 = v164;
      v169 = sub_22944F7F4();

      v229 = v169;
      if (v169[2] && (v170 = sub_22942707C(v166), (v171 & 1) != 0))
      {
        v172 = v169[7];
        v173 = v199;
        v174 = v208;
        (*(v199 + 16))(v208, v172 + *(v199 + 72) * v170, v227);
        v175 = *(v173 + 56);
        v175(v174, 0, 1, v227);
        sub_2293D83E8(v174, sub_2293D7574);
        v176 = v194;
        sub_229427410(v166, v194);
        v177 = v176;
        v168 = v227;
      }

      else
      {
        v175 = *v226;
        v178 = v208;
        (*v226)(v208, 1, 1, v168);
        v177 = v178;
      }

      sub_2293D83E8(v177, sub_2293D7574);
      v213 = [v161 version];
      v179 = [v161 sampleUUID];
      sub_22944F094();

      v180 = [v161 educationalStepsReviewDate];
      if (v180)
      {
        v181 = v180;
        sub_22944F014();

        v182 = 0;
      }

      else
      {
        v182 = 1;
      }

      v183 = 1;
      v175(v33, v182, 1, v168);
      v184 = [v161 configurationStepsReviewDate];
      v215 = v161;
      if (v184)
      {
        v185 = v184;
        sub_22944F014();

        v183 = 0;
      }

      v175(v162, v183, 1, v168);
      v212 = sub_22944F074();
      v186 = v168;
      v187 = *v217;
      v188 = v220;
      if ((*v217)(v220, 1, v186) == 1)
      {
        v189 = 0;
      }

      else
      {
        v189 = sub_22944EFD4();
        (*v206)(v188, v186);
      }

      if (v187(v162, 1, v186) == 1)
      {
        v153 = 0;
      }

      else
      {
        v153 = sub_22944EFD4();
        (*v206)(v162, v186);
      }

      v152 = v216 + 1;
      v154 = objc_allocWithZone(MEMORY[0x277D119C0]);
      v155 = sub_22944F9A4();

      v156 = sub_22944F7E4();
      v158 = v212;
      v157 = v213;
      v159 = [v154 initWithVersion:v213 sampleUUID:v212 educationalStepsReviewDate:v189 configurationStepsReviewDate:v153 pregnancyAdjustedFeaturesSet:v155 postPregnancyFeatureAdjustmentCompletionLog:v156];

      (*v205)(v203, v221);
      sub_22941FBA8(v159, v223, v224, v218);

      v65 = v225;
      v33 = v220;
    }

    while (v211 != v152);
  }

LABEL_80:
  if (a9)
  {
    a9();
  }
}