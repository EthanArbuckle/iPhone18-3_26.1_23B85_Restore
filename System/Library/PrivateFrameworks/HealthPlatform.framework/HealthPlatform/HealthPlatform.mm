void sub_2283EEC60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void sub_2283EED08(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = a2;
      sub_2283EED8C(v7);

      v6 = v7;
    }

    else
    {
      sub_22848E228(a3);
    }
  }
}

uint64_t sub_2283EED8C(void *a1)
{
  swift_getObjectType();
  v3 = sub_22855C85C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF29C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_280DEB2E8);
  (*(v4 + 16))(v7, v14, v3);
  sub_2283EF310(0, &qword_280DE93F8, 0x277CCD5A8);
  sub_2283EF358();
  v15 = a1;
  sub_22855C88C();
  v16 = *&v1[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer];
  v17 = *&v1[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer + 8];
  swift_getObjectType();
  v38 = v1;
  sub_2283FD424(&unk_280DEB2D0, v18, type metadata accessor for PregnancyStateInputSignal);
  sub_22855C78C();
  if (HKShowSensitiveLogItems())
  {
    if (qword_280DEE800 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DEE808);
    v20 = v15;
    v21 = v1;
    v22 = sub_22855CA8C();
    v23 = sub_22855D6AC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v24 = 138412802;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2080;
      v27 = v21;
      v38 = [v20 sample];
      sub_228465560(0, &qword_280DE9420, &qword_280DE9428, 0x277CCD0B0);
      sub_22855E19C();
      v28 = HKSensitiveLogItem();
      v37 = v9;
      swift_unknownObjectRelease();
      sub_22855DA7C();
      swift_unknownObjectRelease();
      v29 = sub_22855D1BC();
      v31 = sub_2283F8938(v29, v30, &v39);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      v38 = [v20 state];
      type metadata accessor for HKMCPregnancyState(0);
      sub_22855E19C();
      v32 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22855DA7C();
      swift_unknownObjectRelease();
      v33 = sub_22855D1BC();
      v35 = sub_2283F8938(v33, v34, &v39);

      *(v24 + 24) = v35;
      _os_log_impl(&dword_2283ED000, v22, v23, "[%@] Received model update with sample: %s and state: %s", v24, 0x20u);
      sub_22841DC98(v25);
      MEMORY[0x22AABAD40](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v26, -1, -1);
      MEMORY[0x22AABAD40](v24, -1, -1);

      return (*(v10 + 8))(v13, v37);
    }
  }

  return (*(v10 + 8))(v13, v9);
}

void sub_2283EF29C()
{
  if (!qword_280DE9E88)
  {
    sub_2283EF310(255, &qword_280DE93F8, 0x277CCD5A8);
    sub_2283EF358();
    v0 = sub_22855C89C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9E88);
    }
  }
}

uint64_t sub_2283EF310(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2283EF358()
{
  result = qword_280DE9400;
  if (!qword_280DE9400)
  {
    sub_2283EF310(255, &qword_280DE93F8, 0x277CCD5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9400);
  }

  return result;
}

Swift::Void __swiftcall LegacyGenerationProvider.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = v1;
  v3 = sub_22855C85C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2283EF6D4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855C9AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277CCE3A8];
  sub_22855D1AC();
  sub_22855C96C();

  v17 = sub_22855C98C() & 1;
  (*(v12 + 8))(v15, v11);
  v18 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock((v18 + 104));
  if (v17 == *(v18 + 16))
  {
    os_unfair_lock_unlock((v18 + 104));
  }

  else
  {
    *(v18 + 16) = v17;
    os_unfair_lock_unlock((v18 + 104));
    v19 = *(v2 + 24);
    os_unfair_lock_lock((v19 + 24));
    v20 = *(v19 + 16);

    os_unfair_lock_unlock((v19 + 24));
    if (v20 != 0.0)
    {
      v21 = *(*&v20 + 16);
      v22 = *(*&v20 + 24);
      swift_getObjectType();
      sub_22855C84C();
      Current = CFAbsoluteTimeGetCurrent();
      sub_22855C57C();
      Current = v20;
      type metadata accessor for LegacyGenerationInputSignal();
      sub_2283EF774(&qword_280DEAF38, 255, type metadata accessor for LegacyGenerationInputSignal);
      sub_22855C78C();
      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_2283EF6D4()
{
  if (!qword_280DE9F50)
  {
    v0 = sub_22855C58C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9F50);
    }
  }
}

uint64_t sub_2283EF774(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2283EF7BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC14HealthPlatform29HealthPlatformContextProvider7Context_logger;
  v4 = sub_22855CABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2283EF894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2283EF94C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22855CABC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22855CA9C();
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

unint64_t sub_2283EFAB4(uint64_t a1)
{
  result = sub_2283EFB54();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2283EFB54()
{
  result = qword_280DED1B8;
  if (!qword_280DED1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED1B8);
  }

  return result;
}

uint64_t UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for UserDefault();
  result = (*(*(a6 - 8) + 32))(&a7[*(v11 + 32)], a4, a6);
  a7[*(v11 + 36)] = a5;
  return result;
}

id sub_2283EFC58(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_2283EFCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncError(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2283EFD58(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2283EFDA4(uint64_t a1, uint64_t a2)
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_2283EFE3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2283EFEB0(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_228443CF8(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2283EFFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2283F001C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t _s14HealthPlatform26CloudSyncStatusInputSignalC6AnchorV2eeoiySbAE_AEtFZ_0(id *a1, void *a2)
{
  active = type metadata accessor for ActiveSyncState(0);
  v5 = *(active - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](active);
  v23 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  sub_2283F11A8(0, &qword_280DEBFA0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = *(type metadata accessor for CloudSyncStatusInputSignal.Anchor(0) + 20);
  v18 = *(v13 + 56);
  v24 = a1;
  sub_2283F120C(a1 + v17, v16, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  sub_2283F120C(a2 + v17, &v16[v18], qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v19 = *(v5 + 48);
  if (v19(v16, 1, active) == 1)
  {
    if (v19(&v16[v18], 1, active) == 1)
    {
      sub_2283F0474(v16, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2283F120C(v16, v11, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if (v19(&v16[v18], 1, active) == 1)
  {
    sub_22853D6C4(v11, type metadata accessor for ActiveSyncState);
LABEL_6:
    sub_22853EA34(v16, &qword_280DEBFA0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    return 0;
  }

  v21 = v23;
  sub_22853FAF0(&v16[v18], v23, type metadata accessor for ActiveSyncState);
  v22 = _s14HealthPlatform15ActiveSyncStateO2eeoiySbAC_ACtFZ_0(v11, v21);
  sub_22853D6C4(v21, type metadata accessor for ActiveSyncState);
  sub_22853D6C4(v11, type metadata accessor for ActiveSyncState);
  sub_2283F0474(v16, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  result = (*v24 | *a2) == 0;
  if (*v24)
  {
    if (*a2)
    {
      return [*v24 isEqual_];
    }
  }

  return result;
}

uint64_t sub_2283F0474(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2283F1134(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s14HealthPlatform25PregnancyStateInputSignalC10identifier0A13Orchestration0eF10IdentifierVvg_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C85C();
  v3 = __swift_project_value_buffer(v2, qword_280DEB2E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t HealthPlatformContextProvider.Context.description.getter()
{
  v1 = sub_22855C1DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 16) profileIdentifier];
  if ([v6 type] == 1)
  {

    return 0xD000000000000012;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_22855DC6C();

    v16 = 0x747865746E6F433CLL;
    v17 = 0xEA0000000000203ALL;
    [v6 type];
    v8 = HKStringFromProfileType();
    v9 = sub_22855D1AC();
    v11 = v10;

    MEMORY[0x22AAB92A0](v9, v11);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    v12 = [v6 identifier];
    sub_22855C1BC();

    v13 = MEMORY[0x22AAB8200]();
    v15 = v14;
    (*(v2 + 8))(v5, v1);
    MEMORY[0x22AAB92A0](v13, v15);

    MEMORY[0x22AAB92A0](62, 0xE100000000000000);

    return v16;
  }
}

unint64_t sub_2283F07A4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_2283EFEB0(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return [v2 isEqual_];
  }

  return result;
}

uint64_t sub_2283F0810(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855C37C();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v49 - v9;
  sub_2283F0D04(0, &qword_280DE9388, sub_228409D54, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = (&v49 - v14);
  v55 = v15;
  v53 = v8;
  v16 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v50 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v60 + 16;
  v57 = (v60 + 32);
  v52 = (v60 + 8);
  while (1)
  {
    v22 = v55;
    if (!v20)
    {
      break;
    }

    v58 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = *(*(v51 + 48) + 8 * v23);
    v30 = v59;
    v29 = v60;
    (*(v60 + 16))(v59, *(v51 + 56) + *(v60 + 72) * v23, v4);
    sub_228409D54();
    v32 = v31;
    v33 = *(v31 + 48);
    *v22 = v28;
    (*(v29 + 32))(&v22[v33], v30, v4);
    (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
    v34 = v28;
LABEL_17:
    v35 = v22;
    v36 = v54;
    sub_228409DC8(v35, v54, &qword_280DE9388, sub_228409D54);
    sub_228409D54();
    v37 = (*(*(v32 - 8) + 48))(v36, 1, v32);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *v36;
    v40 = v53;
    (*v57)(v53, v36 + *(v32 + 48), v4);
    v41 = sub_228409E5C(v39);
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      (*v52)(v40, v4);
      return 0;
    }

    v45 = v59;
    v44 = v60;
    (*(v60 + 16))(v59, *(a2 + 56) + *(v60 + 72) * v41, v4);
    sub_22840A300(&qword_280DE9FA0, 255, MEMORY[0x277D11290]);
    v46 = sub_22855D16C();
    v47 = *(v44 + 8);
    v47(v45, v4);
    result = (v47)(v40, v4);
    v20 = v58;
    if ((v46 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      sub_228409D54();
      v32 = v48;
      (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
      v58 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v50 + 8 * v26);
    ++v16;
    if (v27)
    {
      v58 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_2283F0D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283F0D74(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!v3)
    {
      if (a1 == a2)
      {
LABEL_34:
        LOBYTE(a1) = 1;
      }

      else
      {
        if (*(a1 + 16) == *(a2 + 16))
        {
          v7 = a2;
          v8 = 0;
          v9 = 1 << *(a1 + 32);
          v10 = -1;
          if (v9 < 64)
          {
            v10 = ~(-1 << v9);
          }

          v11 = v10 & *(a1 + 64);
          v12 = (v9 + 63) >> 6;
          while (v11)
          {
            v13 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
LABEL_31:
            v16 = v13 | (v8 << 6);
            v17 = *(*(v2 + 56) + 8 * v16);
            v18 = *(*(v2 + 48) + 8 * v16);
            v19 = v17;
            v20 = sub_228443BC4(v18);
            v22 = v21;

            if ((v22 & 1) == 0)
            {

              goto LABEL_36;
            }

            sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
            v23 = *(*(v7 + 56) + 8 * v20);
            v24 = sub_22855D9AC();

            a1 = 0;
            if ((v24 & 1) == 0)
            {
              return a1 & 1;
            }
          }

          v14 = v8;
          while (1)
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v8 >= v12)
            {
              goto LABEL_34;
            }

            v15 = *(v2 + 64 + 8 * v8);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v11 = (v15 - 1) & v15;
              goto LABEL_31;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

LABEL_36:
        LOBYTE(a1) = 0;
      }

      return a1 & 1;
    }

    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:
    sub_2283F0F8C(v5, a2, &unk_280DE9238, 0x277CCDAB0);
    return a1 & 1;
  }

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v4 = a1;
  }

  if (!v3)
  {
    v5 = v4;
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  a2 = v4;

  return MEMORY[0x2821FCF40](a1, a2);
}

void sub_2283F0F8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v6 = *(a2 + 16);
  if (v6 == sub_22855DB4C())
  {
    v7 = 0;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v12 | (v7 << 6);
      v16 = *(*(a2 + 56) + 8 * v15);
      v17 = *(*(a2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_22855DE8C();

      if (!v19)
      {

        return;
      }

      sub_2283EF310(0, a3, a4);
      swift_dynamicCast();
      v20 = sub_22855D9AC();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(a2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_2283F1134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2283F11A8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2283F1134(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2283F120C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2283F1134(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2283F1278()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_280DED198 = v0;
}

uint64_t static DiskHealthExperienceStore.shared.getter()
{
  if (qword_280DEE210 != -1)
  {
    swift_once();
  }
}

void sub_2283F1380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283F13E4()
{
  sub_2283F1380(0, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_22855C06C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for DiskHealthExperienceStore();
  v5 = swift_allocObject();
  result = DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(v3, 1);
  qword_280DEE220 = v5;
  return result;
}

uint64_t DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(uint64_t a1, int a2)
{
  v3 = v2;
  v73 = a2;
  v74 = 0;
  v60[1] = *v2;
  sub_2283F1380(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = v60 - v7;
  v64 = sub_22855D80C();
  v62 = *(v64 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F2168();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v65 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855D81C();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v70 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22855D7BC();
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v17 = sub_22855CFEC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v2[2] = 50;
  sub_2283F2234();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v60[2] = v19;
  swift_allocObject();
  v2[3] = sub_22855CD0C();
  v2[5] = 0;
  v22 = type metadata accessor for DiskHealthExperienceStore.MutableState();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_overrideStoreLocation;
  v27 = sub_22855C06C();
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  *(v25 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_mergeChangesCancellable) = 0;
  v28 = MEMORY[0x277D84F90];
  *(v25 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_observers) = MEMORY[0x277D84F90];
  *(v25 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_sharedBackgroundContext) = 0;
  *(v25 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_allEntities) = 0;
  swift_beginAccess();
  v68 = a1;
  sub_2283F247C(a1, v25 + v26);
  swift_endAccess();
  sub_2283F2538();
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 16) = v25;
  v3[4] = v29;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);

  sub_22855CFDC();
  v77 = v28;
  sub_2283F2298(&unk_280DED140, MEMORY[0x277D85230]);
  v30 = MEMORY[0x277D85230];
  sub_2283F1380(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283F4734(&qword_280DED240, &qword_280DED250, v30);
  sub_22855DA9C();
  (*(v71 + 104))(v70, *MEMORY[0x277D85260], v72);
  v31 = sub_22855D84C();
  v32 = v31;
  if (v73)
  {
    v77 = v3[3];

    v33 = v61;
    sub_22855D7FC();
    v75 = v32;
    v34 = sub_22855D7EC();
    v35 = v63;
    (*(*(v34 - 8) + 56))(v63, 1, 1, v34);
    sub_2283F2298(&qword_280DED2F0, sub_2283F2234);
    sub_2283F22E0();
    v36 = v65;
    sub_22855CF5C();
    sub_2283F4798(v35, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88], sub_2283F1380);
    (*(v62 + 8))(v33, v64);

    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_2284ECB00;
    *(v38 + 24) = v37;
    sub_2283F2298(qword_280DED320, sub_2283F2168);
    v39 = v67;
    sub_22855CF8C();

    (*(v66 + 8))(v36, v39);
    v40 = v3[4];

    os_unfair_lock_lock((v40 + 24));
    v41 = v74;
    sub_2283F4920((v40 + 16));
    os_unfair_lock_unlock((v40 + 24));
  }

  else
  {
    v41 = v74;
  }

  if (((*(*v3 + 112))(v31) & 1) == 0)
  {
    sub_2283F4798(v68, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);

    return v3;
  }

  sub_2283F4964();
  if (!v41)
  {
    v42 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
    v43 = sub_228400874();
    v44 = [v43 viewContext];

    [v44 setMergePolicy_];

    sub_2283F4798(v68, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
    return v3;
  }

  v77 = v41;
  v46 = v41;
  sub_2283F9B94(0, &qword_280DECFE0);
  if (swift_dynamicCast())
  {
    if (v76 == 1)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v47 = sub_22855CABC();
      __swift_project_value_buffer(v47, qword_280DEEC98);
      v48 = sub_22855CA8C();
      v49 = sub_22855D68C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v75 = v51;
        *v50 = 136315138;
        v52 = sub_228460FD8();
        v54 = sub_2283F8938(v52, v53, &v75);

        *(v50 + 4) = v54;
        v55 = "[%s] Device locked while opening experience store: exiting";
LABEL_20:
        _os_log_impl(&dword_2283ED000, v48, v49, v55, v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AABAD40](v51, -1, -1);
        MEMORY[0x22AABAD40](v50, -1, -1);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (v76 == 2)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v56 = sub_22855CABC();
      __swift_project_value_buffer(v56, qword_280DEEC98);
      v48 = sub_22855CA8C();
      v49 = sub_22855D68C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v75 = v51;
        *v50 = 136315138;
        v57 = sub_228460FD8();
        v59 = sub_2283F8938(v57, v58, &v75);

        *(v50 + 4) = v59;
        v55 = "[%s] Disk I/O Error (Disk Full?): exiting";
        goto LABEL_20;
      }

LABEL_21:

      exit(0);
    }
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_22855DC6C();
  v75 = v3;
  type metadata accessor for DiskHealthExperienceStore();
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](0xD000000000000028, 0x8000000228571D30);
  v75 = v41;
  sub_22855DDDC();
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2283F20F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2283F2130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2283F2168()
{
  if (!qword_280DED310)
  {
    sub_2283F2234();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283F2298(&qword_280DED2F0, sub_2283F2234);
    sub_2283F22E0();
    v0 = sub_22855CBFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED310);
    }
  }
}

void sub_2283F2234()
{
  if (!qword_280DED2E8)
  {
    v0 = sub_22855CD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED2E8);
    }
  }
}

uint64_t sub_2283F2298(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2283F22E0()
{
  result = qword_280DED130;
  if (!qword_280DED130)
  {
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED130);
  }

  return result;
}

uint64_t type metadata accessor for DiskHealthExperienceStore.MutableState()
{
  result = qword_280DEE318;
  if (!qword_280DEE318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2283F2394()
{
  sub_2283F1380(319, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2283F247C(uint64_t a1, uint64_t a2)
{
  sub_2283F1380(0, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2283F2538()
{
  if (!qword_280DED078)
  {
    type metadata accessor for DiskHealthExperienceStore.MutableState();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED078);
    }
  }
}

void sub_2283F25A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2283F25F8(unsigned __int8 *a1, char a2)
{
  v4 = v3;
  v180 = *v2;
  v181 = v2;
  v5 = *a1;
  if (v5 == 2)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEEC98);
    v7 = sub_22855CA8C();
    v8 = sub_22855D6AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2283ED000, v7, v8, "The store version does not exist or does not match the current version. Deleting Database.", v9, 2u);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    sub_2284E9CC0();
  }

  if (qword_280DEDE38 != -1)
  {
    swift_once();
  }

  v10 = qword_280DF6A98;
  v11 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v12 = sub_22855D17C();
  v13 = [v11 initWithName:v12 managedObjectModel:v10];

  sub_2283F88E8(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228560690;
  v15 = v13;
  *(v14 + 32) = sub_2283F64E4();
  sub_2283EF310(0, &unk_280DED0D8, 0x277CBE4E0);
  v16 = sub_22855D39C();

  [v15 setPersistentStoreDescriptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  aBlock[4] = sub_2283F843C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283F83B0;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);

  [v15 loadPersistentStoresWithCompletionHandler_];

  _Block_release(v18);
  swift_beginAccess();
  v19 = *(v17 + 16);
  if (!v19)
  {
    goto LABEL_61;
  }

  v20 = v19;
  v21 = [v20 code];
  if (v21 <= 134109)
  {
    if (v21 == 11)
    {
      if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0xB)
      {
        if ((a2 & 1) == 0)
        {
          v183 = 0;
          v184 = 0xE000000000000000;
          sub_22855DC6C();
          v186 = v181;
          type metadata accessor for DiskHealthExperienceStore();
          sub_22855DDDC();
          MEMORY[0x22AAB92A0](0xD000000000000065, 0x8000000228572160);
          goto LABEL_95;
        }

        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v52 = sub_22855CABC();
        __swift_project_value_buffer(v52, qword_280DEEC98);
        v53 = sub_22855CA8C();
        v54 = sub_22855D68C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v186 = v56;
          *v55 = 136315138;
          v183 = v180;
          swift_getMetatypeMetadata();
          v57 = sub_22855D1BC();
          v59 = sub_2283F8938(v57, v58, &v186);

          *(v55 + 4) = v59;
          _os_log_impl(&dword_2283ED000, v53, v54, "[%s] SQLITE_CORRUPT: CORRUPTION DETECTED", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x22AABAD40](v56, -1, -1);
          MEMORY[0x22AABAD40](v55, -1, -1);
        }

        v60 = sub_22855CA8C();
        v61 = sub_22855D68C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v186 = v63;
          *v62 = 136315138;
          v183 = v180;
          swift_getMetatypeMetadata();
          v64 = sub_22855D1BC();
          v66 = sub_2283F8938(v64, v65, &v186);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_2283ED000, v60, v61, "[%s] Attempting to recover by destroying persistent store and regenerating", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x22AABAD40](v63, -1, -1);
          MEMORY[0x22AABAD40](v62, -1, -1);
        }

        sub_2284E9CC0();
        LOBYTE(v183) = v5;
        v67 = sub_2283F25F8(&v183, 0);
        if (v3)
        {

          return v15;
        }

        v177 = v67;

        v101 = sub_22855CA8C();
        v102 = sub_22855D68C();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v183 = v104;
          *v103 = 136315138;
          v105 = sub_228460FD8();
          v107 = sub_2283F8938(v105, v106, &v183);

          *(v103 + 4) = v107;
          _os_log_impl(&dword_2283ED000, v101, v102, "[%s] Successfully recreated Core Data persistent store", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x22AABAD40](v104, -1, -1);
          MEMORY[0x22AABAD40](v103, -1, -1);
        }

        v4 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      if (v21 != 256)
      {
LABEL_40:
        if ((a2 & 1) == 0)
        {
          v183 = 0;
          v184 = 0xE000000000000000;
          sub_22855DC6C();
          v186 = v181;
          type metadata accessor for DiskHealthExperienceStore();
          sub_22855DDDC();
          MEMORY[0x22AAB92A0](0xD00000000000002CLL, 0x8000000228572110);
          v156 = [v20 description];
          v157 = sub_22855D1AC();
          v159 = v158;

          MEMORY[0x22AAB92A0](v157, v159);

          MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
          v160 = [v20 userInfo];
          sub_22855D0EC();

          v161 = sub_22855D0FC();
          v163 = v162;

          MEMORY[0x22AAB92A0](v161, v163);

          goto LABEL_95;
        }

        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v68 = sub_22855CABC();
        __swift_project_value_buffer(v68, qword_280DEEC98);
        v69 = v20;
        v70 = sub_22855CA8C();
        v71 = sub_22855D68C();

        v176 = v5;
        v173 = v69;
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v186 = v73;
          *v72 = 136315394;
          v183 = v180;
          swift_getMetatypeMetadata();
          v74 = sub_22855D1BC();
          v76 = sub_2283F8938(v74, v75, &v186);

          *(v72 + 4) = v76;
          *(v72 + 12) = 2082;
          v77 = v69;
          v78 = [v77 description];
          v79 = sub_22855D1AC();
          v81 = v80;

          v82 = sub_2283F8938(v79, v81, &v186);

          *(v72 + 14) = v82;
          _os_log_impl(&dword_2283ED000, v70, v71, "[%s] UNKNOWN CORE DATA ERROR DETECTED: %{public}s", v72, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABAD40](v73, -1, -1);
          MEMORY[0x22AABAD40](v72, -1, -1);
        }

        v83 = sub_22855CA8C();
        v84 = sub_22855D68C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v186 = v86;
          *v85 = 136315138;
          v183 = v180;
          swift_getMetatypeMetadata();
          v87 = sub_22855D1BC();
          v89 = sub_2283F8938(v87, v88, &v186);

          *(v85 + 4) = v89;
          _os_log_impl(&dword_2283ED000, v83, v84, "[%s] Attempting to recover by destroying persistent store and regenerating", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x22AABAD40](v86, -1, -1);
          MEMORY[0x22AABAD40](v85, -1, -1);
        }

        v5 = v176;
        sub_2284E9CC0();
        LOBYTE(v183) = v176;
        v90 = sub_2283F25F8(&v183, 0);
        v4 = v3;
        if (v3)
        {

          return v15;
        }

        v155 = v90;

        v15 = v155;
LABEL_61:
        if ((v5 - 1) >= 2)
        {
          if (v5 != 3)
          {
LABEL_75:
            v132 = [v15 persistentStoreCoordinator];
            v133 = [v132 persistentStores];

            sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
            v134 = sub_22855D3AC();

            v135 = [v15 persistentStoreCoordinator];
            sub_2283F42F4(v134);

            v136 = sub_22855D39C();

            v137 = [v135 currentPersistentHistoryTokenFromStores_];

            v138 = *(v181 + 32);
            MEMORY[0x28223BE20](v139);
            os_unfair_lock_lock(v138 + 6);
            sub_228400410(&v138[4]);
            v140 = v138 + 6;
            if (!v4)
            {
              os_unfair_lock_unlock(v140);
              if (qword_280DEEC90 != -1)
              {
                swift_once();
              }

              v141 = sub_22855CABC();
              __swift_project_value_buffer(v141, qword_280DEEC98);
              v142 = sub_22855CA8C();
              v143 = sub_22855D6AC();
              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v145 = v15;
                v146 = swift_slowAlloc();
                v186 = v146;
                *v144 = 136315394;
                v183 = v180;
                swift_getMetatypeMetadata();
                v147 = sub_22855D1BC();
                v149 = sub_2283F8938(v147, v148, &v186);

                *(v144 + 4) = v149;
                *(v144 + 12) = 2080;
                if (a2)
                {
                  v150 = 0x7972746572;
                }

                else
                {
                  v150 = 0x7972746572206F6ELL;
                }

                if (a2)
                {
                  v151 = 0xE500000000000000;
                }

                else
                {
                  v151 = 0xE800000000000000;
                }

                v152 = sub_2283F8938(v150, v151, &v186);

                *(v144 + 14) = v152;
                _os_log_impl(&dword_2283ED000, v142, v143, "[%s] unsafeMakePersistentContainer(retryOnFailure: %s)", v144, 0x16u);
                swift_arrayDestroy();
                v153 = v146;
                v15 = v145;
                MEMORY[0x22AABAD40](v153, -1, -1);
                MEMORY[0x22AABAD40](v144, -1, -1);
              }

              sub_22840044C(v15);

              return v15;
            }

            os_unfair_lock_unlock(v140);

            __break(1u);
            goto LABEL_90;
          }

          if (qword_280DEEC90 != -1)
          {
            swift_once();
          }

          v108 = sub_22855CABC();
          __swift_project_value_buffer(v108, qword_280DEEC98);
          v109 = sub_22855CA8C();
          v110 = sub_22855D6AC();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_2283ED000, v109, v110, "destroyStoreIfNeededAndMakePersistentContainer - removeAllFeedItemNotifications", v111, 2u);
            MEMORY[0x22AABAD40](v111, -1, -1);
          }

          sub_2284E9E64();
          v112 = sub_22855CA8C();
          v113 = sub_22855D6AC();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v183 = v115;
            *v114 = 136315138;
            LOBYTE(v186) = 3;
            v116 = sub_22855D1BC();
            v118 = sub_2283F8938(v116, v117, &v183);

            *(v114 + 4) = v118;
            _os_log_impl(&dword_2283ED000, v112, v113, "destroyStoreIfNeededAndMakePersistentContainer - wiping data due to storeState %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v115);
            MEMORY[0x22AABAD40](v115, -1, -1);
            MEMORY[0x22AABAD40](v114, -1, -1);
          }

          v119 = [v15 newBackgroundContext];
          [v119 setAutomaticallyMergesChangesFromParent_];
          v120 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
          [v119 setMergePolicy_];

          v121 = [v15 managedObjectModel];
          v122 = [v121 entities];

          sub_2283EF310(0, &qword_27D840278, 0x277CBE408);
          v123 = sub_22855D3AC();

          sub_2284E98E4(v123, v119);
        }

        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v124 = sub_22855CABC();
        __swift_project_value_buffer(v124, qword_280DEEC98);
        v125 = sub_22855CA8C();
        v126 = sub_22855D6AC();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v183 = v128;
          *v127 = 136315138;
          LOBYTE(v186) = v5;
          v129 = sub_22855D1BC();
          v131 = sub_2283F8938(v129, v130, &v183);

          *(v127 + 4) = v131;
          _os_log_impl(&dword_2283ED000, v125, v126, "destroyStoreIfNeededAndMakePersistentContainer - updating metadata due to storeState %s", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v128);
          MEMORY[0x22AABAD40](v128, -1, -1);
          MEMORY[0x22AABAD40](v127, -1, -1);
        }

        sub_2284ED03C(v15);
        goto LABEL_75;
      }

      if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x17)
      {
        sub_2284ECB98();
        swift_allocError();
        *v44 = 1;
        swift_willThrow();

        return v15;
      }

      if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x120A || (sub_2284EB90C() & 0x1FFFFFFFFLL) == 0xD)
      {
        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v91 = sub_22855CABC();
        __swift_project_value_buffer(v91, qword_280DEEC98);
        v92 = v20;
        v93 = sub_22855CA8C();
        v94 = sub_22855D68C();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v186 = v182;
          *v95 = 136315394;
          v183 = v180;
          swift_getMetatypeMetadata();
          v96 = sub_22855D1BC();
          v98 = sub_2283F8938(v96, v97, &v186);

          *(v95 + 4) = v98;
          *(v95 + 12) = 2112;
          *(v95 + 14) = v92;
          *v179 = v19;
          v99 = v92;
          _os_log_impl(&dword_2283ED000, v93, v94, "[%s] Received a CoreData error %@", v95, 0x16u);
          sub_22841DC98(v179);
          MEMORY[0x22AABAD40](v179, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v182);
          MEMORY[0x22AABAD40](v182, -1, -1);
          MEMORY[0x22AABAD40](v95, -1, -1);
        }

        sub_2284ECB98();
        swift_allocError();
        *v100 = 2;
        swift_willThrow();

        return v15;
      }
    }

    v183 = 0;
    v184 = 0xE000000000000000;
    sub_22855DC6C();
    v186 = v181;
    type metadata accessor for DiskHealthExperienceStore();
    sub_22855DDDC();
    MEMORY[0x22AAB92A0](0xD000000000000019, 0x8000000228572140);
    v164 = [v20 description];
    v165 = sub_22855D1AC();
    v167 = v166;

    MEMORY[0x22AAB92A0](v165, v167);

    MEMORY[0x22AAB92A0](0x203A65646F6320, 0xE700000000000000);
    v186 = [v20 code];
    v168 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v168);

    MEMORY[0x22AAB92A0](0x666E497265737520, 0xEB00000000203A6FLL);
    v169 = [v20 userInfo];
    sub_22855D0EC();

    v170 = sub_22855D0FC();
    v172 = v171;

    MEMORY[0x22AAB92A0](v170, v172);

    goto LABEL_95;
  }

  if (v21 != 134110 && v21 != 134190 && v21 != 134170)
  {
    goto LABEL_40;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v22 = sub_22855CABC();
  __swift_project_value_buffer(v22, qword_280DEEC98);
  v23 = v20;
  v24 = sub_22855CA8C();
  v25 = sub_22855D68C();

  v175 = v5;
  v174 = v23;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v186 = v27;
    *v26 = 136315394;
    v183 = v180;
    swift_getMetatypeMetadata();
    v28 = sub_22855D1BC();
    v30 = sub_2283F8938(v28, v29, &v186);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = [v23 userInfo];
    sub_22855D0EC();

    v32 = sub_22855D0FC();
    v34 = v33;

    v35 = sub_2283F8938(v32, v34, &v186);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_2283ED000, v24, v25, "[%s] Migration error when loading Core Data persistent store: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v27, -1, -1);
    MEMORY[0x22AABAD40](v26, -1, -1);
  }

  if (a2)
  {
    v36 = sub_22855CA8C();
    v37 = sub_22855D66C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v186 = v39;
      *v38 = 136315138;
      v183 = v180;
      swift_getMetatypeMetadata();
      v40 = sub_22855D1BC();
      v42 = sub_2283F8938(v40, v41, &v186);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2283ED000, v36, v37, "[%s] Attempting to recover by destroying persistent store and regenerating", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v38, -1, -1);
    }

    v5 = v175;
    sub_2284E9CC0();
    LOBYTE(v183) = v175;
    v43 = sub_2283F25F8(&v183, 0);
    v4 = v3;
    if (v3)
    {

      return v15;
    }

    v177 = v43;

    v45 = sub_22855CA8C();
    v46 = sub_22855D66C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v186 = v48;
      *v47 = 136315138;
      v183 = v180;
      swift_getMetatypeMetadata();
      v49 = sub_22855D1BC();
      v51 = sub_2283F8938(v49, v50, &v186);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2283ED000, v45, v46, "[%s] Successfully recreated Core Data persistent store", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AABAD40](v48, -1, -1);
      MEMORY[0x22AABAD40](v47, -1, -1);
    }

LABEL_60:
    v15 = v177;
    goto LABEL_61;
  }

LABEL_90:
  v183 = 0;
  v184 = 0xE000000000000000;
  sub_22855DC6C();
  v186 = v181;
  type metadata accessor for DiskHealthExperienceStore();
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](0xD000000000000037, 0x80000002285721D0);
LABEL_95:
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2283F42B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_2283F42F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2283F85B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAB9D20](i, a1);
        sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2283F85B8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_228400400(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2283F85B8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_228400400(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_2283F44F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &unk_280DECFF0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
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

uint64_t sub_2283F461C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283FA2E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F466C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283FA3A0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F46D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283F4CD8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F4734(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283F1380(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283F4798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2283F47F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283F4858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283F48B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2283F4920(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_mergeChangesCancellable);
  *(v2 + OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_mergeChangesCancellable) = v1;
}

id sub_2283F4964()
{
  v2 = *v0;
  v3 = type metadata accessor for FileMonitorPublisher();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v2 + 240))(v5);
  if (!v1)
  {
    v9 = v0[5];
    v0[5] = result;
    v16[1] = 0;

    v10 = [objc_opt_self() defaultCenter];
    v11 = *MEMORY[0x277CBE260];
    v12 = sub_228400874();
    v13 = [v12 persistentStoreCoordinator];

    [v10 addObserver:v0 selector:sel_mergeExternalChanges name:v11 object:v13];
    result = [objc_opt_self() isAppleInternalInstall];
    if (result)
    {
      v14 = &v7[*(v3 + 24)];
      sub_2283F6EA4();
      v15 = &v7[*(v3 + 28)];
      sub_22855D87C();
      *v7 = -1;
      *(v7 + 1) = 0;
      *(swift_allocObject() + 16) = v2;
      sub_2283F2298(qword_280DED868, type metadata accessor for FileMonitorPublisher);
      sub_22855CE4C();

      return sub_2284ECB2C(v7);
    }
  }

  return result;
}

uint64_t type metadata accessor for FileMonitorPublisher()
{
  result = qword_280DED858;
  if (!qword_280DED858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2283F4BFC()
{
  sub_2283F4CD8(319, &qword_280DED0F8, sub_2283F4D3C, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22855C06C();
    if (v1 <= 0x3F)
    {
      sub_22855D89C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2283F4CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2283F4D3C()
{
  result = qword_280DED100;
  if (!qword_280DED100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DED100);
  }

  return result;
}

void sub_2283F4DA0()
{
  v2 = v0;
  sub_2283F50B4(&v24);
  if (!v1)
  {
    v3 = v24;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v4 = sub_22855CABC();
    __swift_project_value_buffer(v4, qword_280DEEC98);
    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      v21 = v3;
      v9 = sub_22855D1BC();
      v11 = sub_2283F8938(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2283ED000, v5, v6, "destroyStoreIfNeededAndMakePersistentContainer - storeState: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    v12 = sub_22855CA8C();
    v13 = sub_22855D6AC();
    v14 = os_log_type_enabled(v12, v13);
    if ((v3 - 1) > 1)
    {
      if (v14)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2283ED000, v12, v13, "destroyStoreIfNeededAndMakePersistentContainer - fast path", v19, 2u);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      v23 = v3;
      sub_2283F25F8(&v23, 1);
    }

    else
    {
      if (v14)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2283ED000, v12, v13, "destroyStoreIfNeededAndMakePersistentContainer - safe path", v15, 2u);
        MEMORY[0x22AABAD40](v15, -1, -1);
      }

      v16 = sub_22855CA8C();
      v17 = sub_22855D6AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2283ED000, v16, v17, "destroyStoreIfNeededAndMakePersistentContainer - removeAllFeedItemNotifications", v18, 2u);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      sub_2284E9E64();
      v22 = v3;
      (*(*v2 + 288))(&v22, 1);
    }
  }
}

void sub_2283F50B4(char *a1@<X8>)
{
  v2 = v1;
  v155 = *MEMORY[0x277D85DE8];
  v4 = sub_22855C29C();
  v147 = *(v4 - 8);
  v5 = *(v147 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v146 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v140 - v8;
  v10 = sub_22855C06C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2283F64E4();
  v16 = [v15 URL];

  if (!v16)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v36 = sub_22855CABC();
    __swift_project_value_buffer(v36, qword_280DEEC98);
    v37 = sub_22855CA8C();
    v38 = sub_22855D68C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = a1;
      v41 = swift_slowAlloc();
      *&v153 = v41;
      *v39 = 136315138;
      *(v39 + 4) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
      _os_log_impl(&dword_2283ED000, v37, v38, "%s no url, store doesn't exist, storeState=.missing", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v39, -1, -1);

      *v40 = 1;
LABEL_51:
      v80 = *MEMORY[0x277D85DE8];
      return;
    }

    v57 = 1;
LABEL_28:
    *a1 = v57;
    goto LABEL_51;
  }

  v149 = v10;
  v150 = v11;
  sub_22855C00C();

  v17 = objc_opt_self();
  v18 = *MEMORY[0x277CBE2E8];
  v148 = v14;
  v19 = sub_22855BFBC();
  *&v153 = 0;
  v20 = [v17 metadataForPersistentStoreOfType:v18 URL:v19 options:0 error:&v153];

  v21 = v153;
  if (!v20)
  {
    v42 = v153;
    v43 = sub_22855BF3C();

    swift_willThrow();
    v44 = sub_22855BF2C();
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v45 = sub_22855CABC();
    __swift_project_value_buffer(v45, qword_280DEEC98);
    v46 = v44;
    v47 = sub_22855CA8C();
    v48 = sub_22855D68C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v153 = v51;
      *v49 = 136315394;
      *(v49 + 4) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
      *(v49 + 12) = 2112;
      *(v49 + 14) = v46;
      *v50 = v46;
      v52 = v46;
      _os_log_impl(&dword_2283ED000, v47, v48, "%s could not get metadata for store with error %@)", v49, 0x16u);
      sub_22841DC98(v50);
      MEMORY[0x22AABAD40](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AABAD40](v51, -1, -1);
      MEMORY[0x22AABAD40](v49, -1, -1);
    }

    v54 = v149;
    v53 = v150;
    v55 = v148;
    if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x17)
    {
      v56 = 1;
LABEL_32:
      sub_2284ECB98();
      swift_allocError();
      *v58 = v56;
      swift_willThrow();

      (*(v53 + 8))(v55, v54);
      goto LABEL_51;
    }

    if ((sub_2284EB90C() & 0x1FFFFFFFFLL) == 0x120A || (sub_2284EB90C() & 0x1FFFFFFFFLL) == 0xD)
    {
      v56 = 2;
      goto LABEL_32;
    }

    v81 = sub_22855CA8C();
    v82 = sub_22855D68C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v153 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
      _os_log_impl(&dword_2283ED000, v81, v82, "%s no metadata, storeState=.needsUpgrade", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x22AABAD40](v84, -1, -1);
      MEMORY[0x22AABAD40](v83, -1, -1);
    }

    (*(v53 + 8))(v55, v54);
    v57 = 2;
    goto LABEL_28;
  }

  v145 = a1;
  v22 = sub_22855D0EC();
  v23 = v21;

  if (!*(v22 + 16) || (v24 = sub_2283F6D18(0xD000000000000023, 0x800000022856E7D0), (v25 & 1) == 0) || (sub_2283F6E48(*(v22 + 56) + 32 * v24, &v153), (swift_dynamicCast() & 1) == 0))
  {
LABEL_34:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v59 = sub_22855CABC();
    __swift_project_value_buffer(v59, qword_280DEEC98);

    v60 = sub_22855CA8C();
    v61 = sub_22855D6AC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v151 = v63;
      *v62 = 136315906;
      v64 = DiskHealthExperienceStore.debugDescription.getter();
      v66 = sub_2283F8938(v64, v65, &v151);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v151);
      *(v62 + 22) = 2080;
      if (*(v22 + 16))
      {
        v67 = sub_2283F6D18(0xD000000000000023, 0x800000022856E7D0);
        v68 = MEMORY[0x277D84F70];
        if (v69)
        {
          sub_2283F6E48(*(v22 + 56) + 32 * v67, &v153);
        }

        else
        {
          v153 = 0u;
          v154 = 0u;
        }

        v71 = v145;
      }

      else
      {
        v153 = 0u;
        v154 = 0u;
        v71 = v145;
        v68 = MEMORY[0x277D84F70];
      }

      sub_2283F88E8(0, &qword_280DECFD0, v68 + 8, MEMORY[0x277D83D88]);
      v72 = sub_22855D1BC();
      v74 = sub_2283F8938(v72, v73, &v151);

      *(v62 + 24) = v74;
      *(v62 + 32) = 2080;
      if (*(v22 + 16) && (v75 = sub_2283F6D18(0xD000000000000022, 0x8000000228571E20), (v76 & 1) != 0))
      {
        sub_2283F6E48(*(v22 + 56) + 32 * v75, &v153);
      }

      else
      {

        v153 = 0u;
        v154 = 0u;
      }

      v77 = sub_22855D1BC();
      v79 = sub_2283F8938(v77, v78, &v151);

      *(v62 + 34) = v79;
      _os_log_impl(&dword_2283ED000, v60, v61, "%s %s storeState=.needsUpgrade, storeVersion=%s, storeLocale=%s", v62, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v63, -1, -1);
      MEMORY[0x22AABAD40](v62, -1, -1);

      (*(v150 + 8))(v148, v149);
      *v71 = 2;
      goto LABEL_51;
    }

    goto LABEL_40;
  }

  v26 = v152;
  if (!*(v22 + 16) || (v27 = v151, v28 = sub_2283F6D18(0xD000000000000022, 0x8000000228571E20), (v29 & 1) == 0) || (sub_2283F6E48(*(v22 + 56) + 32 * v28, &v153), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_34;
  }

  v30 = v152;
  v143 = v151;
  v144 = v26;
  if (qword_280DEE228 != -1)
  {
    swift_once();
  }

  v31 = xmmword_280DEE230;
  v142 = v27;
  if ((v27 != xmmword_280DEE230 || v144 != *(&xmmword_280DEE230 + 1)) && (sub_22855E15C() & 1) == 0)
  {
    v147 = *(&v31 + 1);

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v117 = sub_22855CABC();
    __swift_project_value_buffer(v117, qword_280DEEC98);

    v118 = v144;

    v60 = sub_22855CA8C();
    v119 = sub_22855D6AC();

    if (os_log_type_enabled(v60, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v153 = v121;
      *v120 = 136315906;
      v122 = DiskHealthExperienceStore.debugDescription.getter();
      v124 = sub_2283F8938(v122, v123, &v153);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2080;
      *(v120 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
      *(v120 + 22) = 2080;
      *(v120 + 24) = sub_2283F8938(v31, v147, &v153);
      *(v120 + 32) = 2080;
      v125 = sub_2283F8938(v142, v118, &v153);

      *(v120 + 34) = v125;
      _os_log_impl(&dword_2283ED000, v60, v119, "%s %s storeState=.needsUpgrade due to mismatch in storeVersion: requiredVersion=%s, currentVersion=%s", v120, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v121, -1, -1);
      MEMORY[0x22AABAD40](v120, -1, -1);

      goto LABEL_41;
    }

LABEL_40:

LABEL_41:
    (*(v150 + 8))(v148, v149);
    v70 = 2;
LABEL_42:
    *v145 = v70;
    goto LABEL_51;
  }

  sub_22855C25C();
  v32 = sub_2283F79F8();
  v34 = v33;
  v147 = *(v147 + 8);
  (v147)(v9, v4);
  if (v143 == v32 && v30 == v34)
  {
  }

  else
  {
    v85 = sub_22855E15C();

    if ((v85 & 1) == 0)
    {

      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v126 = sub_22855CABC();
      __swift_project_value_buffer(v126, qword_280DEEC98);

      v127 = sub_22855CA8C();
      v128 = sub_22855D6AC();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *&v153 = v144;
        *v129 = 136315906;
        v130 = DiskHealthExperienceStore.debugDescription.getter();
        v132 = sub_2283F8938(v130, v131, &v153);

        *(v129 + 4) = v132;
        *(v129 + 12) = 2080;
        *(v129 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
        *(v129 + 22) = 2080;
        v133 = sub_2283F8938(v143, v30, &v153);

        *(v129 + 24) = v133;
        *(v129 + 32) = 2080;
        v134 = v146;
        sub_22855C25C();
        v135 = sub_2283F79F8();
        v137 = v136;
        (v147)(v134, v4);
        v138 = sub_2283F8938(v135, v137, &v153);

        *(v129 + 34) = v138;
        _os_log_impl(&dword_2283ED000, v127, v128, "%s %s storeState=.needsDataWipe due to mismatch in locale: storeLocale=%s, Locale.current=%s", v129, 0x2Au);
        v139 = v144;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v139, -1, -1);
        MEMORY[0x22AABAD40](v129, -1, -1);
      }

      else
      {
      }

      (*(v150 + 8))(v148, v149);
LABEL_82:
      v70 = 3;
      goto LABEL_42;
    }
  }

  if ((*(*v2 + 112))(v35))
  {

LABEL_65:
    v98 = v30;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v99 = sub_22855CABC();
    __swift_project_value_buffer(v99, qword_280DEEC98);

    v100 = v144;

    v101 = sub_22855CA8C();
    v102 = sub_22855D6AC();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v140 = v4;
      v104 = v98;
      v105 = v103;
      v141 = swift_slowAlloc();
      *&v153 = v141;
      *v105 = 136316162;
      v106 = DiskHealthExperienceStore.debugDescription.getter();
      v108 = sub_2283F8938(v106, v107, &v153);

      *(v105 + 4) = v108;
      *(v105 + 12) = 2080;
      *(v105 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
      *(v105 + 22) = 2080;
      v109 = sub_2283F8938(v142, v100, &v153);

      *(v105 + 24) = v109;
      *(v105 + 32) = 2080;
      v110 = sub_2283F8938(v143, v104, &v153);

      *(v105 + 34) = v110;
      *(v105 + 42) = 2080;
      v111 = v146;
      sub_22855C25C();
      v112 = sub_2283F79F8();
      v114 = v113;
      (v147)(v111, v140);
      v115 = sub_2283F8938(v112, v114, &v153);

      *(v105 + 44) = v115;
      _os_log_impl(&dword_2283ED000, v101, v102, "%s %s storeState=.ready, storeVersion=%s, storeLocale=%s, Locale.current=%s", v105, 0x34u);
      v116 = v141;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v116, -1, -1);
      MEMORY[0x22AABAD40](v105, -1, -1);
    }

    else
    {
    }

    (*(v150 + 8))(v148, v149);
    *v145 = 0;
    goto LABEL_51;
  }

  v86 = [objc_opt_self() sharedBehavior];
  if (v86)
  {
    v87 = v86;

    v88 = [v87 healthAppHiddenOrNotInstalled];

    if ((v88 & 1) == 0)
    {
      goto LABEL_65;
    }

    v89 = v150;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v90 = sub_22855CABC();
    __swift_project_value_buffer(v90, qword_280DEEC98);

    v91 = sub_22855CA8C();
    v92 = sub_22855D6AC();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v153 = v94;
      *v93 = 136315394;
      v95 = DiskHealthExperienceStore.debugDescription.getter();
      v97 = sub_2283F8938(v95, v96, &v153);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2080;
      *(v93 + 14) = sub_2283F8938(0x65726F7453746567, 0xEF29286574617453, &v153);
      _os_log_impl(&dword_2283ED000, v91, v92, "%s %s storeState=.needsDataWipe due health app installation state", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v94, -1, -1);
      MEMORY[0x22AABAD40](v93, -1, -1);
    }

    (*(v89 + 8))(v148, v149);
    goto LABEL_82;
  }

  __break(1u);
}

id sub_2283F64E4()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F66B0(v4);
  v5 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v6 = sub_22855BFBC();
  v7 = [v5 initWithURL_];

  (*(v1 + 8))(v4, v0);
  sub_2283EF310(0, &qword_280DED090, 0x277CCABB0);
  v8 = sub_22855D98C();
  [v7 setOption:v8 forKey:*MEMORY[0x277CBE210]];

  v9 = sub_22855D98C();
  [v7 setOption:v9 forKey:*MEMORY[0x277CBE268]];

  [v7 setOption:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CBE240]];
  v10 = sub_22855D98C();
  [v7 setOption:v10 forKey:*MEMORY[0x277CBE2D8]];

  return v7;
}

uint64_t sub_2283F66B0@<X0>(uint64_t a1@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = sub_22855C06C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  sub_2283F1380(0, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = *(v1 + 32);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  v20 = OBJC_IVAR____TtCC14HealthPlatform25DiskHealthExperienceStoreP33_1ADB8C54860F87AD2EA0C72047ADEDD912MutableState_overrideStoreLocation;
  swift_beginAccess();
  sub_2283F6AF4(v19 + v20, v17);
  os_unfair_lock_unlock((v18 + 24));
  sub_2283F6AF4(v17, v15);
  if ((*(v4 + 48))(v15, 1, v3) != 1)
  {
    v10 = v15;
    goto LABEL_5;
  }

  sub_2283F4798(v15, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
  sub_2283F6EA4();
  v21 = [objc_opt_self() defaultManager];
  sub_22855BFFC();
  v22 = sub_22855BFBC();
  (*(v4 + 8))(v8, v3);
  v32 = 0;
  v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v32];

  if (v23)
  {
    v24 = v32;
LABEL_5:
    sub_2283F4798(v17, &qword_280DEE390, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2283F1380);
    result = (*(v4 + 32))(a1, v10, v3);
    v26 = *MEMORY[0x277D85DE8];
    return result;
  }

  v27 = v32;
  v28 = sub_22855BF3C();

  swift_willThrow();
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_22855DC6C();

  v32 = 0xD00000000000002ALL;
  v33 = 0x8000000228572280;
  v31 = v28;
  v29 = v28;
  sub_2283F9B94(0, &qword_280DECFE0);
  v30 = sub_22855D1CC();
  MEMORY[0x22AAB92A0](v30);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2283F6AF4(uint64_t a1, uint64_t a2)
{
  sub_2283F6B58();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2283F6B58()
{
  if (!qword_280DEE390)
  {
    sub_22855C06C();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE390);
    }
  }
}

uint64_t static StorageLocations.homeMobileDirectory.getter()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22855D0EC();
  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000024, 0x800000022856FC60), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];

    sub_22855BF8C();
  }

  else
  {

    return sub_22855BF8C();
  }
}

unint64_t sub_2283F6D18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22855E22C();
  sub_22855D20C();
  v6 = sub_22855E27C();

  return sub_2283F6D90(a1, a2, v6);
}

unint64_t sub_2283F6D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22855E15C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2283F6E48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2283F6EA4()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  type metadata accessor for StorageLocations();
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  v14 = *(v1 + 8);
  v14(v5, v0);
  sub_22855BFCC();
  v14(v8, v0);
  sub_22855BFDC();
  v14(v11, v0);
  sub_22855BFEC();
  return (v14)(v13, v0);
}

uint64_t sub_2283F70B8()
{
  sub_2283F7120();
  MEMORY[0x22AAB92A0]();

  qword_280DEE230 = 0xD00000000000001DLL;
  unk_280DEE238 = 0x8000000228570620;
  return result;
}

void sub_2283F7120()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_53;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v4 = [v3 hermit];

  v57[0] = 0x74696D726548;
  v57[1] = 0xE600000000000000;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v5, v6);

  v7 = v57[0];
  v8 = v57[1];
  v9 = sub_2283F7678(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_2283F7678((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v13 = [v0 sharedBehavior];
  if (!v13)
  {
    goto LABEL_54;
  }

  v14 = v13;
  v15 = [v13 features];

  if (!v15)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = [v15 vrx];

  v57[0] = 5788246;
  v57[1] = 0xE300000000000000;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v16)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v17, v18);

  v19 = v57[0];
  v20 = v57[1];
  v22 = *(v9 + 2);
  v21 = *(v9 + 3);
  if (v22 >= v21 >> 1)
  {
    v9 = sub_2283F7678((v21 > 1), v22 + 1, 1, v9);
  }

  *(v9 + 2) = v22 + 1;
  v23 = &v9[16 * v22];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  v24 = [v0 sharedBehavior];
  if (!v24)
  {
    goto LABEL_56;
  }

  v25 = v24;
  v26 = [v24 features];

  if (!v26)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = [v26 chamomile];

  strcpy(v57, "Chamomile");
  WORD1(v57[1]) = 0;
  HIDWORD(v57[1]) = -385875968;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v27)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v28, v29);

  v30 = v57[0];
  v31 = v57[1];
  v33 = *(v9 + 2);
  v32 = *(v9 + 3);
  if (v33 >= v32 >> 1)
  {
    v9 = sub_2283F7678((v32 > 1), v33 + 1, 1, v9);
  }

  *(v9 + 2) = v33 + 1;
  v34 = &v9[16 * v33];
  *(v34 + 4) = v30;
  *(v34 + 5) = v31;
  v35 = [v0 sharedBehavior];
  if (!v35)
  {
    goto LABEL_58;
  }

  v36 = v35;
  v37 = [v35 features];

  if (!v37)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v38 = [v37 simplifiedLogging];

  v57[0] = 0xD000000000000011;
  v57[1] = 0x8000000228570640;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v38)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v39, v40);

  v41 = v57[0];
  v42 = v57[1];
  v44 = *(v9 + 2);
  v43 = *(v9 + 3);
  if (v44 >= v43 >> 1)
  {
    v9 = sub_2283F7678((v43 > 1), v44 + 1, 1, v9);
  }

  *(v9 + 2) = v44 + 1;
  v45 = &v9[16 * v44];
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  v46 = [v0 sharedBehavior];
  if (!v46)
  {
    goto LABEL_60;
  }

  v47 = v46;
  v48 = [v46 features];

  if (!v48)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v49 = [v48 sleepDetails];

  strcpy(v57, "SleepDetails");
  BYTE5(v57[1]) = 0;
  HIWORD(v57[1]) = -5120;
  MEMORY[0x22AAB92A0](45, 0xE100000000000000);
  if (v49)
  {
    v50 = 1702195828;
  }

  else
  {
    v50 = 0x65736C6166;
  }

  if (v49)
  {
    v51 = 0xE400000000000000;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v50, v51);

  v52 = v57[0];
  v53 = v57[1];
  v55 = *(v9 + 2);
  v54 = *(v9 + 3);
  if (v55 >= v54 >> 1)
  {
    v9 = sub_2283F7678((v54 > 1), v55 + 1, 1, v9);
  }

  *(v9 + 2) = v55 + 1;
  v56 = &v9[16 * v55];
  *(v56 + 4) = v52;
  *(v56 + 5) = v53;
  v57[0] = v9;
  sub_2283F78D8();
  sub_2283F7928();
  sub_22855D15C();
}

char *sub_2283F7678(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void sub_2283F779C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F77EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F783C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F788C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22855D47C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2283F78D8()
{
  if (!qword_280DEE7C8)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7C8);
    }
  }
}

unint64_t sub_2283F7928()
{
  result = qword_280DEE7C0;
  if (!qword_280DEE7C0)
  {
    sub_2283F779C(255, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE7C0);
  }

  return result;
}

unint64_t sub_2283F79A4()
{
  result = qword_280DED2B8;
  if (!qword_280DED2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2B8);
  }

  return result;
}

uint64_t sub_2283F79F8()
{
  v0 = MEMORY[0x277D83D88];
  sub_2283F1380(0, &qword_280DEE368, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v33 - v3;
  v5 = sub_22855C27C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F1380(0, &qword_280DEE370, MEMORY[0x277CC9640], v0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v33 - v12;
  v14 = [objc_opt_self() preferredLanguages];
  v15 = sub_22855D3AC();

  if (v15[2])
  {
    v17 = v15[4];
    v16 = v15[5];
  }

  else
  {

    sub_22855C28C();
    sub_22855C26C();
    (*(v6 + 8))(v9, v5);
    v18 = sub_22855C21C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) == 1)
    {
      sub_2283F4798(v13, &qword_280DEE370, MEMORY[0x277CC9640], MEMORY[0x277D83D88], sub_2283F1380);
      v16 = 0xE200000000000000;
      v17 = 28261;
    }

    else
    {
      v17 = sub_22855C20C();
      v16 = v20;
      (*(v19 + 8))(v13, v18);
    }
  }

  sub_22855C24C();
  v21 = sub_22855C23C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    sub_2283F4798(v4, &qword_280DEE368, MEMORY[0x277CC9698], MEMORY[0x277D83D88], sub_2283F1380);
    v23 = 0xE200000000000000;
    v24 = 21333;
  }

  else
  {
    v24 = sub_22855C20C();
    v23 = v25;
    (*(v22 + 8))(v4, v21);
  }

  v34 = v17;
  v35 = v16;
  v33[0] = 45;
  v33[1] = 0xE100000000000000;
  sub_2283F79A4();
  v26 = sub_22855DA5C();
  if (v26[2] < 2uLL)
  {
    goto LABEL_15;
  }

  v28 = v26[4];
  v27 = v26[5];
  v30 = v26[6];
  v29 = v26[7];

  if (v30 != v24 || v29 != v23)
  {
    v31 = sub_22855E15C();

    if (v31)
    {
      goto LABEL_14;
    }

LABEL_15:

    v34 = v17;
    v35 = v16;
    goto LABEL_16;
  }

LABEL_14:

  v34 = v28;
  v35 = v27;
LABEL_16:
  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  MEMORY[0x22AAB92A0](v24, v23);

  return v34;
}

uint64_t DiskHealthExperienceStore.debugDescription.getter()
{
  v1 = v0;
  v2 = v0[4];
  os_unfair_lock_lock((v2 + 24));
  v3 = *(*(v2 + 16) + 24);
  if (v3)
  {
    v4 = [v3 description];
    v5 = sub_22855D1AC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  os_unfair_lock_unlock((v2 + 24));
  v8 = *v1;
  v9 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v9);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](10272, 0xE200000000000000);
  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x6E656B6F54206F4ELL;
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  MEMORY[0x22AAB92A0](v10, v11);

  MEMORY[0x22AAB92A0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2283F8044()
{
  result = sub_2283F8064();
  qword_280DF6A98 = result;
  return result;
}

uint64_t sub_2283F8064()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  type metadata accessor for HealthExperienceStoreModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_22855D17C();
  v11 = sub_22855D17C();
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    sub_22855C00C();

    (*(v1 + 32))(v7, v5, v0);
    v13 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v14 = sub_22855BFBC();
    v15 = [v13 initWithContentsOfURL_];

    if (v15)
    {
      (*(v1 + 8))(v7, v0);

      return v15;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_22855DC6C();

    v22 = 0xD00000000000002FLL;
    v23 = 0x8000000228573D90;
    sub_228518C50();
    v21 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v21);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000036, 0x8000000228573D50);
    v17 = [v9 description];
    v18 = sub_22855D1AC();
    v20 = v19;

    MEMORY[0x22AAB92A0](v18, v20);
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void sub_2283F83B0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void sub_2283F8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_22855BF2C();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = v4;
}

char *sub_2283F85B8(char *a1, int64_t a2, char a3)
{
  result = sub_2283F44F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall OrchestrationRetryManager.didUpdate(environmentalState:)(Swift::OpaquePointer environmentalState)
{
  v2 = v1;
  sub_2283F8840();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855C98C();
  v13 = v12 & 1;
  v14 = *(v2 + 24);
  os_unfair_lock_lock((v14 + 20));
  if (v13 == *(v14 + 16))
  {

    os_unfair_lock_unlock((v14 + 20));
  }

  else
  {
    *(v14 + 16) = v13;
    os_unfair_lock_unlock((v14 + 20));
    if (v12)
    {
      v15 = *(v2 + 16);
      sub_22855C53C();
      v16 = sub_22855CA8C();
      v17 = sub_22855D6AC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2283ED000, v16, v17, "Health app has become foreground; retrying failed work criteria.", v18, 2u);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      v19 = sub_22855C63C();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      sub_22855C52C();
      sub_2283F9060(v6);
    }
  }
}

void sub_2283F8840()
{
  if (!qword_280DE9F28)
  {
    sub_22855C63C();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9F28);
    }
  }
}

void sub_2283F8898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2283F88E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2283F8938(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2283FC528(v11, 0, 0, 1, a1, a2);
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
    sub_2283F6E48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2283F8A68()
{
  sub_2283F88E8(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228560690;
  type metadata accessor for LegacyGenerationExecutor.Planner.WorkPlan();
  *(v0 + 32) = swift_allocObject();
  return v0;
}

uint64_t sub_2283F8B24@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_22855C63C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283F8E08(0, &qword_280DE8F60, MEMORY[0x277D11BE0]);
  v6 = *(sub_22855C65C() - 8);
  v17 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228560570;
  sub_2283F8E08(0, &qword_280DE8F40, MEMORY[0x277D11C90]);
  v8 = *(sub_22855C9AC() - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  v11 = swift_allocObject();
  v15 = xmmword_228560580;
  *(v11 + 16) = xmmword_228560580;
  v12 = *MEMORY[0x277CCE3A8];
  sub_22855D1AC();
  sub_22855C96C();

  v13 = *(v2 + 104);
  v13(v5, *MEMORY[0x277D11BD0], v1);
  sub_22855C64C();
  *(swift_allocObject() + 16) = v15;
  sub_22855C97C();
  v13(v5, *MEMORY[0x277D11BC8], v1);
  sub_22855C64C();
  v13(v5, *MEMORY[0x277D11BD8], v1);
  return sub_22855C64C();
}

void sub_2283F8E08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855E12C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OrchestrationWorkQueueStatusObserver.didEnqueue(count:context:queueLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DE9DF8);
  swift_unknownObjectRetain();
  v9 = sub_22855CA8C();
  v10 = sub_22855D66C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315650;
    sub_22842BFBC(0, &qword_280DE9F40);
    swift_unknownObjectRetain();
    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a4;
    _os_log_impl(&dword_2283ED000, v9, v10, "%s: Enqueued %ld work plans, %ld outstanding.", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  v16 = *(v5 + 16);
  os_unfair_lock_lock((v16 + 56));
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
    os_unfair_lock_unlock((v16 + 56));
  }
}

uint64_t sub_2283F9060(uint64_t a1)
{
  sub_2283F8840();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OrchestrationWorkQueueStatusObserver.finishedWorkPlans.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 56));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 56));
  return v2;
}

void HealthAppForegroundWorkManager.forceStart(within:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  v2 = *v0;
  os_unfair_lock_lock((v1 + 32));
  sub_2283F98D0((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2283F9178(_BYTE *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v67 = a2;
  v61 = a3;
  v6 = sub_22855CFBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CFEC();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22855D00C();
  v62 = *(v69 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x28223BE20](v69);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v53 - v16;
  v17 = sub_22855CFAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v53 - v24;
  if ((*a1 & 1) == 0)
  {
    v58 = v6;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v56 = v10;
    v57 = v7;
    v59 = v4;
    v26 = sub_22855CABC();
    __swift_project_value_buffer(v26, qword_280DEEC98);
    v27 = *(v18 + 16);
    v27(v25, v67, v17);
    v28 = sub_22855CA8C();
    v29 = sub_22855D6AC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = v29;
      v31 = v30;
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v31 = 136446466;
      v32 = sub_22855E34C();
      v34 = sub_2283F8938(v32, v33, aBlock);
      v53 = v28;
      v35 = v27;
      v36 = v34;

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      v35(v22, v25, v17);
      v37 = sub_22855D1BC();
      v39 = v38;
      (*(v18 + 8))(v25, v17);
      v40 = v66;
      v41 = sub_2283F8938(v37, v39, aBlock);

      *(v31 + 14) = v41;
      v42 = v53;
      _os_log_impl(&dword_2283ED000, v53, v54, "[%{public}s] Not yet started, enqueueing a start deadline within %{public}s", v31, 0x16u);
      v43 = v55;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v43, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v25, v17);
      v40 = v66;
    }

    v44 = v60;
    v66 = *(v61 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_queue);
    sub_22855CFFC();
    MEMORY[0x22AAB90D0](v44, v67);
    v67 = *(v62 + 8);
    v67(v44, v69);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v40;
    aBlock[4] = sub_2284D7240;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_82;
    v47 = _Block_copy(aBlock);

    v48 = v63;
    sub_22855CFDC();
    aBlock[8] = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v49 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v49);
    v50 = v65;
    v51 = v58;
    sub_22855DA9C();
    v52 = v68;
    MEMORY[0x22AAB9840](v68, v48, v50, v47);
    _Block_release(v47);
    (*(v57 + 8))(v50, v51);
    (*(v64 + 8))(v48, v56);
    v67(v52, v69);
  }

  return result;
}

uint64_t sub_2283F985C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2283F9894()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void HealthAppForegroundWorkManager.foregroundWithFireOnceBarrier(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_2283F9950(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_2283F9950(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_2283F9970(a1, v1[2]);
}

void sub_2283F9970(uint64_t a1, uint64_t a2)
{
  v5 = sub_22855CFAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    v10 = *(a1 + 8);
  }

  else
  {
    sub_2283F9B10(a2 + 16, v16);
    (*(v6 + 16))(v9, a2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval, v5);
    v11 = type metadata accessor for ForegroundTask(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_2283F9BF0(v16, v9);
    *(a1 + 8) = v10;
  }

  sub_2283FB1A4();
  if (*a1 != 1)
  {
    goto LABEL_7;
  }

  v14 = *(v10 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  os_unfair_lock_lock((v14 + 64));
  sub_2283FBBE4((v14 + 16));
  if (!v2)
  {
    os_unfair_lock_unlock((v14 + 64));
LABEL_7:

    return;
  }

  os_unfair_lock_unlock((v14 + 64));
  __break(1u);
}

uint64_t sub_2283F9B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2283F9B94(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2283F9BF0(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v4 = sub_22855C1DC();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855D81C();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D7BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_22855CFEC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState;
  sub_2283FA00C(0, &unk_280DE9180);
  v17 = swift_allocObject();
  *(v17 + 64) = 0;
  *(v17 + 16) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v17 + 24) = MEMORY[0x277D84F90];
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v2 + v16) = v17;
  v36 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue;
  v19 = sub_2283FA06C();
  v35[0] = "5644E4E314ForegroundTask";
  v35[1] = v19;
  sub_22855CFDC();
  v43 = v18;
  sub_2283FA190(&unk_280DED140, MEMORY[0x277D85230]);
  v20 = MEMORY[0x277D85230];
  sub_2283FA468(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283FA284(&qword_280DED240, &qword_280DED250, v20);
  sub_22855DA9C();
  (*(v37 + 104))(v11, *MEMORY[0x277D85260], v38);
  *(v2 + v36) = sub_22855D84C();
  v21 = (v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier);
  sub_22855C1CC();
  sub_22855C17C();
  (*(v39 + 8))(v7, v40);
  v22 = sub_2283FAD3C(6);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x22AAB9260](v22, v24, v26, v28);
  v31 = v30;

  *v21 = v29;
  v21[1] = v31;
  sub_2283FAB3C(v41, v3 + 16);
  v32 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval;
  v33 = sub_22855CFAC();
  (*(*(v33 - 8) + 32))(v3 + v32, v42, v33);
  return v3;
}

void sub_2283FA00C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v3 = sub_22855DCFC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2283FA06C()
{
  result = qword_280DED120;
  if (!qword_280DED120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED120);
  }

  return result;
}

uint64_t sub_2283FA0B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283FA100(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2283FA148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283FA190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283FA1D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283FA220(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284B2F68(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283FA284(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2283FA468(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2283FA2E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855D47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2283FA33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2283FA3A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2283FA404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2283FA468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DatabaseAccessibilityDispatchTarget.run(_:for:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v54 = a5;
  v55 = a2;
  v10 = sub_22855C8CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (!v16 || !a3)
  {
    v42 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
    return sub_22855C60C();
  }

  v17 = v16;
  v50 = v11;
  v51 = v10;
  v52 = a6;
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 24);
  swift_unknownObjectRetain();
  v19(&v60, ObjectType, v17);
  if (!v61)
  {
    sub_22849D268(&v60);
    v21 = v6;
LABEL_11:
    v44 = v21[6];
    __swift_project_boxed_opaque_existential_1(v21 + 2, v21[5]);
    v45 = *(v17 + 8);
    swift_unknownObjectRetain();
    sub_22855C60C();
    return swift_unknownObjectRelease_n();
  }

  sub_2283FAB3C(&v60, v62);
  v20 = (*(v17 + 16))(ObjectType, v17);
  v21 = v6;
  if (!v20)
  {
    __swift_destroy_boxed_opaque_existential_0(v62);
    goto LABEL_11;
  }

  v22 = v20;
  sub_2283F9B10((v6 + 2), &v60);
  sub_2283F9B10(a1, v59);
  v23 = v50;
  v49 = v22;
  v24 = *(v50 + 16);
  v25 = v51;
  v24(v15, v55, v51);
  sub_2283F9B10(&v60, v58);
  sub_2283F9B10(v59, v57);
  v24(v53, v15, v25);
  v26 = (*(v23 + 80) + 96) & ~*(v23 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_2283FAB3C(&v60, v28 + 16);
  sub_2283FAB3C(v59, v28 + 56);
  v29 = (*(v23 + 32))(v28 + v26, v15, v25);
  v30 = (v28 + v27);
  *v30 = a3;
  v30[1] = v17;
  v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  v33 = v52;
  *v31 = v54;
  v31[1] = v33;
  v34 = v21[8];
  MEMORY[0x28223BE20](v29);
  *(&v48 - 4) = v32;
  *(&v48 - 3) = sub_22849D358;
  *(&v48 - 2) = v28;
  swift_unknownObjectRetain();

  os_unfair_lock_lock((v34 + 32));
  sub_2283FADD8((v34 + 16), &v56);
  os_unfair_lock_unlock((v34 + 32));
  if (!v56)
  {
    __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    v46 = *(v17 + 8);
    v47 = v53;
    sub_22855C60C();

    swift_unknownObjectRelease();

    (*(v50 + 8))(v47, v51);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v57);
    __swift_destroy_boxed_opaque_existential_0(v58);
    return __swift_destroy_boxed_opaque_existential_0(v62);
  }

  if (v56 != 1)
  {
    swift_unknownObjectRelease();

    (*(v50 + 8))(v53, v51);
    goto LABEL_14;
  }

  (*(v50 + 8))(v53, v51);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  v35 = v64;
  v55 = v63;
  v54 = __swift_project_boxed_opaque_existential_1(v62, v63);
  v36 = sub_22849D440(v32);
  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = a3;
  v39[3] = v17;
  v39[4] = v32;
  v39[5] = v21;
  v40 = *(v35 + 8);
  swift_unknownObjectRetain();
  v41 = v32;

  v40(v36, v38, sub_22849D4F0, v39, v55, v35, 10.0);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_0(v62);
}

uint64_t sub_2283FAB3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2283FAB54()
{
  v1 = sub_22855C8CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2283FAC50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2283FAC98@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
  a1[4] = &protocol witness table for HKHealthStore;
  *a1 = v4;

  return v4;
}

id sub_2283FAD04()
{
  v1 = [*(v0 + 16) profileIdentifier];

  return v1;
}

uint64_t sub_2283FAD3C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22855D21C();

    return sub_22855D2BC();
  }

  return result;
}

void *sub_2283FADF8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22855DE8C();

    if (v4)
    {
      sub_2283EF310(0, &qword_280DE9258, 0x277CCD2B8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2283FB154(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_2283FAEBC(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_2283FADF8(a2, *a1);
  v11 = v10;
  if (v10 && [v10 isValid])
  {

    v12 = 0;
  }

  else
  {
    v13 = a1[1];
    if (*(v13 + 16) && (v14 = sub_2283FB154(a2), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_228426988(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_228426988((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      v20 = &v16[2 * v19];
      v20[4] = sub_228492FA4;
      v20[5] = v17;
      v21 = a2;
      v22 = a1[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a1[1];
      sub_22845B5A4(v16, v21, isUniquelyReferenced_nonNull_native);

      a1[1] = v29;
      v12 = 2;
    }

    else
    {
      sub_22849D65C(0, &qword_280DE8EC8, sub_2283FBB5C, MEMORY[0x277D84560]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_228560580;
      v25 = swift_allocObject();
      *(v25 + 16) = a3;
      *(v25 + 24) = a4;
      *(v24 + 32) = sub_228466000;
      *(v24 + 40) = v25;
      v26 = a2;

      v27 = a1[1];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v30 = a1[1];
      sub_22845B5A4(v24, v26, v28);

      a1[1] = v30;
      v12 = 1;
    }
  }

  *a5 = v12;
}

uint64_t sub_2283FB118()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2283FB154(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22855D99C();
  return sub_2283FB3DC(a1, v5, &qword_280DEE7B0, 0x277CCD7C8);
}

void sub_2283FB1A4()
{
  v1 = *v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);

  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v11 = v6;
    v7 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v7);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v8 = sub_2283F8938(91, 0xE100000000000000, &v11);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_2283ED000, v3, v4, "%{public}s Requesting fire once barrier", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  MEMORY[0x28223BE20](v10);
  os_unfair_lock_lock(v9 + 16);
  sub_2283FB4EC(&v9[4]);
  os_unfair_lock_unlock(v9 + 16);
}

unint64_t sub_2283FB3DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2283EF310(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22855D9AC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2283FB50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22855CFBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22855CFEC();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 3) == 1)
  {
    v45 = a3;
    v46 = v17;
    v47 = v16;
    v49 = v9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v48 = v10;
    v20 = sub_22855CABC();
    __swift_project_value_buffer(v20, qword_280DEEC98);

    v21 = sub_22855CA8C();
    v22 = sub_22855D6AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = v4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v43 = a4;
      v26 = v25;
      aBlock[0] = v25;
      *v24 = 136446210;
      v27 = sub_228403430();
      v29 = sub_2283F8938(v27, v28, aBlock);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2283ED000, v21, v22, "%{public}s Fire once already completed before, calling barrier immediately", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v30 = v26;
      a4 = v43;
      MEMORY[0x22AABAD40](v30, -1, -1);
      MEMORY[0x22AABAD40](v24, -1, -1);
    }

    v31 = *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v32 = swift_allocObject();
    *(v32 + 16) = v45;
    *(v32 + 24) = a4;
    aBlock[4] = sub_2284D7214;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_73;
    v33 = _Block_copy(aBlock);

    sub_22855CFDC();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v34 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v34);
    v35 = v49;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v19, v13, v33);
    _Block_release(v33);
    (*(v48 + 8))(v13, v35);
    (*(v46 + 8))(v19, v47);
  }

  else
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = a4;
    v38 = *(a1 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2283FBB3C(0, v38[2] + 1, 1, v38);
      v38 = result;
    }

    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      result = sub_2283FBB3C((v39 > 1), v40 + 1, 1, v38);
      v38 = result;
    }

    v38[2] = v40 + 1;
    v41 = &v38[2 * v40];
    v41[4] = sub_228405F1C;
    v41[5] = v37;
    *(a1 + 8) = v38;
  }

  return result;
}

void *sub_2283FBA04(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_22842B224(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2283FBB5C();
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t sub_2283FBB5C()
{
  result = qword_280DECFC8;
  if (!qword_280DECFC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DECFC8);
  }

  return result;
}

_BYTE *sub_2283FBBAC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    *result = 1;
    return sub_2283FBBFC();
  }

  return result;
}

uint64_t sub_2283FBBFC()
{
  v1 = v0;
  v34[1] = *v0;
  v2 = sub_22855D00C();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = v34 - v7;
  v8 = sub_22855CFBC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v43 = sub_2284D7100;
  v44 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_228401F54;
  v42 = &block_descriptor_18;
  _Block_copy(&aBlock);
  v38 = MEMORY[0x277D84F90];
  sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
  v11 = MEMORY[0x277D85198];
  sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283FA284(&qword_280DED260, &qword_280DED270, v11);

  sub_22855DA9C();
  v12 = sub_22855D03C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_22855D01C();

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEC98);

  v17 = sub_22855CA8C();
  v18 = sub_22855D6AC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136446210;
    v38 = v20;
    aBlock = 91;
    v40 = 0xE100000000000000;
    v21 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v21);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v22 = sub_2283F8938(aBlock, v40, &v38);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_2283ED000, v17, v18, "%{public}s Starting urgent work", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v24 = v1[5];
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v24);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 2) = v26;
  *(v27 + 3) = v15;
  v27[4] = Current;
  v28 = *(v25 + 8);

  v28(sub_228401B6C, v27, v24, v25);

  v29 = *(v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  sub_22855CFFC();
  v30 = v35;
  MEMORY[0x22AAB90D0](v6, v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval);
  v31 = v37;
  v32 = *(v36 + 8);
  v32(v6, v37);
  sub_22855D7DC();

  return (v32)(v30, v31);
}

uint64_t *Atomic.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *(v1 + v4) = v5;
  *v6 = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t sub_2283FC25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, a1 + v5);
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
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
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
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

unint64_t sub_2283FC528(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2283FC7CC(a5, a6);
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
    result = sub_22855DD0C();
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

void *sub_2283FC634(uint64_t a1, uint64_t a2)
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

  sub_2283FC818();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2283FC69C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2283FC634(v5, 0);
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

  result = sub_22855DD0C();
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
        v10 = sub_22855D23C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2283FC634(v10, 0);
        result = sub_22855DC4C();
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

uint64_t sub_2283FC7CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2283FC69C(a1, a2);
  sub_2283FC868(&unk_283B7E7C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void sub_2283FC818()
{
  if (!qword_280DED010)
  {
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED010);
    }
  }
}

uint64_t sub_2283FC868(uint64_t result)
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

  result = sub_228418C00(result, v12, 1, v3);
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

uint64_t sub_2283FC9C0()
{
  sub_2283FCE60();
  v2 = v1;
  v21 = *(v1 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FCFBC(0, &qword_280DE97F8, &qword_280DE92E8, 0x277CE1FC0, MEMORY[0x277CBCE88]);
  v7 = v6;
  v19 = *(v6 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_2283FCEF4();
  v12 = v11;
  v20 = *(v11 - 8);
  v13 = *(v20 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 64);
  v25 = MEMORY[0x277D84F90];
  v22 = v0;
  v23 = &v25;
  type metadata accessor for UnfairLock();
  sub_2283FD034(&qword_280DEDC00, type metadata accessor for UnfairLock);

  sub_22855C3CC();

  if (*(v25 + 16))
  {
    v24 = v25;
    sub_2283FEE20();
    sub_2284AE35C(0, &qword_27D83FB58, sub_2283FEE20);
    sub_2283FD034(&qword_280DE98A0, sub_2283FEE20);
    sub_2284ACE0C(&qword_27D83FB60, &qword_27D83FB58, sub_2283FEE20);

    sub_22855CC2C();
    sub_2283FD034(&qword_27D83FB68, sub_2283FCE60);
    v16 = sub_22855CE6C();
    (*(v21 + 8))(v5, v2);
  }

  else
  {
    sub_2283EF310(0, &qword_280DE92E8, 0x277CE1FC0);
    sub_22855CDDC();
    sub_2283F9B94(0, &qword_280DECFE0);
    sub_2283FED9C();
    sub_22855CF7C();
    (*(v19 + 8))(v10, v7);
    sub_2283FD034(&qword_280DE9BF0, sub_2283FCEF4);
    v16 = sub_22855CE6C();
    (*(v20 + 8))(v15, v12);
  }

  return v16;
}

void sub_2283FCE60()
{
  if (!qword_280DE99B8)
  {
    sub_2283FEE20();
    sub_2283FD034(&qword_280DE98A0, sub_2283FEE20);
    v0 = sub_22855CC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE99B8);
    }
  }
}

void sub_2283FCEF4()
{
  if (!qword_280DE9BE8)
  {
    sub_2283FCFBC(255, &qword_280DE97F8, &qword_280DE92E8, 0x277CE1FC0, MEMORY[0x277CBCE88]);
    sub_2283F9B94(255, &qword_280DECFE0);
    sub_2283FED9C();
    v0 = sub_22855CB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9BE8);
    }
  }
}

void sub_2283FCFBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2283FD034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283FD07C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 72);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v38 = a1;
    v49 = MEMORY[0x277D84F90];

    sub_228427690(0, v4, 0);
    v42 = v49;
    v6 = v3 + 64;
    v7 = -1 << *(v3 + 32);
    result = sub_22855DAAC();
    v9 = result;
    v10 = 0;
    v11 = *(v3 + 36);
    v40 = v4;
    v41 = v11;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v14 = v9 >> 6;
      if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_30;
      }

      if (v11 != *(v3 + 36))
      {
        goto LABEL_31;
      }

      v15 = (*(v3 + 48) + 16 * v9);
      v17 = *v15;
      v16 = v15[1];
      sub_2283F9B10(*(v3 + 56) + 40 * v9, &v46);
      v43[0] = v17;
      v43[1] = v16;
      sub_22844C570(&v46, v44);
      sub_2283F9B10(v44, v48);

      sub_2284AE954(v43);
      v18 = v42;
      v49 = v42;
      v20 = *(v42 + 16);
      v19 = *(v42 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_228427690((v19 > 1), v20 + 1, 1);
        v18 = v49;
      }

      *(v18 + 16) = v20 + 1;
      v42 = v18;
      result = sub_22844C570(v48, v18 + 40 * v20 + 32);
      v12 = 1 << *(v3 + 32);
      if (v9 >= v12)
      {
        goto LABEL_32;
      }

      v21 = *(v6 + 8 * v14);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_33;
      }

      v11 = v41;
      if (v41 != *(v3 + 36))
      {
        goto LABEL_34;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v13 = v40;
        v25 = (v3 + 72 + 8 * v14);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_228416CB8(v9, v41, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_228416CB8(v9, v41, 0);
      }

LABEL_4:
      ++v10;
      v9 = v12;
      if (v10 == v13)
      {

        a1 = v38;
        v5 = v42;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_21:
    v28 = *(v5 + 16);
    if (v28)
    {
      v29 = v5 + 32;
      do
      {
        sub_2283F9B10(v29, v45);
        v30 = *(&v46 + 1);
        v31 = v47;
        __swift_project_boxed_opaque_existential_1(v45, *(&v46 + 1));
        v32 = (*(v31 + 24))(v30, v31);
        if (v32)
        {
          v33 = v32;
          v34 = *(a1 + 16);
          UNUserNotificationCenter.scheduleNotification(_:)(v32);

          MEMORY[0x22AAB9400](v35);
          if (*(*a2 + 16) >= *(*a2 + 24) >> 1)
          {
            v36 = *(*a2 + 16);
            sub_22855D3EC();
          }

          sub_22855D43C();
        }

        __swift_destroy_boxed_opaque_existential_0(v45);
        v29 += 40;
        --v28;
      }

      while (v28);
    }

    v37 = *(a1 + 72);
    *(a1 + 72) = MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2283FD424(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2283FD46C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2283FD50C()
{
  result = qword_280DEDC00;
  if (!qword_280DEDC00)
  {
    type metadata accessor for UnfairLock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEDC00);
  }

  return result;
}

uint64_t sub_2283FD590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = [*(v2 + 16) profileIdentifier];
  v5 = [*(v3 + 16) profileIdentifier];
  v6 = sub_22855D9AC();

  return v6 & 1;
}

void OrchestrationWorkQueueStatusObserver.didFinish(workPlan:after:analytics:result:executor:context:remaining:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, double a8)
{
  v157 = a7;
  v151 = a6;
  v163 = a4;
  v164 = a2;
  v165 = a1;
  v149 = *v8;
  v12 = sub_22855C73C();
  v153 = *(v12 - 8);
  v154 = v12;
  v13 = *(v153 + 64);
  MEMORY[0x28223BE20](v12);
  v152 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FEAB8();
  v144 = *(v15 - 8);
  v145 = v15;
  v16 = *(v144 + 64);
  MEMORY[0x28223BE20](v15);
  v143 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FEB4C();
  v147 = *(v18 - 8);
  v148 = v18;
  v19 = *(v147 + 64);
  MEMORY[0x28223BE20](v18);
  v146 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22855C77C();
  v161 = *(v21 - 8);
  v162 = v21;
  v22 = *(v161 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v160 = &v141 - v25;
  v26 = sub_22855C6FC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22855C8CC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v36 = sub_22855CABC();
  __swift_project_value_buffer(v36, qword_280DE9DF8);
  (*(v32 + 16))(v35, v163, v31);
  sub_2283F9B10(v165, v171);
  v158 = a3;
  sub_2283FEC4C(a3, v169);
  (*(v27 + 16))(v30, v164, v26);
  swift_unknownObjectRetain();
  v37 = sub_22855CA8C();
  v38 = sub_22855D6AC();
  swift_unknownObjectRelease();
  v150 = v38;
  v39 = os_log_type_enabled(v37, v38);
  v40 = v30;
  v156 = a5;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v142 = v42;
    *v41 = 136316418;
    v166 = a5;
    v167 = v151;
    v168[0] = v42;
    sub_22842BFBC(0, &qword_280DE9F40);
    v151 = v37;
    swift_unknownObjectRetain();
    v43 = sub_22855D1BC();
    v45 = v26;
    v46 = v40;
    v47 = sub_2283F8938(v43, v44, v168);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    sub_2283FECA8(&qword_280DE9E78, MEMORY[0x277D11C68]);
    v48 = sub_22855E11C();
    v50 = v49;
    (*(v32 + 8))(v35, v31);
    v51 = sub_2283F8938(v48, v50, v168);

    *(v41 + 14) = v51;
    *(v41 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1(v171, v171[3]);
    v52 = v160;
    sub_22855CA2C();
    sub_2283FECA8(&qword_280DE9F10, MEMORY[0x277D11C08]);
    v53 = v162;
    v54 = sub_22855E11C();
    v56 = v55;
    (*(v161 + 8))(v52, v53);
    __swift_destroy_boxed_opaque_existential_0(v171);
    v57 = sub_2283F8938(v54, v56, v168);

    *(v41 + 24) = v57;
    *(v41 + 32) = 2080;
    v58 = sub_22855C67C();
    v60 = v59;
    sub_2283FED34(v169);
    v61 = sub_2283F8938(v58, v60, v168);

    *(v41 + 34) = v61;
    *(v41 + 42) = 2048;
    *(v41 + 44) = a8;
    *(v41 + 52) = 2080;
    sub_2283FECA8(&qword_280DE9F18, MEMORY[0x277D11BF8]);
    v62 = sub_22855E11C();
    v64 = v63;
    (*(v27 + 8))(v46, v45);
    v65 = sub_2283F8938(v62, v64, v168);

    *(v41 + 54) = v65;
    v66 = v151;
    _os_log_impl(&dword_2283ED000, v151, v150, "[%s] %s/%s: %s after %fs. %s", v41, 0x3Eu);
    v67 = v142;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v67, -1, -1);
    v68 = v41;
    v69 = v165;
    MEMORY[0x22AABAD40](v68, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v30, v26);
    sub_2283FED34(v169);
    (*(v32 + 8))(v35, v31);
    __swift_destroy_boxed_opaque_existential_0(v171);
    v69 = v165;
  }

  v71 = v158;
  v70 = v159;
  if (!v157)
  {
    type metadata accessor for HealthPlatformContextProvider.Context(0);
    v72 = swift_dynamicCastClass();
    if (v72)
    {
      v73 = *(v72 + 32);
      v74 = v72;
      swift_unknownObjectRetain();

      v75 = sub_2283FC9C0();

      v169[0] = v75;
      sub_2283FEE20();
      sub_2283FECA8(&qword_280DE98A0, sub_2283FEE20);
      v76 = v143;
      sub_22855CF1C();

      v77 = swift_allocObject();
      swift_weakInit();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = v74;
      v78[4] = v149;
      swift_unknownObjectRetain();
      sub_22855CCBC();
      v79 = MEMORY[0x277D84F78];
      sub_2283FF03C(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
      sub_2283FECA8(&qword_280DE9A98, sub_2283FEAB8);
      sub_2283FEF04(&qword_280DE9890, &qword_280DE9888, v79 + 8);
      v80 = v145;
      v81 = v146;
      sub_22855CF2C();

      v82 = v76;
      v69 = v165;
      (*(v144 + 8))(v82, v80);
      *(swift_allocObject() + 16) = v149;
      sub_2283FECA8(&qword_280DE9A28, sub_2283FEB4C);
      v83 = v148;
      sub_22855CE5C();
      swift_unknownObjectRelease();

      (*(v147 + 8))(v81, v83);
    }
  }

  sub_2283FEC4C(v71, v169);
  if (v170)
  {
    if (v170 != 1)
    {
      v138 = v70[2];
      os_unfair_lock_lock((v138 + 56));
      v139 = *(v138 + 40);
      v87 = __OFADD__(v139, 1);
      v140 = v139 + 1;
      if (!v87)
      {
        *(v138 + 40) = v140;
        os_unfair_lock_unlock((v138 + 56));
        return;
      }

      goto LABEL_22;
    }

    v84 = v169[0];
    v85 = v70[2];
    os_unfair_lock_lock((v85 + 56));
    v86 = *(v85 + 24);
    v87 = __OFADD__(v86, 1);
    v88 = v86 + 1;
    if (!v87)
    {
      *(v85 + 24) = v88;
      v89 = *(v85 + 48);
      v87 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (!v87)
      {
        *(v85 + 48) = v90;
        os_unfair_lock_unlock((v85 + 56));
        v91 = sub_22855BF2C();
        v164 = sub_22855D17C();
        sub_22840012C();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_228569C00;
        *(inited + 32) = 0x6E6F697461727564;
        v158 = inited + 32;
        *(inited + 40) = 0xE800000000000000;
        v93 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v159 = v84;
        *(inited + 48) = [v93 initWithDouble_];
        *(inited + 56) = 0x4464656B636F6C62;
        *(inited + 64) = 0xEF6E6F6974617275;
        sub_22855C6DC();
        *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        strcpy((inited + 80), "pausedDuration");
        *(inited + 95) = -18;
        sub_22855C6CC();
        *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(inited + 104) = 0xD000000000000010;
        *(inited + 112) = 0x8000000228573BA0;
        sub_22855C6EC();
        *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(inited + 128) = 0x74617275446E7572;
        *(inited + 136) = 0xEB000000006E6F69;
        sub_22855C6BC();
        *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(inited + 152) = 0x73736563637573;
        *(inited + 160) = 0xE700000000000000;
        *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        *(inited + 176) = 0x6D6F44726F727265;
        *(inited + 184) = 0xEB000000006E6961;
        v98 = [v91 domain];
        if (v98)
        {
          *(inited + 192) = v98;
          *(inited + 200) = 0x646F43726F727265;
          *(inited + 208) = 0xE900000000000065;
          v99 = [v91 code];
          *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          *(inited + 224) = 0x72656469766F7270;
          *(inited + 232) = 0xE800000000000000;
          sub_22855C8BC();
          v100 = sub_22855D17C();

          *(inited + 240) = v100;
          *(inited + 248) = 0x726F747563657865;
          *(inited + 256) = 0xE800000000000000;
          v101 = v152;
          sub_22855C8AC();
          sub_22855C70C();
          (*(v153 + 8))(v101, v154);
          v102 = sub_22855D17C();

          *(inited + 264) = v102;
          *(inited + 272) = 0x6E69616D6F64;
          *(inited + 280) = 0xE600000000000000;
          v103 = v69[4];
          __swift_project_boxed_opaque_existential_1(v69, v69[3]);
          v104 = v160;
          sub_22855CA2C();
          sub_22855C76C();
          v105 = *(v161 + 8);
          v106 = v104;
          v107 = v162;
          v105(v106, v162);
          v108 = sub_22855D17C();

          *(inited + 288) = v108;
          *(inited + 296) = 1701080931;
          *(inited + 304) = 0xE400000000000000;
          v109 = v69[4];
          __swift_project_boxed_opaque_existential_1(v69, v69[3]);
          v110 = v155;
          sub_22855CA2C();
          v111 = sub_22855C74C();
          v105(v110, v107);
          *(inited + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_228400184(inited);
          swift_setDeallocating();
          sub_228400378();
          swift_arrayDestroy();
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v112 = sub_22855D0DC();

          v113 = v164;
          AnalyticsSendEvent();

          return;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    v114 = v70[2];
    os_unfair_lock_lock((v114 + 56));
    v115 = *(v114 + 24);
    v87 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (!v87)
    {
      *(v114 + 24) = v116;
      v117 = *(v114 + 32);
      v87 = __OFADD__(v117, 1);
      v118 = v117 + 1;
      if (!v87)
      {
        *(v114 + 32) = v118;
        os_unfair_lock_unlock((v114 + 56));
        v164 = sub_22855D17C();
        sub_22840012C();
        v119 = swift_initStackObject();
        *(v119 + 16) = xmmword_228569C10;
        *(v119 + 32) = 0x6E6F697461727564;
        v159 = (v119 + 32);
        *(v119 + 40) = 0xE800000000000000;
        *(v119 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v119 + 56) = 0x4464656B636F6C62;
        *(v119 + 64) = 0xEF6E6F6974617275;
        sub_22855C6DC();
        *(v119 + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        strcpy((v119 + 80), "pausedDuration");
        *(v119 + 95) = -18;
        sub_22855C6CC();
        *(v119 + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v119 + 104) = 0xD000000000000010;
        *(v119 + 112) = 0x8000000228573BA0;
        sub_22855C6EC();
        *(v119 + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v119 + 128) = 0x74617275446E7572;
        *(v119 + 136) = 0xEB000000006E6F69;
        sub_22855C6BC();
        *(v119 + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v119 + 152) = 0x73736563637573;
        *(v119 + 160) = 0xE700000000000000;
        *(v119 + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        *(v119 + 176) = 0x72656469766F7270;
        *(v119 + 184) = 0xE800000000000000;
        sub_22855C8BC();
        v124 = sub_22855D17C();

        *(v119 + 192) = v124;
        *(v119 + 200) = 0x726F747563657865;
        *(v119 + 208) = 0xE800000000000000;
        v125 = v152;
        sub_22855C8AC();
        sub_22855C70C();
        (*(v153 + 8))(v125, v154);
        v126 = sub_22855D17C();

        *(v119 + 216) = v126;
        *(v119 + 224) = 0x6E69616D6F64;
        *(v119 + 232) = 0xE600000000000000;
        v127 = v69[4];
        __swift_project_boxed_opaque_existential_1(v69, v69[3]);
        v128 = v160;
        sub_22855CA2C();
        sub_22855C76C();
        v129 = *(v161 + 8);
        v130 = v128;
        v131 = v162;
        v129(v130, v162);
        v132 = sub_22855D17C();

        *(v119 + 240) = v132;
        *(v119 + 248) = 1701080931;
        *(v119 + 256) = 0xE400000000000000;
        v133 = v69[4];
        __swift_project_boxed_opaque_existential_1(v69, v69[3]);
        v134 = v155;
        sub_22855CA2C();
        v135 = sub_22855C74C();
        v129(v134, v131);
        *(v119 + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_228400184(v119);
        swift_setDeallocating();
        sub_228400378();
        swift_arrayDestroy();
        sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
        v136 = sub_22855D0DC();

        v137 = v164;
        AnalyticsSendEvent();

        sub_2283FED34(v169);
        return;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_2283FEA30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2283FEA68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2283FEAB8()
{
  if (!qword_280DE9A90)
  {
    sub_2283FEE20();
    sub_2283FECA8(&qword_280DE98A0, sub_2283FEE20);
    v0 = sub_22855CBDC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9A90);
    }
  }
}

void sub_2283FEB4C()
{
  if (!qword_280DE9A20)
  {
    v0 = MEMORY[0x277D84F78];
    sub_2283FF03C(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283FEAB8();
    sub_2283FEF04(&qword_280DE9890, &qword_280DE9888, v0 + 8);
    sub_2283FECA8(&qword_280DE9A98, sub_2283FEAB8);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A20);
    }
  }
}

uint64_t sub_2283FECA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283FECF0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_228546614(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2283FED9C()
{
  result = qword_280DE9800;
  if (!qword_280DE9800)
  {
    sub_2283FCFBC(255, &qword_280DE97F8, &qword_280DE92E8, 0x277CE1FC0, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9800);
  }

  return result;
}

void sub_2283FEE20()
{
  if (!qword_280DE9898)
  {
    sub_2283EF310(255, &qword_280DE92E8, 0x277CE1FC0);
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855CCCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9898);
    }
  }
}

uint64_t sub_2283FEEB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2283FEFCC(255, a2, MEMORY[0x277D84F78] + 8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283FEF04(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283FF03C(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2283FEF68(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22855B508(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2283FEFCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_228418D44();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2283FF03C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_22842BFBC(255, &qword_280DECFE0);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2283FF0C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_228418D44();
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_2283FF134@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v99 = a3;
  v101 = a2;
  v6 = MEMORY[0x277D84F78];
  sub_2283FF03C(0, &qword_280DE97E8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE88]);
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v7);
  v96 = &v88 - v9;
  v10 = sub_22855C1DC();
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v10);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FFBFC();
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v13);
  v89 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FFCB0();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FF03C(0, &qword_280DE8EB0, v6 + 8, MEMORY[0x277CBCF38]);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v88 - v26;
  v28 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22855CDCC();
    sub_22842BFBC(0, &qword_280DECFE0);
    sub_22855CD9C();
    (*(v18 + 8))(v21, v17);
    sub_228514C6C();
    v59 = sub_22855CE6C();
    result = (*(v24 + 8))(v27, v23);
LABEL_35:
    *a4 = v59;
    return result;
  }

  v30 = v28;
  v31 = v28 >> 62;
  v95 = Strong;
  if (v28 >> 62)
  {
    v87 = sub_22855DB4C();
    v30 = v28;
    v32 = v87;
  }

  else
  {
    v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v102 = v30;
  v33 = MEMORY[0x277D84F90];
  v100 = a4;
  if (!v32)
  {
LABEL_14:
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v47 = sub_22855CABC();
    __swift_project_value_buffer(v47, qword_280DEEBF0);

    v48 = sub_22855CA8C();
    v49 = sub_22855D6AC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v103 = v51;
      *v50 = 136315394;
      v52 = sub_22855E34C();
      v54 = sub_2283F8938(v52, v53, &v103);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = MEMORY[0x22AAB9430](v33, MEMORY[0x277D837D0]);
      v57 = v56;

      v58 = sub_2283F8938(v55, v57, &v103);
      a4 = v100;

      *(v50 + 14) = v58;
      _os_log_impl(&dword_2283ED000, v48, v49, "[%s] Successfully scheduled all coalesced notifications: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v51, -1, -1);
      MEMORY[0x22AABAD40](v50, -1, -1);
    }

    else
    {
    }

    v60 = v102;
    v61 = *(v101 + 16);
    if (v31)
    {
      if (!sub_22855DB4C())
      {
        goto LABEL_26;
      }
    }

    else if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v62 = [v61 profileIdentifier];
    v63 = [objc_opt_self() primaryProfile];
    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    v64 = sub_22855D9AC();

    if (v64)
    {
      v103 = sub_22851430C(v61);
      v65 = MEMORY[0x277D839B0];
      sub_2283FF03C(0, &qword_280DE98A8, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
      sub_2283FEF04(&qword_280DE98B0, &qword_280DE98A8, v65);
      v66 = v89;
      sub_22855CE8C();

      sub_2283FECA8(&qword_27D840680, sub_2283FFBFC);
      v67 = v91;
      v59 = sub_22855CE6C();

      result = (*(v90 + 8))(v66, v67);
      goto LABEL_35;
    }

LABEL_26:
    v68 = v31;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_280DE9DF8);
    swift_bridgeObjectRetain_n();
    v69 = v61;
    v70 = sub_22855CA8C();
    v71 = sub_22855D6AC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v103 = v73;
      *v72 = 136315651;
      v74 = sub_22855E34C();
      v76 = sub_2283F8938(v74, v75, &v103);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2081;
      v77 = [v69 profileIdentifier];
      v78 = [v77 identifier];

      v79 = v92;
      sub_22855C1BC();

      v80 = sub_22855C17C();
      v82 = v81;
      (*(v93 + 8))(v79, v94);
      v83 = sub_2283F8938(v80, v82, &v103);

      *(v72 + 14) = v83;
      *(v72 + 22) = 2049;
      if (v68)
      {
        v84 = sub_22855DB4C();
      }

      else
      {
        v84 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v72 + 24) = v84;

      _os_log_impl(&dword_2283ED000, v70, v71, "[%s] No content to push for health store %{private}s where number of requests is %{private}ld", v72, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v73, -1, -1);
      MEMORY[0x22AABAD40](v72, -1, -1);

      a4 = v100;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22842BFBC(0, &qword_280DECFE0);
    v85 = v96;
    sub_22855CDDC();
    sub_2283FFD04();
    v86 = v98;
    v59 = sub_22855CE6C();

    result = (*(v97 + 8))(v85, v86);
    goto LABEL_35;
  }

  v103 = MEMORY[0x277D84F90];
  result = sub_2284272C0(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v88 = v28 >> 62;
    v35 = 0;
    v33 = v103;
    v36 = v28;
    v37 = v28 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v38 = MEMORY[0x22AAB9D20](v35, v36);
      }

      else
      {
        v38 = *(v36 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = [v38 identifier];
      v41 = sub_22855D1AC();
      v43 = v42;

      v103 = v33;
      v45 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2284272C0((v44 > 1), v45 + 1, 1);
        v33 = v103;
      }

      ++v35;
      *(v33 + 16) = v45 + 1;
      v46 = v33 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      v36 = v102;
    }

    while (v32 != v35);
    a4 = v100;
    v31 = v88;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_2283FFBFC()
{
  if (!qword_280DE9BB0)
  {
    v0 = MEMORY[0x277D839B0];
    sub_2283FF03C(255, &qword_280DE98A8, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
    sub_2283FEF04(&qword_280DE98B0, &qword_280DE98A8, v0);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9BB0);
    }
  }
}

void sub_2283FFCB0()
{
  if (!qword_280DE9820)
  {
    v0 = sub_22855CDBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9820);
    }
  }
}

unint64_t sub_2283FFD04()
{
  result = qword_280DE97F0;
  if (!qword_280DE97F0)
  {
    sub_2283FF03C(255, &qword_280DE97E8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE97F0);
  }

  return result;
}

void sub_2283FFD8C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v2 = sub_22855CABC();
    __swift_project_value_buffer(v2, qword_280DE9DF8);
    v3 = v1;
    v4 = sub_22855CA8C();
    v5 = sub_22855D68C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136315650;
      v8 = sub_22855E34C();
      v10 = sub_2283F8938(v8, v9, &v23);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2283F8938(0xD000000000000028, 0x8000000228573C00, &v23);
      *(v6 + 22) = 2080;
      sub_22842BFBC(0, &qword_280DECFE0);
      v11 = sub_22855D1CC();
      v13 = sub_2283F8938(v11, v12, &v23);

      *(v6 + 24) = v13;
      _os_log_impl(&dword_2283ED000, v4, v5, "[%s] %s finished with error: %s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v7, -1, -1);
      MEMORY[0x22AABAD40](v6, -1, -1);

      return;
    }

    v21 = v1;
  }

  else
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DE9DF8);
    oslog = sub_22855CA8C();
    v15 = sub_22855D6AC();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315394;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, &v23);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2283F8938(0xD000000000000028, 0x8000000228573C00, &v23);
      _os_log_impl(&dword_2283ED000, oslog, v15, "[%s] %s completed successfully", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);

      return;
    }

    v21 = oslog;
  }
}

void sub_22840012C()
{
  if (!qword_280DE8F10)
  {
    sub_228400378();
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE8F10);
    }
  }
}

unint64_t sub_228400184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22840030C(0, &qword_280DE9098, &qword_280DEEB30, 0x277D82BB8, sub_2283EF310);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2283F6D18(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2284002A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DF7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22840030C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22855DF7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_228400378()
{
  if (!qword_280DE9660)
  {
    sub_2283EF310(255, &qword_280DEEB30, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9660);
    }
  }
}

_OWORD *sub_228400400(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_228400410(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 24);
  *(*a1 + 24) = v2;
  v4 = v2;
}

void sub_22840044C(void *a1)
{
  v3 = sub_22855CFBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*v1 + 112))(v11) & 1) == 0)
  {
    return;
  }

  v14 = objc_opt_self();
  v15 = [v14 currentQueue];
  v16 = [v14 mainQueue];
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      sub_2283EF310(0, &qword_280DE9418, 0x277CCABD8);
      v18 = sub_22855D9AC();

      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v17 = v15;
LABEL_11:

LABEL_12:
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v27 = sub_22855D82C();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    aBlock[4] = sub_2284ED8EC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_72_1;
    v21 = _Block_copy(aBlock);
    v22 = a1;

    sub_22855CFDC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2283F2298(&qword_280DED2D0, MEMORY[0x277D85198]);
    v23 = v4;
    v24 = MEMORY[0x277D85198];
    sub_2283F1380(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    v26 = v8;
    sub_2283F4734(&qword_280DED260, &qword_280DED270, v24);
    sub_22855DA9C();
    v25 = v27;
    MEMORY[0x22AAB98B0](0, v13, v7, v21);
    _Block_release(v21);

    (*(v23 + 8))(v7, v3);
    (*(v9 + 8))(v13, v26);
    return;
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_7:
  v27 = [a1 viewContext];
  [v27 setAutomaticallyMergesChangesFromParent_];
  v19 = v27;
}

id sub_228400874()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_2284EAFA0(v0);
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t Atomic.value.getter()
{
  v1 = v0;
  v2 = *v0;
  v5 = *(v1 + *(v2 + 96));
  type metadata accessor for UnfairLock();
  v3 = *(v2 + 80);
  sub_2283FD50C();

  sub_22855C3BC();
}

uint64_t sub_2284009B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

void sub_228400A70()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_280DED1B0 = v0;
}

uint64_t Atomic.mutate(_:)()
{
  v1 = *(v0 + *(*v0 + 96));
  type metadata accessor for UnfairLock();
  sub_2283FD50C();

  sub_22855C3CC();
}

id sub_228400C48()
{
  v1 = *v0;
  v2 = sub_228400874();
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

uint64_t sub_228400D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v2;
  v8 = sub_22855D17C();
  v9 = [v6 objectForKey_];

  if (v9)
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_228400400(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_228400E48();
  v10 = *(a1 + 16);
  v11 = swift_dynamicCast();
  return (*(*(v10 - 8) + 56))(a2, v11 ^ 1u, 1, v10);
}

void sub_228400E48()
{
  if (!qword_280DECFD0)
  {
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DECFD0);
    }
  }
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_22855DA2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if (*(v2 + *(a1 + 36)) == 1 && ([objc_opt_self() isAppleInternalInstall] & 1) == 0)
  {
    v14 = *(*(v5 - 8) + 16);
    v15 = v2 + *(a1 + 32);

    return v14(a2, v15, v5);
  }

  else
  {
    sub_228400D54(a1, v10);
    v11 = *(v5 - 8);
    v12 = *(v11 + 48);
    if (v12(v10, 1, v5) == 1)
    {
      (*(v11 + 16))(a2, v2 + *(a1 + 32), v5);
      result = v12(v10, 1, v5);
      if (result != 1)
      {
        return (*(v7 + 8))(v10, v6);
      }
    }

    else
    {
      return (*(v11 + 32))(a2, v10, v5);
    }
  }

  return result;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 96));

  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x22AABAD40](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_228401318()
{
  if (MEMORY[0x277D85020])
  {
    sub_228401A70(0, &qword_27D83FF38, sub_2284D32E0, MEMORY[0x277D85458]);
  }
}

uint64_t PinnedContentManagerProvider.init(healthStore:)(uint64_t a1)
{
  v3 = sub_2284013C0(MEMORY[0x277D84F90]);
  *(v1 + 24) = 0;
  *(v1 + 32) = v3;
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_2284013C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2284033AC();
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22847F5E0(v4, v11, &qword_27D83F920, qword_280DED6C0);
      v5 = v11[0];
      result = sub_22840248C(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_2283FAB3C(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22840153C(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 24));
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_22840248C(a1 & 1), (v8 & 1) != 0))
  {
    sub_2283F9B10(*(v6 + 56) + 40 * v7, &v25);
    sub_2283FAB3C(&v25, a2);
  }

  else
  {
    v9 = *(v3 + 16);
    type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
    v10 = swift_allocObject();
    sub_2283F2234();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = v9;
    *(v10 + 24) = sub_22855CD0C();
    sub_22855BCDC();
    v15 = objc_allocWithZone(MEMORY[0x277CCD570]);
    v16 = v14;
    v17 = sub_22855D17C();

    v18 = [v15 initWithCategory:1 domainName:v17 healthStore:v16];

    *(v10 + 16) = v18;
    [v18 startObservation_];

    v19 = objc_allocWithZone(sub_22855BCCC());
    v20 = v16;
    v21 = sub_22855BCBC();
    v22 = type metadata accessor for PinnedContentManager();
    v23 = swift_allocObject();
    v24 = sub_228401798(v21, v10, v23);
    v26 = v22;
    v27 = &protocol witness table for PinnedContentManager;
    *&v25 = v24;

    sub_228401F98(&v25, a1 & 1);
    a2[3] = v22;
    a2[4] = &protocol witness table for PinnedContentManager;
    *a2 = v24;
  }

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_228401798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[3] = sub_22855BCCC();
  v14[4] = MEMORY[0x277D0FCF0];
  v14[0] = a1;
  v13[3] = type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v13[4] = &off_283B89880;
  v13[0] = a2;
  sub_228401AD4();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(a3 + 16) = v6;
  *(a3 + 112) = 0;
  *(a3 + 64) = sub_22855BD6C() & 1;
  sub_2283F9B10(v14, a3 + 24);
  sub_2283F9B10(v13, a3 + 72);
  v12 = *(a2 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2284D3388;
  *(v8 + 24) = v7;
  sub_2283F2234();
  sub_228401EFC();

  v9 = sub_22855CEAC();

  v10 = *(a3 + 112);
  *(a3 + 112) = v9;

  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return a3;
}

uint64_t sub_228401948()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228401980()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2284019B8()
{
  if (!qword_280DED2E0)
  {
    sub_228401A70(255, &qword_280DEE3A8, MEMORY[0x277D0FCE8], MEMORY[0x277D83D88]);
    v0 = sub_22855CD4C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED2E0);
    }
  }
}

void sub_228401A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228401AD4()
{
  if (!qword_280DED068)
  {
    sub_228401A70(255, &qword_280DED2D8, sub_2284019B8, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED068);
    }
  }
}

uint64_t sub_228401B78(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22855CFBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = *(result + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v16 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a1;
    *(v17 + 32) = v16;
    v22 = v16;
    aBlock[4] = sub_2284020DC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_28;
    v18 = _Block_copy(aBlock);

    sub_22855CFDC();
    v24 = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v19 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    v21 = v10;
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v19);
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v14, v9, v18);
    _Block_release(v18);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_228401EB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_228401EFC()
{
  result = qword_280DED2F0;
  if (!qword_280DED2F0)
  {
    sub_2283F2234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2F0);
  }

  return result;
}

uint64_t sub_228401F54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_228401F98(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2283FAB3C(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_22840235C(v17, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2284D3398(a1, &unk_27D83FF40, qword_280DED6C0, &protocol descriptor for PinnedContentManaging, sub_22846F4D0);
    v8 = *v2;
    v9 = sub_22840248C(a2 & 1);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_228448D80();
        v14 = v16;
      }

      sub_2283FAB3C((*(v14 + 56) + 40 * v11), v17);
      sub_2284D2F0C(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_2284D3398(v17, &unk_27D83FF40, qword_280DED6C0, &protocol descriptor for PinnedContentManaging, sub_22846F4D0);
  }

  return result;
}

void sub_2284020EC(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_22855D02C();
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DEEC98);

  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_8;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  *v10 = 136446466;
  v15 = v11;
  v12 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v12);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  MEMORY[0x22AAB92A0](*(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
  MEMORY[0x22AAB92A0](93, 0xE100000000000000);
  v13 = sub_2283F8938(91, 0xE100000000000000, &v15);

  *(v10 + 4) = v13;
  *(v10 + 12) = 2048;
  v14 = (Current - a1) * 1000.0;
  if (COERCE__INT64(fabs(v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14 < 9.22337204e18)
  {
    *(v10 + 14) = v14;
    _os_log_impl(&dword_2283ED000, v8, v9, "%{public}s Urgent work completed after %ldms", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
LABEL_8:

    sub_228402514();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_22840235C(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22840248C(a2 & 1);
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
      sub_228448D80();
      v9 = v17;
      goto LABEL_8;
    }

    sub_228402CDC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_22840248C(a2 & 1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_22855E1BC();
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

    return sub_2283FAB3C(a1, v21);
  }

  else
  {

    return sub_228403540(v9, a2 & 1, a1, v20);
  }
}

unint64_t sub_22840248C(char a1)
{
  v3 = *(v1 + 40);
  sub_22855E22C();
  sub_22855BCDC();
  sub_22855D20C();

  v4 = sub_22855E27C();

  return sub_22840266C(a1 & 1, v4);
}

void sub_228402514()
{
  v1 = sub_22855D04C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22855D07C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    os_unfair_lock_lock(v8 + 16);
    sub_228402650(&v8[4]);
    os_unfair_lock_unlock(v8 + 16);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22840266C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = sub_22855BCDC();
      v9 = v8;
      if (v7 == sub_22855BCDC() && v9 == v10)
      {
        break;
      }

      v12 = sub_22855E15C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_228402770(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 1) & 1) == 0 && (*(a1 + 2) & 1) == 0)
  {
    v32 = *a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v4 = sub_22855CABC();
    __swift_project_value_buffer(v4, qword_280DEEC98);

    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446210;
      v9 = sub_22855E34C();
      MEMORY[0x22AAB92A0](v9);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v10 = sub_2283F8938(91, 0xE100000000000000, &v33);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_2283ED000, v5, v6, "%{public}s Starting fire once", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    *(a1 + 2) = 1;
    v11 = a2[5];
    v12 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(v12 + 16);

    v14(sub_228403428, v13, v11, v12);

    v15 = *(a1 + 16);

    v16 = sub_22855CA8C();
    v17 = sub_22855D6AC();

    v18 = os_log_type_enabled(v16, v17);
    if (v15)
    {
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136446210;
        v21 = sub_22855E34C();
        MEMORY[0x22AAB92A0](v21);

        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
        MEMORY[0x22AAB92A0](93, 0xE100000000000000);
        v22 = sub_2283F8938(91, 0xE100000000000000, &v33);

        *(v19 + 4) = v22;
        _os_log_impl(&dword_2283ED000, v16, v17, "%{public}s Starting legacy generation", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AABAD40](v20, -1, -1);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      v23 = a2[5];
      v24 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v23);
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = *(v24 + 24);

      v27 = v26(sub_2284D7108, v25, v23, v24);

      *(a1 + 40) = v27;
    }

    else
    {
      if (v18)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33 = v29;
        *v28 = 136446210;
        v30 = sub_22855E34C();
        MEMORY[0x22AAB92A0](v30);

        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
        MEMORY[0x22AAB92A0](93, 0xE100000000000000);
        v31 = sub_2283F8938(91, 0xE100000000000000, &v33);

        *(v28 + 4) = v31;
        _os_log_impl(&dword_2283ED000, v16, v17, "%{public}s No requests for legacy generation", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x22AABAD40](v29, -1, -1);
        MEMORY[0x22AABAD40](v28, -1, -1);
      }
    }
  }
}

uint64_t sub_228402CDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2284033AC();
  result = sub_22855DF4C();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_2283FAB3C(v22, v33);
      }

      else
      {
        sub_2283F9B10(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_22855E22C();
      sub_22855BCDC();
      sub_22855D20C();

      result = sub_22855E27C();
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
      *(*(v8 + 48) + v16) = v21;
      result = sub_2283FAB3C(v33, *(v8 + 56) + 40 * v16);
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

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_228402F8C()
{
  v0 = sub_22855CFBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855CFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v24 = v6;
    v25 = v5;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v26 = v1;
    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEC98);

    v13 = sub_22855CA8C();
    v14 = sub_22855D6AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v17 = sub_228403430();
      v19 = sub_2283F8938(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2283ED000, v13, v14, "%{public}s Fire once completed", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    v20 = *(v11 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    aBlock[4] = sub_228403B18;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_33;
    v21 = _Block_copy(aBlock);

    sub_22855CFDC();
    v27 = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v22 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v22);
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v9, v4, v21);
    _Block_release(v21);
    (*(v26 + 8))(v4, v0);
    (*(v24 + 8))(v9, v25);
  }

  return result;
}

void sub_2284033AC()
{
  if (!qword_280DED058)
  {
    sub_2283F9B94(255, qword_280DED6C0);
    sub_2284034EC();
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED058);
    }
  }
}

uint64_t sub_228403430()
{
  v1 = *v0;
  v2 = sub_22855E34C();
  MEMORY[0x22AAB92A0](v2);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
  MEMORY[0x22AAB92A0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_2284034EC()
{
  result = qword_280DEE3A0;
  if (!qword_280DEE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE3A0);
  }

  return result;
}

uint64_t sub_228403540(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_2283FAB3C(a3, a4[7] + 40 * a1);
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

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t LogCategory.logHandle.getter()
{
  v1 = *v0;
  sub_22840367C();
  LogCategory.rawValue.getter();
  return sub_22855D9FC();
}

unint64_t sub_22840367C()
{
  result = qword_280DEEB28;
  if (!qword_280DEEB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEEB28);
  }

  return result;
}

void sub_2284036C8()
{
  v1 = sub_22855D04C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22855D07C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    os_unfair_lock_lock(v8 + 16);
    sub_22840536C(&v8[4]);
    os_unfair_lock_unlock(v8 + 16);
  }

  else
  {
    __break(1u);
  }
}

unint64_t LogCategory.rawValue.getter()
{
  result = 0x636974796C616E61;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x72756F5361746164;
      break;
    case 4:
      result = 0x7375636F66;
      break;
    case 5:
      result = 0x6C6172656E6567;
      break;
    case 6:
      result = 0x69746172656E6567;
      break;
    case 7:
      result = 0x727473656863726FLL;
      break;
    case 8:
      result = 0x6C616E6F73726570;
      break;
    case 9:
      result = 0x6E6967756C70;
      break;
    case 0xA:
      result = 0x686372616573;
      break;
    case 0xB:
      result = 2003134838;
      break;
    case 0xC:
      result = 6516856;
      break;
    case 0xD:
      result = 0x79735F64756F6C63;
      break;
    case 0xE:
      result = 0x725F68746C616568;
      break;
    case 0xF:
      result = 0x676E6972616568;
      break;
    case 0x10:
      result = 0x7472616568;
      break;
    case 0x11:
      result = 0x6E6F6D616E6E6963;
      break;
    case 0x12:
      result = 0x697461636964656DLL;
      break;
    case 0x13:
      result = 0x6172656D6163;
      break;
    case 0x14:
      result = 0xD000000000000010;
      break;
    case 0x15:
      result = 0x685F6C61746E656DLL;
      break;
    case 0x16:
      result = 0x656C69666F7270;
      break;
    case 0x17:
      result = 0x7461726970736572;
      break;
    case 0x18:
      result = 0x7065656C73;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

id _s14HealthPlatform0A15AppPluginSourceC12knownBundlesSayAC11KnownBundleVGvgZ_0()
{
  v0 = sub_22855BF5C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_22855C06C();
  v168 = *(v162 - 8);
  v5 = *(v168 + 64);
  MEMORY[0x28223BE20](v162);
  v7 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v9 = result;
    LODWORD(v155) = [result isiPad];

    sub_228405990(0, &qword_280DED030, MEMORY[0x277D84560]);
    v10 = (type metadata accessor for HealthAppPluginSource.KnownBundle(0) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v157 = *(*v10 + 72);
    v12 = v157;
    v13 = swift_allocObject();
    v150 = v13;
    *(v13 + 16) = xmmword_2285623A0;
    v14 = (v13 + v11);
    v154 = 0x800000022856F2A0;
    v152 = 0x800000022856D040;
    v158 = type metadata accessor for StorageLocations();
    static StorageLocations.rootDirectory.getter();
    v169 = 0x800000022856F190;
    v170 = 0xD000000000000026;
    v171 = 0x800000022856F190;
    v163 = *MEMORY[0x277CC91C0];
    v15 = v1[13];
    v164 = v1 + 13;
    v165 = v15;
    v15(v4);
    v16 = v10[8];
    v166 = sub_2283F79A4();
    sub_22855C05C();
    v167 = v1[1];
    v167(v4, v0);
    v160 = *(v168 + 8);
    v168 += 8;
    v17 = v162;
    v160(v7, v162);
    v153 = 0xD00000000000001FLL;
    v161 = v14;
    v18 = v154;
    *v14 = 0xD00000000000001FLL;
    v14[1] = v18;
    v151 = 0xD000000000000023;
    v19 = v152;
    v14[2] = 0xD000000000000023;
    v14[3] = v19;
    *(v14 + v10[9]) = 0;
    *(v14 + v10[10]) = 0;
    *(v14 + v10[11]) = 0;
    v20 = (v14 + v12);
    v159 = v1 + 1;
    v154 = 0x800000022856F2C0;
    v152 = 0x800000022856F2E0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v156 = v0;
    v165(v4, v163, v0);
    v21 = v14 + v12 + v10[8];
    sub_22855C05C();
    v167(v4, v0);
    v22 = v160;
    v160(v7, v17);
    v149 = 0xD00000000000001DLL;
    v23 = v154;
    *v20 = 0xD00000000000001DLL;
    v20[1] = v23;
    v154 = 0xD000000000000021;
    v24 = v152;
    v20[2] = 0xD000000000000021;
    v20[3] = v24;
    *(v20 + v10[9]) = v155;
    *(v20 + v10[10]) = 0;
    *(v20 + v10[11]) = 0;
    v25 = 2 * v157;
    v26 = (v161 + 2 * v157);
    v148 = 0x800000022856F310;
    v147 = 0x800000022856F330;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v27 = v156;
    v165(v4, v163, v156);
    v28 = v26 + v10[8];
    sub_22855C05C();
    v167(v4, v27);
    v22(v7, v162);
    v152 = 0xD00000000000001BLL;
    v29 = v148;
    *v26 = 0xD00000000000001BLL;
    v26[1] = v29;
    v30 = v147;
    v26[2] = v153;
    v26[3] = v30;
    *(v26 + v10[9]) = 0;
    *(v26 + v10[10]) = 0;
    *(v26 + v10[11]) = 0;
    v31 = v157;
    v32 = (v161 + v25 + v157);
    v153 = 0x800000022856F350;
    v148 = 0x800000022856F370;
    static StorageLocations.rootDirectory.getter();
    v33 = v169;
    v170 = 0xD000000000000026;
    v171 = v169;
    v34 = v163;
    v35 = v156;
    v165(v4, v163, v156);
    v36 = v32 + v10[8];
    sub_22855C05C();
    v37 = v35;
    v38 = v167;
    v167(v4, v37);
    v39 = v162;
    v160(v7, v162);
    v40 = v153;
    v41 = v154;
    *v32 = v149;
    v32[1] = v40;
    v42 = v148;
    v32[2] = v41;
    v32[3] = v42;
    *(v32 + v10[9]) = 0;
    *(v32 + v10[10]) = 0;
    *(v32 + v10[11]) = 0;
    v149 = 4 * v31;
    v43 = (v161 + 4 * v31);
    v153 = 0x800000022856F3A0;
    v148 = 0x800000022856F3C0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v33;
    v44 = v156;
    v45 = v165;
    v165(v4, v34, v156);
    v46 = v43 + v10[8];
    sub_22855C05C();
    v38(v4, v44);
    v160(v7, v39);
    v47 = v153;
    *v43 = 0xD000000000000012;
    v43[1] = v47;
    v153 = 0xD000000000000016;
    v48 = v148;
    v43[2] = 0xD000000000000016;
    v43[3] = v48;
    *(v43 + v10[9]) = 0;
    *(v43 + v10[10]) = 1;
    *(v43 + v10[11]) = 0;
    v49 = (v161 + v149 + v157);
    v149 = 0x800000022856F3E0;
    v147 = 0x800000022856F400;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v50 = v163;
    v51 = v156;
    v45(v4, v163, v156);
    v52 = v49 + v10[8];
    sub_22855C05C();
    v167(v4, v51);
    v53 = v162;
    v160(v7, v162);
    v148 = 0xD00000000000001CLL;
    v54 = v149;
    *v49 = 0xD00000000000001CLL;
    v49[1] = v54;
    v145 = 0xD000000000000020;
    v55 = v147;
    v49[2] = 0xD000000000000020;
    v49[3] = v55;
    *(v49 + v10[9]) = 0;
    *(v49 + v10[10]) = 0;
    *(v49 + v10[11]) = 0;
    v56 = (v161 + 6 * v157);
    v149 = 0x800000022856F430;
    v146 = 0x800000022856F450;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v165(v4, v50, v51);
    v57 = v56 + v10[8];
    sub_22855C05C();
    v58 = v167;
    v167(v4, v51);
    v160(v7, v53);
    v147 = 0xD000000000000017;
    v59 = v149;
    *v56 = 0xD000000000000017;
    v56[1] = v59;
    v60 = v146;
    v56[2] = v152;
    v56[3] = v60;
    *(v56 + v10[9]) = 0;
    *(v56 + v10[10]) = 0;
    *(v56 + v10[11]) = 0;
    v152 = 8 * v157;
    v61 = v161;
    v62 = (v161 + 7 * v157);
    v149 = 0x800000022856F470;
    v144 = 0x800000022856F4A0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v63 = v163;
    v165(v4, v163, v51);
    v64 = v62 + v10[8];
    sub_22855C05C();
    v58(v4, v51);
    v65 = v160;
    v160(v7, v162);
    v146 = 0xD000000000000027;
    v66 = v149;
    *v62 = 0xD000000000000027;
    v62[1] = v66;
    v67 = v144;
    v62[2] = 0xD00000000000002BLL;
    v62[3] = v67;
    LOBYTE(v34) = v155;
    *(v62 + v10[9]) = v155;
    *(v62 + v10[10]) = 1;
    *(v62 + v10[11]) = 0;
    v68 = (v61 + v152);
    v144 = 0x800000022856F4D0;
    v143 = 0x800000022856F500;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v69 = v63;
    v70 = v156;
    v165(v4, v69, v156);
    v71 = v68 + v10[8];
    sub_22855C05C();
    v167(v4, v70);
    v65(v7, v162);
    v149 = 0xD000000000000025;
    v72 = v144;
    *v68 = 0xD000000000000025;
    v68[1] = v72;
    v73 = v143;
    v68[2] = v145;
    v68[3] = v73;
    *(v68 + v10[9]) = v34;
    *(v68 + v10[10]) = 1;
    *(v68 + v10[11]) = 0;
    v74 = (v161 + v152 + v157);
    v145 = 0x800000022856F530;
    v144 = 0x800000022856F560;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v75 = v156;
    v76 = v165;
    v165(v4, v163, v156);
    v77 = v74 + v10[8];
    sub_22855C05C();
    v167(v4, v75);
    v160(v7, v162);
    v152 = 0xD000000000000022;
    v78 = v145;
    *v74 = 0xD000000000000022;
    v74[1] = v78;
    v74[2] = 0xD000000000000026;
    v74[3] = v144;
    *(v74 + v10[9]) = v155;
    *(v74 + v10[10]) = 1;
    *(v74 + v10[11]) = 0;
    v79 = v157;
    v80 = (v161 + 10 * v157);
    v145 = 0x800000022856F590;
    v144 = 0x800000022856F5B0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v81 = v156;
    v76(v4, v163, v156);
    v82 = v80 + v10[8];
    sub_22855C05C();
    v167(v4, v81);
    v83 = v162;
    v84 = v160;
    v160(v7, v162);
    v85 = v145;
    *v80 = 0xD00000000000001ELL;
    v80[1] = v85;
    v86 = v144;
    v80[2] = v152;
    v80[3] = v86;
    *(v80 + v10[9]) = 0;
    *(v80 + v10[10]) = 1;
    *(v80 + v10[11]) = 0;
    v87 = v161;
    v88 = (v161 + 11 * v79);
    v145 = 0x800000022856F5E0;
    v144 = 0x800000022856F600;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v89 = v156;
    v165(v4, v163, v156);
    v90 = v88 + v10[8];
    sub_22855C05C();
    v167(v4, v89);
    v84(v7, v83);
    v91 = v145;
    *v88 = 0xD000000000000015;
    v88[1] = v91;
    v92 = v144;
    v88[2] = 0xD000000000000019;
    v88[3] = v92;
    *(v88 + v10[9]) = v155;
    *(v88 + v10[10]) = 1;
    *(v88 + v10[11]) = 0;
    v93 = v157;
    v94 = (v87 + 12 * v157);
    v145 = 0x800000022856F620;
    v144 = 0x800000022856F640;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v95 = v163;
    v165(v4, v163, v89);
    v96 = v94 + v10[8];
    sub_22855C05C();
    v167(v4, v89);
    v97 = v162;
    v160(v7, v162);
    v98 = v145;
    *v94 = 0xD000000000000018;
    v94[1] = v98;
    v99 = v144;
    v94[2] = v151;
    v94[3] = v99;
    *(v94 + v10[9]) = 0;
    *(v94 + v10[10]) = 0;
    *(v94 + v10[11]) = 0;
    v100 = (v87 + 13 * v93);
    v151 = 0x800000022856F670;
    v145 = 0x800000022856F6A0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v101 = v95;
    v102 = v156;
    v103 = v165;
    v165(v4, v101, v156);
    v104 = v100 + v10[8];
    sub_22855C05C();
    v167(v4, v102);
    v105 = v97;
    v106 = v160;
    v160(v7, v105);
    v107 = v151;
    *v100 = v146;
    v100[1] = v107;
    v108 = v145;
    v100[2] = v148;
    v100[3] = v108;
    *(v100 + v10[9]) = 0;
    *(v100 + v10[10]) = 1;
    *(v100 + v10[11]) = 0;
    v109 = (v87 + 14 * v157);
    v151 = 0x800000022856F6C0;
    v148 = 0x800000022856F6E0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v110 = v156;
    v103(v4, v163, v156);
    v111 = v109 + v10[8];
    sub_22855C05C();
    v167(v4, v110);
    v112 = v162;
    v106(v7, v162);
    v113 = v151;
    *v109 = 0xD000000000000013;
    v109[1] = v113;
    v114 = v148;
    v109[2] = v147;
    v109[3] = v114;
    *(v109 + v10[9]) = 0;
    *(v109 + v10[10]) = 0;
    *(v109 + v10[11]) = 0;
    v151 = 16 * v157;
    v115 = v161;
    v116 = (v161 + 15 * v157);
    v148 = 0x800000022856F700;
    v147 = 0x800000022856F730;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v165(v4, v163, v110);
    v117 = v116 + v10[8];
    sub_22855C05C();
    v167(v4, v110);
    v118 = v160;
    v160(v7, v112);
    v119 = v148;
    *v116 = v154;
    v116[1] = v119;
    v120 = v147;
    v116[2] = v153;
    v116[3] = v120;
    *(v116 + v10[9]) = v155;
    *(v116 + v10[10]) = 1;
    *(v116 + v10[11]) = 0;
    v121 = (v115 + v151);
    v154 = 0x800000022856F750;
    v148 = 0x800000022856F770;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v165(v4, v163, v110);
    v122 = v121 + v10[8];
    sub_22855C05C();
    v123 = v110;
    v124 = v167;
    v167(v4, v123);
    v118(v7, v162);
    v125 = v154;
    *v121 = v153;
    v121[1] = v125;
    v154 = 0xD00000000000001ALL;
    v126 = v148;
    v121[2] = 0xD00000000000001ALL;
    v121[3] = v126;
    *(v121 + v10[9]) = 1;
    *(v121 + v10[10]) = 1;
    *(v121 + v10[11]) = 0;
    v127 = v157;
    v128 = (v161 + v151 + v157);
    v153 = 0x800000022856F790;
    v151 = 0x800000022856F7B0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v129 = v163;
    v130 = v156;
    v165(v4, v163, v156);
    v131 = v128 + v10[8];
    sub_22855C05C();
    v124(v4, v130);
    v132 = v162;
    v133 = v160;
    v160(v7, v162);
    v134 = v153;
    *v128 = v154;
    v128[1] = v134;
    v135 = v151;
    v128[2] = v149;
    v128[3] = v135;
    *(v128 + v10[9]) = v155;
    *(v128 + v10[10]) = 1;
    *(v128 + v10[11]) = 1;
    v136 = (v161 + 18 * v127);
    v154 = 0x800000022856F810;
    v155 = 0x800000022856F7E0;
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v137 = v129;
    v138 = v156;
    v165(v4, v137, v156);
    v139 = v136 + v10[8];
    sub_22855C05C();
    v167(v4, v138);
    v133(v7, v132);
    v140 = v155;
    *v136 = v152;
    v136[1] = v140;
    v136[2] = 0xD000000000000026;
    v136[3] = v154;
    *(v136 + v10[9]) = 0;
    *(v136 + v10[10]) = 0;
    *(v136 + v10[11]) = 0;
    v141 = (v161 + 19 * v157);
    static StorageLocations.rootDirectory.getter();
    v170 = 0xD000000000000026;
    v171 = v169;
    v165(v4, v163, v138);
    v142 = v141 + v10[8];
    sub_22855C05C();
    v167(v4, v138);
    v160(v7, v162);
    *v141 = 0xD000000000000029;
    v141[1] = 0x800000022856F840;
    v141[2] = 0xD00000000000002DLL;
    v141[3] = 0x800000022856F870;
    *(v141 + v10[9]) = 0;
    *(v141 + v10[10]) = 1;
    *(v141 + v10[11]) = 0;
    return v150;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228405388(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_22855CFBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CFEC();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 1) & 1) == 0 && (*(a1 + 3) & 1) == 0)
  {
    v34 = v13;
    v35 = v6;
    v36 = result;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);

    v17 = sub_22855CA8C();
    v18 = sub_22855D6AC();

    if (os_log_type_enabled(v17, v18))
    {
      v31 = swift_slowAlloc();
      v32 = v17;
      v19 = v31;
      v33 = swift_slowAlloc();
      v43 = v33;
      *v19 = 136446210;
      aBlock = 91;
      v38 = 0xE100000000000000;
      v20 = sub_22855E34C();
      v21 = v18;
      MEMORY[0x22AAB92A0](v20);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v22 = sub_2283F8938(aBlock, v38, &v43);

      v23 = v31;
      *(v31 + 4) = v22;
      v24 = v21;
      v17 = v32;
      _os_log_impl(&dword_2283ED000, v32, v24, "%{public}s Calling all fire once barriers", v23, 0xCu);
      v25 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AABAD40](v25, -1, -1);
      MEMORY[0x22AABAD40](v23, -1, -1);
    }

    *(a1 + 3) = 1;
    v26 = MEMORY[0x277D84F90];
    v27 = *(a1 + 8);
    *(a1 + 8) = MEMORY[0x277D84F90];
    v33 = *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v41 = sub_2284059F0;
    v42 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_228401F54;
    v40 = &block_descriptor_39;
    v29 = _Block_copy(&aBlock);
    sub_22855CFDC();
    v43 = v26;
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v30 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v30);
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v15, v9, v29);
    _Block_release(v29);
    (*(v35 + 8))(v9, v5);
    (*(v34 + 8))(v15, v36);
  }

  return result;
}

uint64_t sub_228405854()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840588C()
{
  v0 = _s14HealthPlatform0A15AppPluginSourceC12knownBundlesSayAC11KnownBundleVGvgZ_0();
  v1 = _s14HealthPlatform0A15AppPluginSourceC25disabledBundleIdentifiersShySSGyFZ_0();
  v2 = _s14HealthPlatform0A15AppPluginSourceC24allowedBundleIdentifiersShySSGSgyFZ_0();
  type metadata accessor for HealthAppPluginSource();
  v3 = swift_allocObject();
  result = HealthAppPluginSource.init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(0, 0, v0, v1, v2);
  qword_280DEDF10 = v3;
  return result;
}

uint64_t sub_228405908()
{
  result = sub_22855C06C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_228405990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HealthAppPluginSource.KnownBundle(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228405A10(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = a2;

      v6(&v7);

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t static StorageLocations.rootDirectory.getter()
{
  sub_2283F6B58();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22855BF5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 environment];

  v11 = sub_22855D0EC();
  if (*(v11 + 16) && (v12 = sub_2283F6D18(0x4F54414C554D4953, 0xEE00544F4F525F52), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];

    (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
    v17 = sub_22855C06C();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  }

  else
  {

    (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
    v18 = sub_22855C06C();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  }

  return sub_22855C04C();
}

id _s14HealthPlatform0A15AppPluginSourceC25disabledBundleIdentifiersShySSGyFZ_0()
{
  v16 = MEMORY[0x277D84F90];
  v0 = objc_opt_self();
  result = [v0 sharedBehavior];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result isiPad];

  if (v3)
  {
    sub_228405F48(&unk_283B7ECF0);
  }

  result = [v0 sharedBehavior];
  if (!result)
  {
    goto LABEL_15;
  }

  v4 = result;
  v5 = [result isAppleInternalInstall];

  if (v5)
  {
    v6 = *MEMORY[0x277CCE378];
    sub_22855D1AC();
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_22855D17C();

    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      v10 = sub_22855D17C();
      v11 = [v9 arrayForKey_];

      v12 = MEMORY[0x277D84F90];
      if (v11)
      {
        v13 = sub_22855D3AC();

        v14 = sub_228464940(v13);

        if (v14)
        {
          v12 = v14;
        }
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    sub_228405F48(v12);
  }

  v15 = sub_228406280(v16);

  return v15;
}

uint64_t sub_228405F1C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_228405F48(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2283F7678(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall OrchestrationWorkQueueStatusObserver.didStartForegroundSession(planCount:duration:)(Swift::Int planCount, Swift::Double duration)
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DE9DF8);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = planCount;
    *(v7 + 12) = 2048;
    *(v7 + 14) = duration;
    _os_log_impl(&dword_2283ED000, v5, v6, "Started foreground session with initial %ld plans over %fs.", v7, 0x16u);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v8 = sub_22855D17C();
  sub_22840012C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560570;
  *(inited + 32) = 0x736E616C70;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_228400184(inited);
  swift_setDeallocating();
  sub_228400378();
  swift_arrayDestroy();
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v10 = sub_22855D0DC();

  AnalyticsSendEvent();
}

uint64_t sub_228406280(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAB95B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_228406318(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_228406318(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22855E22C();
  sub_22855D20C();
  v9 = sub_22855E27C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22855E15C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_228406B98(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}