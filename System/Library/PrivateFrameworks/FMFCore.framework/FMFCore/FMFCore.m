uint64_t FMLocationShifter.init()()
{
  v16 = sub_24A4ABD50();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A4ABD10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24A4AB6E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v15[0] = sub_24A3785D4();
  v17 = ".fmfcore.refresh";
  sub_24A4AB6D0();
  v19 = MEMORY[0x277D84F90];
  v15[3] = sub_24A378620(&qword_27EF402C0, MEMORY[0x277D85230]);
  v15[2] = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v8 = *MEMORY[0x277D85260];
  v9 = v0 + 104;
  v10 = *(v0 + 104);
  v15[1] = v9;
  v11 = v16;
  v10(v3, v8, v16);
  *(v18 + 24) = sub_24A4ABD90();
  sub_24A4AB6D0();
  v19 = MEMORY[0x277D84F90];
  sub_24A4ABE90();
  v10(v3, v8, v11);
  v12 = sub_24A4ABD90();
  v13 = v18;
  *(v18 + 32) = v12;
  *(v13 + 16) = [objc_allocWithZone(MEMORY[0x277D0EB88]) init];
  return v13;
}

unint64_t sub_24A3785D4()
{
  result = qword_27EF40900;
  if (!qword_27EF40900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF40900);
  }

  return result;
}

uint64_t sub_24A378620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A378668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A3786B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A378704(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

FMFCore::InitialTabInfo __swiftcall InitialTabInfo.init(lastVisitedTimes:currentTab:timeSpent:)(Swift::OpaquePointer lastVisitedTimes, Swift::OpaquePointer currentTab, Swift::OpaquePointer timeSpent)
{
  v3->_rawValue = lastVisitedTimes._rawValue;
  v3[1]._rawValue = currentTab._rawValue;
  v3[2]._rawValue = timeSpent._rawValue;
  result.timeSpent = timeSpent;
  result.currentTab = currentTab;
  result.lastVisitedTimes = lastVisitedTimes;
  return result;
}

void *FMImageCache.init(converter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A37887C(a1, a2);

  return v2;
}

void *sub_24A37887C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v27 = *v2;
  v26 = sub_24A4ABD50();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_24A4ABD10() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_24A4AB6E0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2[2] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v25 = sub_24A3785D4();
  sub_24A4AB6D0();
  v30 = MEMORY[0x277D84F90];
  sub_24A378D20(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v26);
  v2[3] = sub_24A4ABD90();
  v10 = v27;
  v11 = v27[10];
  v12 = v27[13];
  v13 = v27[11];
  v14 = *(swift_getAssociatedConformanceWitness() + 16);
  v3[4] = sub_24A4AB750();
  v15 = v10[12];
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  sub_24A4AC3B0();
  swift_getFunctionTypeMetadata1();
  sub_24A4ABB30();
  v3[5] = sub_24A4AB740();
  v3[6] = sub_24A4AB740();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24A376000, v17, v18, "FMImageCache: initialized", v19, 2u);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  v20 = v29;
  v3[7] = v28;
  v3[8] = v20;
  v21 = v3[2];

  [v21 setQualityOfService_];
  v22 = v3[2];
  v23 = sub_24A4AB820();

  [v22 setName_];

  [v3[2] setMaxConcurrentOperationCount_];
  return v3;
}

uint64_t sub_24A378D20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A378D68()
{
  v0 = sub_24A4AB630();
  sub_24A378DB4(v0, qword_27EF4E260);
  sub_24A378E18(v0, qword_27EF4E260);
  return sub_24A4AB620();
}

uint64_t *sub_24A378DB4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_24A378E18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24A378E68()
{
  if (qword_27EF3EBA8 != -1)
  {
    swift_once();
  }

  v1 = *(qword_27EF4E0C0 + 16);
  v2 = *(qword_27EF4E0C0 + 24);

  MEMORY[0x24C217D50](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4B33B0);

  sub_24A4AA970();
}

uint64_t sub_24A378F54()
{
  type metadata accessor for FMSystemDirectoryUtilities();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x24C2192C0](started, v1);
  v3 = sub_24A4AB950();
  v5 = v4;
  result = MEMORY[0x24C219130](v1, -1, -1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  qword_27EF4E0C0 = v0;
  return result;
}

uint64_t type metadata accessor for FMFManagerConfiguration()
{
  result = qword_27EF400A8;
  if (!qword_27EF400A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A37904C()
{
  result = sub_24A4AAB80();
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

uint64_t static FMFManagerConfiguration.default.getter()
{
  if (qword_27EF3EBB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24A379174()
{
  v0 = sub_24A4AAB80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB50();
  if (qword_27EF3EBE0 != -1)
  {
    swift_once();
  }

  v6 = qword_27EF4E228;
  v5 = unk_27EF4E230;
  v7 = qword_27EF3EBD0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_27EF40400;
  v9 = objc_opt_self();

  v10 = [v9 mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = sub_24A4AB850();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = sub_24A379788(v12, v14, v8);

  v16 = type metadata accessor for FMFManagerConfiguration();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  (*(v1 + 16))(v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale, v4, v0);
  v20 = (v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
  *v20 = v6;
  v20[1] = v5;
  *(v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) = v15 & 1;
  v21 = (v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  *v21 = sub_24A38D52C;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) = 3;
  *(v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers) = 0;
  *(v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) = 0;
  *(v19 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) = 0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);
  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v15 & 1;
    _os_log_impl(&dword_24A376000, v23, v24, "FMFManagerConfiguration: internal useCache: %{BOOL}d", v25, 8u);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  result = (*(v1 + 8))(v4, v0);
  qword_27EF40080 = v19;
  return result;
}

uint64_t sub_24A3794E0()
{
  if (qword_27EF3EBA8 != -1)
  {
    swift_once();
  }

  v1 = *(qword_27EF4E0C0 + 16);
  v2 = *(qword_27EF4E0C0 + 24);
  swift_bridgeObjectRetain_n();

  MEMORY[0x24C217D50](0x7365686361432FLL, 0xE700000000000000);

  MEMORY[0x24C217D50](0xD00000000000001ALL, 0x800000024A4B2470);

  qword_27EF4E228 = v1;
  unk_27EF4E230 = v2;
  return result;
}

uint64_t sub_24A3795D4()
{
  v0 = sub_24A379620(&unk_285D84978);
  result = swift_arrayDestroy();
  qword_27EF40400 = v0;
  return result;
}

uint64_t sub_24A379620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
    v3 = sub_24A4ABF10();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_24A4AC360();

      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
          result = sub_24A4AC270();
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

uint64_t sub_24A379788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24A4AC360();
  sub_24A4AB8F0();
  v7 = sub_24A4AC3A0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24A4AC270() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for FMFManager()
{
  result = qword_27EF40418;
  if (!qword_27EF40418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3798CC()
{
  sub_24A37B644();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for FMFFriend()
{
  result = qword_27EF3FB60;
  if (!qword_27EF3FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A379A18()
{
  sub_24A379C28(319, &qword_27EF3F398);
  if (v0 <= 0x3F)
  {
    sub_24A379C74();
    if (v1 <= 0x3F)
    {
      sub_24A379CCC(319, &qword_27EF3F3A0, &qword_27EF3F108, &qword_24A4B4950);
      if (v2 <= 0x3F)
      {
        sub_24A379D20(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_24A379C28(319, &qword_27EF3F3B0);
          if (v4 <= 0x3F)
          {
            sub_24A379CCC(319, &qword_27EF3FB78, &qword_27EF3F1B0, &unk_24A4B4980);
            if (v5 <= 0x3F)
            {
              sub_24A379C28(319, &qword_27EF3FB80);
              if (v6 <= 0x3F)
              {
                sub_24A379D20(319, &qword_27EF40870, type metadata accessor for FMFLocation);
                if (v7 <= 0x3F)
                {
                  sub_24A379C28(319, &qword_27EF3FB88);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24A379C28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24A4ABDF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24A379C74()
{
  if (!qword_27EF3FB70)
  {
    v0 = sub_24A4ABC40();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3FB70);
    }
  }
}

void sub_24A379CCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_24A3CBC9C(a3, a4);
    v5 = sub_24A4ABDF0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A379D20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FMFLocationAlert()
{
  result = qword_27EF3F950;
  if (!qword_27EF3F950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A379DC0()
{
  sub_24A379C28(319, &qword_27EF3F398);
  if (v0 <= 0x3F)
  {
    sub_24A379F94(319, &qword_27EF3F960, type metadata accessor for FMFSchedule);
    if (v1 <= 0x3F)
    {
      sub_24A379C28(319, &qword_27EF3F968);
      if (v2 <= 0x3F)
      {
        sub_24A37A11C();
        if (v3 <= 0x3F)
        {
          sub_24A379C28(319, &qword_27EF3F970);
          if (v4 <= 0x3F)
          {
            sub_24A379C28(319, &qword_27EF3F978);
            if (v5 <= 0x3F)
            {
              sub_24A379F94(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24A379F94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FMFSchedule()
{
  result = qword_27EF3EFC8;
  if (!qword_27EF3EFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A37A034()
{
  sub_24A37A0C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24A37A0C4()
{
  if (!qword_27EF3EFD8)
  {
    sub_24A4AABE0();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3EFD8);
    }
  }
}

void sub_24A37A11C()
{
  if (!qword_27EF3F3A0)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3F3A0);
    }
  }
}

uint64_t type metadata accessor for FMFLocation()
{
  result = qword_27EF3F868;
  if (!qword_27EF3F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A37A1CC()
{
  sub_24A379C28(319, &qword_27EF3F398);
  if (v0 <= 0x3F)
  {
    sub_24A37A2F0(319, &qword_27EF3F878, type metadata accessor for SPMotionActivityState);
    if (v1 <= 0x3F)
    {
      sub_24A37A2F0(319, &qword_27EF3F880, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        sub_24A379C28(319, &qword_27EF3F888);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A37A2F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A4ABDF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A37A358(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t FMFManager.init(configuration:tabInfo:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v139 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = v130 - v7;
  v8 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = (v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v136 = v130 - v12;
  v137 = sub_24A4ABD50();
  v135 = *(v137 - 8);
  v13 = *(v135 + 64);
  MEMORY[0x28223BE20](v137);
  v133 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4ABD10();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_24A4AB6E0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_24A4AAB20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(a2 + 2);
  sub_24A4AAB10();
  v24 = sub_24A4AAAF0();
  v26 = v25;
  v27 = *(v20 + 8);
  v130[1] = "FBaseAction";
  v131 = *a2;
  v27(v23, v19);
  *(v3 + 16) = v24;
  *(v3 + 24) = v26;
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  *&v144 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  v28 = v139;
  sub_24A4ABE90();
  (*(v135 + 104))(v133, *MEMORY[0x277D85260], v137);
  *(v3 + 48) = sub_24A4ABD90();
  *(v3 + 224) = 0;
  *(v3 + 226) = 0;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  v29 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  v30 = type metadata accessor for FMFFriend();
  (*(*(v30 - 8) + 56))(v3 + v29, 1, 1, v30);
  *(v3 + OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized) = 0;
  *(v3 + 56) = v28;
  *(v3 + 64) = v131;
  *(v3 + 80) = v132;
  v31 = *(v28 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_snapshotHandlers);
  if (v31)
  {
    v32 = *(v31 + 32) != 0;
  }

  else
  {
    v32 = 0;
  }

  v33 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch;
  LODWORD(v135) = *(v28 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch);
  LODWORD(v137) = v32;
  *(v3 + 225) = v32;
  v34 = OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_preferredLocale;
  v35 = sub_24A4AAB80();
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v133 = v34;
  v38 = v136;
  v132 = v37;
  v37(v136, (v28 + v34), v35);
  *&v131 = *(v36 + 56);
  (v131)(v38, 0, 1, v35);
  v39 = type metadata accessor for FMFReverseGeocodingCache();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v138;
  sub_24A37B740(v38, v138, &qword_27EF3F650, &qword_24A4B5A10);

  v138 = sub_24A37B7A8(v42);
  v43 = v139;
  sub_24A37EF2C(v38, &qword_27EF3F650, &qword_24A4B5A10);
  v44 = 0;
  if (*(v43 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1)
  {
    v44 = *(v43 + v33) ^ 1;
  }

  type metadata accessor for FMFGarbageCollector();
  swift_allocObject();
  *(v3 + 104) = sub_24A37BEB0(v44 & 1);
  type metadata accessor for FMFSystemStateController();
  swift_allocObject();
  *(v3 + 112) = sub_24A37D0E4();
  v45 = v138;
  *(v3 + 216) = v138;
  type metadata accessor for FMFDataManager();
  swift_allocObject();
  swift_retain_n();

  v47 = v137;
  *(v3 + 88) = sub_24A37DB30(v46, 0, v45, v137);
  *(v3 + 96) = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
  v48 = *(v3 + 88);
  v49 = objc_allocWithZone(type metadata accessor for FMFGenericResponseHandler());

  v51 = sub_24A38C154(v50, v47);
  *(v3 + 120) = v51;
  v53 = *(v43 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider);
  v52 = *(v43 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_interactionControllerProvider + 8);
  v54 = v136;
  v132(v136, &v133[v43], v35);
  (v131)(v54, 0, 1, v35);
  v55 = v51;
  v53(&v144);

  sub_24A37EF2C(v54, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A37B3F8(&v144, v3 + 136);
  v56 = 0;
  if ((*(v43 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_enabledSubsystems) & 2) != 0)
  {
    swift_beginAccess();
    sub_24A39997C(v3 + 136, &v144);
    v57 = objc_allocWithZone(type metadata accessor for FMFMyLocationController());
    v56 = sub_24A39A204(&v144);
  }

  v58 = *(v3 + 184);
  *(v3 + 184) = v56;

  v59 = *(v3 + 88);
  swift_beginAccess();
  sub_24A39997C(v3 + 136, &v144);
  v60 = type metadata accessor for FMAPSConnectionHandler();
  v61 = qword_27EF3EBD8;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = qword_27EF4E1A8;
  v63 = unk_27EF4E1B0;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v65 = sub_24A3A1764(0xD000000000000017, 0x800000024A4B1A90, v62, 0, 0, v60, ObjectType, v63);
  v66 = type metadata accessor for FMFRefreshController();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  LODWORD(ObjectType) = v137;
  *(v3 + 128) = sub_24A3A20A8(v59, &v144, v65, v137, v135);
  v69 = *(v3 + 96);
  v145 = sub_24A37B428(0, &qword_27EF40408, 0x277D496C0);
  v146 = &off_285D88B10;
  *&v144 = v69;
  if (ObjectType)
  {
    v70 = *(v3 + 88);
    type metadata accessor for FMFProactiveLocationController();
    swift_allocObject();
    v71 = v138;

    v72 = v69;

    sub_24A416040(v73, v71);
    v74 = *(v3 + 192);
    *(v3 + 192) = v75;
LABEL_16:

    goto LABEL_17;
  }

  v76 = v69;
  if ((sub_24A3A290C() & 1) == 0)
  {
    v84 = *(v3 + 88);
    v85 = *(v3 + 96);
    type metadata accessor for FMFSecureLocationRefreshController();
    swift_allocObject();

    v86 = sub_24A463580(v84, v85);
    v87 = *(v3 + 200);
    *(v3 + 200) = v86;
    goto LABEL_16;
  }

  v77 = type metadata accessor for FMFSecureLocationController(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  v80 = sub_24A3A2C20();
  v81 = *(v3 + 208);
  *(v3 + 208) = v80;

  v82 = sub_24A4AA700();
  v142 = v82;
  v143 = sub_24A378668(&qword_27EF40910, MEMORY[0x277D08A28]);
  v83 = sub_24A38D3BC(&v141);
  (*(*(v82 - 8) + 104))(v83, *MEMORY[0x277D08A08], v82);
  LOBYTE(v82) = sub_24A4AA6C0();
  sub_24A37EEE0(&v141);
  if ((v82 & 1) == 0)
  {
    goto LABEL_16;
  }

  v142 = v77;
  v143 = &off_285D869E8;
  *&v141 = v80;
  sub_24A37EEE0(&v144);
  sub_24A37B3F8(&v141, &v144);
LABEL_17:
  sub_24A39997C(v3 + 136, &v141);
  v88 = *(v3 + 88);
  sub_24A39997C(&v144, v140);
  v89 = *(v3 + 112);
  type metadata accessor for FMFActionsController();
  swift_allocObject();

  *(v3 + 176) = sub_24A4761EC(&v141, v88, v140, v89);
  v90 = *(v3 + 200);
  if (v90)
  {
    *(v90 + 176) = &off_285D88A98;
    swift_unknownObjectWeakAssign();
    v91 = *(v3 + 200);
    if (v91)
    {
      *(v91 + 192) = &off_285D88AD0;
      swift_unknownObjectWeakAssign();
    }
  }

  v92 = sub_24A4ABB70();
  v93 = v134;
  (*(*(v92 - 8) + 56))(v134, 1, 1, v92);
  v94 = swift_allocObject();
  v94[2] = 0;
  v94[3] = 0;
  v94[4] = v3;

  sub_24A432670(0, 0, v93, &unk_24A4BA260, v94);

  *(*(v3 + 88) + 40) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 112) + 24) = &off_285D88A18;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v95 = *(v3 + 160);
  v96 = *(v3 + 168);
  sub_24A3A2CE4(v3 + 136, v95);
  v97 = *(v96 + 16);

  v97(v98, &off_285D88A08, v95, v96);
  v99 = *(v3 + 160);
  v100 = *(v3 + 168);
  sub_24A3A2CE4(v3 + 136, v99);
  v101 = *(v100 + 40);

  v101(v102, &off_285D88A28, v99, v100);
  swift_endAccess();
  v103 = *(v3 + 120) + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v103 + 8) = &protocol witness table for FMFManager;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 128) + 48) = &off_285D88970;
  swift_unknownObjectWeakAssign();
  v104 = *(v3 + 184);
  if (v104)
  {
    *(v104 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate + 8) = &protocol witness table for FMFManager;
    swift_unknownObjectWeakAssign();
  }

  *(*(v3 + 176) + 40) = &off_285D88A68;
  swift_unknownObjectWeakAssign();
  *(*(v3 + 104) + 64) = &off_285D88A88;
  swift_unknownObjectWeakAssign();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v105 = sub_24A4AB630();
  sub_24A378E18(v105, qword_27EF4E260);

  v106 = sub_24A4AB600();
  v107 = sub_24A4ABCE0();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v140[0] = v109;
    *v108 = 136315650;
    v110 = *(v3 + 16);
    v111 = *(v3 + 24);

    v112 = sub_24A37E99C(0xCuLL, v110, v111);
    v114 = v113;
    v116 = v115;
    v118 = v117;

    v119 = MEMORY[0x24C217CD0](v112, v114, v116, v118);
    v121 = v120;

    v122 = sub_24A37BD58(v119, v121, v140);

    *(v108 + 4) = v122;
    *(v108 + 12) = 2080;
    if (v137)
    {
      v123 = 0x70616E7320736120;
    }

    else
    {
      v123 = 0;
    }

    if (v137)
    {
      v124 = 0xEC000000746F6873;
    }

    else
    {
      v124 = 0xE000000000000000;
    }

    v125 = sub_24A37BD58(v123, v124, v140);

    *(v108 + 14) = v125;
    *(v108 + 22) = 2080;
    if (v135)
    {
      v126 = 0x4620676E69737520;
    }

    else
    {
      v126 = 0;
    }

    if (v135)
    {
      v127 = 0xEB0000000044464DLL;
    }

    else
    {
      v127 = 0xE000000000000000;
    }

    v128 = sub_24A37BD58(v126, v127, v140);

    *(v108 + 24) = v128;
    _os_log_impl(&dword_24A376000, v106, v107, "FMFManager<%s>.init%s%s", v108, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v109, -1, -1);
    MEMORY[0x24C219130](v108, -1, -1);
  }

  sub_24A37EEE0(&v144);
  return v3;
}

uint64_t sub_24A37B3F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A37B428(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_24A37B484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
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
      v13 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FMFReverseGeocodingCache()
{
  result = qword_27EF404D0;
  if (!qword_27EF404D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A37B644()
{
  if (!qword_27EF3F2C8)
  {
    type metadata accessor for FMFFriend();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3F2C8);
    }
  }
}

unint64_t sub_24A37B6AC(uint64_t a1)
{
  result = sub_24A37B6D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24A37B6D4()
{
  result = qword_27EF404C0;
  if (!qword_27EF404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF404C0);
  }

  return result;
}

uint64_t sub_24A37B740(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A3C9CEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_24A37B7A8(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_24A4ABD50();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = sub_24A4ABD10();
  v6 = *(*(v27[0] - 8) + 64);
  MEMORY[0x28223BE20](v27[0]);
  v27[1] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_24A4AAAB0();
  v10 = MEMORY[0x277D84F98];
  *(v1 + qword_27EF400C8) = MEMORY[0x277D84F98];
  *(v1 + qword_27EF400D0) = v10;
  *(v1 + qword_27EF400D8) = v10;
  *(v1 + qword_27EF400E0) = 0;
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E278);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    v16 = *v2;
    v17 = sub_24A4AC420();
    v19 = sub_24A37BD58(v17, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24A376000, v12, v13, "%s: initialized", v14, 0xCu);
    sub_24A37EEE0(v15);
    MEMORY[0x24C219130](v15, -1, -1);
    MEMORY[0x24C219130](v14, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4B1690);
  v21 = *v2;
  v22 = sub_24A4AC420();
  MEMORY[0x24C217D50](v22);

  MEMORY[0x24C217D50](0x6974617265706F2ELL, 0xEF65756575516E6FLL);
  v23 = sub_24A4AB820();

  [v20 setName_];

  [v20 setMaxConcurrentOperationCount_];
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24A4ABF50();

  v32 = 0xD000000000000022;
  v33 = 0x800000024A4B1690;
  v24 = sub_24A4AC420();
  MEMORY[0x24C217D50](v24);

  MEMORY[0x24C217D50](0x737365636F72702ELL, 0xED00006575657551);
  sub_24A4AB6D0();
  v32 = MEMORY[0x277D84F90];
  sub_24A378668(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v25 = sub_24A4ABD90();
  *(v2 + qword_27EF400E8) = v20;
  sub_24A37BE24(v31, v2 + qword_27EF4E178, &qword_27EF3F650, &qword_24A4B5A10);
  *(v2 + qword_27EF400F0) = v25;
  return v2;
}

uint64_t sub_24A37BD58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A37ED78(v11, 0, 0, 1, a1, a2);
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
    sub_24A37EE84(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_24A37EEE0(v11);
  return v7;
}

uint64_t sub_24A37BE24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A3C9CEC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A37BEB0(int a1)
{
  v2 = v1;
  v24 = a1;
  v23 = sub_24A4ABD50();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4ABD10();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24A4AB6E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  *(v1 + 25) = 0;
  v11 = sub_24A3785D4();
  v22[1] = "ueue";
  v22[2] = v11;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_24A4AB6C0();
  v25 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v23);
  *(v1 + 48) = sub_24A4ABD90();
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A4B4E10;
  if (qword_27EF3EBE0 != -1)
  {
    v21 = v12;
    swift_once();
    v12 = v21;
  }

  v13 = unk_27EF4E230;
  *(v12 + 32) = qword_27EF4E228;
  *(v12 + 40) = v13;
  *(v2 + 72) = v12;
  v14 = qword_27EF3EBF8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E260);
  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A376000, v16, v17, "FMFGarbageCollector: initialized", v18, 2u);
    MEMORY[0x24C219130](v18, -1, -1);
  }

  *(v2 + 24) = v24 & 1;
  sub_24A37C2D8();
  v19 = [objc_opt_self() defaultCenter];
  [v19 addObserver:v2 selector:sel_scheduleAccountVerificationWithNotification_ name:*MEMORY[0x277CB8B78] object:0];

  return v2;
}

void sub_24A37C2D8()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFGarbageCollector: verifyingAccount...", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = [v6 aa_primaryAppleAccount];
  if (!v7)
  {
    v14 = sub_24A4AB600();
    v15 = sub_24A4ABCC0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A376000, v14, v15, "FMFGarbageCollector: error retrieving primary account", v16, 2u);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    sub_24A49C5C8();
    return;
  }

  v8 = v7;
  v9 = [v7 aa_personID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24A4AB850();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (qword_27EF3EBD8 != -1)
  {
    swift_once();
  }

  v17 = qword_27EF4E1B8;
  ObjectType = swift_getObjectType();
  v55 = v17;
  v18 = (*(v17 + 8))(ObjectType, v17);
  v20 = v19;

  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();

  v57 = v11;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v56 = v18;
    v24 = swift_slowAlloc();
    v60 = v24;
    aBlock = v11;
    *v23 = 136315394;
    v62 = v13;

    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    v58 = v8;
    v25 = v1;
    v26 = sub_24A4AB870();
    v28 = sub_24A37BD58(v26, v27, &v60);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    aBlock = v56;
    v62 = v20;

    v29 = sub_24A4AB870();
    v31 = sub_24A37BD58(v29, v30, &v60);

    *(v23 + 14) = v31;
    v1 = v25;
    v8 = v58;
    _os_log_impl(&dword_24A376000, v21, v22, "FMFGarbageCollector: verifyingAccount new: %s previous: %s", v23, 0x16u);
    swift_arrayDestroy();
    v32 = v24;
    v18 = v56;
    MEMORY[0x24C219130](v32, -1, -1);
    MEMORY[0x24C219130](v23, -1, -1);
  }

  if (v13)
  {
    if (!v20)
    {
      goto LABEL_26;
    }

    if (v57 == v18 && v13 == v20)
    {

      goto LABEL_29;
    }

    v33 = sub_24A4AC270();

    if ((v33 & 1) == 0)
    {
LABEL_26:
      v34 = sub_24A4AB600();
      v35 = sub_24A4ABCE0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24A376000, v34, v35, "FMFGarbageCollector: purging cache because person id are not matching.", v36, 2u);
        MEMORY[0x24C219130](v36, -1, -1);
      }

      sub_24A49C5C8();
    }
  }

  else if (v20)
  {

    goto LABEL_26;
  }

LABEL_29:
  v37 = [v8 aa_fmfAccount];
  v38 = [v6 credentialForAccount_];
  v39 = v38;
  if (v38 && (v40 = [v38 credentialItemForKey_]) != 0)
  {
    v59 = v8;

    v41 = *(v1 + 48);
    v42 = swift_allocObject();
    *(v42 + 16) = v1;
    *(v42 + 24) = v37;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_24A37CE04;
    *(v43 + 24) = v42;
    v65 = sub_24A37CE3C;
    v66 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_24A37CDDC;
    v64 = &unk_285D8C0C0;
    v44 = _Block_copy(&aBlock);
    v45 = v41;

    v46 = v37;

    dispatch_sync(v45, v44);

    _Block_release(v44);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if ((v44 & 1) == 0)
    {
      (*(v55 + 16))(v57, v13, ObjectType);

LABEL_37:
      return;
    }
  }

  else
  {

    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_24A376000, v47, v48, "FMFGarbageCollector: purging cache because the token is missing", v49, 2u);
      MEMORY[0x24C219130](v49, -1, -1);
    }

    v50 = *(v1 + 48);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_24A49CA98;
    *(v51 + 24) = v1;
    v65 = sub_24A37CE34;
    v66 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_24A37CDDC;
    v64 = &unk_285D8C048;
    v52 = _Block_copy(&aBlock);

    v53 = v50;

    dispatch_sync(v53, v52);

    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if ((v52 & 1) == 0)
    {
      sub_24A49C5C8();

      goto LABEL_37;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24A37CB34()
{
  type metadata accessor for FMPreferencesUtilStoring();
  result = swift_allocObject();
  qword_27EF4E1A8 = result;
  unk_27EF4E1B0 = &off_285D88B40;
  qword_27EF4E1B8 = &off_285D88B20;
  return result;
}

uint64_t sub_24A37CBA4()
{
  v0 = objc_opt_self();
  v1 = sub_24A4AB820();
  v2 = sub_24A4AB820();
  v3 = [v0 stringForKey:v1 inDomain:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24A4AB850();

  return v4;
}

uint64_t sub_24A37CC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CCFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CD9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CDAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CDBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A37CE0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A37CE68(uint64_t a1, id a2)
{
  if (a2 && (v3 = [a2 identifier]) != 0)
  {
    v4 = v3;
    v5 = sub_24A4AB850();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(a1 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
}

void sub_24A37CFA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24A4AB820();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_self();
  v4 = sub_24A4AB820();
  v5 = sub_24A4AB820();
  [v3 setString:v2 forKey:v4 inDomain:v5];
}

uint64_t sub_24A37D080()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A37D0E4()
{
  v1 = v0;
  v19 = sub_24A4ABD50();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A4ABD10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24A4AB6E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24A3785D4();
  sub_24A4AB6D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A37D4E0();
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A37D538();
  sub_24A4ABE90();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v19);
  *(v0 + 32) = sub_24A4ABD90();
  *(v0 + 40) = 0;
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];

  v12 = sub_24A4AB820();
  [v11 addObserver:v1 selector:sel_refreshFMFRestricted name:v12 object:0];

  v13 = [v10 defaultCenter];
  [v13 addObserver:v1 selector:sel_refreshFMFRestricted name:*MEMORY[0x277D25CA0] object:0];

  v14 = *(v1 + 32);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24A37D5A4;
  *(v15 + 24) = v1;
  aBlock[4] = sub_24A37CE3C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A37CDDC;
  aBlock[3] = &unk_285D86000;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v14, v16);
  _Block_release(v16);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A37D4E0()
{
  result = qword_27EF402C0;
  if (!qword_27EF402C0)
  {
    sub_24A4ABD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF402C0);
  }

  return result;
}

unint64_t sub_24A37D538()
{
  result = qword_27EF402D0;
  if (!qword_27EF402D0)
  {
    sub_24A3CBC9C(&qword_27EF3F2F8, &unk_24A4B4FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF402D0);
  }

  return result;
}

void sub_24A37D5B0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v18 = v2;
    v3 = [v2 effectiveBoolValueForSetting_];
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A4AB630();
    sub_24A378E18(v4, qword_27EF4E260);
    v5 = sub_24A4AB600();
    v6 = sub_24A4ABCE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;
      if (v3 == 2)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (v3 == 2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_24A37BD58(v9, v10, &v19);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24A376000, v5, v6, "FMFSystemStateController: isRestricted: %s", v7, 0xCu);
      sub_24A37EEE0(v8);
      MEMORY[0x24C219130](v8, -1, -1);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    v12 = v3 == 2;
    v13 = *(a1 + 40);
    *(a1 + 40) = v12;
    if (v12 == v13 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
    }

    else
    {
      v15 = Strong;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 120))(v15, v3 == 2, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void *sub_24A37D828(uint64_t a1, uint64_t a2)
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

  sub_24A3C9CEC(&qword_27EF3F008, &qword_24A4B44D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24A37D89C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A37D8E8(a1, a2);
  sub_24A37DA18(&unk_285D82FB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24A37D8E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_24A37D828(v5, 0);
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

  result = sub_24A4ABF90();
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
        v10 = sub_24A4AB970();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A37D828(v10, 0);
        result = sub_24A4ABF20();
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

uint64_t sub_24A37DA18(uint64_t result)
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

  result = sub_24A387E40(result, v12, 1, v3);
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

uint64_t sub_24A37DB30(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v108 = a4;
  v109 = a3;
  v111 = a2;
  v107 = a1;
  v6 = sub_24A3C9CEC(&qword_27EF40580, &qword_24A4BACA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v95 - v8;
  v9 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9);
  v97 = &v95 - v11;
  v106 = sub_24A4ABD50();
  v110 = *(v106 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4ABD10();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_24A4AB6E0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_24A4AAB20();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v23 = sub_24A4AAAF0();
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  *(v5 + 16) = v23;
  *(v5 + 24) = v25;
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  v26 = sub_24A3785D4();
  v103 = "lf°@%@}, label='%@', reason: ";
  v104 = v26;
  sub_24A4AB6C0();
  *&v114 = MEMORY[0x277D84F90];
  v101 = sub_24A37F01C(&qword_27EF402C0, MEMORY[0x277D85230]);
  v100 = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  v102 = sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v27 = *MEMORY[0x277D85260];
  v28 = *(v110 + 104);
  v110 += 104;
  v99 = v28;
  v29 = v105;
  v30 = v106;
  v28(v105, v27, v106);
  *(v5 + 56) = sub_24A4ABD90();
  v103 = ".fmfcore.datamanager.updates";
  sub_24A4AB6B0();
  *&v114 = MEMORY[0x277D84F90];
  sub_24A4ABE90();
  v99(v29, v27, v30);
  v31 = v107;
  *(v5 + 64) = sub_24A4ABD90();
  sub_24A37F0C8(&v114);
  sub_24A37F110(0, 0, 0);
  *&v113[183] = v125;
  *&v113[199] = v126;
  *&v113[215] = v127;
  *&v113[231] = v128;
  *&v113[119] = v121;
  *&v113[135] = v122;
  *&v113[151] = v123;
  *&v113[167] = v124;
  *&v113[55] = v117;
  *&v113[71] = v118;
  *&v113[87] = v119;
  *&v113[103] = v120;
  *&v113[7] = v114;
  *&v113[23] = v115;
  LOBYTE(v112[0]) = 1;
  *&v113[39] = v116;
  memset(v129, 0, sizeof(v129));
  sub_24A37EF2C(v129, &qword_27EF3FD68, &unk_24A4B9F40);
  v32 = v112[0];
  *(v5 + 72) = 0;
  v33 = MEMORY[0x277D84F90];
  *(v5 + 80) = MEMORY[0x277D84F90];
  *(v5 + 88) = v33;
  *(v5 + 96) = v33;
  *(v5 + 104) = v33;
  *(v5 + 112) = v33;
  *(v5 + 120) = v33;
  *(v5 + 128) = v33;
  *(v5 + 136) = v33;
  *(v5 + 144) = v33;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0;
  *(v5 + 192) = v32;
  v34 = *v113;
  v35 = *&v113[16];
  v36 = *&v113[32];
  *(v5 + 241) = *&v113[48];
  *(v5 + 225) = v36;
  *(v5 + 209) = v35;
  *(v5 + 193) = v34;
  v37 = *&v113[64];
  v38 = *&v113[80];
  v39 = *&v113[112];
  *(v5 + 289) = *&v113[96];
  *(v5 + 305) = v39;
  *(v5 + 257) = v37;
  *(v5 + 273) = v38;
  v40 = *&v113[128];
  v41 = *&v113[144];
  v42 = *&v113[176];
  *(v5 + 353) = *&v113[160];
  *(v5 + 369) = v42;
  *(v5 + 321) = v40;
  *(v5 + 337) = v41;
  v43 = *&v113[192];
  v44 = *&v113[208];
  v45 = *&v113[224];
  *(v5 + 432) = *&v113[239];
  *(v5 + 401) = v44;
  *(v5 + 417) = v45;
  *(v5 + 385) = v43;
  *(v5 + 481) = 0u;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 497) = v130[0];
  *(v5 + 500) = *(v130 + 3);
  *(v5 + 504) = v33;
  *(v5 + 512) = v33;
  *(v5 + 520) = v33;
  v46 = MEMORY[0x277D84F98];
  *(v5 + 528) = MEMORY[0x277D84F98];
  type metadata accessor for FMFPendingDataManager();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v46;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0u;
  *(v47 + 113) = 0u;
  *(v5 + 536) = v47;
  *(v5 + 544) = v33;
  *(v5 + 552) = v33;
  *(v5 + 560) = v33;
  *(v5 + 568) = v33;
  *(v5 + 576) = 0;
  *(v5 + 584) = v33;
  *(v5 + 592) = v33;
  *(v5 + 600) = v33;
  *(v5 + 608) = v33;
  *(v5 + 616) = v33;
  *(v5 + 624) = 0u;
  *(v5 + 640) = v33;
  *(v5 + 648) = v33;
  *(v5 + 656) = v33;
  *(v5 + 664) = v33;
  *(v5 + 680) = v33;
  *(v5 + 688) = 0u;
  *(v5 + 704) = 0;
  *(v5 + 720) = v46;
  *(v5 + 728) = v46;
  v48 = v108;
  *(v5 + 744) = 0u;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0;
  *(v5 + 784) = 1;
  v49 = v115;
  *(v5 + 792) = v114;
  *(v5 + 808) = v49;
  v50 = v119;
  *(v5 + 856) = v118;
  *(v5 + 872) = v50;
  v51 = v117;
  *(v5 + 824) = v116;
  *(v5 + 840) = v51;
  v52 = v123;
  *(v5 + 920) = v122;
  *(v5 + 936) = v52;
  v53 = v121;
  *(v5 + 888) = v120;
  *(v5 + 904) = v53;
  v54 = v128;
  *(v5 + 1000) = v127;
  *(v5 + 1016) = v54;
  v55 = v126;
  *(v5 + 968) = v125;
  *(v5 + 984) = v55;
  *(v5 + 952) = v124;
  *(v5 + 1073) = 0u;
  *(v5 + 1048) = 0u;
  *(v5 + 1064) = 0u;
  *(v5 + 1032) = 0u;
  *(v5 + 1096) = v33;
  *(v5 + 1104) = v33;
  *(v5 + 1112) = v33;
  *(v5 + 736) = v109;
  *(v5 + 672) = v48;
  *(v5 + 48) = v31;
  if (v111)
  {

    v56 = v111;
  }

  else
  {
    v57 = type metadata accessor for FMFContactsDataController();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();

    v56 = FMFContactsDataController.init(isSnapshotMode:)(v48 & 1);
  }

  *(v5 + 712) = v56;
  if (*(v31 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1 && (*(v31 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) & 1) == 0)
  {

    v61 = v97;
    sub_24A38622C(0xD000000000000011, 0x800000024A4B2410, 0x4D61746144464D46, 0xEE00726567616E61, v97);
    v62 = *(v31 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory);
    v63 = *(v31 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_cacheDirectory + 8);
    v64 = v98;
    sub_24A37B740(v61, v98, &qword_27EF40588, &qword_24A4BACA8);
    (*(v95 + 56))(v64, 0, 1, v96);
    v65 = sub_24A3C9CEC(&qword_27EF405E0, &qword_24A4BAD08);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();

    v68 = sub_24A38557C(v62, v63, 0xD000000000000014, 0x800000024A4B2430, v64);
    sub_24A37EF2C(v61, &qword_27EF40588, &qword_24A4BACA8);
    v69 = *(v5 + 696);
    *(v5 + 696) = v68;
  }

  else
  {
    v60 = *(v5 + 696);
    *(v5 + 696) = 0;
  }

  v70 = *(v5 + 56);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_24A37F840;
  *(v71 + 24) = v5;
  v112[4] = sub_24A37CE3C;
  v112[5] = v71;
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 1107296256;
  v112[2] = sub_24A37CDDC;
  v112[3] = &unk_285D89B18;
  v72 = _Block_copy(v112);

  dispatch_sync(v70, v72);
  _Block_release(v72);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
  }

  else
  {
    *(*(v5 + 712) + 48) = &off_285D89268;
    swift_unknownObjectWeakAssign();
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v73 = sub_24A4AB630();
  sub_24A378E18(v73, qword_27EF4E260);

  v74 = sub_24A4AB600();
  v75 = sub_24A4ABCE0();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v112[0] = v110;
    *v76 = 136315394;
    v77 = *(v5 + 16);
    v78 = *(v5 + 24);

    v79 = sub_24A37E99C(0xCuLL, v77, v78);
    v81 = v80;
    v83 = v82;
    v85 = v84;

    v86 = MEMORY[0x24C217CD0](v79, v81, v83, v85);
    v88 = v87;

    v89 = sub_24A37BD58(v86, v88, v112);

    *(v76 + 4) = v89;
    *(v76 + 12) = 2080;
    if (v108)
    {
      v90 = 0x70616E7320736120;
    }

    else
    {
      v90 = 0;
    }

    if (v108)
    {
      v91 = 0xEC000000746F6873;
    }

    else
    {
      v91 = 0xE000000000000000;
    }

    v92 = sub_24A37BD58(v90, v91, v112);

    *(v76 + 14) = v92;
    _os_log_impl(&dword_24A376000, v74, v75, "FMFDataManager<%s>.init%s", v76, 0x16u);
    v93 = v110;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v93, -1, -1);
    MEMORY[0x24C219130](v76, -1, -1);
  }

  else
  {
  }

  return v5;
}

uint64_t sub_24A37E7EC()
{
  result = sub_24A4AACE0();
  if (v1 <= 0x3F)
  {
    result = sub_24A4AAD10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24A37E870()
{
  sub_24A37E944();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24A37E944()
{
  if (!qword_27EF3F3A8)
  {
    sub_24A4AAAD0();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF3F3A8);
    }
  }
}

unint64_t sub_24A37E99C(unint64_t result, uint64_t a2, unint64_t a3)
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

  result = sub_24A4AB920();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_24A4ABA00();
}

uint64_t sub_24A37EA58@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return FMDiskIO.KeyPair.init(from:)(a1, a3);
}

void *sub_24A37EACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A37EB1C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_24A386C78(*v1);
}

double sub_24A37EB30(uint64_t a1)
{
  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_24A37EBA4()
{
  v0 = sub_24A4AAAD0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24A37ECA0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_24A37ECA0()
{
  if (!qword_27EF40178)
  {
    sub_24A4AAB80();
    v0 = sub_24A4ABDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF40178);
    }
  }
}

uint64_t sub_24A37ECF8()
{
  v0 = sub_24A4AB630();
  sub_24A378DB4(v0, qword_27EF4E278);
  sub_24A378E18(v0, qword_27EF4E278);
  return sub_24A4AB610();
}

unint64_t sub_24A37ED78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A37D89C(a5, a6);
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
    result = sub_24A4ABF90();
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

uint64_t sub_24A37EE84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A37EEE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24A37EF2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24A3C9CEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A37EF8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A37EFD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A37F01C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A37F064(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24A37F0C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  return result;
}

uint64_t sub_24A37F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24A37F164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t type metadata accessor for FMFContactsDataController()
{
  result = qword_27EF40328;
  if (!qword_27EF40328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *FMFContactsDataController.init(isSnapshotMode:)(int a1)
{
  v2 = v1;
  v50 = a1;
  v49 = sub_24A4ABD10();
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48[1] = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4AB6E0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24A4ABD50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AAB20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v17 = sub_24A4AAAF0();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  v2[2] = v17;
  v2[3] = v19;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v7);
  sub_24A4AB6B0();
  v52 = MEMORY[0x277D84F90];
  sub_24A378620(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  v2[8] = sub_24A4ABD90();
  v20 = OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactSearchDate;
  v21 = sub_24A4AAAD0();
  v22 = *(*(v21 - 8) + 56);
  v22(v2 + v20, 1, 1, v21);
  v22(v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_lastContactUpdateDate, 1, 1, v21);
  *(v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_contactRecords) = 0;
  v23 = v2 + OBJC_IVAR____TtC7FMFCore25FMFContactsDataController_cache;
  v24 = sub_24A4314CC(MEMORY[0x277D84F90]);
  *v23 = 0;
  *(v23 + 8) = v24;
  *(v2 + 32) = v50;
  v25 = [objc_opt_self() defaultCenter];
  [v25 addObserver:v2 selector:sel_contactStoreChangedWithNotification_ name:*MEMORY[0x277CBD140] object:0];

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A4AB630();
  sub_24A378E18(v26, qword_27EF4E260);

  v27 = sub_24A4AB600();
  v28 = sub_24A4ABCE0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 136446466;
    v51 = *v2;
    v52 = v30;
    sub_24A3C9CEC(&unk_27EF402F0, &unk_24A4B9FC8);
    v31 = sub_24A4AB870();
    v33 = sub_24A37BD58(v31, v32, &v52);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = v2[2];
    v35 = v2[3];

    v36 = sub_24A37E99C(0xCuLL, v34, v35);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v43 = MEMORY[0x24C217CD0](v36, v38, v40, v42);
    v45 = v44;

    v46 = sub_24A37BD58(v43, v45, &v52);

    *(v29 + 14) = v46;
    _os_log_impl(&dword_24A376000, v27, v28, "%{public}s<%s>.init", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v30, -1, -1);
    MEMORY[0x24C219130](v29, -1, -1);
  }

  return v2;
}

void sub_24A37F84C(void *a1, void *a2)
{
  v76 = a2;
  v3 = sub_24A4AACB0();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AAD30();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v7);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A3C9CEC(&qword_27EF40580, &qword_24A4BACA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v66 - v12;
  v80 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v78 = *(v80 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v15 = &v66 - v14;
  v16 = sub_24A4AA9D0();
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v72 = v6;
  v81 = v7;
  v82 = v15;
  v20 = sub_24A4AB630();
  v85 = sub_24A378E18(v20, qword_27EF4E260);
  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24A376000, v21, v22, "FMDiskIO: read from disk", v23, 2u);
    MEMORY[0x24C219130](v23, -1, -1);
  }

  v24 = [objc_opt_self() defaultManager];
  v26 = a1[3];
  v25 = a1[4];
  v28 = a1[5];
  v27 = a1[6];
  v87[0] = v26;
  v87[1] = v25;

  MEMORY[0x24C217D50](v28, v27);
  v29 = sub_24A4AB820();

  v30 = [v24 fileExistsAtPath_];

  if (v30)
  {
    v71 = a1;
    v87[0] = v26;
    v87[1] = v25;

    MEMORY[0x24C217D50](v28, v27);
    sub_24A4AA970();

    v31 = sub_24A4AA9E0();
    v39 = v28;
    v40 = v26;
    v67 = v25;
    v68 = v27;
    v41 = v31;
    v43 = v42;
    (*(v83 + 8))(v19, v84);

    sub_24A380530(v41, v43);
    v44 = sub_24A4AB600();
    v45 = sub_24A4ABCE0();

    sub_24A386E10(v41, v43);
    v46 = os_log_type_enabled(v44, v45);
    v66 = v40;
    v69 = v41;
    v70 = v43;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86[0] = v84;
      *v47 = 136315394;
      v87[0] = v40;
      v87[1] = v67;

      LODWORD(v83) = v45;
      MEMORY[0x24C217D50](v39, v68);
      v48 = sub_24A37BD58(v87[0], v87[1], v86);

      *(v47 + 4) = v48;
      *(v47 + 12) = 2080;
      v49 = sub_24A4AA9F0();
      v51 = sub_24A37BD58(v49, v50, v86);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_24A376000, v44, v83, "FMDiskIO: file: %s data: %s", v47, 0x16u);
      v52 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v52, -1, -1);
      MEMORY[0x24C219130](v47, -1, -1);
    }

    v53 = v81;
    v54 = sub_24A4AA830();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_24A4AA820();
    v57 = v79;
    sub_24A37B740(v71 + *(*v71 + 128), v79, &qword_27EF40580, &qword_24A4BACA0);
    v58 = v80;
    if ((*(v78 + 48))(v57, 1, v80) == 1)
    {
      sub_24A37EF2C(v57, &qword_27EF40580, &qword_24A4BACA0);
      sub_24A380688();
      v60 = v69;
      v59 = v70;
      sub_24A4AA810();
      sub_24A386E10(v60, v59);
    }

    else
    {
      sub_24A37BE24(v57, v82, &qword_27EF40588, &qword_24A4BACA8);
      sub_24A37F01C(&qword_27EF405B8, MEMORY[0x277D08F20]);
      sub_24A4AA810();
      v61 = *(v58 + 44);
      v62 = v72;
      sub_24A4AACC0();
      v63 = sub_24A4AAD20();
      v65 = v64;
      (*(v73 + 8))(v62, v74);
      sub_24A380688();
      sub_24A4AA810();

      sub_24A386E10(v63, v65);
      sub_24A386E10(v69, v70);
      (*(v75 + 8))(v77, v53);
      sub_24A37EF2C(v82, &qword_27EF40588, &qword_24A4BACA8);
    }

    nullsub_1(v87);
    memcpy(v86, v76, 0x1C8uLL);
    memcpy(v76, v87, 0x1C8uLL);
    sub_24A37EF2C(v86, &qword_27EF405A8, &qword_24A4BACC0);
  }

  else
  {
    v32 = v26;
    v33 = v25;

    v85 = sub_24A4AB600();
    v34 = sub_24A4ABCC0();

    if (os_log_type_enabled(v85, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86[0] = v36;
      *v35 = 136315138;
      v87[0] = v32;
      v87[1] = v33;

      MEMORY[0x24C217D50](v28, v27);
      v37 = sub_24A37BD58(v87[0], v87[1], v86);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_24A376000, v85, v34, "FMDiskIO: Disk archive does not exist at: %s", v35, 0xCu);
      sub_24A37EEE0(v36);
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    else
    {
      v38 = v85;
    }
  }
}

uint64_t sub_24A380530(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24A380598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AACE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24A4AAD10();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

unint64_t sub_24A380688()
{
  result = qword_27EF405B0;
  if (!qword_27EF405B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF405B0);
  }

  return result;
}

uint64_t sub_24A3806DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3FD58, &qword_24A4B8A08);
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v130 = 1;
  sub_24A37F0C8(v131);
  *&v129[183] = v131[11];
  *&v129[199] = v131[12];
  *&v129[215] = v131[13];
  *&v129[231] = v131[14];
  *&v129[119] = v131[7];
  *&v129[135] = v131[8];
  *&v129[151] = v131[9];
  *&v129[167] = v131[10];
  *&v129[55] = v131[3];
  *&v129[71] = v131[4];
  *&v129[87] = v131[5];
  *&v129[103] = v131[6];
  *&v129[7] = v131[0];
  *&v129[23] = v131[1];
  *&v129[39] = v131[2];
  v8 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A381748();
  sub_24A4AC3C0();
  if (v2)
  {
    v132 = v2;
    sub_24A37EEE0(a1);
    v60 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v59) = 0;
    LODWORD(v58) = 0;
  }

  else
  {
    v57 = a1;
    sub_24A3C9CEC(&qword_27EF3F198, &qword_24A4B4978);
    v61[0] = 0;
    sub_24A3818EC();
    sub_24A4AC160();
    v53 = v62;
    v61[0] = 1;
    sub_24A4AC160();
    v52 = v62;
    v61[0] = 2;
    sub_24A4AC160();
    v51 = v62;
    v61[0] = 3;
    sub_24A4AC160();
    v50 = v62;
    v61[0] = 4;
    sub_24A4AC160();
    v49 = v62;
    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    v61[0] = 5;
    sub_24A382AC4();
    sub_24A4AC160();
    v48 = v62;
    v61[0] = 6;
    sub_24A4AC160();
    v47 = v62;
    v61[0] = 7;
    sub_24A4AC160();
    v46 = v62;
    v61[0] = 8;
    sub_24A4AC160();
    *&v44 = v62;
    v61[0] = 9;
    sub_24A382B78();
    sub_24A4AC160();
    *v45 = *(&v62 + 1);
    *&v45[8] = v63;
    v21 = 256;
    if (!BYTE1(v62))
    {
      v21 = 0;
    }

    v22 = v21 | v62;
    v23 = 0x10000;
    if (!BYTE2(v62))
    {
      v23 = 0;
    }

    *(&v44 + 1) = v22 | v23 | (BYTE3(v62) << 24);
    sub_24A37F110(0, 0, 0);
    v126 = 10;
    sub_24A38351C();
    sub_24A4AC160();
    v24 = v127;
    v130 = 0;
    v95 = 11;
    sub_24A383EF0();
    sub_24A4AC160();
    *&v69[80] = v108;
    *&v69[96] = v109;
    *&v69[112] = v110;
    *&v69[16] = v104;
    *&v69[32] = v105;
    *&v69[48] = v106;
    *&v69[64] = v107;
    v66 = v100;
    v67 = v101;
    v68 = v102;
    *v69 = v103;
    v62 = v96;
    v63 = v97;
    v64 = v98;
    v65 = v99;
    nullsub_1(&v62);
    v123 = *&v69[80];
    v124 = *&v69[96];
    v125 = *&v69[112];
    v119 = *&v69[16];
    v120 = *&v69[32];
    v121 = *&v69[48];
    v122 = *&v69[64];
    v115 = v66;
    v116 = v67;
    v117 = v68;
    v118 = *v69;
    v111 = v62;
    v112 = v63;
    v113 = v64;
    v114 = v65;
    *&v129[199] = *&v69[80];
    *&v129[215] = *&v69[96];
    *&v129[231] = *&v69[112];
    *&v129[135] = *&v69[16];
    *&v129[151] = *&v69[32];
    *&v129[167] = *&v69[48];
    *&v129[183] = *&v69[64];
    *&v129[71] = v66;
    *&v129[87] = v67;
    *&v129[103] = v68;
    *&v129[119] = *v69;
    *&v129[7] = v62;
    *&v129[23] = v63;
    *&v129[39] = v64;
    *&v129[55] = v65;
    v86[63] = 12;
    sub_24A384C18();
    sub_24A4AC160();
    v37 = v87;
    v38 = v88;
    v39 = v89;
    v40 = v90;
    v41 = v91;
    v42 = v92;
    v60 = v93;
    v43 = v94;
    memset(v86, 0, 57);
    sub_24A37EF2C(v86, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A3C9CEC(&qword_27EF3F130, &unk_24A4B4960);
    v61[0] = 13;
    sub_24A415B2C();
    sub_24A4AC160();
    LODWORD(v36) = 1;
    v132 = 0;
    v56 = v62;
    sub_24A3C9CEC(&qword_27EF3FD70, &qword_24A4B8A10);
    v61[0] = 16;
    sub_24A387028(&qword_27EF3FD78, sub_24A3870AC);
    v25 = v132;
    sub_24A4AC160();
    v132 = v25;
    if (v25)
    {
      (*(v59 + 8))(v7, v4);
      sub_24A37EEE0(v57);
      LODWORD(v59) = 0;
      LODWORD(v58) = 0;
    }

    else
    {
      v55 = v62;
      sub_24A3C9CEC(&qword_27EF3FD80, &qword_24A4B8A18);
      v61[0] = 14;
      sub_24A415BB0();
      v26 = v132;
      sub_24A4AC160();
      v132 = v26;
      if (v26)
      {
        (*(v59 + 8))(v7, v4);
        sub_24A37EEE0(v57);
        LODWORD(v59) = 0;
        LODWORD(v58) = 1;
      }

      else
      {
        v54 = v62;
        sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
        v84 = 15;
        sub_24A387298();
        v27 = v132;
        sub_24A4AC160();
        v132 = v27;
        if (!v27)
        {
          (*(v59 + 8))(v7, v4);
          v36 = v85;
          *v61 = v53;
          *&v61[8] = v52;
          *&v61[16] = v51;
          *&v61[24] = v50;
          *&v61[32] = v49;
          *&v61[40] = v48;
          *&v61[48] = v47;
          *&v61[56] = v46;
          *&v61[64] = v44;
          *&v61[80] = *v45;
          *&v61[88] = *&v45[8];
          *&v61[104] = v24;
          v35 = v24;
          LODWORD(v59) = v130;
          v61[112] = v130;
          *&v61[321] = *&v129[208];
          *&v61[337] = *&v129[224];
          *&v61[257] = *&v129[144];
          *&v61[273] = *&v129[160];
          *&v61[289] = *&v129[176];
          *&v61[305] = *&v129[192];
          *&v61[241] = *&v129[128];
          *&v61[177] = *&v129[64];
          *&v61[193] = *&v129[80];
          *&v61[209] = *&v129[96];
          *&v61[225] = *&v129[112];
          *&v61[113] = *v129;
          *&v61[129] = *&v129[16];
          *&v61[145] = *&v129[32];
          *&v61[161] = *&v129[48];
          *&v61[352] = *&v129[239];
          v29 = v37;
          v28 = v38;
          *&v61[360] = v37;
          *&v61[368] = v38;
          v30 = v39;
          v31 = v40;
          *&v61[376] = v39;
          *&v61[384] = v40;
          v32 = v41;
          v33 = v42;
          *&v61[392] = v41;
          *&v61[400] = v42;
          v34 = v60;
          *&v61[408] = v60;
          v61[416] = v43;
          *&v61[417] = *v128;
          *&v61[420] = *&v128[3];
          *&v61[424] = v56;
          *&v61[432] = v54;
          *&v61[440] = v85;
          *&v61[448] = v55;
          memcpy(v58, v61, 0x1C8uLL);
          sub_24A38734C(v61, &v62);
          sub_24A37EEE0(v57);
          *&v62 = v53;
          *(&v62 + 1) = v52;
          *&v63 = v51;
          *(&v63 + 1) = v50;
          *&v64 = v49;
          *(&v64 + 1) = v48;
          *&v65 = v47;
          *(&v65 + 1) = v46;
          v66 = v44;
          v67 = *v45;
          *&v68 = *&v45[16];
          *(&v68 + 1) = v35;
          v69[0] = v59;
          *&v69[145] = *&v129[144];
          *&v69[161] = *&v129[160];
          *&v69[209] = *&v129[208];
          *v70 = *&v129[224];
          *&v69[177] = *&v129[176];
          *&v69[193] = *&v129[192];
          *&v69[49] = *&v129[48];
          *&v69[33] = *&v129[32];
          *&v69[17] = *&v129[16];
          *&v69[1] = *v129;
          *&v69[113] = *&v129[112];
          *&v69[97] = *&v129[96];
          *&v69[81] = *&v129[80];
          *&v69[65] = *&v129[64];
          *&v69[129] = *&v129[128];
          *&v70[15] = *&v129[239];
          v71 = v29;
          v72 = v28;
          v73 = v30;
          v74 = v31;
          v75 = v32;
          v76 = v33;
          v77 = v34;
          v78 = v43;
          *v79 = *v128;
          *&v79[3] = *&v128[3];
          v80 = v56;
          v81 = v54;
          v82 = v36;
          v83 = v55;
          return sub_24A3873B4(&v62);
        }

        (*(v59 + 8))(v7, v4);
        sub_24A37EEE0(v57);
        LODWORD(v59) = 1;
        LODWORD(v58) = 1;
      }
    }

    v16 = *&v45[8];
    v18 = *(&v44 + 1);
    v17 = *v45;
    v10 = v41;
    v9 = v42;
    v12 = v39;
    v11 = v40;
    v14 = v37;
    v13 = v38;
    v15 = v43;
    v19 = v36;
  }

  sub_24A37F110(v18, v17, v16);
  *&v62 = v14;
  *(&v62 + 1) = v13;
  *&v63 = v12;
  *(&v63 + 1) = v11;
  *&v64 = v10;
  *(&v64 + 1) = v9;
  *&v65 = v60;
  BYTE8(v65) = v15;
  result = sub_24A37EF2C(&v62, &qword_27EF3FD68, &unk_24A4B9F40);
  if (v19)
  {
  }

  if (v59)
  {
  }

  if (v58)
  {
  }

  return result;
}

unint64_t sub_24A38169C()
{
  result = qword_27EF3FE30;
  if (!qword_27EF3FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE30);
  }

  return result;
}

unint64_t sub_24A3816F4()
{
  result = qword_27EF3FE38;
  if (!qword_27EF3FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE38);
  }

  return result;
}

unint64_t sub_24A381748()
{
  result = qword_27EF3FD60;
  if (!qword_27EF3FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD60);
  }

  return result;
}

uint64_t type metadata accessor for FMFIntermediateFriend()
{
  result = qword_27EF3F388;
  if (!qword_27EF3F388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3817E8()
{
  sub_24A379C28(319, &qword_27EF3F398);
  if (v0 <= 0x3F)
  {
    sub_24A37A11C();
    if (v1 <= 0x3F)
    {
      sub_24A37E944();
      if (v2 <= 0x3F)
      {
        sub_24A379C28(319, &qword_27EF3F3B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24A3818EC()
{
  result = qword_27EF3F1A0;
  if (!qword_27EF3F1A0)
  {
    sub_24A3CBC9C(&qword_27EF3F198, &qword_24A4B4978);
    sub_24A3819A0(&qword_27EF3F1A8, type metadata accessor for FMFIntermediateFriend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1A0);
  }

  return result;
}

uint64_t sub_24A3819A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A3819E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A381A4C(char a1)
{
  result = 0x6E69776F6C6C6F66;
  switch(a1)
  {
    case 1:
      result = 0x7265776F6C6C6F66;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 4:
      result = 0x6F46657275747566;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0x6E65726566657270;
      break;
    case 10:
      result = 0x7365727574616566;
      break;
    case 11:
      result = 0x6769666E6F63;
      break;
    case 12:
      result = 0x6F666E49796DLL;
      break;
    case 13:
      result = 0x73656369766564;
      break;
    case 14:
      result = 0x736C6562616CLL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x73746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A381DB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3F3C8, &qword_24A4B5488);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = type metadata accessor for FMFIntermediateFriend();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A382600();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v38 = v8;
  v13 = v39;
  LOBYTE(v42) = 0;
  v14 = v7;
  *v11 = sub_24A4AC120();
  v11[1] = v16;
  LOBYTE(v42) = 1;
  v17 = a1;
  v18 = v11;
  v11[2] = sub_24A4AC120();
  v11[3] = v19;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v41 = 2;
  sub_24A382908(&qword_27EF3F110);
  sub_24A4AC160();
  v20 = v38;
  v11[4] = v42;
  v41 = 3;
  sub_24A4AC160();
  v11[5] = v42;
  LOBYTE(v42) = 4;
  v11[6] = sub_24A4AC120();
  v11[7] = v21;
  LOBYTE(v42) = 5;
  v11[8] = sub_24A4AC120();
  v11[9] = v22;
  LOBYTE(v42) = 9;
  *(v11 + v20[13]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 10;
  *(v11 + v20[14]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 11;
  *(v11 + v20[15]) = sub_24A4AC130() & 1;
  LOBYTE(v42) = 12;
  *(v11 + v20[16]) = sub_24A4AC130() & 1;
  v41 = 13;
  sub_24A4AC160();
  v23 = v13;
  *(v11 + v20[17]) = v42;
  LOBYTE(v42) = 7;
  v24 = sub_24A4AC170();
  v25 = v40;
  v26 = v20[11];
  v27 = [objc_opt_self() fm:v24 dateFromEpoch:?];
  sub_24A4AAAA0();

  v28 = sub_24A4AAAD0();
  (*(*(v28 - 8) + 56))(v18 + v26, 0, 1, v28);
  LOBYTE(v42) = 8;
  v29 = sub_24A4AC170();
  v31 = v38[12];
  if (v29 < 1)
  {
    v30 = sub_24A4AAAD0();
    (*(*(v30 - 8) + 56))(v18 + v31, 1, 1, v30);
  }

  else
  {
    v32 = [objc_opt_self() fm:v29 dateFromEpoch:?];
    sub_24A4AAAA0();

    v33 = sub_24A4AAAD0();
    (*(*(v33 - 8) + 56))(v18 + v31, 0, 1, v33);
  }

  LOBYTE(v42) = 6;
  v34 = sub_24A4AC170();
  v35 = v38[10];
  v36 = [objc_opt_self() fm:v34 dateFromEpoch:?];
  sub_24A4AAAA0();

  (*(v25 + 8))(v14, v4);
  v37 = sub_24A4AAAD0();
  (*(*(v37 - 8) + 56))(v18 + v35, 0, 1, v37);
  sub_24A382A04(v18, v23);
  sub_24A37EEE0(v17);
  return sub_24A382A68(v18);
}

unint64_t sub_24A382554()
{
  result = qword_27EF3F430;
  if (!qword_27EF3F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F430);
  }

  return result;
}

unint64_t sub_24A3825AC()
{
  result = qword_27EF3F438;
  if (!qword_27EF3F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F438);
  }

  return result;
}

unint64_t sub_24A382600()
{
  result = qword_27EF3F3D0;
  if (!qword_27EF3F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3D0);
  }

  return result;
}

uint64_t sub_24A382670(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64496E6F73726570;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      v3 = 1633972341;
      goto LABEL_13;
    case 7:
      v3 = 1634038371;
LABEL_13:
      result = v3 | 0x6954657400000000;
      break;
    case 8:
      result = 0x73657269707865;
      break;
    case 9:
      result = 0x746F4E646574706FLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x6E65644968737570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFIntermediateFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A382908(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFIntermediateFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A382A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFIntermediateFriend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A382A68(uint64_t a1)
{
  v2 = type metadata accessor for FMFIntermediateFriend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A382AC4()
{
  result = qword_27EF3F1B8;
  if (!qword_27EF3F1B8)
  {
    sub_24A3CBC9C(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A3819A0(&qword_27EF3F1C0, type metadata accessor for FMFLocationAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1B8);
  }

  return result;
}

unint64_t sub_24A382B78()
{
  result = qword_27EF3F148;
  if (!qword_27EF3F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F148);
  }

  return result;
}

uint64_t FMFPreferences.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FC70, &qword_24A4B7E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3831D4();
  sub_24A4AC3C0();
  if (!v2)
  {
    LOBYTE(v42) = 1;
    v11 = sub_24A4AC120();
    v41 = a2;
    v13 = v12;
    v40 = v11;
    LOBYTE(v42) = 0;
    v14 = sub_24A4AC120();
    v16 = v15;
    LOBYTE(v42) = 2;
    v38 = sub_24A4AC120();
    v39 = v17;
    LOBYTE(v42) = 3;
    v36 = sub_24A4AC120();
    v37 = v18;
    LOBYTE(v42) = 4;
    v19 = sub_24A4AC120();
    v34 = v21;
    v35 = v19;
    sub_24A3C9CEC(&qword_27EF3FC80, &qword_24A4B7E48);
    v44 = 5;
    sub_24A3833C0(&qword_27EF3FC88, sub_24A383438);
    sub_24A4AC160();
    v33 = v42;
    if (v14 == 7562585 && v16 == 0xE300000000000000 || (sub_24A4AC270() & 1) != 0)
    {

      v22 = 1;
    }

    else
    {
      if (v14 != 28494 || v16 != 0xE200000000000000)
      {
        sub_24A4AC270();
      }

      v22 = 0;
    }

    v43 = v22;
    v23 = v38;
    v24 = v39;
    v25 = v41;
    if (v38 == 7562585 && v39 == 0xE300000000000000 || (sub_24A4AC270() & 1) != 0)
    {

      v26 = 1;
    }

    else
    {
      if (v23 != 28494 || v24 != 0xE200000000000000)
      {
        sub_24A4AC270();
      }

      v26 = 0;
    }

    v45 = v26;
    if (v36 == 7562585 && v37 == 0xE300000000000000)
    {

      v27 = 1;
    }

    else
    {
      v27 = sub_24A4AC270();
    }

    v28 = v27 & 1;
    if (v13)
    {
      v29 = sub_24A4AC0C0();

      (*(v6 + 8))(v9, v5);
      v30 = v29 == 1;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v30 = 2;
    }

    v31 = v45;
    *v25 = v43;
    *(v25 + 1) = v31;
    *(v25 + 2) = v28;
    *(v25 + 3) = v30;
    v32 = v34;
    *(v25 + 8) = v35;
    *(v25 + 16) = v32;
    *(v25 + 24) = v33;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A383128()
{
  result = qword_27EF3FCE0;
  if (!qword_27EF3FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCE0);
  }

  return result;
}

unint64_t sub_24A383180()
{
  result = qword_27EF3FCE8;
  if (!qword_27EF3FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCE8);
  }

  return result;
}

unint64_t sub_24A3831D4()
{
  result = qword_27EF3FC78;
  if (!qword_27EF3FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FC78);
  }

  return result;
}

unint64_t sub_24A383228()
{
  v1 = *v0;
  v2 = 0x61636F4C65646968;
  v3 = 0xD000000000000013;
  v4 = 0x457972616D697270;
  if (v1 != 4)
  {
    v4 = 0x657469726F766166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for FMFPreferences.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A3833C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3FC80, &qword_24A4B7E48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A383438()
{
  result = qword_27EF3FC90;
  if (!qword_27EF3FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FC90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFPreferences.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A38351C()
{
  result = qword_27EF3F150;
  if (!qword_27EF3F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F150);
  }

  return result;
}

uint64_t FMFFeatures.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40640, &qword_24A4BAED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A383BB0();
  sub_24A4AC3C0();
  if (!v2)
  {
    LOBYTE(v40) = 0;
    v11 = sub_24A4AC130();
    LOBYTE(v40) = 1;
    v12 = sub_24A4AC130();
    LOBYTE(v40) = 2;
    v13 = sub_24A4AC130();
    LOBYTE(v40) = 3;
    LODWORD(v39) = sub_24A4AC130();
    LOBYTE(v40) = 4;
    LODWORD(v38) = sub_24A4AC130();
    LOBYTE(v40) = 5;
    LODWORD(v37) = sub_24A4AC130();
    LOBYTE(v40) = 6;
    v36 = sub_24A4AC130();
    LOBYTE(v40) = 7;
    LODWORD(v35) = sub_24A4AC130();
    v34 = v11;
    LOBYTE(v40) = 8;
    v33 = sub_24A4AC130();
    LOBYTE(v40) = 9;
    v32 = sub_24A4AC130();
    LOBYTE(v40) = 10;
    v31 = sub_24A4AC130();
    LOBYTE(v40) = 11;
    v30 = sub_24A4AC130();
    LOBYTE(v40) = 12;
    v29 = sub_24A4AC130();
    LOBYTE(v40) = 13;
    v15 = sub_24A4AC130();
    if (v12)
    {
      v16 = v34 & 1 | 2;
    }

    else
    {
      v16 = v34 & 1;
    }

    v17 = v16 | 4;
    if ((v13 & 1) == 0)
    {
      v17 = v16;
    }

    if (v39)
    {
      v17 |= 8uLL;
    }

    if (v38)
    {
      v17 |= 0x10uLL;
    }

    if (v37)
    {
      v17 |= 0x20uLL;
    }

    if (v36)
    {
      v17 |= 0x40uLL;
    }

    if (v35)
    {
      v18 = v17 | 0x80;
    }

    else
    {
      v18 = v17;
    }

    if (v33)
    {
      v18 |= 0x100uLL;
    }

    if (v32)
    {
      v18 |= 0x200uLL;
    }

    if (v31)
    {
      v18 |= 0x400uLL;
    }

    if (v30)
    {
      v18 |= 0x800uLL;
    }

    if (v29)
    {
      v18 |= 0x1000uLL;
    }

    if (v15)
    {
      v18 |= 0x2000uLL;
    }

    v39 = v18;
    v40 = v18;
    v37 = FMFFeatures.debugDescription.getter();
    v20 = v19;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v21 = sub_24A4AB630();
    sub_24A378E18(v21, qword_27EF4E260);

    v22 = sub_24A4AB600();
    v23 = sub_24A4ABCE0();

    v36 = v23;
    v38 = v22;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v24 = 136315138;
      v25 = sub_24A37BD58(v37, v20, &v40);

      *(v24 + 4) = v25;
      v26 = v38;
      _os_log_impl(&dword_24A376000, v38, v36, "FMFFeature: initialized %s", v24, 0xCu);
      v27 = v35;
      sub_24A37EEE0(v35);
      MEMORY[0x24C219130](v27, -1, -1);
      MEMORY[0x24C219130](v24, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    *a2 = v39;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A383B04()
{
  result = qword_27EF40680;
  if (!qword_27EF40680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40680);
  }

  return result;
}

unint64_t sub_24A383B5C()
{
  result = qword_27EF40688;
  if (!qword_27EF40688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40688);
  }

  return result;
}

unint64_t sub_24A383BB0()
{
  result = qword_27EF40648;
  if (!qword_27EF40648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40648);
  }

  return result;
}

unint64_t sub_24A383C20(char a1)
{
  result = 0x6569724677656976;
  switch(a1)
  {
    case 1:
      result = 0x6C6C6F4677656976;
      break;
    case 2:
      result = 0x7165526E4F746361;
      break;
    case 3:
      result = 0x636F4C726566666FLL;
      break;
    case 4:
      result = 0x794D65676E616863;
      break;
    case 5:
      result = 0x654D65676E616863;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x724665766F6D6572;
      break;
    case 10:
      result = 0x6F4665766F6D6572;
      break;
    case 11:
      result = 0x654465766F6D6572;
      break;
    case 12:
      result = 0x744F796669746F6ELL;
      break;
    case 13:
      result = 0x654D796669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t FMFFeatures.debugDescription.getter()
{
  v1 = *v0;
  sub_24A4ABF50();

  v2 = sub_24A4AC240();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_24A383EF0()
{
  result = qword_27EF3F160;
  if (!qword_27EF3F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F160);
  }

  return result;
}

uint64_t FMFConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FEF8, &qword_24A4B8F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A384718();
  sub_24A4AC3C0();
  if (!v2)
  {
    v65 = 0;
    v11 = sub_24A4AC150();
    v65 = 1;
    v12 = sub_24A4AC150();
    v65 = 2;
    v13 = sub_24A4AC150();
    v65 = 3;
    sub_24A4AC140();
    v15 = v14;
    v65 = 4;
    v64 = sub_24A4AC150();
    v65 = 5;
    v63 = sub_24A4AC150();
    v65 = 6;
    v62 = sub_24A4AC130();
    v65 = 7;
    v16 = sub_24A4AC150();
    v60 = a2;
    v61 = v16;
    v65 = 8;
    v59 = sub_24A4AC150();
    v65 = 9;
    v58 = sub_24A4AC150();
    v65 = 10;
    v57 = sub_24A4AC150();
    v65 = 11;
    v56 = sub_24A4AC150();
    v65 = 12;
    v55 = sub_24A4AC130();
    v65 = 13;
    v54 = sub_24A4AC150();
    v65 = 14;
    v53 = sub_24A4AC150();
    v65 = 15;
    v52 = sub_24A4AC150();
    v65 = 16;
    v51 = sub_24A4AC150();
    v65 = 17;
    v18 = sub_24A4AC100();
    v20 = 20;
    if ((v19 & 1) == 0)
    {
      v20 = v18;
    }

    v50 = v20;
    v65 = 18;
    v49 = sub_24A4AC150();
    v65 = 19;
    v48 = sub_24A4AC150();
    v65 = 20;
    v47 = sub_24A4AC150();
    v65 = 21;
    v46 = sub_24A4AC150();
    v65 = 22;
    v45 = sub_24A4AC150();
    v65 = 23;
    v44 = sub_24A4AC150();
    v65 = 24;
    v43 = sub_24A4AC150();
    v65 = 25;
    v42 = sub_24A4AC130();
    v65 = 26;
    v41 = sub_24A4AC130();
    v65 = 27;
    v40 = sub_24A4AC150();
    v65 = 28;
    v39 = sub_24A4AC150();
    v65 = 29;
    v38 = sub_24A4AC150();
    v65 = 30;
    v37 = sub_24A4AC150();
    (*(v6 + 8))(v9, v5);
    v21 = v62 & 1;
    v22 = v55 & 1;
    v23 = v42 & 1;
    v24 = v60;
    *v60 = v11;
    v24[1] = v12;
    v25 = v41 & 1;
    v24[2] = v13;
    v24[3] = v15;
    v24[4] = v64;
    v24[5] = v63;
    *(v24 + 48) = v21;
    v26 = v59;
    v24[7] = v61;
    v24[8] = v26;
    v27 = v57;
    v24[9] = v58;
    v24[10] = v27;
    v24[11] = v56;
    *(v24 + 96) = v22;
    v28 = v53;
    v24[13] = v54;
    v24[14] = v28;
    v29 = v51;
    v24[15] = v52;
    v24[16] = v29;
    v30 = v49;
    v24[17] = v50;
    v24[18] = v30;
    v31 = v47;
    v24[19] = v48;
    v24[20] = v31;
    v32 = v45;
    v24[21] = v46;
    v24[22] = v32;
    v33 = v43;
    v24[23] = v44;
    v24[24] = v33;
    *(v24 + 200) = v23;
    *(v24 + 201) = v25;
    v34 = v39;
    v24[26] = v40;
    v24[27] = v34;
    v35 = v37;
    v24[28] = v38;
    v24[29] = v35;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A38466C()
{
  result = qword_27EF3FF18;
  if (!qword_27EF3FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF18);
  }

  return result;
}

unint64_t sub_24A3846C4()
{
  result = qword_27EF3FF20;
  if (!qword_27EF3FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF20);
  }

  return result;
}

unint64_t sub_24A384718()
{
  result = qword_27EF3FF00;
  if (!qword_27EF3FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FF00);
  }

  return result;
}

unint64_t sub_24A384774(char a1)
{
  result = 0x6F6C6C6F4678616DLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0x4C6E6F6973736573;
      break;
    case 4:
    case 10:
    case 19:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x7469766E4978616DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6C6562614C78616DLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0x65764F4E4F726162;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0x6E6569724678616DLL;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
    case 30:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 27:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0x6E45636F4C726162;
      break;
    case 26:
      result = 0x67694D776F6C6C61;
      break;
    case 28:
      result = 0xD000000000000018;
      break;
    case 29:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A384C18()
{
  result = qword_27EF3F158;
  if (!qword_27EF3F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F158);
  }

  return result;
}

uint64_t FMFMyInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40EA0, &qword_24A4BD2B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3850E8();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  LOBYTE(v31) = 0;
  sub_24A382908(&qword_27EF3F110);
  sub_24A4AC160();
  v11 = v34[0];
  LOBYTE(v34[0]) = 1;
  v12 = sub_24A4AC120();
  v30 = v13;
  v27 = v12;
  LOBYTE(v34[0]) = 2;
  v26 = sub_24A4AC120();
  v29 = v14;
  LOBYTE(v34[0]) = 3;
  v25 = sub_24A4AC120();
  v28 = v15;
  v37 = 4;
  v16 = sub_24A4AC130();
  (*(v6 + 8))(v9, v5);
  v36 = v16 & 1;
  v17 = v26;
  v18 = v27;
  *&v31 = v11;
  *(&v31 + 1) = v27;
  v20 = v29;
  v19 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v26;
  *v33 = v29;
  *&v33[8] = v25;
  v21 = v28;
  *&v33[16] = v28;
  v33[24] = v36;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_24A386F18(&v31, v34);
  sub_24A37EEE0(a1);
  v34[0] = v11;
  v34[1] = v18;
  v34[2] = v19;
  v34[3] = v17;
  v34[4] = v20;
  v34[5] = v25;
  v34[6] = v21;
  v35 = v36;
  return sub_24A385278(v34);
}

unint64_t sub_24A38503C()
{
  result = qword_27EF40EC0;
  if (!qword_27EF40EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EC0);
  }

  return result;
}

unint64_t sub_24A385094()
{
  result = qword_27EF40EC8;
  if (!qword_27EF40EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EC8);
  }

  return result;
}

unint64_t sub_24A3850E8()
{
  result = qword_27EF40EA8;
  if (!qword_27EF40EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EA8);
  }

  return result;
}

uint64_t sub_24A38513C()
{
  v1 = *v0;
  v2 = 0x736C69616D65;
  v3 = 0x656369766544656DLL;
  v4 = 0x6449656369766564;
  if (v1 != 3)
  {
    v4 = 0x656C626967696C65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E7473726966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FMFAlertType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A3852CC()
{
  result = qword_27EF3F140;
  if (!qword_27EF3F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F140);
  }

  return result;
}

unint64_t sub_24A385340()
{
  result = qword_27EF40738;
  if (!qword_27EF40738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40738);
  }

  return result;
}

uint64_t sub_24A3853A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24A4AACE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24A4AAD10();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24A3854BC(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  type metadata accessor for FMDiskIO.KeyPair();
  result = sub_24A4ABDF0();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_24A38557C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a3;
  v31 = a5;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v26 = sub_24A4ABD50();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4ABD10();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_24A4AB6E0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_24A3785D4();
  v25[1] = "FriendCacheData.data";
  v25[2] = v15;
  sub_24A4AB6B0();
  v32 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v26);
  v5[2] = sub_24A4ABD90();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  v17 = v27;

  v18 = sub_24A4AB600();
  v19 = sub_24A4ABCE0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315138;
    v22 = v30;
    *(v20 + 4) = sub_24A37BD58(v30, v17, &v32);
    _os_log_impl(&dword_24A376000, v18, v19, "FMDiskIO: init with file name: %s", v20, 0xCu);
    sub_24A37EEE0(v21);
    MEMORY[0x24C219130](v21, -1, -1);
    MEMORY[0x24C219130](v20, -1, -1);
  }

  else
  {

    v22 = v30;
  }

  v23 = v29;
  v6[3] = v28;
  v6[4] = v23;
  v6[5] = v22;
  v6[6] = v17;
  sub_24A37BE24(v31, v6 + *(*v6 + 128), &qword_27EF40580, &qword_24A4BACA0);
  return v6;
}

void sub_24A38594C()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1 && (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) & 1) == 0)
  {
    v2 = *(v0 + 696);
    if (!v2)
    {
LABEL_6:
      os_unfair_lock_lock((v0 + 72));
      sub_24A44FCF4((v0 + 80));
      os_unfair_lock_unlock((v0 + 72));
      *(v0 + 704) = 0;
      return;
    }

    sub_24A37EB30(__src);
    memcpy(__dst, __src, sizeof(__dst));
    v3 = *(v2 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = __dst;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_24A37F844;
    *(v5 + 24) = v4;
    aBlock[4] = sub_24A37CE34;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A37CDDC;
    aBlock[3] = &unk_285D89550;
    v6 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v3, v6);

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      memcpy(v45, __dst, sizeof(v45));
      memcpy(v46, __dst, sizeof(v46));
      if (sub_24A387434(v46) == 1)
      {
        goto LABEL_6;
      }

      os_unfair_lock_lock((v0 + 72));
      memcpy(aBlock, (v0 + 80), 0x1C8uLL);
      sub_24A3873B4(aBlock);
      memcpy((v0 + 80), v46, 0x1C8uLL);
      sub_24A38734C(v46, &v29);
      os_unfair_lock_unlock((v0 + 72));
      v8 = *(v0 + 680);
      *(v0 + 680) = v46[0];

      v9 = *(v0 + 544);
      *(v0 + 544) = v46[1];

      v10 = *(v0 + 560);
      *(v0 + 560) = v46[3];

      v11 = *(v0 + 568);
      *(v0 + 568) = v46[4];

      v12 = *(v0 + 640);
      *(v0 + 640) = v46[5];

      v13 = *(v0 + 648);
      *(v0 + 648) = v46[6];

      v14 = *(v0 + 656);
      *(v0 + 656) = v46[7];

      v15 = *(v0 + 664);
      *(v0 + 664) = v46[8];

      sub_24A38744C(v16);

      sub_24A387740(v17);

      sub_24A387770(v18);
      v19 = *(v0 + 720);
      *(v0 + 720) = v46[56];

      v20 = v46[11];
      if (v46[11])
      {
        v21 = v46[12];
        v22 = *(v0 + 744);
        v23 = *(v0 + 752);
        v24 = *(v0 + 760);
        v25 = *(v0 + 768);
        *(v0 + 744) = *&v46[9];
        *(v0 + 760) = v20;
        *(v0 + 768) = v21;

        sub_24A37F110(v22, v23, v24);
      }

      if (v46[45])
      {
        v26 = *(v0 + 1048);
        v29 = *(v0 + 1032);
        v30 = v26;
        *v31 = *(v0 + 1064);
        *&v31[9] = *(v0 + 1073);
        v27 = *&v46[47];
        *(v0 + 1032) = *&v46[45];
        *(v0 + 1048) = v27;
        *(v0 + 1064) = *&v46[49];
        *(v0 + 1073) = *(&v46[50] + 1);

        sub_24A37EF2C(&v29, &qword_27EF3FD68, &unk_24A4B9F40);
      }

      if (LOBYTE(v46[14]) != 1)
      {
        *&v29 = v46[13];
        BYTE8(v29) = 0;
        sub_24A3877A0(&v29);
      }

      sub_24A37EF2C(v45, &qword_27EF405A8, &qword_24A4BACC0);
      v32 = *&v46[23];
      v33 = *&v46[25];
      v34 = *&v46[27];
      v35 = *&v46[29];
      v29 = *&v46[15];
      v30 = *&v46[17];
      *v31 = *&v46[19];
      *&v31[16] = *&v46[21];
      v40 = *&v46[39];
      v41 = *&v46[41];
      v42 = *&v46[43];
      v36 = *&v46[31];
      v37 = *&v46[33];
      v38 = *&v46[35];
      v39 = *&v46[37];
      if (sub_24A387AB8(&v29) != 1)
      {
        v28[12] = *&v46[39];
        v28[13] = *&v46[41];
        v28[14] = *&v46[43];
        v28[8] = *&v46[31];
        v28[9] = *&v46[33];
        v28[10] = *&v46[35];
        v28[11] = *&v46[37];
        v28[4] = *&v46[23];
        v28[5] = *&v46[25];
        v28[6] = *&v46[27];
        v28[7] = *&v46[29];
        v28[0] = *&v46[15];
        v28[1] = *&v46[17];
        v28[2] = *&v46[19];
        v28[3] = *&v46[21];
        sub_24A387AD4(v28);
      }

      *(v0 + 704) = 1;
    }
  }
}

uint64_t sub_24A385E6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t FMFDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40730, &qword_24A4BB358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A385340();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v25 = 0;
  v11 = sub_24A4AC120();
  v13 = v12;
  v22 = v11;
  v24 = 1;
  v20 = sub_24A4AC120();
  v21 = v14;
  v23 = 2;
  v15 = sub_24A4AC130();
  (*(v6 + 8))(v9, v5);
  v16 = v15 & 1;
  v17 = v21;
  *a2 = v22;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;

  sub_24A37EEE0(a1);
}

uint64_t sub_24A386114()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6143654D6F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertAcceptanceStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_24A386218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A38622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = sub_24A4AA710();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  v37[1] = a1;
  v37[2] = a2;
  v37[3] = a3;
  v37[4] = a4;
  v20 = sub_24A4AA730();
  v22 = v21;
  if (v21 >> 60 == 15)
  {
    sub_24A3C9CEC(&qword_27EF405F8, qword_24A4BAD10);
    sub_24A378704(&qword_27EF40600, &qword_27EF405F8, qword_24A4BAD10);
    v23 = swift_allocError();
    swift_willThrow();
    sub_24A4AACD0();
    v28 = &v16[*(v13 + 44)];
    sub_24A4AAD00();
    v29 = sub_24A4AA860();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_24A4AA850();
    sub_24A378704(&qword_27EF405E8, &qword_27EF40588, &qword_24A4BACA8);
    v32 = sub_24A4AA840();
    v34 = v33;

    v40 = v32;
    v41 = v34;
    v35 = v38;
    (*(v38 + 104))(v12, *MEMORY[0x277D08A30], v9);
    sub_24A454A64();
    sub_24A4AA720();
    (*(v35 + 8))(v12, v9);

    sub_24A386E10(v32, v34);
    v19 = v16;
  }

  else
  {
    v24 = v20;
    v25 = sub_24A4AA830();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_24A4AA820();
    sub_24A378704(&qword_27EF40608, &qword_27EF40588, &qword_24A4BACA8);
    sub_24A4AA810();
    sub_24A386DFC(v24, v22);
  }

  return sub_24A37BE24(v19, v39, &qword_27EF40588, &qword_24A4BACA8);
}

uint64_t FMDiskIO.KeyPair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_24A4AAD10();
  v31 = *(v36 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24A4AACE0();
  v34 = *(v39 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys();
  swift_getWitnessTable();
  v40 = sub_24A4AC180();
  v33 = *(v40 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v28 - v8;
  v10 = type metadata accessor for FMDiskIO.KeyPair();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  v38 = v9;
  v15 = v41;
  sub_24A4AC3C0();
  if (v15)
  {
    return sub_24A37EEE0(a1);
  }

  v16 = v13;
  v41 = v10;
  v18 = v33;
  v17 = v34;
  v19 = v35;
  v20 = v36;
  v43 = 0;
  sub_24A386C30(&qword_27EF40970, MEMORY[0x277D08EF0]);
  v22 = v37;
  v21 = v38;
  sub_24A4AC160();
  v23 = *(v17 + 32);
  v29 = v16;
  v23(v16, v22, v39);
  v42 = 1;
  sub_24A386C30(qword_27EF40978, MEMORY[0x277D08F08]);
  sub_24A4AC160();
  (*(v18 + 8))(v21, v40);
  v24 = v41;
  v25 = v29;
  (*(v31 + 32))(&v29[*(v41 + 44)], v19, v20);
  v26 = v30;
  (*(v30 + 16))(v32, v25, v24);
  sub_24A37EEE0(a1);
  return (*(v26 + 8))(v25, v24);
}

uint64_t sub_24A386C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A386C78(char a1)
{
  if (a1)
  {
    return 0x697274656D6D7973;
  }

  else
  {
    return 0x4B65746176697270;
  }
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlertTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A386DFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A386E10(a1, a2);
  }

  return a1;
}

uint64_t sub_24A386E10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t storeEnumTagSinglePayload for FMFAlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A386F70()
{
  result = qword_27EF40750;
  if (!qword_27EF40750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40750);
  }

  return result;
}

unint64_t sub_24A386FC4()
{
  result = qword_27EF40758;
  if (!qword_27EF40758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40758);
  }

  return result;
}

uint64_t sub_24A387028(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3FD70, &qword_24A4B8A10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A3870AC()
{
  result = qword_27EF3FB10;
  if (!qword_27EF3FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB10);
  }

  return result;
}

unint64_t sub_24A387110()
{
  result = qword_27EF3FD90;
  if (!qword_27EF3FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD90);
  }

  return result;
}

uint64_t type metadata accessor for FMFLabelledLocation()
{
  result = qword_27EF3FEB8;
  if (!qword_27EF3FEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3871B0()
{
  sub_24A379C28(319, &qword_27EF3F398);
  if (v0 <= 0x3F)
  {
    sub_24A379C28(319, &qword_27EF3F970);
    if (v1 <= 0x3F)
    {
      sub_24A379C28(319, &qword_27EF3FEC8);
      if (v2 <= 0x3F)
      {
        sub_24A37E944();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24A387298()
{
  result = qword_27EF3F120;
  if (!qword_27EF3F120)
  {
    sub_24A3CBC9C(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A3819A0(&qword_27EF3F128, type metadata accessor for FMFLabelledLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F120);
  }

  return result;
}

uint64_t sub_24A387384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A38739C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A3873E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_24A387434(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A38747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 56);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_24A3877A0(uint64_t *a1)
{
  v3 = sub_24A4AB690();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v1 + 56);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  aBlock[4] = sub_24A38CA44;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89870;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v6, v15);
  _Block_release(v15);
  (*(v19 + 8))(v6, v3);
  (*(v7 + 8))(v10, v18);
}

uint64_t sub_24A387A7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24A387AB8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A387AD4(_OWORD *a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A4AB6E0();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v1 + 56);
  v12 = swift_allocObject();
  v13 = a1[10];
  *(v12 + 200) = a1[11];
  v14 = a1[13];
  *(v12 + 216) = a1[12];
  *(v12 + 232) = v14;
  *(v12 + 248) = a1[14];
  v15 = a1[6];
  *(v12 + 136) = a1[7];
  v16 = a1[9];
  *(v12 + 152) = a1[8];
  *(v12 + 168) = v16;
  *(v12 + 184) = v13;
  v17 = a1[2];
  *(v12 + 72) = a1[3];
  v18 = a1[5];
  *(v12 + 88) = a1[4];
  *(v12 + 104) = v18;
  *(v12 + 120) = v15;
  v19 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v19;
  *(v12 + 16) = v1;
  *(v12 + 56) = v17;
  aBlock[4] = sub_24A38CC34;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89820;
  v20 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v24 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v20);
  _Block_release(v20);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_24A387E00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

char *sub_24A387E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F008, &qword_24A4B44D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_24A387F3C()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useCache) == 1 && (*(v1 + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_useOptimizedFetch) & 1) == 0)
  {
    v39 = v0;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v2 = sub_24A4AB630();
    sub_24A378E18(v2, qword_27EF4E260);
    v3 = sub_24A4AB600();
    v4 = sub_24A4ABCE0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager: Trying to save the cache blob to disk", v5, 2u);
      MEMORY[0x24C219130](v5, -1, -1);
    }

    v6 = v39;
    v7 = *(v39 + 544);
    v36 = *(v39 + 680);
    v43 = *(v39 + 640);
    v44 = *(v39 + 560);
    v8 = *(v39 + 664);
    v35 = *(v39 + 656);
    v40 = *(v39 + 752);
    v41 = *(v39 + 760);
    v42 = *(v39 + 744);
    v34 = *(v39 + 768);
    v38 = *(v39 + 776);
    v37 = *(v39 + 784);
    v9 = *(v39 + 808);
    v48 = *(v39 + 792);
    v49 = v9;
    v10 = *(v39 + 824);
    v11 = *(v39 + 840);
    v12 = *(v39 + 872);
    v52 = *(v39 + 856);
    v53 = v12;
    v50 = v10;
    v51 = v11;
    v13 = *(v39 + 888);
    v14 = *(v39 + 904);
    v15 = *(v39 + 936);
    v56 = *(v39 + 920);
    v57 = v15;
    v54 = v13;
    v55 = v14;
    v16 = *(v39 + 952);
    v17 = *(v39 + 968);
    v18 = *(v39 + 1000);
    v19 = *(v39 + 1016);
    v60 = *(v39 + 984);
    v61 = v18;
    v58 = v16;
    v59 = v17;
    v20 = *(v39 + 1032);
    v21 = *(v39 + 1048);
    v62 = v19;
    v63 = v20;
    v22 = *(v39 + 1064);
    v64 = v21;
    *v65 = v22;
    *&v65[9] = *(v39 + 1073);
    v23 = *(v39 + 1096);
    v24 = *(v39 + 1112);
    v25 = *(v39 + 1104);
    v26 = *(v39 + 720);
    sub_24A37F0C8(v66);

    sub_24A388B00(v42, v40, v41);
    sub_24A37B740(&v63, __dst, &qword_27EF3FD68, &unk_24A4B9F40);

    sub_24A37F110(0, 0, 0);
    *&__dst[183] = v59;
    *&__dst[199] = v60;
    *&__dst[215] = v61;
    *&__dst[231] = v62;
    *&__dst[119] = v55;
    *&__dst[135] = v56;
    *&__dst[151] = v57;
    *&__dst[167] = v58;
    *&__dst[55] = v51;
    *&__dst[71] = v52;
    *&__dst[87] = v53;
    *&__dst[103] = v54;
    *&__dst[7] = v48;
    *&__dst[23] = v49;
    v46[0] = v37;
    *&__dst[39] = v50;
    memset(v67, 0, 57);
    sub_24A37EF2C(v67, &qword_27EF3FD68, &unk_24A4B9F40);
    *&__src[5] = v43;
    *&__src[3] = v44;
    *(&__src[40] + 1) = *&__dst[208];
    *(&__src[42] + 1) = *&__dst[224];
    *(&__src[32] + 1) = *&__dst[144];
    *(&__src[34] + 1) = *&__dst[160];
    __src[0] = v36;
    __src[1] = v7;
    __src[2] = MEMORY[0x277D84F90];
    __src[7] = v35;
    __src[8] = v8;
    __src[9] = v42;
    __src[10] = v40;
    __src[11] = v41;
    __src[12] = v34;
    __src[13] = v38;
    LOBYTE(__src[14]) = v37;
    *(&__src[36] + 1) = *&__dst[176];
    *(&__src[38] + 1) = *&__dst[192];
    *(&__src[30] + 1) = *&__dst[128];
    *(&__src[22] + 1) = *&__dst[64];
    *(&__src[24] + 1) = *&__dst[80];
    *(&__src[26] + 1) = *&__dst[96];
    *(&__src[28] + 1) = *&__dst[112];
    *(&__src[14] + 1) = *__dst;
    *(&__src[16] + 1) = *&__dst[16];
    *(&__src[18] + 1) = *&__dst[32];
    *(&__src[20] + 1) = *&__dst[48];
    *&__src[45] = v63;
    *&__src[47] = v64;
    *&__src[49] = *v65;
    __src[44] = *&__dst[239];
    __src[51] = *&v65[16];
    LOBYTE(__src[52]) = v65[24];
    __src[53] = v23;
    __src[54] = v24;
    __src[55] = v25;
    __src[56] = v26;
    os_unfair_lock_lock((v39 + 72));
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v68, (v39 + 80), sizeof(v68));
    memcpy(v46, (v39 + 80), sizeof(v46));
    sub_24A38734C(v68, v45);
    v27 = sub_24A388B9C(__dst, v46);
    memcpy(v69, v46, sizeof(v69));
    sub_24A3873B4(v69);
    if (v27)
    {
      os_unfair_lock_unlock((v39 + 72));
      sub_24A3873B4(__src);
      v28 = sub_24A4AB600();
      v29 = sub_24A4ABCE0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24A376000, v28, v29, "FMFDataManager: Nothing changed. Skipping cache write", v30, 2u);
        MEMORY[0x24C219130](v30, -1, -1);
      }
    }

    else
    {
      sub_24A3885A8(__src, v39 + 80);
      sub_24A38734C(__src, __dst);
      os_unfair_lock_unlock((v39 + 72));
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v39 + 40);
        ObjectType = swift_getObjectType();
        (*(v31 + 88))(ObjectType, v31);
        v6 = v39;
        swift_unknownObjectRelease();
      }

      if (*(v6 + 696))
      {
        v33 = *(v6 + 696);

        sub_24A388640(__src);
      }

      sub_24A3873B4(__src);
    }
  }
}

uint64_t sub_24A388564(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_24A388604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1096);
  *(a1 + 1096) = a2;

  sub_24A387F3C();
}

uint64_t sub_24A388640(const void *a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4AB6E0();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  sub_24A378E18(v12, qword_27EF4E260);
  v13 = sub_24A4AB600();
  v14 = sub_24A4ABCE0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A376000, v13, v14, "FMDiskIO: save to disk", v15, 2u);
    MEMORY[0x24C219130](v15, -1, -1);
  }

  v16 = *(v2 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  memcpy((v17 + 24), a1, 0x1C8uLL);
  aBlock[4] = sub_24A389E14;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D894D8;
  v18 = _Block_copy(aBlock);

  sub_24A38734C(a1, v24);
  sub_24A4AB6B0();
  v24[0] = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v4);
  (*(v21 + 8))(v11, v22);
}

uint64_t sub_24A3889E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  if (v0[14])
  {

    v11 = v0[15];
  }

  if (v0[48])
  {

    v12 = v0[50];

    v13 = v0[52];

    v14 = v0[54];
  }

  v15 = v0[56];

  v16 = v0[57];

  v17 = v0[58];

  v18 = v0[59];

  return MEMORY[0x2821FE8E8](v0, 480, 7);
}

void sub_24A388AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1112);
  *(a1 + 1112) = a2;

  sub_24A387F3C();
}

uint64_t sub_24A388B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24A388B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A388B9C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v108 = *(a1 + 40);
  v109 = *(a1 + 32);
  v107 = *(a1 + 48);
  v105 = *(a1 + 56);
  v103 = *(a1 + 64);
  v100 = *(a1 + 72);
  v99 = *(a1 + 88);
  v101 = *(a1 + 96);
  v92 = *(a1 + 104);
  v94 = *(a1 + 112);
  v8 = *(a1 + 360);
  v9 = *(a1 + 376);
  v10 = *(a1 + 392);
  *&v173[41] = *(a1 + 401);
  *&v173[16] = v9;
  *&v173[32] = v10;
  *v173 = v8;
  v90 = *(a1 + 424);
  v86 = *(a1 + 432);
  v84 = *(a1 + 440);
  v88 = *(a1 + 448);
  v11 = *a2;
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v16 = *(a2 + 40);
  v106 = *(a2 + 48);
  v104 = *(a2 + 56);
  v17 = *(a2 + 376);
  *v174 = *(a2 + 360);
  *&v174[16] = v17;
  *&v174[32] = *(a2 + 392);
  *&v174[41] = *(a2 + 401);
  v102 = *(a2 + 64);
  v96 = *(a2 + 72);
  v97 = *(a2 + 80);
  v95 = *(a2 + 88);
  v98 = *(a2 + 96);
  v91 = *(a2 + 104);
  v93 = *(a2 + 112);
  v89 = *(a2 + 424);
  v85 = *(a2 + 432);
  v83 = *(a2 + 440);
  v87 = *(a2 + 448);
  if ((sub_24A389710(v4, v11, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v6, v13, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v5, v12, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v7, v15, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v109, v14, type metadata accessor for FMFIntermediateFriend, type metadata accessor for FMFIntermediateFriend, sub_24A3D80C0) & 1) == 0 || (sub_24A389710(v108, v16, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0 || (sub_24A389710(v107, v106, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0 || (sub_24A389710(v105, v104, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0 || (sub_24A389710(v103, v102, type metadata accessor for FMFLocationAlert, type metadata accessor for FMFLocationAlert, static FMFLocationAlert.== infix(_:_:)) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!v99)
  {
    v18 = *(&v100 + 1);
    v19 = v100;
    sub_24A388B00(v100, *(&v100 + 1), 0);
    v20 = v95;
    if (!v95)
    {
      sub_24A388B00(v96, v97, 0);
      sub_24A37F110(v100, *(&v100 + 1), 0);
      goto LABEL_21;
    }

    v23 = v96;
    v22 = v97;
    sub_24A388B00(v96, v97, v95);
LABEL_17:
    sub_24A37F110(v19, v18, v99);
    sub_24A37F110(v23, v22, v20);
    goto LABEL_18;
  }

  v18 = *(&v100 + 1);
  v19 = v100;
  *v148 = v100;
  *&v148[16] = v99;
  *&v148[24] = v101;
  v20 = v95;
  if (!v95)
  {
    sub_24A388B00(v100, *(&v100 + 1), v99);
    v23 = v96;
    v22 = v97;
    sub_24A388B00(v96, v97, 0);
    sub_24A388B00(v100, *(&v100 + 1), v99);

    goto LABEL_17;
  }

  LODWORD(v158) = v96 & 0xFF010101;
  *(&v158 + 1) = v97;
  *&v159 = v95;
  *(&v159 + 1) = v98;
  sub_24A388B00(v100, *(&v100 + 1), v99);
  sub_24A388B00(v96, v97, v95);
  sub_24A388B00(v100, *(&v100 + 1), v99);
  v21 = _s7FMFCore14FMFPreferencesV2eeoiySbAC_ACtFZ_0(v148, &v158);

  sub_24A37F110(v100, *(&v100 + 1), v99);
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (v94)
  {
    if (!v93)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v26 = v93;
    if (v92 != v91)
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_18;
    }
  }

  v27 = (a1 + 120);
  v28 = (a2 + 120);
  v29 = v27[11];
  v30 = v27[13];
  v154 = v27[12];
  v155 = v30;
  v31 = v27[7];
  v32 = v27[9];
  v150 = v27[8];
  v151 = v32;
  v34 = v27[9];
  v33 = v27[10];
  v35 = v33;
  v153 = v27[11];
  v152 = v33;
  v36 = v27[3];
  v37 = v27[4];
  *&v149[16] = v27[5];
  v39 = v27[5];
  v38 = v27[6];
  v40 = v38;
  *&v149[48] = v27[7];
  *&v149[32] = v38;
  v41 = v27[1];
  *v148 = *v27;
  *&v148[16] = v41;
  v42 = v27[2];
  v44 = *v27;
  v43 = v27[1];
  v45 = v42;
  *&v148[48] = v27[3];
  *v149 = v37;
  *&v148[32] = v42;
  v46 = *(a2 + 312);
  v47 = *(a2 + 328);
  v48 = *(a2 + 280);
  v157[11] = *(a2 + 296);
  v157[12] = v46;
  v49 = *(a2 + 344);
  v157[13] = v47;
  v157[14] = v49;
  v50 = *(a2 + 248);
  v51 = *(a2 + 264);
  v52 = *(a2 + 216);
  v157[7] = *(a2 + 232);
  v157[8] = v50;
  v157[9] = v51;
  v157[10] = v48;
  v53 = *(a2 + 184);
  v54 = *(a2 + 200);
  v55 = *(a2 + 152);
  v157[3] = *(a2 + 168);
  v157[4] = v53;
  v157[5] = v54;
  v157[6] = v52;
  v56 = *(a2 + 120);
  v57 = *(a2 + 136);
  v58 = v27[13];
  v156 = v27[14];
  v157[0] = v56;
  v157[1] = v57;
  v157[2] = v55;
  v170 = v154;
  v171 = v58;
  v172 = v27[14];
  v166 = v150;
  v167 = v34;
  v169 = v29;
  v168 = v35;
  v162 = v37;
  v163 = v39;
  v165 = v31;
  v164 = v40;
  v158 = v44;
  v159 = v43;
  v161 = v36;
  v160 = v45;
  if (sub_24A387AB8(&v158) == 1)
  {
    v59 = *(a2 + 328);
    v145 = *(a2 + 312);
    v146 = v59;
    v147 = *(a2 + 344);
    v60 = *(a2 + 264);
    v141 = *(a2 + 248);
    v142 = v60;
    v61 = *(a2 + 296);
    v143 = *(a2 + 280);
    v144 = v61;
    v62 = *(a2 + 200);
    v137 = *(a2 + 184);
    v138 = v62;
    v63 = *(a2 + 232);
    v139 = *(a2 + 216);
    v140 = v63;
    v64 = *(a2 + 136);
    v134 = *v28;
    v135 = v64;
    v65 = *(a2 + 168);
    *v136 = *(a2 + 152);
    *&v136[16] = v65;
    if (sub_24A387AB8(&v134) != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v66 = v27[13];
    v119 = v27[12];
    v120 = v66;
    v121 = v27[14];
    v67 = v27[9];
    v115 = v27[8];
    v116 = v67;
    v68 = v27[11];
    v117 = v27[10];
    v118 = v68;
    v69 = v27[5];
    v111 = v27[4];
    v112 = v69;
    v70 = v27[7];
    v113 = v27[6];
    v114 = v70;
    v71 = v27[1];
    *v110 = *v27;
    *&v110[16] = v71;
    v72 = v27[3];
    *&v110[32] = v27[2];
    *&v110[48] = v72;
    v73 = *(a2 + 328);
    v145 = *(a2 + 312);
    v146 = v73;
    v147 = *(a2 + 344);
    v74 = *(a2 + 264);
    v141 = *(a2 + 248);
    v142 = v74;
    v75 = *(a2 + 296);
    v143 = *(a2 + 280);
    v144 = v75;
    v76 = *(a2 + 200);
    v137 = *(a2 + 184);
    v138 = v76;
    v77 = *(a2 + 232);
    v139 = *(a2 + 216);
    v140 = v77;
    v78 = *(a2 + 136);
    v134 = *v28;
    v135 = v78;
    v79 = *(a2 + 168);
    *v136 = *(a2 + 152);
    *&v136[16] = v79;
    if (sub_24A387AB8(&v134) == 1 || !_s7FMFCore9FMFConfigV2eeoiySbAC_ACtFZ_0(v110, v157))
    {
      goto LABEL_18;
    }
  }

  v80 = *v173;
  v130 = *&v173[8];
  v131 = *&v173[24];
  v132 = *&v173[40];
  v133 = v173[56];
  v81 = *v174;
  v126 = *&v174[8];
  v127 = *&v174[24];
  v128 = *&v174[40];
  v129 = v174[56];
  if (*v173)
  {
    *v148 = *v173;
    *&v148[8] = *&v173[8];
    *&v148[24] = *&v173[24];
    *&v148[40] = *&v173[40];
    v148[56] = v173[56];
    v134 = *v148;
    v135 = *&v148[16];
    *v136 = *&v148[32];
    *&v136[9] = *&v148[41];
    if (*v174)
    {
      *&v110[8] = *&v174[8];
      *&v110[24] = *&v174[24];
      *&v110[40] = *&v174[40];
      v110[56] = v174[56];
      *v110 = *v174;
      v82 = _s7FMFCore9FMFMyInfoV2eeoiySbAC_ACtFZ_0(&v134, v110);
      v122[0] = *v110;
      v122[1] = *&v110[16];
      v123[0] = *&v110[32];
      *(v123 + 9) = *&v110[41];
      sub_24A37B740(v173, v124, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A37B740(v174, v124, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A37B740(v148, v124, &qword_27EF3FD68, &unk_24A4B9F40);
      sub_24A385278(v122);
      v124[0] = v134;
      v124[1] = v135;
      v125[0] = *v136;
      *(v125 + 9) = *&v136[9];
      sub_24A385278(v124);
      *v110 = v80;
      *&v110[8] = v130;
      *&v110[24] = v131;
      *&v110[40] = v132;
      v110[56] = v133;
      sub_24A37EF2C(v110, &qword_27EF3FD68, &unk_24A4B9F40);
      if ((v82 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    *v110 = *v148;
    *&v110[16] = *&v148[16];
    *&v110[32] = *&v148[32];
    *&v110[41] = *&v148[41];
    sub_24A37B740(v173, v124, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A37B740(v174, v124, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A37B740(v148, v124, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A385278(v110);
LABEL_39:
    *&v148[8] = v130;
    *&v148[24] = v131;
    *&v148[40] = v132;
    *&v149[8] = v126;
    *v148 = v80;
    v148[56] = v133;
    *v149 = v81;
    *&v149[24] = v127;
    *&v149[40] = v128;
    v149[56] = v129;
    sub_24A37EF2C(v148, &qword_27EF3FE20, &qword_24A4B8A30);
    goto LABEL_18;
  }

  if (*v174)
  {
    sub_24A37B740(v173, v148, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A37B740(v174, v148, &qword_27EF3FD68, &unk_24A4B9F40);
    goto LABEL_39;
  }

  *v148 = 0;
  *&v148[8] = *&v173[8];
  *&v148[24] = *&v173[24];
  *&v148[40] = *&v173[40];
  v148[56] = v173[56];
  sub_24A37B740(v173, &v134, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A37B740(v174, &v134, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A37EF2C(v148, &qword_27EF3FD68, &unk_24A4B9F40);
LABEL_41:
  if (sub_24A38B40C(v90, v89) & 1) != 0 && (sub_24A38B528(v88, v87) & 1) != 0 && (sub_24A38B81C(v86, v85))
  {
    v24 = sub_24A389710(v84, v83, type metadata accessor for FMFLabelledLocation, type metadata accessor for FMFLabelledLocation, _s7FMFCore19FMFLabelledLocationV2eeoiySbAC_ACtFZ_0);
    return v24 & 1;
  }

LABEL_18:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_24A389710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_24A415EC8(v19, v16, a4);
        sub_24A415EC8(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_24A415F30(v13, a4);
        sub_24A415F30(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t _s7FMFCore14FMFPreferencesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return result;
  }

  v4 = a1[3];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a2[3];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == 2)
    {
      return 0;
    }

    if (v4)
    {
      v12 = 0x454E4F5952455645;
    }

    else
    {
      v12 = 0x53444E45495246;
    }

    if (v4)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v8)
    {
      v14 = 0x454E4F5952455645;
    }

    else
    {
      v14 = 0x53444E45495246;
    }

    if (v8)
    {
      v15 = 0xE800000000000000;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (v12 == v14 && v13 == v15)
    {

      if (v5 != v9)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v16 = sub_24A4AC270();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v9)
  {
LABEL_25:
    if (sub_24A4AC270())
    {
      goto LABEL_26;
    }

    return 0;
  }

LABEL_24:
  if (v6 != v10)
  {
    goto LABEL_25;
  }

LABEL_26:
  result = (v7 | v11) == 0;
  if (v7 && v11)
  {

    return sub_24A4155EC(v7, v11);
  }

  return result;
}

uint64_t _s7FMFCore9FMFMyInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a1 + 56);
  if ((sub_24A38B37C(*a1, *a2) & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v8 || v5 != v10) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v15 == v9 && v16 == v11 || (sub_24A4AC270() & 1) != 0)
  {
    return v14 ^ v13 ^ 1u;
  }

  return 0;
}

void sub_24A389B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1104);
  *(a1 + 1104) = a2;

  sub_24A387F3C();
}

void sub_24A389BD4(uint64_t a1, const void *a2)
{
  v3 = memcpy(__dst, a2, sizeof(__dst));
  v4 = MEMORY[0x24C2189A0](v3);
  sub_24A389E20(a1, __dst);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_24A389C34(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24A389C80(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_24A389CC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A389D08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A389DC4(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_24A389E20(uint64_t a1, const void *a2)
{
  v114 = *MEMORY[0x277D85DE8];
  v5 = sub_24A4AAD30();
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v5);
  v102 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF40580, &qword_24A4BACA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v97 - v10;
  v12 = sub_24A3C9CEC(&qword_27EF40588, &qword_24A4BACA8);
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v12);
  v101 = &v97 - v14;
  v15 = sub_24A4AA9D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v113, a2, sizeof(v113));
  v109[0] = 0;
  v106 = objc_opt_self();
  v20 = [v106 defaultManager];
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v105 = a1;
  v107 = v21;
  v108 = v22;
  v23 = sub_24A4AB820();
  LOBYTE(a2) = [v20 fileExistsAtPath:v23 isDirectory:v109];

  if (a2)
  {
LABEL_4:
    v28 = sub_24A4AA860();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_24A4AA850();
    sub_24A38AB10();
    v32 = sub_24A4AA840();
    if (v2)
    {

      v34 = v2;
LABEL_22:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v77 = sub_24A4AB630();
      sub_24A378E18(v77, qword_27EF4E260);
      v78 = v34;
      v79 = sub_24A4AB600();
      v80 = sub_24A4ABCC0();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v110 = v82;
        *v81 = 136315138;
        swift_getErrorValue();
        v83 = sub_24A4AC310();
        v85 = sub_24A37BD58(v83, v84, &v110);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_24A376000, v79, v80, "FMDiskIO: Could not save objects to disk %s", v81, 0xCu);
        sub_24A37EEE0(v82);
        MEMORY[0x24C219130](v82, -1, -1);
        MEMORY[0x24C219130](v81, -1, -1);
      }

      else
      {
      }

      goto LABEL_35;
    }

    v35 = v32;
    v36 = v33;
    v37 = v105;
    sub_24A37B740(v105 + *(*v105 + 128), v11, &qword_27EF40580, &qword_24A4BACA0);
    v38 = v104;
    if ((*(v103 + 48))(v11, 1, v104) == 1)
    {
      sub_24A37EF2C(v11, &qword_27EF40580, &qword_24A4BACA0);
      v103 = v35;
      v104 = v36;
      v39 = sub_24A4AAA00();
      v41 = *(v37 + 40);
      v40 = *(v37 + 48);
      v110 = v107;
      v111 = v108;

      v98 = v40;
      MEMORY[0x24C217D50](v41, v40);
      v42 = sub_24A4AB820();

      v43 = [v39 writeToFile:v42 atomically:1];

      if (v43)
      {
        v102 = v31;
LABEL_9:
        v44 = [v106 defaultManager];
        sub_24A3C9CEC(&qword_27EF40598, &unk_24A4BACB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A4B4E10;
        v46 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v47 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v48;
        *(inited + 40) = v47;
        v49 = v46;
        v50 = v47;
        sub_24A3A9E3C(inited);
        swift_setDeallocating();
        sub_24A37EF2C(inited + 32, &qword_27EF40358, &qword_24A4BA148);
        type metadata accessor for FileAttributeKey(0);
        sub_24A37F01C(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey);
        v51 = sub_24A4AB760();

        v110 = v107;
        v111 = v108;

        MEMORY[0x24C217D50](v41, v98);
        v52 = sub_24A4AB820();

        v110 = 0;
        LOBYTE(v47) = [v44 setAttributes:v51 ofItemAtPath:v52 error:&v110];

        if ((v47 & 1) == 0)
        {
          v76 = v110;
          v34 = sub_24A4AA950();

          swift_willThrow();
          sub_24A386E10(v103, v104);

          goto LABEL_22;
        }

        v53 = qword_27EF3EBF8;
        v54 = v110;
        if (v53 != -1)
        {
          swift_once();
        }

        v55 = sub_24A4AB630();
        sub_24A378E18(v55, qword_27EF4E260);

        v56 = sub_24A4AB600();
        v57 = sub_24A4ABCE0();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v112 = v59;
          *v58 = 136315138;
          v110 = v107;
          v111 = v108;

          MEMORY[0x24C217D50](v41, v98);
          v60 = sub_24A37BD58(v110, v111, &v112);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_24A376000, v56, v57, "FMDiskIO: Successfully wrote object to disk @ %s", v58, 0xCu);
          sub_24A37EEE0(v59);
          MEMORY[0x24C219130](v59, -1, -1);
          MEMORY[0x24C219130](v58, -1, -1);
        }

        sub_24A386E10(v103, v104);

LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      sub_24A37BE24(v11, v101, &qword_27EF40588, &qword_24A4BACA8);
      v72 = *(v38 + 44);
      sub_24A4AACF0();
      sub_24A37F01C(&qword_27EF405A0, MEMORY[0x277D08F20]);
      v73 = v100;
      v74 = sub_24A4AA840();
      v103 = v35;
      v104 = v36;
      v86 = v74;
      v87 = v75;
      v88 = sub_24A4AAA00();
      sub_24A386E10(v86, v87);
      v89 = *(v37 + 40);
      v90 = *(v37 + 48);
      v110 = v107;
      v111 = v108;

      v98 = v90;
      MEMORY[0x24C217D50](v89, v90);
      v91 = sub_24A4AB820();

      LODWORD(v86) = [v88 writeToFile:v91 atomically:1];

      (*(v99 + 8))(v102, v73);
      sub_24A37EF2C(v101, &qword_27EF40588, &qword_24A4BACA8);
      if (v86)
      {
        v102 = v31;
        v41 = v89;
        goto LABEL_9;
      }
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v92 = sub_24A4AB630();
    sub_24A378E18(v92, qword_27EF4E260);
    v93 = sub_24A4AB600();
    v94 = sub_24A4ABCE0();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_24A376000, v93, v94, "FMDiskIO: Could not save objects to disk", v95, 2u);
      MEMORY[0x24C219130](v95, -1, -1);
    }

    sub_24A386E10(v103, v104);

    goto LABEL_34;
  }

  v24 = [v106 defaultManager];
  sub_24A4AA970();
  v25 = sub_24A4AA980();
  (*(v16 + 8))(v19, v15);
  v110 = 0;
  v26 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v110];

  if (v26)
  {
    v27 = v110;
    goto LABEL_4;
  }

  v61 = v110;
  v62 = sub_24A4AA950();

  swift_willThrow();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v63 = sub_24A4AB630();
  sub_24A378E18(v63, qword_27EF4E260);
  v64 = v105;

  v65 = sub_24A4AB600();
  v66 = sub_24A4ABCE0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v112 = v68;
    *v67 = 136315138;
    v69 = *(v64 + 40);
    v70 = *(v64 + 48);
    v110 = v107;
    v111 = v108;

    MEMORY[0x24C217D50](v69, v70);
    v71 = sub_24A37BD58(v110, v111, &v112);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_24A376000, v65, v66, "FMDiskIO: Could not create directory for content: %s", v67, 0xCu);
    sub_24A37EEE0(v68);
    MEMORY[0x24C219130](v68, -1, -1);
    MEMORY[0x24C219130](v67, -1, -1);
  }

LABEL_35:
  v96 = *MEMORY[0x277D85DE8];
}

unint64_t sub_24A38AB10()
{
  result = qword_27EF40590;
  if (!qword_27EF40590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40590);
  }

  return result;
}

uint64_t sub_24A38AB64(void *a1)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3FD98, &qword_24A4B8A20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[3];
  v52 = v2[2];
  v53 = v9;
  v12 = v2[5];
  v50 = v2[4];
  v51 = v11;
  v13 = v2[7];
  v48 = v2[6];
  v49 = v12;
  v14 = v2[9];
  v46 = v2[8];
  v47 = v13;
  v15 = v2[11];
  v44 = v2[10];
  v45 = v14;
  v16 = v2[13];
  v42 = v2[12];
  v43 = v15;
  v41 = v16;
  v40 = *(v2 + 112);
  v17 = *(v2 + 45);
  v18 = *(v2 + 47);
  v19 = *(v2 + 49);
  *(v66 + 9) = *(v2 + 401);
  v65 = v18;
  v66[0] = v19;
  v64 = v17;
  v20 = v2[53];
  v21 = v2[54];
  v22 = v2[56];
  v36 = v2[55];
  v37 = v21;
  v38 = v22;
  v39 = v20;
  v23 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A381748();

  sub_24A4AC3D0();
  *&v61 = v10;
  LOBYTE(v58[0]) = 0;
  sub_24A3C9CEC(&qword_27EF3F198, &qword_24A4B4978);
  sub_24A38B8AC();
  v67 = v4;
  v55 = v8;
  v24 = v54;
  sub_24A4AC1F0();
  if (v24)
  {

    return (*(v5 + 8))(v55, v67);
  }

  else
  {
    v26 = v52;
    v54 = v5;

    *&v61 = v53;
    LOBYTE(v58[0]) = 1;
    sub_24A4AC1F0();
    *&v61 = v26;
    LOBYTE(v58[0]) = 2;
    sub_24A4AC1F0();
    *&v61 = v51;
    LOBYTE(v58[0]) = 3;
    sub_24A4AC1F0();
    *&v61 = v50;
    LOBYTE(v58[0]) = 4;
    sub_24A4AC1F0();
    *&v61 = v49;
    LOBYTE(v58[0]) = 5;
    sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A38CD04();
    sub_24A4AC1F0();
    *&v61 = v48;
    LOBYTE(v58[0]) = 6;
    sub_24A4AC1F0();
    *&v61 = v47;
    LOBYTE(v58[0]) = 7;
    sub_24A4AC1F0();
    *&v61 = v46;
    LOBYTE(v58[0]) = 8;
    sub_24A4AC1F0();
    *&v61 = v45;
    *(&v61 + 1) = v44;
    *&v62 = v43;
    *(&v62 + 1) = v42;
    LOBYTE(v58[0]) = 9;
    sub_24A388B00(v45, v44, v43);
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A3EA014();
    sub_24A4AC1F0();
    sub_24A37F110(v61, *(&v61 + 1), v62);
    *&v61 = v41;
    BYTE8(v61) = v40;
    LOBYTE(v58[0]) = 10;
    sub_24A3C9CEC(&qword_27EF3FDB0, &qword_24A4BA250);
    sub_24A415C34();
    sub_24A4AC1F0();
    v27 = *(v2 + 41);
    v63[10] = *(v2 + 39);
    v63[11] = v27;
    v63[12] = *(v2 + 43);
    v28 = *(v2 + 33);
    v63[6] = *(v2 + 31);
    v63[7] = v28;
    v29 = *(v2 + 37);
    v63[8] = *(v2 + 35);
    v63[9] = v29;
    v30 = *(v2 + 25);
    v63[2] = *(v2 + 23);
    v63[3] = v30;
    v31 = *(v2 + 29);
    v63[4] = *(v2 + 27);
    v63[5] = v31;
    v32 = *(v2 + 17);
    v61 = *(v2 + 15);
    v62 = v32;
    v33 = *(v2 + 21);
    v63[0] = *(v2 + 19);
    v63[1] = v33;
    LOBYTE(v58[0]) = 11;
    sub_24A3C9CEC(&qword_27EF3FDC8, &qword_24A4B8A28);
    sub_24A415CB8();
    sub_24A4AC1F0();
    v61 = v64;
    v62 = v65;
    v63[0] = v66[0];
    *(v63 + 9) = *(v66 + 9);
    v60 = 12;
    sub_24A37B740(&v64, v58, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A415D3C();
    sub_24A4AC1F0();
    v58[0] = v61;
    v58[1] = v62;
    *v59 = v63[0];
    *&v59[9] = *(v63 + 9);
    sub_24A37EF2C(v58, &qword_27EF3FD68, &unk_24A4B9F40);
    v57 = v39;
    v56 = 13;
    sub_24A3C9CEC(&qword_27EF3F130, &unk_24A4B4960);
    sub_24A415DC0();
    sub_24A4AC1F0();
    v57 = v38;
    v56 = 16;
    sub_24A3C9CEC(&qword_27EF3FD70, &qword_24A4B8A10);
    sub_24A387028(&qword_27EF3FE00, sub_24A38E880);
    sub_24A4AC1F0();
    v57 = v37;
    v56 = 14;
    sub_24A3C9CEC(&qword_27EF3FD80, &qword_24A4B8A18);
    sub_24A415E44();
    sub_24A4AC1F0();
    v57 = v36;
    v56 = 15;
    sub_24A3C9CEC(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A39AE1C();
    v34 = v67;
    v35 = v55;
    sub_24A4AC1F0();
    return (*(v54 + 8))(v35, v34);
  }
}

uint64_t sub_24A38B37C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24A4AC270() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A38B40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = *(a1 + i + 48);
      v7 = *(a1 + i + 56);
      v8 = *(a1 + i + 64);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_24A4AC270() & 1) == 0)
      {
        break;
      }

      if (v6 == v9 && v7 == v10)
      {
        if (v8 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_24A4AC270();
        result = 0;
        if (v14 & 1) == 0 || ((v8 ^ v11))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A38B528(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v33 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v34 = (v3 + 63) >> 6;
  v35 = result;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v39 = (v5 - 1) & v5;
LABEL_14:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(result + 56) + 56 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    v18 = *(v13 + 32);
    v19 = *(v13 + 40);
    v20 = *(v13 + 48);
    v36 = v12 == 0;

    v41 = v14;

    if (!v12)
    {
      return 1;
    }

    v21 = sub_24A39B2C8(v11, v12);
    v23 = v22;

    if ((v23 & 1) == 0 || ((v24 = *(a2 + 56) + 56 * v21, v25 = *(v24 + 16), v26 = *(v24 + 24), v38 = *(v24 + 32), v27 = *(v24 + 40), v37 = *(v24 + 48), *v24 == v15) ? (v28 = v41 == *(v24 + 8)) : (v28 = 0), !v28 && (sub_24A4AC270() & 1) == 0))
    {
LABEL_36:

      return 0;
    }

    if (v25 == v17 && v16 == v26)
    {
      if (v18 != v38)
      {
        goto LABEL_36;
      }
    }

    else if (sub_24A4AC270() & 1) == 0 || ((v18 ^ v38))
    {
      goto LABEL_36;
    }

    if (v27 == v19 && v20 == v37)
    {

      result = v35;
      v5 = v39;
    }

    else
    {
      v31 = sub_24A4AC270();

      result = v35;
      v5 = v39;
      v32 = v36;
      if ((v31 & 1) == 0)
      {
        return v32;
      }
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v34)
    {
      return 1;
    }

    v8 = *(v33 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v39 = (v8 - 1) & v8;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A38B7D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A38B81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_24A4AC270() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_24A38B8AC()
{
  result = qword_27EF3FDA0;
  if (!qword_27EF3FDA0)
  {
    sub_24A3CBC9C(&qword_27EF3F198, &qword_24A4B4978);
    sub_24A38B7D4(&qword_27EF3FDA8, type metadata accessor for FMFIntermediateFriend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDA0);
  }

  return result;
}

uint64_t sub_24A38B960(void *a1)
{
  v2 = v1;
  v46 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v4 = *(*(v46 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF3F3D8, &unk_24A4B5490);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A382600();
  sub_24A4AC3D0();
  v16 = *v2;
  v17 = v2[1];
  LOBYTE(v49) = 0;
  v18 = v47;
  sub_24A4AC1B0();
  if (v18)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v44 = v7;
  v45 = v9;
  v47 = v11;
  v49 = *(v2 + 1);
  v48 = 1;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();
  v20 = v10;
  *&v49 = v2[4];
  v48 = 2;
  v21 = sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v22 = sub_24A38CA78();
  sub_24A4AC1F0();
  *&v49 = v2[5];
  v48 = 3;
  sub_24A4AC1F0();
  v43 = v22;
  v49 = *(v2 + 3);
  v48 = 4;
  sub_24A4AC1F0();
  v49 = *(v2 + 4);
  v48 = 5;
  sub_24A4AC1F0();
  v42 = type metadata accessor for FMFIntermediateFriend();
  v23 = v45;
  sub_24A38CB20(v2 + v42[10], v45);
  v24 = sub_24A4AAAD0();
  v25 = *(v24 - 8);
  v41 = *(v25 + 48);
  if (v41(v23, 1, v24) == 1)
  {
    v40 = v21;
    sub_24A37EF2C(v23, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    sub_24A4AAA90();
    v27 = v26;
    (*(v25 + 8))(v23, v24);
    v28 = v27 * 1000.0;
    v29 = v27 * 1000.0 <= -9.22337204e18;
    if (v27 * 1000.0 >= 9.22337204e18)
    {
      v29 = 1;
    }

    if (v28 != trunc(v28))
    {
      v29 = 1;
    }

    v30 = v28;
    if (v29)
    {
      v30 = 0;
    }

    *&v49 = v30;
    BYTE8(v49) = v29;
    v48 = 6;
    sub_24A3C9CEC(&qword_27EF3F418, &qword_24A4B54B0);
    sub_24A3D8A54();
    sub_24A4AC1F0();
    v40 = v21;
  }

  v31 = v42;
  v32 = v44;
  sub_24A38CB20(v2 + v42[11], v44);
  if (v41(v32, 1, v24) == 1)
  {
    sub_24A37EF2C(v32, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    sub_24A4AAA90();
    v34 = v33;
    (*(v25 + 8))(v32, v24);
    v35 = v34 * 1000.0;
    v36 = v34 * 1000.0 <= -9.22337204e18;
    if (v34 * 1000.0 >= 9.22337204e18)
    {
      v36 = 1;
    }

    if (v35 != trunc(v35))
    {
      v36 = 1;
    }

    v37 = v35;
    if (v36)
    {
      v37 = 0;
    }

    *&v49 = v37;
    BYTE8(v49) = v36;
    v48 = 7;
    sub_24A3C9CEC(&qword_27EF3F418, &qword_24A4B54B0);
    sub_24A3D8A54();
    sub_24A4AC1F0();
  }

  v38 = v31[12];
  LOBYTE(v49) = 8;
  sub_24A38CB94();
  sub_24A4AC1F0();
  LOBYTE(v49) = *(v2 + v31[13]);
  v48 = 9;
  sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
  sub_24A3D89D8();
  sub_24A4AC1F0();
  LOBYTE(v49) = *(v2 + v31[14]);
  v48 = 10;
  sub_24A4AC1F0();
  LOBYTE(v49) = *(v2 + v31[15]);
  v48 = 11;
  sub_24A4AC1F0();
  LOBYTE(v49) = *(v2 + v42[16]);
  v48 = 12;
  sub_24A4AC1F0();
  *&v49 = *(v2 + v42[17]);
  v48 = 13;
  sub_24A4AC1F0();
  return (*(v47 + 8))(v14, v20);
}

char *sub_24A38C154(uint64_t a1, int a2)
{
  v3 = v2;
  v72 = a2;
  v73 = a1;
  v4 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67[0] = v67 - v6;
  v7 = sub_24A4ABD50();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24A4ABD10();
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67[2] = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A4AB6E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v67[1] = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AAD70();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A4AAB20();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier];
  sub_24A4AAB10();
  v26 = sub_24A4AAAF0();
  v28 = v27;
  (*(v21 + 8))(v24, v20);
  *v25 = v26;
  v25[1] = v28;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fenceUpdateStream] = 0;
  v29 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlSession;
  sub_24A4AB3B0();
  (*(v16 + 104))(v19, *MEMORY[0x277D09048], v15);
  v30 = sub_24A4AB260();
  (*(v16 + 8))(v19, v15);
  *&v3[v29] = v30;
  v31 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_fmlFences] = MEMORY[0x277D84F90];
  v32 = OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_isSnapshotMode;
  v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_isSnapshotMode] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByMe] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnMeByFriends] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByMe] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationAlertsOnFriendsByFriends] = 0;
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_dataManager] = v73;
  LOBYTE(v16) = v72;
  v3[v32] = v72;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_locationShifter] = FMLocationShifter.init()();
  sub_24A3785D4();
  sub_24A4AB6C0();
  v74[0] = v31;
  sub_24A38D32C(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v70 + 104))(v69, *MEMORY[0x277D85260], v71);
  *&v3[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_updateQueue] = sub_24A4ABD90();
  v33 = type metadata accessor for FMFGenericResponseHandler();
  v75.receiver = v3;
  v75.super_class = v33;
  v34 = objc_msgSendSuper2(&v75, sel_init);
  v35 = v34;
  if (v16)
  {
    v36 = v34;
  }

  else
  {
    v37 = sub_24A4AA700();
    v74[3] = v37;
    v74[4] = sub_24A38D32C(&qword_27EF40910, MEMORY[0x277D08A28]);
    v38 = sub_24A38D3BC(v74);
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D089F8], v37);
    v39 = v35;
    LOBYTE(v37) = sub_24A4AA6C0();
    sub_24A37EEE0(v74);
    if (v37)
    {
      v40 = sub_24A4ABB70();
      v41 = v67[0];
      (*(*(v40 - 8) + 56))(v67[0], 1, 1, v40);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v42;
      sub_24A432370(0, 0, v41, &unk_24A4B9F68, v43);
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v44 = sub_24A4AB630();
  sub_24A378E18(v44, qword_27EF4E260);
  v45 = v35;
  v46 = sub_24A4AB600();
  v47 = sub_24A4ABCE0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v74[0] = v49;
    *v48 = 136315394;
    v50 = *&v45[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier];
    v51 = *&v45[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_identifier + 8];

    v52 = sub_24A37E99C(0xCuLL, v50, v51);
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v59 = MEMORY[0x24C217CD0](v52, v54, v56, v58);
    v61 = v60;

    v62 = sub_24A37BD58(v59, v61, v74);

    *(v48 + 4) = v62;
    *(v48 + 12) = 2080;
    if (v72)
    {
      v63 = 0x70616E7320736120;
    }

    else
    {
      v63 = 0;
    }

    if (v72)
    {
      v64 = 0xEC000000746F6873;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v65 = sub_24A37BD58(v63, v64, v74);

    *(v48 + 14) = v65;
    _os_log_impl(&dword_24A376000, v46, v47, "FMFGenericResponseHandler<%s>.init%s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v49, -1, -1);
    MEMORY[0x24C219130](v48, -1, -1);
  }

  return v45;
}

uint64_t sub_24A38C9CC()
{
  MEMORY[0x24C219220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A38CA04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A38CA44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 776) = *(v0 + 24);
  *(v1 + 784) = v2;
  sub_24A387F3C();
}

unint64_t sub_24A38CA78()
{
  result = qword_27EF3F3E8;
  if (!qword_27EF3F3E8)
  {
    sub_24A3CBC9C(&qword_27EF3F3E0, &qword_24A4B54A0);
    sub_24A382908(&qword_27EF3F3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3E8);
  }

  return result;
}

uint64_t sub_24A38CB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A38CB94()
{
  result = qword_27EF3F3F8;
  if (!qword_27EF3F3F8)
  {
    sub_24A3CBC9C(&qword_27EF3F460, &unk_24A4B53B0);
    sub_24A38CCBC(&qword_27EF3F400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3F8);
  }

  return result;
}

__n128 sub_24A38CC34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  *(v1 + 808) = *(v0 + 40);
  *(v1 + 824) = v3;
  *(v1 + 792) = v2;
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  *(v1 + 872) = *(v0 + 104);
  *(v1 + 888) = v6;
  *(v1 + 840) = v4;
  *(v1 + 856) = v5;
  v7 = *(v0 + 136);
  v8 = *(v0 + 152);
  v9 = *(v0 + 184);
  *(v1 + 936) = *(v0 + 168);
  *(v1 + 952) = v9;
  *(v1 + 904) = v7;
  *(v1 + 920) = v8;
  v10 = *(v0 + 200);
  v11 = *(v0 + 216);
  v12 = *(v0 + 248);
  *(v1 + 1000) = *(v0 + 232);
  *(v1 + 1016) = v12;
  *(v1 + 968) = v10;
  *(v1 + 984) = v11;
  sub_24A387F3C();
  return result;
}

uint64_t sub_24A38CCBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24A4AAAD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A38CD04()
{
  result = qword_27EF3FB48;
  if (!qword_27EF3FB48)
  {
    sub_24A3CBC9C(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A38B7D4(&qword_27EF3FB50, type metadata accessor for FMFLocationAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB48);
  }

  return result;
}

unint64_t sub_24A38CDB8()
{
  result = qword_27EF3F7F8;
  if (!qword_27EF3F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F7F8);
  }

  return result;
}

uint64_t sub_24A38CE0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

__n128 sub_24A38CE54(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t FMFPreferences.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FC98, &qword_24A4B7E50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v25 = *v1;
  v8 = v1[1];
  v18[1] = v1[2];
  v20 = v1[3];
  v21 = v8;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v19 = *(v1 + 3);
  v11 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3831D4();
  sub_24A4AC3D0();
  LOBYTE(v23) = 4;
  v12 = v22;
  sub_24A4AC1B0();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = v20;
  v23 = v19;
  v26 = 5;
  sub_24A3C9CEC(&qword_27EF3FCA0, &qword_24A4B7E58);
  sub_24A4129A4();
  sub_24A4AC1F0();
  v15 = 0x53444E45495246;
  if (v13)
  {
    v15 = 0x454E4F5952455645;
  }

  v16 = 0xE700000000000000;
  if (v13)
  {
    v16 = 0xE800000000000000;
  }

  if (v13 == 2)
  {
    v15 = 0;
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v23 = v15;
  v24 = v17;
  v26 = 1;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();

  LOBYTE(v23) = 0;
  sub_24A4AC1B0();

  LOBYTE(v23) = 2;
  sub_24A4AC1B0();

  LOBYTE(v23) = 3;
  sub_24A4AC1B0();
  (*(v4 + 8))(v7, v3);
}

unint64_t sub_24A38D204()
{
  result = qword_27EF3FCB8;
  if (!qword_27EF3FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCB8);
  }

  return result;
}

unint64_t sub_24A38D258()
{
  result = qword_27EF3EFA0;
  if (!qword_27EF3EFA0)
  {
    sub_24A3CBC9C(&unk_27EF3F4C0, &qword_24A4B7E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFA0);
  }

  return result;
}

uint64_t sub_24A38D2E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A38D32C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A38D374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_24A38D3BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_24A38D420()
{
  result = qword_27EF3FDC0;
  if (!qword_27EF3FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDC0);
  }

  return result;
}

unint64_t sub_24A38D484()
{
  result = qword_27EF3FDD8;
  if (!qword_27EF3FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDD8);
  }

  return result;
}

uint64_t sub_24A38D4D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 240))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A38D52C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v27 - v8 + 24;
  v10 = sub_24A3C9CEC(&qword_27EF400B8, &qword_24A4BB7F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12 + 24;
  v14 = sub_24A4AAC30();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_24A38D9BC(a2, v9);
  v15 = type metadata accessor for FMFServerInteractionController();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = a1;
  result = sub_24A38DE5C(v13, a1, v9);
  v20 = result;
  if (qword_27EF3EC28 != -1)
  {
    result = swift_once();
  }

  if (byte_27EF40928 == 1)
  {
    v27[3] = v15;
    v27[4] = &off_285D8A048;
    v27[0] = v20;

    v21 = sub_24A3D8E88(v18, v27);
    sub_24A37EEE0(v27);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v22 = sub_24A4AB630();
    sub_24A378E18(v22, qword_27EF4E260);
    v23 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24A376000, v23, v24, "FMFManager: Entering Demo Mode", v25, 2u);
      MEMORY[0x24C219130](v25, -1, -1);
    }

    a3[3] = type metadata accessor for FMFDemoInteractionController();
    a3[4] = &off_285D86E80;

    v20 = v21;
  }

  else
  {
    a3[3] = v15;
    a3[4] = &off_285D8A048;
  }

  *a3 = v20;
  return result;
}

unint64_t sub_24A38D94C()
{
  result = qword_27EF3FDE8;
  if (!qword_27EF3FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDE8);
  }

  return result;
}

__n128 sub_24A38D9A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A38D9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FMFServerInteractionController()
{
  result = qword_27EF407D0;
  if (!qword_27EF407D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFMyInfo.encode(to:)(void *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF40EB0, &qword_24A4BD2C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v20 = v1[2];
  v21 = v9;
  v12 = v1[5];
  v18 = v1[4];
  v19 = v11;
  v17[0] = v1[6];
  v17[1] = v12;
  v24 = *(v1 + 56);
  v13 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3850E8();

  sub_24A4AC3D0();
  v22 = v10;
  v25 = 0;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  sub_24A382908(&qword_27EF3F3F0);
  sub_24A4AC1F0();
  if (v2)
  {
  }

  else
  {
    v15 = v18;
    v14 = v19;

    LOBYTE(v22) = 1;
    sub_24A4AC1B0();
    v22 = v14;
    v23 = v15;
    v25 = 2;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    sub_24A38D258();
    sub_24A4AC1F0();
    LOBYTE(v22) = 3;
    sub_24A4AC1B0();
    LOBYTE(v22) = 4;
    sub_24A4AC1C0();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_24A38DD1C()
{
  sub_24A37ECA0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_24A4AAAD0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24A38DE5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v56 = a2;
  v57 = a3;
  v58 = a1;
  v5 = (*(*(sub_24A3C9CEC(&qword_27EF400B8, &qword_24A4BB7F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v55 = &v48 - v6;
  v7 = sub_24A4ABD50();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20]();
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_24A4ABD10() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = *(*(sub_24A4AB6E0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_24A4AAB20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v4 + qword_27EF40798);
  sub_24A4AAB10();
  v18 = sub_24A4AAAF0();
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  *v17 = v18;
  v17[1] = v20;
  v51 = qword_27EF407A0;
  swift_unknownObjectWeakInit();
  v21 = qword_27EF407A8;
  v50 = qword_27EF407A8;
  v22 = sub_24A4AAC50();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v4 + v21) = sub_24A4AAC40();
  v49 = qword_27EF407B0;
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  v59 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v53 + 104))(v52, *MEMORY[0x277D85260], v54);
  *(v4 + v49) = sub_24A4ABD90();
  *(v4 + qword_27EF407C0) = 0;
  sub_24A4AAAC0();
  *(v4 + qword_27EF4E298 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27EF4E2A0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27EF4E2A8) = 0;
  *(v4 + qword_27EF4E2B0) = 0;
  v25 = v4 + qword_27EF407C8;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  swift_unknownObjectWeakAssign();
  sub_24A37B740(v57, v4 + qword_27EF407B8, &qword_27EF3F650, &qword_24A4B5A10);
  v26 = *(v4 + v50);
  sub_24A37B740(v58, v55, &qword_27EF400B8, &qword_24A4BB7F0);

  v27 = sub_24A4AAC80();
  v28 = qword_27EF3EBF8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = sub_24A4AB630();
  sub_24A378E18(v29, qword_27EF4E260);
  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v59 = v33;
    *v32 = 136315138;
    v34 = *(v27 + qword_27EF40798);
    v35 = *(v27 + qword_27EF40798 + 8);

    v36 = sub_24A37E99C(0xCuLL, v34, v35);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v43 = MEMORY[0x24C217CD0](v36, v38, v40, v42);
    v45 = v44;

    v46 = sub_24A37BD58(v43, v45, &v59);

    *(v32 + 4) = v46;
    _os_log_impl(&dword_24A376000, v30, v31, "FMFServerInteractionController<%s>.init", v32, 0xCu);
    sub_24A37EEE0(v33);
    MEMORY[0x24C219130](v33, -1, -1);
    MEMORY[0x24C219130](v32, -1, -1);
  }

  sub_24A37EF2C(v57, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A37EF2C(v58, &qword_27EF400B8, &qword_24A4BB7F0);
  return v27;
}

unint64_t sub_24A38E4D4()
{
  result = qword_27EF3FDF8;
  if (!qword_27EF3FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDF8);
  }

  return result;
}

uint64_t sub_24A38E528(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A3A357C;

  return sub_24A38EE88(a1, v5);
}