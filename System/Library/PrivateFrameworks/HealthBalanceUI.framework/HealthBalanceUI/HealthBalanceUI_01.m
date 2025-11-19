void sub_1CFE60684()
{
  if (!qword_1EDEC19B8)
  {
    sub_1CFE60164();
    sub_1CFE60594(&qword_1EDEC20F8, sub_1CFE60164);
    v0 = sub_1CFF0DFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC19B8);
    }
  }
}

void sub_1CFE60718()
{
  if (!qword_1EDEC1F18)
  {
    sub_1CFE60684();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1F18);
    }
  }
}

void sub_1CFE607AC()
{
  if (!qword_1EDEC1A68)
  {
    sub_1CFE60A50(255, &qword_1EDEC16D0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = sub_1CFF0DA4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1A68);
    }
  }
}

void sub_1CFE60828()
{
  if (!qword_1EDEC20B8)
  {
    sub_1CFE60164();
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC20B8);
    }
  }
}

void sub_1CFE60890()
{
  if (!qword_1EDEC2088)
  {
    sub_1CFE601C8();
    sub_1CFE608FC();
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2088);
    }
  }
}

unint64_t sub_1CFE608FC()
{
  result = qword_1EDEC1C38;
  if (!qword_1EDEC1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1C38);
  }

  return result;
}

uint64_t sub_1CFE60950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFE609B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1CFE60A50(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1CFF0D62C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CFE60A50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFE60AA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFF0C7AC();
    v7 = sub_1CFE60594(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFE60B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE60BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BalanceWidgetAccessoryRectangularTitleView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFE5F698(a1, v6, a2);
}

unint64_t sub_1CFE60C24()
{
  result = qword_1EDEC17B0;
  if (!qword_1EDEC17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC17B0);
  }

  return result;
}

uint64_t sub_1CFE60C78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1CFE60C88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE60A50(255, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFE60CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1CFE60D50()
{
  result = qword_1EDEC1D20;
  if (!qword_1EDEC1D20)
  {
    v1 = MEMORY[0x1E69E6370];
    sub_1CFE609B8(255, &qword_1EDEC1D18, sub_1CFE60778, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
    sub_1CFE60E1C();
    sub_1CFE5ED80(&qword_1EDEC1A80, &qword_1EDEC1A78, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D20);
  }

  return result;
}

unint64_t sub_1CFE60E1C()
{
  result = qword_1EDEC1DF0;
  if (!qword_1EDEC1DF0)
  {
    sub_1CFE60778(255);
    sub_1CFE60ECC();
    sub_1CFE60594(&qword_1EDEC1A70, sub_1CFE607AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1DF0);
  }

  return result;
}

unint64_t sub_1CFE60ECC()
{
  result = qword_1EDEC1F20;
  if (!qword_1EDEC1F20)
  {
    sub_1CFE60718();
    sub_1CFE60594(&qword_1EDEC19C0, sub_1CFE60684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F20);
  }

  return result;
}

id SettingsModelProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E696C178]) initWithFeatureIdentifier:*MEMORY[0x1E696B8C0] healthStore:a1 currentCountryCode:0];
  sub_1CFF0C98C();
  v5 = sub_1CFF0C97C();
  v6 = sub_1CFE62334(v4, v5, objc_allocWithZone(v2));

  return v6;
}

uint64_t sub_1CFE61024(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CFE627C4();
    sub_1CFF0C8CC();
  }

  return result;
}

uint64_t sub_1CFE6129C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFE627C4();
  sub_1CFF0C8DC();

  return *(v2 + *a2);
}

uint64_t sub_1CFE61320@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CFE627C4();
  sub_1CFF0C8DC();

  *a3 = *(v5 + *a2);
  return result;
}

BOOL SettingsModelProvider.settingsUserInteractionDisabled.getter()
{
  swift_getKeyPath();
  sub_1CFE627C4();
  sub_1CFF0C8DC();

  return (*(v0 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled) & 1) == 0;
}

uint64_t SettingsModelProvider.sleepingSampleChangeNotificationsEnabled.getter()
{
  v1 = sub_1CFF0C94C();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1CFE627C4();
  sub_1CFF0C8DC();

  return *(v0 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled);
}

uint64_t (*SettingsModelProvider.sleepingSampleChangeNotificationsEnabled.modify(uint64_t a1))()
{
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider_settings);
  v3 = sub_1CFF0C94C();
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v4 = 0;
  }

  else
  {
    swift_getKeyPath();
    *a1 = v1;
    sub_1CFE627C4();
    sub_1CFF0C8DC();

    v4 = *(v1 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled);
  }

  *(a1 + 16) = v4;
  return sub_1CFE61600;
}

uint64_t SettingsModelProvider.notificationsEnabled.getter()
{
  sub_1CFF0E6DC();
  v1 = v0;
  v2 = sub_1CFF0E6CC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v1;
  v5 = v1;
  v6 = sub_1CFF0E6CC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  sub_1CFF0E02C();
  return v9;
}

uint64_t sub_1CFE6171C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1CFF0C94C();
  if (v4 == 2 || (v4 & 1) == 0)
  {

    v5 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1CFE627C4();
    sub_1CFF0C8DC();

    v5 = *(a1 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1CFE61838()
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFF0C95C();
}

uint64_t sub_1CFE618F0(void *a1, uint64_t a2, uint64_t a3)
{
  v39[1] = a3;
  v5 = sub_1CFF0D03C();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFF0CFBC();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  v39[2] = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1;
  sub_1CFF0CFCC();
  v11 = sub_1CFF0CFDC();
  v12 = [v11 isRequirementSatisfiedWithIdentifier_];

  v13 = v12 ^ 1;
  if ((v12 ^ 1) == *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__isAgeGated))
  {
    *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__isAgeGated) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v39[0] = v39;
    MEMORY[0x1EEE9AC00](KeyPath);
    v39[-2] = a2;
    LOBYTE(v39[-1]) = v13;
    v45 = a2;
    sub_1CFE627C4();
    sub_1CFF0C8CC();
  }

  v15 = sub_1CFF0CFDC();
  v16 = [v15 areAllRequirementsSatisfied];

  if (v16 == *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__onboardingEligible))
  {
    *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__onboardingEligible) = v16;
  }

  else
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v39[-2] = a2;
    LOBYTE(v39[-1]) = v16;
    v45 = a2;
    sub_1CFE627C4();
    sub_1CFF0C8CC();
  }

  v18 = sub_1CFF0CFDC();
  v19 = [v18 areAllRequirementsSatisfied];

  if (v19 == *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsVisible))
  {
    *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsVisible) = v19;
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v20);
    v39[-2] = a2;
    LOBYTE(v39[-1]) = v19;
    v45 = a2;
    sub_1CFE627C4();
    sub_1CFF0C8CC();
  }

  v21 = sub_1CFF0CFDC();
  v22 = [v21 areAllRequirementsSatisfied];

  if (v22 == *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled))
  {
    *(a2 + OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled) = v22;
  }

  else
  {
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    v39[-2] = a2;
    LOBYTE(v39[-1]) = v22;
    v45 = a2;
    sub_1CFE627C4();
    sub_1CFF0C8CC();
  }

  v24 = v44;
  sub_1CFF0D01C();
  v25 = v10;
  v26 = sub_1CFF0D02C();
  v27 = sub_1CFF0E7EC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45 = v29;
    *v28 = 136446466;
    v30 = sub_1CFF0ED2C();
    v32 = sub_1CFE462A4(v30, v31, &v45);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = [v25 debugDescription];
    v34 = sub_1CFF0E59C();
    v36 = v35;

    v37 = sub_1CFE462A4(v34, v36, &v45);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1CFE44000, v26, v27, "[%{public}s] Did update feature status: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D387A160](v29, -1, -1);
    MEMORY[0x1D387A160](v28, -1, -1);

    (*(v42 + 8))(v44, v43);
  }

  else
  {

    (*(v42 + 8))(v24, v43);
  }

  (*(v40 + 8))(v9, v41);
}

uint64_t sub_1CFE61FC4(uint64_t a1, uint64_t a2)
{
  sub_1CFF0E6CC();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1CFE62A18();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1CFF0E96C();
    MEMORY[0x1D3879330](0xD00000000000003FLL, 0x80000001CFF14E70);
    v8 = sub_1CFF0ED2C();
    MEMORY[0x1D3879330](v8);

    MEMORY[0x1D3879330](46, 0xE100000000000000);
    result = sub_1CFF0EA2C();
    __break(1u);
  }

  return result;
}

id SettingsModelProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SettingsModelProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFE62334(void *a1, uint64_t a2, _BYTE *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v7 = sub_1CFF0D03C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__onboardingEligible] = 0;
  a3[OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__isAgeGated] = 0;
  a3[OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsVisible] = 1;
  a3[OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider__settingsUserInteractionEnabled] = 0;
  sub_1CFF0C90C();
  *&a3[OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider_featureStatusManager] = a1;
  *&a3[OBJC_IVAR____TtC15HealthBalanceUI21SettingsModelProvider_settings] = a2;
  v39.receiver = a3;
  v39.super_class = ObjectType;
  v11 = a1;

  v12 = objc_msgSendSuper2(&v39, sel_init);
  sub_1CFE62B04(0, &qword_1EDEC16B8);
  v13 = v12;
  v14 = sub_1CFF0E84C();
  [v11 registerObserver:v13 queue:v14];

  v40[0] = 0;
  v15 = [v11 featureStatusWithError_];
  v16 = v40[0];
  if (v15)
  {
    v17 = v15;
    v18 = v11;
    v19 = v16;
    sub_1CFE62744(v17, v13, sub_1CFE62B4C);
  }

  else
  {
    v20 = v40[0];
    v21 = sub_1CFF0C5FC();

    swift_willThrow();
    sub_1CFF0D01C();
    v22 = v21;
    v23 = sub_1CFF0D02C();
    v24 = sub_1CFF0E7CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v7;
      v27 = v26;
      v36 = swift_slowAlloc();
      v40[0] = v36;
      *v25 = 136446466;
      v28 = sub_1CFF0ED2C();
      v30 = sub_1CFE462A4(v28, v29, v40);
      v37 = v8;
      v31 = v30;

      *(v25 + 4) = v31;
      *(v25 + 12) = 2114;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1CFE44000, v23, v24, "[%{public}s] Failed to fetch initial status: %{public}@", v25, 0x16u);
      sub_1CFE62A40(v27);
      MEMORY[0x1D387A160](v27, -1, -1);
      v34 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1D387A160](v34, -1, -1);
      MEMORY[0x1D387A160](v25, -1, -1);

      (*(v37 + 8))(v10, v38);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  return v13;
}

uint64_t sub_1CFE62744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_1CFF0E6DC();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = ObjectType;
  return sub_1CFE61FC4(a3, v8);
}

unint64_t sub_1CFE627C4()
{
  result = qword_1EC512248;
  if (!qword_1EC512248)
  {
    type metadata accessor for SettingsModelProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512248);
  }

  return result;
}

uint64_t type metadata accessor for SettingsModelProvider()
{
  result = qword_1EC5122E8;
  if (!qword_1EC5122E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CFE628C8()
{
  result = sub_1CFF0C91C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFE62A40(uint64_t a1)
{
  sub_1CFE62A9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE62A9C()
{
  if (!qword_1EDEC1680)
  {
    sub_1CFE62B04(255, &qword_1EDEC4A28);
    v0 = sub_1CFF0E8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1680);
    }
  }
}

uint64_t sub_1CFE62B04(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15HealthBalanceUI25OvernightMetricsChartSpecV18BaselineBandColorsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CFE62BF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 281))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 280);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CFE62C38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 281) = 0;
    }

    if (a2)
    {
      *(result + 280) = -a2;
    }
  }

  return result;
}

void sub_1CFE62CE0()
{
  type metadata accessor for OvernightMetricsAxisConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_1CFE6A0C4(319, &qword_1EDEC2B38, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1CFE6A0C4(319, &qword_1EDEC2118, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1CFE696E4(319, &qword_1EDEC2110, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1CFE62E28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1CFF0C7AC() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(sub_1CFF0C89C() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v10 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = ((v7 + v8) & ~v8) + v7;
  if (a2 <= v12)
  {
    goto LABEL_29;
  }

  v17 = *(v13 + 80) & 0xF8 | 7;
  v18 = v14 + ((((*(v10 + 64) + ((v15 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + v17 + 281) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v12 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_29:
      v24 = ((a1 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8);
      if (v11 > 0x7FFFFFFE)
      {
        v26 = *(v10 + 48);

        return v26((v24 + v15 + 72) & ~v15, v11, v9);
      }

      else
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_29;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v12 + (v18 | v23) + 1;
}

void sub_1CFE63130(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1CFF0C7AC() - 8);
  v9 = ((*(v8 + 64) + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v27 = v11;
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(sub_1CFF0C89C() - 8);
  v15 = 8;
  if (*(v14 + 64) > 8uLL)
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v11 + 80);
  v17 = *(v14 + 80) & 0xF8 | 7;
  v18 = v15 + ((((*(v11 + 64) + ((v16 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 72) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + v17 + 281) & ~v17) + 1;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 < a2)
  {
    v20 = ~v13 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_48:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v25 = &a1[((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16] & 0xFFFFFFFFFFFFFFF8;
  if (v12 > 0x7FFFFFFE)
  {
    v26 = *(v27 + 56);

    v26((v25 + v16 + 72) & ~v16, a2, v12, v10);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(v25 + 64) = 0;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *v25 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v25 = a2;
  }
}

uint64_t sub_1CFE6352C@<X0>(const void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1CFF0D80C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = SleepingSampleDataType.preferredImage.getter();
  memcpy(v18, a1, sizeof(v18));
  memcpy(v19, a1, 0x119uLL);
  if (sub_1CFE69B14(v19) == 1)
  {
    nullsub_1(v19);
    memcpy(v16, v18, 0x119uLL);
    v9 = nullsub_1(v16);
    memcpy(v17, v9, sizeof(v17));
    sub_1CFE699E4(a1, v15);
  }

  else
  {
    nullsub_1(v19);
    memcpy(v16, v18, 0x119uLL);
    v14[1] = *nullsub_1(v16);
    sub_1CFE699E4(a1, v15);
    sub_1CFF0E7DC();
    v10 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFE69B1C(a1);
    (*(v5 + 8))(v7, v4);
  }

  memcpy(v16, v17, 0x118uLL);
  v11 = v16[33];

  sub_1CFE583D0(v16);

  KeyPath = swift_getKeyPath();

  *a2 = v8;
  a2[1] = KeyPath;
  a2[2] = v11;
  return result;
}

uint64_t sub_1CFE63818@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, 0x119uLL);
  *a1 = sub_1CFF0E0EC();
  a1[1] = v3;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE69578();
  v7 = sub_1CFF0CB1C();
  swift_getKeyPath();
  v4 = swift_allocObject();
  memcpy((v4 + 16), __dst, 0x119uLL);
  sub_1CFE699E4(__dst, v6);
  sub_1CFE696E4(0, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
  sub_1CFE69748();
  sub_1CFE69824();
  sub_1CFE69ACC(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  sub_1CFE69A1C();
  sub_1CFF0E06C();
}

uint64_t sub_1CFE639F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1CFF0D80C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 44);
  memcpy(v18, (v2 + v9), 0x119uLL);
  memcpy(v19, (v2 + v9), 0x119uLL);
  if (sub_1CFE69B14(v19) == 1)
  {
    nullsub_1(v19);
    memcpy(v16, v18, 0x119uLL);
    v10 = nullsub_1(v16);
    memcpy(a2, v10, 0x118uLL);
    memcpy(v17, v18, 0x119uLL);
    v11 = nullsub_1(v17);
    return sub_1CFE55370(v11, &v15);
  }

  else
  {
    nullsub_1(v19);
    memcpy(v16, v18, 0x119uLL);
    nullsub_1(v16);
    memcpy(v17, v18, 0x119uLL);
    nullsub_1(v17);

    sub_1CFF0E7DC();
    v13 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFE69D2C(v18, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFE6A0C4);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1CFE63C3C@<X0>(void (*a1)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v102 = a1;
  sub_1CFE69B4C();
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x1E695B2F8];
  v111 = MEMORY[0x1E69E6720];
  sub_1CFE696E4(0, &qword_1EDEC2198, MEMORY[0x1E695B2F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v71 - v7;
  v8 = sub_1CFF0D28C();
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0D27C();
  v99 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_1CFF0D97C();
  WitnessTable = swift_getWitnessTable();
  v125 = v12;
  v126 = v10;
  v14 = v12;
  v87 = v12;
  v15 = v10;
  v90 = v10;
  v91 = v8;
  v127 = v8;
  v128 = WitnessTable;
  v16 = WitnessTable;
  v92 = WitnessTable;
  v17 = MEMORY[0x1E695B1F0];
  v129 = MEMORY[0x1E695B1D8];
  v130 = MEMORY[0x1E695B1F0];
  v18 = MEMORY[0x1E695B1D8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v89 = &v71 - v20;
  v125 = v14;
  v126 = v15;
  v127 = v8;
  v128 = v16;
  v129 = v18;
  v130 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = OpaqueTypeMetadata2;
  v126 = OpaqueTypeConformance2;
  v22 = OpaqueTypeMetadata2;
  v84 = OpaqueTypeMetadata2;
  v23 = OpaqueTypeConformance2;
  v86 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeMetadata2();
  v107 = v24;
  v95 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v71 - v25;
  v125 = v22;
  v126 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v109 = v26;
  v108 = sub_1CFE69BE0();
  v125 = v24;
  v126 = v112;
  v127 = v26;
  v128 = v108;
  v80 = MEMORY[0x1E695B350];
  v110 = swift_getOpaqueTypeMetadata2();
  v94 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v81 = a2;
  v82 = &v71 - v27;
  v88 = *(a2 + 16);
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v83 = *(a2 + 24);
  v124[4] = v83;
  v124[5] = MEMORY[0x1E697E5C0];
  v124[2] = swift_getWitnessTable();
  v124[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1CFF0D1DC();
  v28 = sub_1CFF0E8AC();
  v124[6] = v28;
  sub_1CFE69C50();
  v124[7] = v29;
  sub_1CFF0D08C();
  v123[5] = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v124[0] = v106;
  v124[1] = sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
  v123[4] = v124;
  v78 = MEMORY[0x1E695B000];
  swift_getWitnessTable();
  v30 = sub_1CFF0D38C();
  v31 = sub_1CFF0D9AC();
  v32 = swift_getWitnessTable();
  v125 = v31;
  v126 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v76 = v33;
  v79 = MEMORY[0x1E695B2D0];
  v34 = swift_getWitnessTable();
  v125 = v31;
  v126 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v125 = v30;
  v126 = v33;
  v127 = v34;
  v128 = v35;
  v124[8] = swift_getOpaqueTypeMetadata2();
  v124[9] = v30;
  sub_1CFF0D08C();
  sub_1CFF0D25C();
  v123[2] = v28;
  sub_1CFE69CE4(255);
  v123[3] = v36;
  sub_1CFF0D08C();
  v123[0] = v106;
  v123[1] = sub_1CFE69ACC(&qword_1EDEC2238, sub_1CFE69CE4);
  v122[2] = v123;
  swift_getWitnessTable();
  sub_1CFF0D38C();
  sub_1CFF0D25C();
  v106 = sub_1CFF0E8AC();
  v125 = v107;
  v126 = v112;
  v127 = v109;
  v128 = v108;
  v37 = swift_getOpaqueTypeConformance2();
  v77 = v37;
  v125 = v30;
  v126 = v76;
  v127 = v34;
  v128 = v35;
  v122[0] = swift_getOpaqueTypeConformance2();
  v122[1] = v34;
  v121 = v122;
  v119 = swift_getWitnessTable();
  v120 = v34;
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v117 = v38;
  v118 = v39;
  v116 = swift_getWitnessTable();
  v40 = v106;
  v76 = swift_getWitnessTable();
  v125 = v110;
  v126 = v40;
  v127 = v37;
  v128 = v76;
  v78 = MEMORY[0x1E695B308];
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = *(v41 - 8);
  v79 = v41;
  v80 = v42;
  MEMORY[0x1EEE9AC00](v41);
  v74 = &v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v75 = &v71 - v45;
  v46 = v93;
  sub_1CFF0D06C();
  v47 = v97;
  sub_1CFF0D26C();
  v48 = sub_1CFF0D3DC();
  v49 = *(v48 - 8);
  v72 = *(v49 + 56);
  v73 = v49 + 56;
  v50 = v98;
  v72(v98, 1, 1, v48);
  swift_checkMetadataState();
  v51 = v89;
  v52 = v90;
  v53 = v91;
  sub_1CFF0DCBC();
  v102 = sub_1CFE696E4;
  v54 = v101;
  sub_1CFE69D2C(v50, &qword_1EDEC2198, v101, v111, sub_1CFE696E4);
  (*(v100 + 8))(v47, v53);
  (*(v99 + 8))(v46, v52);
  v55 = v84;
  v56 = v85;
  sub_1CFF0DC8C();
  (*(v96 + 8))(v51, v55);
  v57 = v103;
  v58 = v104;
  sub_1CFE648F8(v103);
  v72(v50, 1, 1, v48);
  v59 = v82;
  v60 = v107;
  sub_1CFF0DC9C();
  sub_1CFE69D2C(v50, &qword_1EDEC2198, v54, v111, v102);
  sub_1CFE69F00(v57, sub_1CFE69B4C);
  (*(v95 + 8))(v56, v60);
  v113 = v88;
  v114 = v83;
  v115 = v58;
  v61 = swift_checkMetadataState();
  v62 = v74;
  v63 = v110;
  v65 = v76;
  v64 = v77;
  sub_1CFF0DC7C();
  (*(v94 + 8))(v59, v63);
  v125 = v63;
  v126 = v61;
  v127 = v64;
  v128 = v65;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v75;
  v68 = v79;
  sub_1CFE7C9C4(v62, v79, v66);
  v69 = *(v80 + 8);
  v69(v62, v68);
  sub_1CFE7C9C4(v67, v68, v66);
  return (v69)(v67, v68);
}

uint64_t sub_1CFE648F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OvernightMetricsAxisConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE69D98(v2, v12, type metadata accessor for OvernightMetricsAxisConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFE69F60(v12, v6, type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration);
    sub_1CFE69D98(v6, a1, sub_1CFE69B4C);
    v13 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration;
    v14 = v6;
  }

  else
  {
    sub_1CFE69F60(v12, v9, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration);
    sub_1CFE69D98(v9, a1, sub_1CFE69B4C);
    v13 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration;
    v14 = v9;
  }

  return sub_1CFE69F00(v14, v13);
}

uint64_t sub_1CFE64AF0@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a1;
  v59 = a4;
  v54 = a2;
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v55 = a3;
  v87[4] = a3;
  v87[5] = MEMORY[0x1E697E5C0];
  v87[2] = swift_getWitnessTable();
  v87[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1CFF0D1DC();
  v5 = sub_1CFF0E8AC();
  v87[6] = v5;
  sub_1CFE69C50();
  v87[7] = v6;
  sub_1CFF0D08C();
  v86[5] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v87[0] = WitnessTable;
  v87[1] = sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
  v86[4] = v87;
  swift_getWitnessTable();
  v8 = sub_1CFF0D38C();
  sub_1CFF0D9AC();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = swift_getWitnessTable();
  v83[0] = v8;
  v83[1] = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v83[2] = v10;
  v83[3] = OpaqueTypeConformance2;
  v87[8] = swift_getOpaqueTypeMetadata2();
  v87[9] = v8;
  v60 = sub_1CFF0D08C();
  v11 = sub_1CFF0D25C();
  v86[2] = v5;
  sub_1CFE69CE4(255);
  v86[3] = v12;
  sub_1CFF0D08C();
  v86[0] = WitnessTable;
  v86[1] = sub_1CFE69ACC(&qword_1EDEC2238, sub_1CFE69CE4);
  v85 = v86;
  swift_getWitnessTable();
  v13 = v11;
  v14 = sub_1CFF0D38C();
  v15 = sub_1CFF0D25C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v46 - v20;
  v22 = v21;
  v58 = sub_1CFF0E8AC();
  v53 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v52 = &v46 - v25;
  sub_1CFF0E6DC();
  v57 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for OvernightMetricsAxisStyle();
  sub_1CFE639F8(v26, v83);
  sub_1CFE583D0(v83);
  v49 = v14;
  v50 = v13;
  v48 = v8;
  if (v84 == 1)
  {
    sub_1CFE653D0(v26, v18);
    v79 = v8;
    v80 = v62;
    v81 = v10;
    v82 = OpaqueTypeConformance2;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = v10;
    v67 = &v79;
    v65 = swift_getWitnessTable();
    v66 = v10;
    v27 = swift_getWitnessTable();
    v28 = swift_getWitnessTable();
    v63 = v27;
    v64 = v28;
    swift_getWitnessTable();
    v29 = *(v16 + 16);
    v30 = v47;
    v29(v47, v18, v22);
    v31 = *(v16 + 8);
    v31(v18, v22);
    v29(v18, v30, v22);
    v31(v30, v22);
    v32 = v51;
    (*(v16 + 32))(v51, v18, v22);
    (*(v16 + 56))(v32, 0, 1, v22);
    v34 = v52;
    v33 = v53;
    v35 = *(v53 + 16);
    v36 = v52;
    v37 = v32;
  }

  else
  {
    v38 = v51;
    (*(v16 + 56))();
    v79 = v8;
    v80 = v62;
    v81 = v10;
    v82 = OpaqueTypeConformance2;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = v10;
    v78 = &v79;
    v76 = swift_getWitnessTable();
    v77 = v10;
    v39 = swift_getWitnessTable();
    v40 = swift_getWitnessTable();
    v74 = v39;
    v75 = v40;
    swift_getWitnessTable();
    v34 = v52;
    v33 = v53;
    v35 = *(v53 + 16);
    v36 = v52;
    v32 = v38;
    v37 = v38;
  }

  v41 = v58;
  v56 = v35;
  v35(v36, v37, v58);
  v42 = *(v33 + 8);
  v42(v32, v41);
  v79 = v48;
  v80 = v62;
  v81 = v10;
  v82 = OpaqueTypeConformance2;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v10;
  v73 = &v79;
  v71 = swift_getWitnessTable();
  v72 = v10;
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v69 = v43;
  v70 = v44;
  v68 = swift_getWitnessTable();
  swift_getWitnessTable();
  v56(v59, v34, v41);
  v42(v34, v41);
}

uint64_t sub_1CFE653D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v3 = sub_1CFF0D22C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v182 = (&v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = a1;
  v5 = *(a1 - 8);
  a1 -= 8;
  v181 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v179 = v7;
  v180 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFF0D1BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = *(a1 + 24);
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v201 = *(a1 + 32);
  v215[4] = v201;
  v215[5] = MEMORY[0x1E697E5C0];
  v215[2] = swift_getWitnessTable();
  v215[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1CFF0D1DC();
  v10 = sub_1CFF0E8AC();
  v215[6] = v10;
  sub_1CFE69CE4(255);
  v215[7] = v11;
  v12 = sub_1CFF0D08C();
  v214[3] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v215[0] = WitnessTable;
  v215[1] = sub_1CFE69ACC(&qword_1EDEC2238, sub_1CFE69CE4);
  v214[2] = v215;
  v174 = swift_getWitnessTable();
  v175 = v12;
  v196 = sub_1CFF0D38C();
  v178 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v177 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v158 - v16;
  v17 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0);
  v18 = *(v17 - 8);
  v170 = v17;
  v171 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v172 = v19;
  v173 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v158 - v21;
  v213[2] = v10;
  sub_1CFE69C50();
  v213[3] = v22;
  sub_1CFF0D08C();
  v213[0] = WitnessTable;
  v213[1] = sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
  v212[43] = v213;
  swift_getWitnessTable();
  v23 = sub_1CFF0D38C();
  v24 = sub_1CFF0D9AC();
  v25 = swift_getWitnessTable();
  v212[0] = v24;
  v212[1] = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = swift_getWitnessTable();
  v212[0] = v24;
  v212[1] = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v212[0] = v23;
  v197 = OpaqueTypeConformance2;
  v198 = OpaqueTypeMetadata2;
  v212[1] = OpaqueTypeMetadata2;
  v194 = v27;
  v212[2] = v27;
  v212[3] = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  v214[0] = v29;
  v214[1] = v23;
  v30 = sub_1CFF0D08C();
  v163 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v162 = &v158 - v31;
  v32 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v207 = *(v32 - 8);
  v208 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v199 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v205 = &v158 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v158 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v158 - v39;
  v186 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v166 = &v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v158 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v160 = &v158 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v158 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v164 = &v158 - v51;
  v184 = v29;
  v185 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v161 = &v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v165 = &v158 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v183 = &v158 - v57;
  v191 = v30;
  v58 = sub_1CFF0D25C();
  v169 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v168 = &v158 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v158 - v61;
  v63 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v158 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OvernightMetricsAxisConfiguration(0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v158 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v58;
  v69 = sub_1CFF0D25C();
  v188 = *(v69 - 8);
  v189 = v69;
  MEMORY[0x1EEE9AC00](v69);
  v195 = &v158 - v70;
  v71 = v203;
  sub_1CFE69D98(v203, v68, type metadata accessor for OvernightMetricsAxisConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v207 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration;
    v72 = v68;
    v73 = v193;
    sub_1CFE69F60(v72, v193, type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration);
    sub_1CFF0D1AC();
    v208 = *(v73 + *(v170 + 20));
    v74 = v180;
    v75 = v181;
    v76 = v71;
    v77 = v204;
    (*(v181 + 16))(v180, v76, v204);
    v78 = v173;
    sub_1CFE69D98(v73, v173, type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration);
    v79 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v80 = (v179 + *(v171 + 80) + v79) & ~*(v171 + 80);
    v81 = swift_allocObject();
    v82 = v201;
    *(v81 + 16) = v202;
    *(v81 + 24) = v82;
    (*(v75 + 32))(v81 + v79, v74, v77);
    v187 = v23;
    sub_1CFE69F60(v78, v81 + v80, v207);
    sub_1CFF0C7AC();

    sub_1CFF0D21C();
    v83 = v177;
    sub_1CFF0D37C();
    v84 = v196;
    v208 = swift_getWitnessTable();
    v85 = v178;
    v86 = *(v178 + 16);
    v87 = v176;
    v86(v176, v83, v84);
    v88 = *(v85 + 8);
    v88(v83, v84);
    v86(v83, v87, v84);
    v212[0] = v23;
    v212[1] = v198;
    v89 = v194;
    v212[2] = v194;
    v212[3] = v197;
    v212[0] = swift_getOpaqueTypeConformance2();
    v212[1] = v89;
    v212[42] = v212;
    v212[40] = swift_getWitnessTable();
    v212[41] = v89;
    v90 = v190;
    swift_getWitnessTable();
    sub_1CFE675B8(v83, v90, v84);
    v88(v83, v84);
    v91 = v87;
    v92 = v187;
    v88(v91, v84);
    v93 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration;
    v94 = v193;
LABEL_35:
    sub_1CFE69F00(v94, v93);
    v151 = v192;
    v212[0] = v92;
    v212[1] = v198;
    v212[2] = v89;
    v212[3] = v197;
    v212[0] = swift_getOpaqueTypeConformance2();
    v212[1] = v89;
    v212[39] = v212;
    v212[37] = swift_getWitnessTable();
    v212[38] = v89;
    v152 = swift_getWitnessTable();
    v153 = swift_getWitnessTable();
    v212[35] = v152;
    v212[36] = v153;
    v154 = v189;
    swift_getWitnessTable();
    v155 = v188;
    v156 = v151;
    v157 = v195;
    (*(v188 + 16))(v156, v195, v154);
    return (*(v155 + 8))(v157, v154);
  }

  v159 = v45;
  v95 = v23;
  sub_1CFE69F60(v68, v65, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration);
  v96 = v204;
  sub_1CFE639F8(v204, v211);
  memcpy(v212, v211, 0x118uLL);
  result = sub_1CFE583D0(v212);
  v98 = *&v65[*(v63 + 20)];
  v99 = v96;
  v158 = v65;
  if (BYTE1(v212[25]) != 1)
  {
    v107 = v166;
    sub_1CFE66B4C(v98, v96, v166);
    v108 = v186;
    v109 = *(v186 + 16);
    v110 = v159;
    v109(v159, v107, v95);
    v111 = *(v108 + 8);
    v111(v107, v95);
    v109(v107, v110, v95);
    v112 = v198;
    v211[0] = v95;
    v211[1] = v198;
    v89 = v194;
    v211[2] = v194;
    v211[3] = v197;
    v113 = v197;
    v211[0] = swift_getOpaqueTypeConformance2();
    v211[1] = v89;
    v210[5] = v211;
    v114 = v191;
    swift_getWitnessTable();
    sub_1CFE675B8(v107, v114, v95);
    v111(v107, v95);
    v111(v159, v95);
    v115 = v62;
LABEL_34:
    v211[0] = v95;
    v211[1] = v112;
    v211[2] = v89;
    v211[3] = v113;
    v211[0] = swift_getOpaqueTypeConformance2();
    v211[1] = v89;
    v210[4] = v211;
    v210[2] = swift_getWitnessTable();
    v210[3] = v89;
    v145 = v190;
    swift_getWitnessTable();
    v146 = v169;
    v147 = v95;
    v148 = v168;
    (*(v169 + 16))(v168, v115, v145);
    swift_getWitnessTable();
    sub_1CFE674D8(v148, v145);
    v149 = *(v146 + 8);
    v150 = v148;
    v92 = v147;
    v149(v150, v145);
    v149(v115, v145);
    v93 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration;
    v94 = v158;
    goto LABEL_35;
  }

  v193 = v62;
  v187 = v95;
  v206 = *(v98 + 16);
  if (v206)
  {
    v100 = 0;
    v101 = MEMORY[0x1E69E7CC0];
    while (v100 < *(v98 + 16))
    {
      v102 = (*(v207 + 80) + 32) & ~*(v207 + 80);
      v103 = *(v207 + 9);
      sub_1CFE69D98(v98 + v102 + v103 * v100, v40, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      sub_1CFF0E6DC();
      sub_1CFF0E6CC();
      sub_1CFF0E66C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v40[*(v208 + 36)] == 1)
      {
        sub_1CFE69F60(v40, v200, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v211[0] = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFEF3DC4(0, *(v101 + 16) + 1, 1);
          v101 = v211[0];
        }

        v106 = *(v101 + 16);
        v105 = *(v101 + 24);
        if (v106 >= v105 >> 1)
        {
          sub_1CFEF3DC4(v105 > 1, v106 + 1, 1);
          v101 = v211[0];
        }

        *(v101 + 16) = v106 + 1;
        result = sub_1CFE69F60(v200, v101 + v102 + v106 * v103, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      }

      else
      {
        result = sub_1CFE69F00(v40, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      }

      v99 = v204;
      if (v206 == ++v100)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v101 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v116 = v164;
  sub_1CFE66B4C(v101, v99, v164);

  v201 = &v158;
  MEMORY[0x1EEE9AC00](v117);
  v118 = swift_checkMetadataState();
  v119 = v165;
  v120 = v187;
  v121 = v194;
  v122 = v197;
  sub_1CFF0D05C();
  v123 = *(v186 + 8);
  v200 = v186 + 8;
  v202 = v123;
  v123(v116, v120);
  v211[0] = v120;
  v211[1] = v118;
  v211[2] = v121;
  v211[3] = v122;
  v181 = swift_getOpaqueTypeConformance2();
  v124 = v184;
  v125 = v185;
  v179 = *(v185 + 16);
  v180 = (v185 + 16);
  v179(v183, v119, v184);
  v126 = *(v125 + 8);
  v185 = v125 + 8;
  v182 = v126;
  result = (v126)(v119, v124);
  if (!v206)
  {
    v128 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v135 = v160;
    sub_1CFE66B4C(v128, v204, v160);

    v95 = v187;
    v136 = *(v186 + 16);
    v137 = v167;
    v136(v167, v135, v187);
    v138 = v202;
    v202(v135, v95);
    v139 = v161;
    v179(v161, v183, v184);
    v211[0] = v139;
    v140 = v159;
    v136(v159, v137, v95);
    v211[1] = v140;
    v89 = v194;
    v210[0] = v181;
    v210[1] = v194;
    v141 = v162;
    sub_1CFE685E8(v211, 2uLL, v214, v162);
    v138(v140, v95);
    v142 = v184;
    v143 = v182;
    v182(v139, v184);
    v209 = v210;
    v144 = v191;
    swift_getWitnessTable();
    v115 = v193;
    sub_1CFE674D8(v141, v144);
    (*(v163 + 8))(v141, v144);
    v202(v167, v95);
    v143(v183, v142);
    v113 = v197;
    v112 = v198;
    goto LABEL_34;
  }

  v127 = 0;
  v128 = MEMORY[0x1E69E7CC0];
  v129 = v205;
  while (v127 < *(v98 + 16))
  {
    v130 = (*(v207 + 80) + 32) & ~*(v207 + 80);
    v131 = *(v207 + 9);
    sub_1CFE69D98(v98 + v130 + v131 * v127, v129, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
    sub_1CFF0E6DC();
    sub_1CFF0E6CC();
    sub_1CFF0E66C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v129 = v205;
    if (*(v205 + *(v208 + 36)))
    {
      result = sub_1CFE69F00(v205, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
    }

    else
    {
      sub_1CFE69F60(v205, v199, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v211[0] = v128;
      if ((v132 & 1) == 0)
      {
        sub_1CFEF3DC4(0, *(v128 + 16) + 1, 1);
        v129 = v205;
        v128 = v211[0];
      }

      v134 = *(v128 + 16);
      v133 = *(v128 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_1CFEF3DC4(v133 > 1, v134 + 1, 1);
        v129 = v205;
        v128 = v211[0];
      }

      *(v128 + 16) = v134 + 1;
      result = sub_1CFE69F60(v199, v128 + v130 + v134 * v131, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
    }

    if (v206 == ++v127)
    {
      goto LABEL_33;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1CFE66B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v8 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFF0C7AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFF0D22C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v46 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v40 = v18;
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFF0D1BC();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v45 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D1AC();
  v21 = *(a1 + 16);
  v47 = a3;
  v43 = v11;
  if (v21)
  {
    v38 = v4;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1CFEF3C74(0, v21, 0);
    v22 = v54;
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v39 = a1;
    v24 = a1 + v23;
    v25 = *(v8 + 72);
    v48 = v12 + 32;
    v49 = v25;
    do
    {
      sub_1CFE69D98(v24, v10, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      (*(v12 + 16))(v14, &v10[*(v50 + 24)], v11);
      sub_1CFE69F00(v10, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      v54 = v22;
      v26 = v11;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1CFEF3C74(v27 > 1, v28 + 1, 1);
        v22 = v54;
      }

      *(v22 + 16) = v28 + 1;
      (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v14, v26);
      v24 += v49;
      --v21;
      v11 = v26;
    }

    while (v21);
    a1 = v39;
    v4 = v38;
  }

  v29 = v41;
  v30 = v42;
  v31 = v44;
  (*(v42 + 16))(v41, v4, v44);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = (v40 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = *(v31 + 24);
  *(v34 + 16) = *(v31 + 16);
  *(v34 + 24) = v35;
  (*(v30 + 32))(v34 + v32, v29, v31);
  *(v34 + v33) = a1;

  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v53[4] = v35;
  v53[5] = MEMORY[0x1E697E5C0];
  v53[2] = swift_getWitnessTable();
  v53[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1CFF0D1DC();
  v54 = sub_1CFF0E8AC();
  sub_1CFE69C50();
  v55 = v36;
  sub_1CFF0D08C();
  WitnessTable = swift_getWitnessTable();
  v53[0] = swift_getWitnessTable();
  v53[1] = sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
  v51 = v53;
  swift_getWitnessTable();
  sub_1CFF0D21C();
  return sub_1CFF0D37C();
}

uint64_t sub_1CFE67130@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v22[4] = a1;
  v22[5] = MEMORY[0x1E697E5C0];
  v22[2] = swift_getWitnessTable();
  v22[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1CFF0D1DC();
  v22[6] = sub_1CFF0E8AC();
  sub_1CFE69C50();
  v22[7] = v3;
  sub_1CFF0D08C();
  WitnessTable = swift_getWitnessTable();
  v22[0] = swift_getWitnessTable();
  v22[1] = sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
  v20 = v22;
  swift_getWitnessTable();
  sub_1CFF0D38C();
  v4 = sub_1CFF0D9AC();
  v5 = swift_getWitnessTable();
  v18 = v4;
  v19 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = swift_checkMetadataState();
  sub_1CFF0DCFC();
  v18 = v13;
  v19 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1CFE7C9C4(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15 = *(v7 + 8);
  v15(v9, OpaqueTypeMetadata2);
  sub_1CFE7C9C4(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15(v12, OpaqueTypeMetadata2);
}

uint64_t sub_1CFE674D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0D23C();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_1CFF0D24C();
}

uint64_t sub_1CFE675B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CFF0D23C();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1CFF0D24C();
}

unint64_t sub_1CFE67698@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a3;
  v76 = a2;
  v79 = a1;
  v72 = a6;
  v8 = sub_1CFF0D2AC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67[3] = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0D2CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67[2] = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE69CE4(0);
  v71 = v12;
  v70 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v67 - v15;
  v16 = sub_1CFF0C7AC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a4;
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v74 = a5;
  v88[4] = a5;
  v88[5] = MEMORY[0x1E697E5C0];
  v88[2] = swift_getWitnessTable();
  v88[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v20 = sub_1CFF0D1DC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v67 - v25;
  v81 = v27;
  v28 = sub_1CFF0E8AC();
  v29 = *(v28 - 8);
  v82 = v28;
  v83 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v80 = v67 - v33;
  sub_1CFF0E6DC();
  v67[1] = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = sub_1CFF0D3AC();
  v77 = v19;
  v78 = v16;
  if (v34)
  {
    v35 = v31;
    (*(v21 + 56))(v31, 1, 1, v81);
    swift_getWitnessTable();
  }

  else
  {
    type metadata accessor for OvernightMetricsAxisStyle();
    sub_1CFE67F64();
    v36 = v81;
    swift_getWitnessTable();
    v37 = *(v21 + 16);
    v37(v26, v23, v36);
    v38 = *(v21 + 8);
    v38(v23, v36);
    v37(v23, v26, v36);
    v38(v26, v36);
    v19 = v77;
    v16 = v78;
    v35 = v31;
    (*(v21 + 32))(v31, v23, v36);
    (*(v21 + 56))(v31, 0, 1, v36);
  }

  v39 = v82;
  v40 = v83;
  v79 = *(v83 + 16);
  v79(v80, v35, v82);
  v43 = *(v40 + 8);
  v41 = v40 + 8;
  v42 = v43;
  (v43)(v35, v39);
  v44 = *&v73[*(type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0) + 20)];
  result = sub_1CFF0D3AC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v44 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v44 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * result, v16);
  sub_1CFF0D3AC();
  result = sub_1CFF0D39C();
  if (!__OFSUB__(result, 1))
  {
    sub_1CFF0D8DC();
    v46 = sub_1CFF0D83C();
    v73 = v42;
    MEMORY[0x1EEE9AC00](v46);
    v47 = v17;
    v62 = v74;
    v83 = v41;
    sub_1CFF0D2BC();
    sub_1CFF0D29C();
    sub_1CFE60414();
    v48 = v35;
    v65 = v49;
    v66 = sub_1CFE6051C();
    v63 = sub_1CFE6A0B0;
    v64 = &v59;
    LOBYTE(v62) = 1;
    v61 = 0;
    v60 = 1;
    v59 = 0;
    v50 = v68;
    sub_1CFF0D1CC();
    v51 = v80;
    v52 = v82;
    v79(v35, v80, v82);
    v88[0] = v35;
    v53 = v70;
    v54 = v69;
    v55 = v71;
    (*(v70 + 16))(v69, v50, v71);
    v88[1] = v54;
    v87[0] = v52;
    v87[1] = v55;
    WitnessTable = swift_getWitnessTable();
    v85 = swift_getWitnessTable();
    v86 = sub_1CFE69ACC(&qword_1EDEC2238, sub_1CFE69CE4);
    sub_1CFE685E8(v88, 2uLL, v87, v72);
    v56 = *(v53 + 8);
    v56(v50, v55);
    v57 = v51;
    v58 = v73;
    (v73)(v57, v52);
    v56(v54, v55);
    v58(v48, v52);
    (*(v47 + 8))(v77, v78);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1CFE67F64()
{
  v0 = sub_1CFF0D2AC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0D2CC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1CFF0D8DC();
  sub_1CFF0D83C();
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CFF0D2BC();
  sub_1CFF0D29C();
  return sub_1CFF0D1CC();
}

uint64_t sub_1CFE68140@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v53 = a3;
  v54 = a5;
  v50 = a4;
  LODWORD(v49) = a2;
  v48 = a1;
  v52 = a6;
  v6 = sub_1CFF0C72C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0C75C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  sub_1CFF0E6DC();
  v51 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1D3877140](isCurrentExecutor);
  sub_1CFF0C71C();
  sub_1CFF0C74C();
  (*(v7 + 8))(v9, v6);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1CFE69ACC(&qword_1EDEC4D10, MEMORY[0x1E6969328]);
  sub_1CFF0C79C();
  v18(v16, v10);
  v55[0] = v56[0];
  v55[1] = v56[1];
  sub_1CFE60C24();
  v19 = sub_1CFF0DC6C();
  v21 = v20;
  v23 = v22;
  if (v49)
  {
    v49 = type metadata accessor for OvernightMetricsAxisStyle();
    sub_1CFE639F8(v49, v56);
    v24 = v56[30];
  }

  else
  {
    v49 = type metadata accessor for OvernightMetricsAxisStyle();
    sub_1CFE639F8(v49, v56);
    v24 = v56[29];
  }

  sub_1CFE583D0(v56);
  v56[0] = v24;
  v53 = sub_1CFF0DC2C();
  v26 = v25;
  v28 = v27;
  v50 = v29;
  sub_1CFE60C78(v19, v21, v23 & 1);

  type metadata accessor for OvernightMetricsAxisStyle();
  v30 = v49;
  sub_1CFE639F8(v49, v55);

  sub_1CFE583D0(v55);

  v31 = v53;
  v54 = sub_1CFF0DC3C();
  v33 = v32;
  v35 = v34;
  v48 = v36;
  sub_1CFE60C78(v31, v26, v28 & 1);

  v37 = sub_1CFF0DABC();
  sub_1CFE639F8(v30, v56);
  sub_1CFE583D0(v56);
  sub_1CFF0D40C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v47 = v52;
  *v52 = v54;
  v47[1] = v33;
  *(v47 + 16) = v35 & 1;
  v47[3] = v48;
  *(v47 + 32) = v37;
  v47[5] = v39;
  v47[6] = v41;
  v47[7] = v43;
  v47[8] = v45;
  *(v47 + 72) = 0;
  return result;
}

uint64_t sub_1CFE685E8@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = 8 * a2;
  v36[1] = a4;
  if (a2 == 1)
  {
    v7 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    v7 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v36;
  MEMORY[0x1EEE9AC00](v24);
  if (a2)
  {
    v26 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v25 + 32);
    v28 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = a2;
    do
    {
      if (a2 == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = *v27;
      }

      v32 = *v26++;
      v31 = v32;
      v33 = &v23[v30];
      v34 = *v5++;
      (*(*(v31 - 8) + 16))(&v23[v30], v34);
      *v28++ = v33;
      v27 += 4;
      --v29;
    }

    while (v29);
  }

  return sub_1CFF0D07C();
}

unint64_t sub_1CFE68810@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  v66 = a3;
  v68 = a2;
  v71 = a1;
  v8 = sub_1CFF0D2AC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFF0D2CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE69C50();
  v64 = v13;
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = v57 - v16;
  v17 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v58 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a4;
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  v69 = a5;
  v78[4] = a5;
  v78[5] = MEMORY[0x1E697E5C0];
  v78[2] = swift_getWitnessTable();
  v78[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v20 = sub_1CFF0D1DC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - v25;
  v27 = sub_1CFF0E8AC();
  v73 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v72 = v57 - v31;
  sub_1CFF0E6DC();
  v59 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = sub_1CFF0D3AC();
  v70 = v19;
  if (v32)
  {
    (*(v21 + 56))(v29, 1, 1, v20);
    swift_getWitnessTable();
  }

  else
  {
    type metadata accessor for OvernightMetricsAxisStyle();
    sub_1CFE67F64();
    swift_getWitnessTable();
    v33 = *(v21 + 16);
    v33(v26, v23, v20);
    v57[1] = v10;
    v34 = *(v21 + 8);
    v34(v23, v20);
    v33(v23, v26, v20);
    v34(v26, v20);
    v19 = v70;
    (*(v21 + 32))(v29, v23, v20);
    (*(v21 + 56))(v29, 0, 1, v20);
  }

  v35 = v73;
  v36 = *(v73 + 16);
  v36(v72, v29, v27);
  v39 = *(v35 + 8);
  v37 = v35 + 8;
  v38 = v39;
  v39(v29, v27);
  result = sub_1CFF0D3AC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < v66[2])
  {
    sub_1CFE69D98(v66 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * result, v19, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
    sub_1CFF0D8DC();
    v41 = sub_1CFF0D83C();
    v73 = v37;
    v66 = v57;
    MEMORY[0x1EEE9AC00](v41);
    v69 = v20;
    v42 = v36;
    sub_1CFF0D2BC();
    sub_1CFF0D29C();
    v43 = type metadata accessor for OvernightMetricsChartDayAxisLabel();
    v71 = v38;
    v55 = v43;
    v56 = sub_1CFE69ACC(&qword_1EDEC2C90, type metadata accessor for OvernightMetricsChartDayAxisLabel);
    v53 = sub_1CFE6A098;
    v54 = &v51;
    v52 = 1;
    v51 = 0;
    v44 = v61;
    sub_1CFF0D1CC();
    v45 = v72;
    v42(v29, v72, v27);
    v78[0] = v29;
    v46 = v63;
    v47 = v62;
    v48 = v64;
    (*(v63 + 16))(v62, v44, v64);
    v78[1] = v47;
    v77[0] = v27;
    v77[1] = v48;
    WitnessTable = swift_getWitnessTable();
    v75 = swift_getWitnessTable();
    v76 = sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
    sub_1CFE685E8(v78, 2uLL, v77, v65);
    v49 = *(v46 + 8);
    v49(v44, v48);
    v50 = v71;
    v71(v45, v27);
    v49(v47, v48);
    v50(v29, v27);
    sub_1CFE69F00(v70, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
  }

  __break(1u);
  return result;
}

void *sub_1CFE690A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE69D98(a1, a3, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
  v6 = type metadata accessor for OvernightMetricsAxisStyle();
  v7 = (a2 + *(v6 + 36));
  v8 = v7[3];
  v17 = v7[2];
  v18 = v8;
  v19 = *(v7 + 8);
  v9 = v7[1];
  v15 = *v7;
  v16 = v9;
  sub_1CFE530D8(&v15, __src);
  sub_1CFE639F8(v6, __src);

  v10 = type metadata accessor for OvernightMetricsChartDayAxisLabel();
  v11 = a3 + *(v10 + 20);
  v12 = v18;
  *(v11 + 32) = v17;
  *(v11 + 48) = v12;
  *(v11 + 64) = v19;
  v13 = v16;
  *v11 = v15;
  *(v11 + 16) = v13;
  return memcpy((a3 + *(v10 + 24)), __src, 0x118uLL);
}

uint64_t sub_1CFE69210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[1] = a1;
  v21 = a3;
  v4 = sub_1CFF0D62C();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - v5;
  v7 = sub_1CFF0D62C();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v18[0] = v18 - v11;
  sub_1CFF0E6DC();
  v18[2] = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for OvernightMetricsAxisStyle();
  sub_1CFF0DDEC();
  sub_1CFF0DABC();
  sub_1CFE639F8(v12, v26);
  sub_1CFE583D0(v26);
  v24 = a2;
  v25 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  sub_1CFF0DDFC();
  (*(v19 + 8))(v6, v4);
  v22 = WitnessTable;
  v23 = MEMORY[0x1E697E5D8];
  v14 = swift_getWitnessTable();
  v15 = v18[0];
  sub_1CFE7C9C4(v9, v7, v14);
  v16 = *(v20 + 8);
  v16(v9, v7);
  sub_1CFE7C9C4(v15, v7, v14);
  v16(v15, v7);
}

void sub_1CFE69578()
{
  if (!qword_1EDEC2090)
  {
    sub_1CFE695E0();
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2090);
    }
  }
}

void sub_1CFE695E0()
{
  if (!qword_1EDEC1898)
  {
    sub_1CFE696E4(255, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    sub_1CFF0CB6C();
    sub_1CFE69748();
    sub_1CFE69824();
    sub_1CFE69ACC(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1898);
    }
  }
}

void sub_1CFE696E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFE69748()
{
  if (!qword_1EDEC1F48)
  {
    sub_1CFE697A8();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1F48);
    }
  }
}

void sub_1CFE697A8()
{
  if (!qword_1EDEC1A98)
  {
    sub_1CFE6A0C4(255, &qword_1EDEC1A50, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v0 = sub_1CFF0DA4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1A98);
    }
  }
}

unint64_t sub_1CFE69824()
{
  result = qword_1EDEC1780;
  if (!qword_1EDEC1780)
  {
    sub_1CFE696E4(255, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1780);
  }

  return result;
}

uint64_t sub_1CFE698AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a36)
  {
    sub_1CFE69990(a1);
  }
}

uint64_t sub_1CFE69990(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1CFE69A1C()
{
  result = qword_1EDEC1F50;
  if (!qword_1EDEC1F50)
  {
    sub_1CFE69748();
    sub_1CFE69ACC(&qword_1EDEC1AA0, sub_1CFE697A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F50);
  }

  return result;
}

uint64_t sub_1CFE69ACC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFE69B4C()
{
  if (!qword_1EDEC4D78)
  {
    sub_1CFF0C7AC();
    sub_1CFE69ACC(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v0 = sub_1CFF0E4AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4D78);
    }
  }
}

unint64_t sub_1CFE69BE0()
{
  result = qword_1EDEC1798;
  if (!qword_1EDEC1798)
  {
    sub_1CFE69B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1798);
  }

  return result;
}

void sub_1CFE69C50()
{
  if (!qword_1EDEC2240)
  {
    type metadata accessor for OvernightMetricsChartDayAxisLabel();
    sub_1CFE69ACC(&qword_1EDEC2C90, type metadata accessor for OvernightMetricsChartDayAxisLabel);
    v0 = sub_1CFF0D1DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2240);
    }
  }
}

uint64_t sub_1CFE69D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1CFE69D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFE69E00@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for OvernightMetricsAxisStyle() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0) - 8);
  v11 = (v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));

  return sub_1CFE67698(a1, v2 + v8, v11, v5, v6, a2);
}

uint64_t sub_1CFE69F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE69F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFE69FD0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for OvernightMetricsAxisStyle() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFE68810(a1, v2 + v8, v9, v5, v6, a2);
}

void sub_1CFE6A0C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFE6A18C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1CFE6A20C()
{
  result = qword_1EDEC18A0;
  if (!qword_1EDEC18A0)
  {
    sub_1CFE695E0();
    sub_1CFE69A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC18A0);
  }

  return result;
}

uint64_t sub_1CFE6A2F4()
{
  result = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE69B4C();
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

void __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE69B4C();
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

void sub_1CFE6A5AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1CFE69B4C();
  if (v7 <= 0x3F)
  {
    sub_1CFE6A65C(319, a4, a5, MEMORY[0x1E69E62F8]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFE6A65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE6A708()
{
  result = sub_1CFF0CB6C();
  if (v1 <= 0x3F)
  {
    result = sub_1CFF0C7AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFE6A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1CFF0C7AC();
  sub_1CFE6BAD8(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  sub_1CFE69B4C();
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return a5(v9, v10);
}

uint64_t sub_1CFE6A8E4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v50 = a4;
  v54 = a2;
  v55 = a5;
  v7 = sub_1CFF0C7AC();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0CB6C();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CFF0CCEC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE6A65C(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  v48 = a1;
  v59 = a1;
  sub_1CFE6AF58(sub_1CFE6BB20, a3, &v45 - v24);
  v58 = v25;
  sub_1CFE6BB40(v25, v22);
  v26 = *(v14 + 48);
  if (v26(v22, 1, v13) == 1)
  {
    sub_1CFE6BBD4(v22);
    v27 = sub_1CFF0DE6C();
  }

  else
  {
    if (v22[*(v13 + 32) + 8])
    {
      v27 = sub_1CFF0DE6C();
    }

    else
    {
      v28 = *(v50 + 72);
      v27 = *(v50 + 80);
      if (sub_1CFF0CCCC())
      {
      }

      else
      {

        v27 = v28;
      }
    }

    sub_1CFE6BC60(v22, type metadata accessor for IndividualOvernightMetricChartPoint);
  }

  v50 = v27;
  sub_1CFE6BB40(v58, v19);
  if (v26(v19, 1, v13) == 1)
  {
    sub_1CFE6BBD4(v19);
    LODWORD(v49) = 0;
  }

  else
  {
    sub_1CFE6BA70(v19, v16, type metadata accessor for IndividualOvernightMetricChartPoint);
    v30 = v46;
    v29 = v47;
    v31 = v49;
    (*(v47 + 104))(v46, *MEMORY[0x1E69A2EF0], v49);
    v32 = sub_1CFF0CCDC();
    (*(v29 + 8))(v30, v31);
    sub_1CFE6BC60(v16, type metadata accessor for IndividualOvernightMetricChartPoint);
    LODWORD(v49) = v32 ^ 1;
  }

  v33 = v51;
  v34 = v52;
  v35 = *(v52 + 16);
  v36 = v53;
  v35(v51, v48, v53);
  v38 = v56;
  v37 = v57;
  v48 = *(v56 + 16);
  v48(v9, v54, v57);
  v39 = v9;
  v40 = v55;
  v35(v55, v33, v36);
  v41 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v48(&v40[v41[6]], v39, v37);
  v42 = SleepingSampleDataType.preferredImage.getter();
  (*(v38 + 8))(v39, v37);
  (*(v34 + 8))(v33, v36);
  result = sub_1CFE6BBD4(v58);
  v44 = v49;
  v40[v41[5]] = v49 & 1;
  *&v40[v41[7]] = v42;
  *&v40[v41[8]] = v50;
  v40[v41[9]] = (v44 & 1) == 0;
  return result;
}

BOOL sub_1CFE6AEA0()
{
  sub_1CFF0CB6C();
  sub_1CFE6BAD8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  return v2 == v1;
}

uint64_t sub_1CFE6AF58@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1CFE6BCC0(v12, v10, type metadata accessor for IndividualOvernightMetricChartPoint);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1CFE6BC60(v10, type metadata accessor for IndividualOvernightMetricChartPoint);
      }

      if (v14)
      {
        break;
      }

      sub_1CFE6BC60(v10, type metadata accessor for IndividualOvernightMetricChartPoint);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1CFE6BA70(v10, v18, type metadata accessor for IndividualOvernightMetricChartPoint);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1CFE6B124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = a1;
  v2 = sub_1CFF0CB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v7 = (v6 - 8);
  v22 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E69A2E60];
  v12 = *(v3 + 104);
  v12(v10, v11, v2, v8);
  v13 = v7[8];
  v14 = sub_1CFF0C7AC();
  (*(*(v14 - 8) + 16))(&v10[v13], v24, v14);
  (v12)(v5, v11, v2);
  v15 = SleepingSampleDataType.preferredImage.getter();
  (*(v3 + 8))(v5, v2);
  v16 = sub_1CFF0DE8C();
  v10[v7[7]] = 0;
  *&v10[v7[9]] = v15;
  *&v10[v7[10]] = v16;
  v10[v7[11]] = 0;
  sub_1CFE6A65C(0, &qword_1EDEC1600, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label, MEMORY[0x1E69E6F90]);
  v17 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CFF10480;
  sub_1CFE6BA70(v10, v18 + v17, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
  v19 = v23;
  sub_1CFE6BCC0(v24, v23, sub_1CFE69B4C);
  *(v19 + *(type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0) + 20)) = v18;
  type metadata accessor for OvernightMetricsAxisConfiguration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CFE6B400(uint64_t a1, uint64_t a2)
{
  sub_1CFF0CB6C();
  sub_1CFE6BAD8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  if (v9 == v8 && (v4 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (sub_1CFF0C77C() & 1) != 0) && (sub_1CFF0DF4C() & 1) != 0 && (sub_1CFF0DE4C() & 1) != 0)
  {
    v6 = *(a1 + *(v5 + 36)) ^ *(a2 + *(v5 + 36)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1CFE6B530(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OvernightMetricsAxisConfiguration(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  sub_1CFE6BA0C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_1CFE6BCC0(a1, v16, type metadata accessor for OvernightMetricsAxisConfiguration);
  sub_1CFE6BCC0(a2, &v16[v18], type metadata accessor for OvernightMetricsAxisConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFE6BCC0(v16, v10, type metadata accessor for OvernightMetricsAxisConfiguration);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFE6BA70(&v16[v18], v5, type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration);
      sub_1CFF0C7AC();
      sub_1CFE6BAD8(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
      if (sub_1CFF0E4CC())
      {
        sub_1CFE69B4C();
        if (sub_1CFF0E4CC() & 1) != 0 && (sub_1CFE91D24(*&v10[*(v29 + 20)], *&v5[*(v29 + 20)]))
        {
          v19 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration;
          sub_1CFE6BC60(v5, type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration);
          v20 = v10;
LABEL_15:
          sub_1CFE6BC60(v20, v19);
          v23 = 1;
LABEL_19:
          v24 = type metadata accessor for OvernightMetricsAxisConfiguration;
          goto LABEL_20;
        }
      }

      v25 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration;
      sub_1CFE6BC60(v5, type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration);
      v26 = v10;
      goto LABEL_18;
    }

    v21 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration;
    v22 = v10;
  }

  else
  {
    sub_1CFE6BCC0(v16, v13, type metadata accessor for OvernightMetricsAxisConfiguration);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1CFE6BA70(&v16[v18], v7, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration);
      sub_1CFF0C7AC();
      sub_1CFE6BAD8(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
      if (sub_1CFF0E4CC())
      {
        sub_1CFE69B4C();
        if (sub_1CFF0E4CC() & 1) != 0 && (sub_1CFE91A58(*&v13[*(v28 + 20)], *&v7[*(v28 + 20)]))
        {
          v19 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration;
          sub_1CFE6BC60(v7, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration);
          v20 = v13;
          goto LABEL_15;
        }
      }

      v25 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration;
      sub_1CFE6BC60(v7, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration);
      v26 = v13;
LABEL_18:
      sub_1CFE6BC60(v26, v25);
      v23 = 0;
      goto LABEL_19;
    }

    v21 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration;
    v22 = v13;
  }

  sub_1CFE6BC60(v22, v21);
  v23 = 0;
  v24 = sub_1CFE6BA0C;
LABEL_20:
  sub_1CFE6BC60(v16, v24);
  return v23;
}

void sub_1CFE6BA0C()
{
  if (!qword_1EDEC2C98[0])
  {
    type metadata accessor for OvernightMetricsAxisConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDEC2C98);
    }
  }
}

uint64_t sub_1CFE6BA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE6BAD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFE6BB40(uint64_t a1, uint64_t a2)
{
  sub_1CFE6A65C(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE6BBD4(uint64_t a1)
{
  sub_1CFE6A65C(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE6BC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE6BCC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for IndividualOvernightMetricsChartPoints()
{
  result = qword_1EDEC2928;
  if (!qword_1EDEC2928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE6BD9C()
{
  type metadata accessor for IndividualOvernightMetricChartPointCollection();
  if (v0 <= 0x3F)
  {
    sub_1CFE6BE4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsChartLayout(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFE6BE4C()
{
  if (!qword_1EDEC2B38)
  {
    v0 = sub_1CFF0E8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2B38);
    }
  }
}

uint64_t sub_1CFE6BEB8@<X0>(uint64_t a1@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE7238C(0);
  sub_1CFE70F20(&qword_1EC512388, sub_1CFE7238C);
  sub_1CFF0DCFC();
  sub_1CFE722EC();
  v3 = *(v2 + 36);
  v4 = *MEMORY[0x1E6981DC0];
  v5 = sub_1CFF0E15C();
  (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
}

uint64_t sub_1CFE6C008@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  sub_1CFE7084C();
  v70 = v2;
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v68 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE71360();
  v73 = v4;
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v71 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = v60 - v7;
  v8 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1CFE71458(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE71788(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v60 - v19;
  v64 = v8;
  v65 = v1 + *(v8 + 40);
  v21 = *(v65 + 32) == 1;
  v66 = v60 - v19;
  v75 = v1;
  v63 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21)
  {
    KeyPath = *(v1 + *(type metadata accessor for IndividualOvernightMetricChartPointCollection() + 20));
    *&v82 = KeyPath;
    sub_1CFE72698(v1, v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IndividualOvernightMetricsChartPoints);
    v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v23 = swift_allocObject();
    sub_1CFE717BC(v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    sub_1CFE709D4(0);
    v61 = v24;
    v60[1] = type metadata accessor for IndividualOvernightMetricChartPoint.ID(0);
    sub_1CFE7157C(0);
    v60[0] = v25;
    sub_1CFE70F20(&qword_1EDEC1730, sub_1CFE709D4);
    sub_1CFE724B8();
    sub_1CFE70F20(qword_1EDEC2B48, type metadata accessor for IndividualOvernightMetricChartPoint);

    sub_1CFF0E04C();
    (*(v13 + 32))(v20, v15, v12);
    (*(v13 + 56))(v20, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v60 - v19, 1, 1, v12);
  }

  sub_1CFE70A08(0, &qword_1EDEC1620, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6F90]);
  v26 = sub_1CFF0CCEC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CFF0FCA0;
  v31 = *(v27 + 104);
  v31(v30 + v29, *MEMORY[0x1E69A2EF0], v26);
  v31(v30 + v29 + v28, *MEMORY[0x1E69A2EE0], v26);
  v31(v30 + v29 + 2 * v28, *MEMORY[0x1E69A2EE8], v26);
  v32 = v75;
  v33 = v75 + *(v64 + 9);
  v34 = v33 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20);
  v36 = *(v34 + 16);
  v35 = *(v34 + 24);
  *&v82 = v30;
  KeyPath = swift_getKeyPath();
  v64 = type metadata accessor for IndividualOvernightMetricsChartPoints;
  v37 = v63;
  sub_1CFE72698(v32, v63, type metadata accessor for IndividualOvernightMetricsChartPoints);
  v38 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v39 = (v10 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_1CFE717BC(v37, v40 + v38);
  *(v40 + v39) = v35;
  sub_1CFE70980(0);
  v61 = v41;
  sub_1CFE70F20(&qword_1EDEC1770, sub_1CFE70980);
  sub_1CFE70F20(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);

  sub_1CFF0E05C();
  v78[3] = v30;
  swift_getKeyPath();
  sub_1CFE72698(v75, v37, v64);
  v42 = swift_allocObject();
  sub_1CFE717BC(v37, v42 + v38);
  *(v42 + v39) = v36;
  sub_1CFE72D30(0, &qword_1EDEC2378, sub_1CFE709B4, sub_1CFE70F68);
  sub_1CFE71CBC();
  v43 = v68;
  sub_1CFF0E05C();
  if (*(v65 + 201) == 1)
  {
    sub_1CFE72204();
    *(&v80 + 1) = v44;
    sub_1CFE722EC();
    v46 = v45;
    v47 = sub_1CFE71F8C(&qword_1EDEC1890, sub_1CFE7084C, sub_1CFE71CBC);
    v48 = sub_1CFE723C0();
    v49 = v70;
    *&v82 = v70;
    *(&v82 + 1) = v46;
    *&v83 = v47;
    *(&v83 + 1) = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v79);
    swift_checkMetadataState();
    sub_1CFF0D10C();
    (*(v69 + 8))(v43, v49);
  }

  else
  {
    v50 = v70;
    *(&v80 + 1) = v70;
    OpaqueTypeConformance2 = sub_1CFE71F8C(&qword_1EDEC1890, sub_1CFE7084C, sub_1CFE71CBC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
    (*(v69 + 32))(boxed_opaque_existential_1, v43, v50);
  }

  v52 = v66;
  v82 = v79;
  v83 = v80;
  v84 = OpaqueTypeConformance2;
  v53 = v67;
  sub_1CFE727AC(v66, v67, sub_1CFE71788);
  v78[0] = v53;
  v54 = v72;
  v55 = v71;
  v56 = v76;
  v57 = v73;
  (*(v72 + 16))(v71, v76, v73);
  v78[1] = v55;
  sub_1CFE72154(&v82, v77);
  v78[2] = v77;
  sub_1CFEC98C0(v78, v74);
  sub_1CFE721B0(&v82);
  v58 = *(v54 + 8);
  v58(v56, v57);
  sub_1CFE72814(v52, sub_1CFE71788);
  sub_1CFE721B0(v77);
  v58(v55, v57);
  return sub_1CFE72814(v53, sub_1CFE71788);
}

uint64_t sub_1CFE6CB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFE715B0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7157C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32);
  if (*(v12 + 8))
  {
    (*(v6 + 56))(v11, 1, 1, v5);
  }

  else
  {
    sub_1CFE6CD48(a1, v8, *v12);
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 56))(v11, 0, 1, v5);
  }

  sub_1CFE73370(v11, a2, sub_1CFE7157C);
}

uint64_t sub_1CFE6CD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a2;
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - v7;
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE72AB8(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1CFF0D3CC();
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE716B4();
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D87C();
  v18 = *(v3 + *(type metadata accessor for IndividualOvernightMetricsChartPoints() + 28));
  v19 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v20 = 28;
  if (v18)
  {
    v20 = 24;
  }

  sub_1CFE72698(a1 + *(v19 + v20), v10, sub_1CFE55184);
  sub_1CFF0C7AC();
  sub_1CFE70F20(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  sub_1CFF0D1EC();

  sub_1CFE72634(v10);
  sub_1CFF0D87C();
  sub_1CFEC2950(a3);
  v40 = v21;
  sub_1CFF0D1FC();

  v22 = v30;
  sub_1CFF0D3BC();
  v38 = a1;
  v39 = v3;
  v23 = type metadata accessor for OvernightMetricsChartPointShadow();
  v24 = sub_1CFE70F20(qword_1EDEC3050, type metadata accessor for OvernightMetricsChartPointShadow);
  v25 = MEMORY[0x1E695B2E0];
  v26 = v31;
  v27 = v33;
  sub_1CFF0D15C();
  (*(v34 + 8))(v22, v27);
  v40 = v27;
  v41 = v23;
  v42 = v25;
  v43 = v24;
  swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_1CFF0D13C();
  return (*(v36 + 8))(v26, v28);
}

uint64_t sub_1CFE6D258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v95 = a1;
  v89 = a4;
  sub_1CFE72900(0, &qword_1EDEC1858, sub_1CFE70F68, sub_1CFE7297C);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = v75 - v7;
  sub_1CFE7297C();
  v85 = v8;
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v81 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v75 - v11;
  v94 = sub_1CFF0CCEC();
  v12 = *(v94 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v14 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1CFE70F68(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v75 - v19;
  sub_1CFE72CFC(0);
  v86 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v87 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  v88 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *(a2 + *(type metadata accessor for IndividualOvernightMetricChartPointCollection() + 28));
  if (*(v23 + 16))
  {
    v24 = sub_1CFEC3BD8(v95);
    v25 = v94;
    v26 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v27)
    {
      v76 = *(*(v23 + 56) + 8 * v24);
      v28 = v94;

      v25 = v28;
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC0];
    v25 = v94;
    v26 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v29 = v25;
  if (*(a3 + 16) && (sub_1CFEC3BD8(v95), (v30 & 1) != 0))
  {
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v92;
  v33 = *(a2 + *(v93 + 24)) == 1;
  v90 = a2;
  v78 = v12;
  v91 = v20;
  v77 = v26;
  if (v33)
  {
    v96 = v31;
    v75[1] = swift_getKeyPath();
    sub_1CFE72698(a2, v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IndividualOvernightMetricsChartPoints);
    (*(v12 + 16))(v26, v95, v29);
    v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v35 = (v15 + *(v12 + 80) + v34) & ~*(v12 + 80);
    v36 = swift_allocObject();
    sub_1CFE717BC(v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v34);
    (*(v12 + 32))(v36 + v35, v26, v29);
    sub_1CFE71094();
    sub_1CFE71110();
    sub_1CFE70F20(&qword_1EDEC1720, sub_1CFE71094);
    sub_1CFE712CC();
    sub_1CFE711E0();
    v38 = v37;
    v39 = sub_1CFF0D3CC();
    v20 = v91;
    v40 = v39;
    v41 = sub_1CFE71278();
    *&v100 = v40;
    *(&v100 + 1) = &type metadata for OvernightMetricsChartLozenge;
    *&v101 = MEMORY[0x1E695B2E0];
    *(&v101 + 1) = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v100 = v38;
    *(&v100 + 1) = OpaqueTypeConformance2;
    a2 = v90;
    swift_getOpaqueTypeConformance2();
    v32 = v92;
    sub_1CFF0E05C();
    sub_1CFE70F9C();
    (*(*(v43 - 8) + 56))(v20, 0, 1, v43);
  }

  else
  {

    sub_1CFE70F9C();
    (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
  }

  *&v100 = v76;
  sub_1CFE72698(a2, v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IndividualOvernightMetricsChartPoints);
  v45 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v46 = swift_allocObject();
  sub_1CFE717BC(v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45);
  sub_1CFE709D4(0);
  type metadata accessor for IndividualOvernightMetricChartPoint.ID(0);
  sub_1CFE72AB8(0, &qword_1EDEC21E0, sub_1CFE72B24, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  sub_1CFE70F20(&qword_1EDEC1730, sub_1CFE709D4);
  sub_1CFE730F8();
  sub_1CFE70F20(qword_1EDEC2B48, type metadata accessor for IndividualOvernightMetricChartPoint);
  v47 = v80;
  sub_1CFF0E04C();
  v48 = v79;
  sub_1CFE727AC(v20, v79, sub_1CFE70F68);
  v49 = v82;
  v50 = *(v82 + 16);
  v51 = v81;
  v52 = v85;
  v50(v81, v47, v85);
  sub_1CFE71F8C(&qword_1EDEC1850, sub_1CFE70F68, sub_1CFE71FFC);
  v53 = v83;
  sub_1CFE727AC(v48, v83, sub_1CFE70F68);
  sub_1CFE71F8C(&qword_1EDEC18B0, sub_1CFE7297C, sub_1CFE730F8);
  v54 = v84;
  v55 = *(v84 + 48);
  v50((v53 + v55), v51, v52);
  v56 = v87;
  sub_1CFE73370(v53, v87, sub_1CFE70F68);
  v57 = *(v54 + 48);
  v58 = v56;
  (*(v49 + 32))(v56 + v57, v53 + v55, v52);
  v59 = *(v49 + 8);
  v59(v47, v52);
  sub_1CFE72814(v91, sub_1CFE70F68);
  v59(v51, v52);
  sub_1CFE72814(v48, sub_1CFE70F68);
  v60 = v78;
  v61 = v77;
  v62 = v94;
  (*(v78 + 104))(v77, *MEMORY[0x1E69A2EF0], v94);
  LOBYTE(v55) = sub_1CFF0CCDC();
  (*(v60 + 8))(v61, v62);
  if ((v55 & 1) != 0 && *(v90 + *(v93 + 40) + 201))
  {
    sub_1CFE733D8();
    *(&v101 + 1) = v63;
    sub_1CFE73518(255, &qword_1EC5123A0, sub_1CFE735CC, &qword_1EC5123B0, sub_1CFE735CC);
    v65 = v64;
    v66 = sub_1CFE73260();
    sub_1CFE735CC(255);
    v68 = v67;
    v69 = sub_1CFE70F20(&qword_1EC5123B0, sub_1CFE735CC);
    v96 = v68;
    v97 = v69;
    v70 = swift_getOpaqueTypeConformance2();
    v96 = v86;
    v97 = v65;
    v98 = v66;
    v99 = v70;
    v102 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v100);
    swift_checkMetadataState();
    sub_1CFF0D10C();
    sub_1CFE72814(v58, sub_1CFE72CFC);
  }

  else
  {
    *(&v101 + 1) = v86;
    v102 = sub_1CFE73260();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
    sub_1CFE73370(v58, boxed_opaque_existential_1, sub_1CFE72CFC);
  }

  v72 = v101;
  v73 = v89;
  *v89 = v100;
  v73[1] = v72;
  *(v73 + 4) = v102;
}

uint64_t sub_1CFE6DE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  sub_1CFE72900(0, &qword_1EDEC1900, sub_1CFE709B4, sub_1CFE70F68);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v49 - v8;
  sub_1CFE70F68(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v49 - v12;
  v50 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE709B4(0);
  v54 = *(v16 - 8);
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v49 - v19;
  sub_1CFF0E6DC();
  v52 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a2 + *(type metadata accessor for IndividualOvernightMetricChartPointCollection() + 28));
  if (*(v20 + 16) && (v21 = sub_1CFEC3BD8(a1), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    if (!*(a3 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    if (!*(a3 + 16))
    {
      goto LABEL_10;
    }
  }

  v24 = sub_1CFEC3BD8(a1);
  if (v25)
  {
    v51 = *(*(a3 + 56) + 8 * v24);

    goto LABEL_11;
  }

LABEL_10:
  v51 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v62 = v23;
  sub_1CFE72698(a2, &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IndividualOvernightMetricsChartPoints);
  v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v27 = swift_allocObject();
  sub_1CFE717BC(&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_1CFE709D4(0);
  type metadata accessor for IndividualOvernightMetricChartPoint.ID(0);
  sub_1CFE70A6C(0);
  v49 = v14;
  sub_1CFE70F20(&qword_1EDEC1730, sub_1CFE709D4);
  sub_1CFE71DFC();
  sub_1CFE70F20(qword_1EDEC2B48, type metadata accessor for IndividualOvernightMetricChartPoint);
  sub_1CFF0E04C();
  if (*(a2 + *(v50 + 24)) == 1)
  {
    v66 = v51;
    swift_getKeyPath();
    sub_1CFE72698(a2, v15, type metadata accessor for IndividualOvernightMetricsChartPoints);
    v28 = swift_allocObject();
    sub_1CFE717BC(v15, v28 + v26);
    sub_1CFE71094();
    sub_1CFE71110();
    sub_1CFE70F20(&qword_1EDEC1720, sub_1CFE71094);
    sub_1CFE712CC();
    sub_1CFE711E0();
    v30 = v29;
    v31 = sub_1CFF0D3CC();
    v32 = sub_1CFE71278();
    v62 = v31;
    v63 = &type metadata for OvernightMetricsChartLozenge;
    v64 = MEMORY[0x1E695B2E0];
    v65 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = v30;
    v63 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v34 = v56;
    sub_1CFF0E05C();
    v35 = 0;
  }

  else
  {

    v35 = 1;
    v34 = v56;
  }

  sub_1CFE70F9C();
  (*(*(v36 - 8) + 56))(v34, v35, 1, v36);
  v38 = v53;
  v37 = v54;
  v39 = *(v54 + 16);
  v40 = v61;
  v41 = v55;
  v39(v53, v61, v55);
  v42 = v58;
  sub_1CFE727AC(v34, v58, sub_1CFE70F68);
  sub_1CFE71F8C(&qword_1EDEC1910, sub_1CFE709B4, sub_1CFE71DFC);
  v43 = v57;
  v39(v57, v38, v41);
  sub_1CFE71F8C(&qword_1EDEC1850, sub_1CFE70F68, sub_1CFE71FFC);
  v44 = v59;
  v45 = *(v59 + 48);
  sub_1CFE727AC(v42, &v43[v45], sub_1CFE70F68);
  v46 = v60;
  (*(v37 + 32))(v60, v43, v41);
  sub_1CFE73370(&v43[v45], v46 + *(v44 + 48), sub_1CFE70F68);
  sub_1CFE72814(v34, sub_1CFE70F68);
  v47 = *(v37 + 8);
  v47(v40, v41);
  sub_1CFE72814(v42, sub_1CFE70F68);
  v47(v38, v41);
}

uint64_t sub_1CFE6E674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25[1] = v25 - v6;
  sub_1CFE72AB8(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CFF0D3CC();
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE711E0();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_1CFF0E6DC();
  v25[2] = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a2 + *(type metadata accessor for IndividualOvernightMetricsChartPoints() + 36);
  v18 = *(v17 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20) + 72);
  sub_1CFF0CCCC();

  v25[0] = sub_1CFF0D51C();
  sub_1CFF0D87C();
  sub_1CFF0C7AC();
  sub_1CFE70F20(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  sub_1CFF0D1EC();

  sub_1CFF0D87C();
  v31 = v16;
  sub_1CFF0D1FC();

  v19 = sub_1CFF0D3BC();
  MEMORY[0x1EEE9AC00](v19);
  v25[-6] = v15;
  v25[-5] = v16;
  v25[-4] = a2;
  v25[-3] = v18;
  v25[-2] = v25[0];
  v20 = sub_1CFE71278();
  v21 = MEMORY[0x1E695B2E0];
  v22 = v26;
  sub_1CFF0D15C();
  (*(v27 + 8))(v11, v22);
  v31 = v22;
  v32 = &type metadata for OvernightMetricsChartLozenge;
  v33 = v21;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v29;
  sub_1CFF0D13C();

  (*(v28 + 8))(v14, v23);
}

uint64_t sub_1CFE6EBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFE72B24();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE72AB8(0, &qword_1EDEC21E0, sub_1CFE72B24, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32);
  if ((*(v12 + 8) & 1) == 0)
  {
    sub_1CFE6EDF0(a1, v8, *v12);
    (*(v6 + 32))(v11, v8, v5);
  }

  sub_1CFE72AB8(0, &qword_1EDEC2208, sub_1CFE72B24, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A0]);
  swift_storeEnumTagMultiPayload();
  sub_1CFE48F84(v11, a2);
}

uint64_t sub_1CFE6EDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a2;
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - v7;
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE72AB8(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1CFF0D3CC();
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE72C28();
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D87C();
  v18 = *(v3 + *(type metadata accessor for IndividualOvernightMetricsChartPoints() + 28));
  v19 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v20 = 28;
  if (v18)
  {
    v20 = 24;
  }

  sub_1CFE72698(a1 + *(v19 + v20), v10, sub_1CFE55184);
  sub_1CFF0C7AC();
  sub_1CFE70F20(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  sub_1CFF0D1EC();

  sub_1CFE72634(v10);
  sub_1CFF0D87C();
  sub_1CFEC2950(a3);
  v40 = v21;
  sub_1CFF0D1FC();

  v22 = v30;
  sub_1CFF0D3BC();
  v38 = a1;
  v39 = v3;
  v23 = type metadata accessor for OvernightMetricsChartPointBackground();
  v24 = sub_1CFE70F20(&qword_1EDEC2A88, type metadata accessor for OvernightMetricsChartPointBackground);
  v25 = MEMORY[0x1E695B2E0];
  v26 = v31;
  v27 = v33;
  sub_1CFF0D15C();
  (*(v34 + 8))(v22, v27);
  v40 = v27;
  v41 = v23;
  v42 = v25;
  v43 = v24;
  swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_1CFF0D13C();
  return (*(v36 + 8))(v26, v28);
}

uint64_t sub_1CFE6F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFE70AA0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE70A6C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32);
  if (*(v12 + 8))
  {
    (*(v6 + 56))(v11, 1, 1, v5);
  }

  else
  {
    sub_1CFE6F508(a1, v8, *v12);
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 56))(v11, 0, 1, v5);
  }

  sub_1CFE73370(v11, a2, sub_1CFE70A6C);
}

uint64_t sub_1CFE6F508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v70 = a2;
  v71 = a1;
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v56 - v6;
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE72AB8(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = sub_1CFF0D3CC();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE70E4C();
  v13 = *(v12 - 8);
  v64 = v12;
  v65 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE70D48();
  v16 = *(v15 - 8);
  v66 = v15;
  v67 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE70C0C();
  v19 = *(v18 - 8);
  v68 = v18;
  v69 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D87C();
  v21 = *(v3 + *(type metadata accessor for IndividualOvernightMetricsChartPoints() + 28));
  v22 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v56 = v22;
  v23 = 28;
  if (v21)
  {
    v23 = 24;
  }

  sub_1CFE72698(v71 + *(v22 + v23), v9, sub_1CFE55184);
  sub_1CFF0C7AC();
  sub_1CFE70F20(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  sub_1CFF0D1EC();

  sub_1CFE72634(v9);
  sub_1CFF0D87C();
  v24 = v3;
  sub_1CFEC2950(a3);
  v74 = v25;
  sub_1CFF0D1FC();

  v26 = v57;
  sub_1CFF0D3BC();
  v27 = v71;
  v72 = v71;
  v73 = v24;
  v28 = type metadata accessor for OvernightMetricsChartPointForeground();
  v29 = sub_1CFE70F20(qword_1EDEC29E0, type metadata accessor for OvernightMetricsChartPointForeground);
  v30 = MEMORY[0x1E695B2E0];
  v31 = v58;
  v32 = v60;
  sub_1CFF0D15C();
  (*(v62 + 8))(v26, v32);
  v74 = v32;
  v75 = v28;
  v76 = v30;
  v77 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v59;
  v35 = v64;
  sub_1CFF0D13C();
  v36 = v35;
  (*(v65 + 8))(v31, v35);
  type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v37 = v56;
  v38 = (v27 + *(v56 + 44));
  v39 = v38[1];
  v74 = *v38;
  v75 = v39;
  v65 = sub_1CFE60C24();

  v40 = sub_1CFF0DC6C();
  v42 = v41;
  v44 = v43;
  v74 = v36;
  v75 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v63;
  v47 = v66;
  sub_1CFF0D11C();
  sub_1CFE60C78(v40, v42, v44 & 1);

  (*(v67 + 8))(v34, v47);
  v48 = (v71 + *(v37 + 48));
  v49 = v48[1];
  v74 = *v48;
  v75 = v49;

  v50 = sub_1CFF0DC6C();
  v52 = v51;
  LOBYTE(v40) = v53;
  v74 = v47;
  v75 = v45;
  swift_getOpaqueTypeConformance2();
  v54 = v68;
  sub_1CFF0D12C();
  sub_1CFE60C78(v50, v52, v40 & 1);

  return (*(v69 + 8))(v46, v54);
}

uint64_t sub_1CFE6FCFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v24 - v6;
  sub_1CFE72AB8(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = sub_1CFF0D3CC();
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE711E0();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  sub_1CFF0E6DC();
  v26 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v16 = a2 + *(v15 + 36);
  v17 = *(v16 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20) + 88);
  v24 = *(a2 + *(v15 + 40) + 40);
  sub_1CFF0D87C();
  sub_1CFF0C7AC();
  sub_1CFE70F20(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  sub_1CFF0D1EC();

  sub_1CFF0D87C();
  v32 = v14;
  sub_1CFF0D1FC();

  v18 = sub_1CFF0D3BC();
  MEMORY[0x1EEE9AC00](v18);
  *(&v24 - 6) = v13;
  *(&v24 - 5) = v14;
  *(&v24 - 4) = a2;
  *(&v24 - 3) = v17;
  *(&v24 - 2) = v24;
  v19 = sub_1CFE71278();
  v20 = MEMORY[0x1E695B2E0];
  v21 = v25;
  sub_1CFF0D15C();
  (*(v28 + 8))(v9, v21);
  v32 = v21;
  v33 = &type metadata for OvernightMetricsChartLozenge;
  v34 = v20;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  v22 = v30;
  sub_1CFF0D13C();
  (*(v29 + 8))(v12, v22);
}

void *sub_1CFE701E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE72698(a1, a3, type metadata accessor for IndividualOvernightMetricChartPoint);
  v6 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v7 = (a2 + v6[5]);
  v8 = v7[3];
  v20 = v7[2];
  v21 = v8;
  v22 = *(v7 + 8);
  v9 = v7[1];
  v18 = *v7;
  v19 = v9;
  v10 = v6[9];
  v11 = *(a2 + v6[8]);
  v12 = type metadata accessor for OvernightMetricsChartPointShadow();
  sub_1CFE72698(a2 + v10, a3 + v12[7], type metadata accessor for OvernightMetricsChartLayout);
  memcpy(__dst, (a2 + v6[10]), sizeof(__dst));
  sub_1CFE72698(&v18, v17, sub_1CFE6BE4C);
  sub_1CFE55370(__dst, v17);

  v13 = a3 + v12[5];
  v14 = v21;
  *(v13 + 32) = v20;
  *(v13 + 48) = v14;
  *(v13 + 64) = v22;
  v15 = v19;
  *v13 = v18;
  *(v13 + 16) = v15;
  *(a3 + v12[6]) = v11;
  return memcpy((a3 + v12[8]), __dst, 0x118uLL);
}

__n128 sub_1CFE70394@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = (a1 + *(type metadata accessor for IndividualOvernightMetricsChartPoints() + 20));
  v13 = v12[3];
  v20 = v12[2];
  v21 = v13;
  v22 = *(v12 + 8);
  v14 = v12[1];
  v18 = *v12;
  v19 = v14;
  sub_1CFE72698(&v18, v17, sub_1CFE6BE4C);

  *a3 = a4;
  *(a3 + 8) = a5;
  v15 = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v15;
  *(a3 + 80) = v22;
  result = v19;
  *(a3 + 16) = v18;
  *(a3 + 32) = result;
  *(a3 + 88) = a6;
  *(a3 + 96) = a2;
  return result;
}

void *sub_1CFE704CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE72698(a1, a3, type metadata accessor for IndividualOvernightMetricChartPoint);
  v6 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v7 = (a2 + v6[5]);
  v23 = *(v7 + 8);
  v8 = v7[3];
  v21 = v7[2];
  v22 = v8;
  v9 = v7[1];
  v19 = *v7;
  v20 = v9;
  v10 = v6[9];
  v11 = *(a2 + v6[8]);
  v12 = *(a2 + v6[6]);
  v13 = type metadata accessor for OvernightMetricsChartPointBackground();
  sub_1CFE72698(a2 + v10, a3 + v13[8], type metadata accessor for OvernightMetricsChartLayout);
  memcpy(__dst, (a2 + v6[10]), sizeof(__dst));
  sub_1CFE72698(&v19, v18, sub_1CFE6BE4C);
  sub_1CFE55370(__dst, v18);

  v14 = a3 + v13[5];
  v15 = v22;
  *(v14 + 32) = v21;
  *(v14 + 48) = v15;
  *(v14 + 64) = v23;
  v16 = v20;
  *v14 = v19;
  *(v14 + 16) = v16;
  *(a3 + v13[6]) = v11;
  *(a3 + v13[7]) = v12;
  return memcpy((a3 + v13[9]), __dst, 0x118uLL);
}

void *sub_1CFE70690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE72698(a1, a3, type metadata accessor for IndividualOvernightMetricChartPoint);
  v6 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v7 = (a2 + v6[5]);
  v22 = *(v7 + 8);
  v8 = v7[3];
  v20 = v7[2];
  v21 = v8;
  v9 = v7[1];
  v18 = *v7;
  v19 = v9;
  v10 = *(a2 + v6[6]);
  v11 = v6[9];
  v12 = type metadata accessor for OvernightMetricsChartPointForeground();
  sub_1CFE72698(a2 + v11, a3 + v12[7], type metadata accessor for OvernightMetricsChartLayout);
  memcpy(__dst, (a2 + v6[10]), sizeof(__dst));
  sub_1CFE72698(&v18, v17, sub_1CFE6BE4C);
  sub_1CFE55370(__dst, v17);

  v13 = a3 + v12[5];
  v14 = v21;
  *(v13 + 32) = v20;
  *(v13 + 48) = v14;
  *(v13 + 64) = v22;
  v15 = v19;
  *v13 = v18;
  *(v13 + 16) = v15;
  *(a3 + v12[6]) = v10;
  return memcpy((a3 + v12[8]), __dst, 0x118uLL);
}

void sub_1CFE7084C()
{
  if (!qword_1EDEC1888)
  {
    sub_1CFE70980(255);
    sub_1CFF0CCEC();
    sub_1CFE72D30(255, &qword_1EDEC2378, sub_1CFE709B4, sub_1CFE70F68);
    sub_1CFE70F20(&qword_1EDEC1770, sub_1CFE70980);
    sub_1CFE70F20(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1888);
    }
  }
}

void sub_1CFE70A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFE70AA0()
{
  if (!qword_1EDEC2310)
  {
    sub_1CFE70C0C();
    sub_1CFE70D48();
    sub_1CFE70E4C();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointForeground();
    sub_1CFE70F20(qword_1EDEC29E0, type metadata accessor for OvernightMetricsChartPointForeground);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2310);
    }
  }
}

void sub_1CFE70C0C()
{
  if (!qword_1EDEC2328)
  {
    sub_1CFE70D48();
    sub_1CFE70E4C();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointForeground();
    sub_1CFE70F20(qword_1EDEC29E0, type metadata accessor for OvernightMetricsChartPointForeground);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2328);
    }
  }
}

void sub_1CFE70D48()
{
  if (!qword_1EDEC22B8)
  {
    sub_1CFE70E4C();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointForeground();
    sub_1CFE70F20(qword_1EDEC29E0, type metadata accessor for OvernightMetricsChartPointForeground);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22B8);
    }
  }
}

void sub_1CFE70E4C()
{
  if (!qword_1EDEC2278)
  {
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointForeground();
    sub_1CFE70F20(qword_1EDEC29E0, type metadata accessor for OvernightMetricsChartPointForeground);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2278);
    }
  }
}

uint64_t sub_1CFE70F20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFE70F9C()
{
  if (!qword_1EDEC1868)
  {
    sub_1CFE71094();
    sub_1CFE725E0(255, &qword_1EDEC4D70, MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1CFE71110();
    sub_1CFE70F20(&qword_1EDEC1720, sub_1CFE71094);
    sub_1CFE712CC();
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1868);
    }
  }
}

void sub_1CFE71094()
{
  if (!qword_1EDEC1728)
  {
    sub_1CFE725E0(255, &qword_1EDEC4D70, MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v0 = sub_1CFF0E65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1728);
    }
  }
}

void sub_1CFE71110()
{
  if (!qword_1EDEC22C8)
  {
    sub_1CFE711E0();
    sub_1CFF0D3CC();
    sub_1CFE71278();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22C8);
    }
  }
}

void sub_1CFE711E0()
{
  if (!qword_1EDEC2288)
  {
    sub_1CFF0D3CC();
    sub_1CFE71278();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2288);
    }
  }
}

unint64_t sub_1CFE71278()
{
  result = qword_1EDEC35D8[0];
  if (!qword_1EDEC35D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC35D8);
  }

  return result;
}

unint64_t sub_1CFE712CC()
{
  result = qword_1EDEC1788;
  if (!qword_1EDEC1788)
  {
    sub_1CFE725E0(255, &qword_1EDEC4D70, MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1788);
  }

  return result;
}

void sub_1CFE71360()
{
  if (!qword_1EDEC1878)
  {
    sub_1CFE70980(255);
    sub_1CFF0CCEC();
    sub_1CFE70F20(&qword_1EDEC1770, sub_1CFE70980);
    sub_1CFE70F20(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1878);
    }
  }
}

void sub_1CFE71478(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFE709D4(255);
    type metadata accessor for IndividualOvernightMetricChartPoint.ID(255);
    a3(255);
    sub_1CFE70F20(&qword_1EDEC1730, sub_1CFE709D4);
    sub_1CFE70F20(&qword_1EDEC2BE8, type metadata accessor for IndividualOvernightMetricChartPoint.ID);
    v5 = sub_1CFF0E07C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFE715B0()
{
  if (!qword_1EDEC22B0)
  {
    sub_1CFE716B4();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointShadow();
    sub_1CFE70F20(qword_1EDEC3050, type metadata accessor for OvernightMetricsChartPointShadow);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22B0);
    }
  }
}

void sub_1CFE716B4()
{
  if (!qword_1EDEC2270)
  {
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointShadow();
    sub_1CFE70F20(qword_1EDEC3050, type metadata accessor for OvernightMetricsChartPointShadow);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2270);
    }
  }
}

uint64_t sub_1CFE717BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE71820@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for IndividualOvernightMetricsChartPoints() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFE6D258(a1, v2 + v6, v7, a2);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v12 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v12 + 16) & ~v12);
  v3 = sub_1CFF0C7AC();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  sub_1CFE55184();
  v11 = v5;
  v4(v2 + *(v5 + 36), v3);
  type metadata accessor for IndividualOvernightMetricChartPointCollection();

  if (*(v2 + v1[5]))
  {
  }

  v6 = v2 + v1[9];

  v7 = v6 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v8 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v4(v7, v3);
    v9 = v7 + *(v8 + 20);
    v4(v9, v3);
    v4(v9 + *(v11 + 36), v3);
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v2 + v1[10]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE71C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IndividualOvernightMetricsChartPoints() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFE6DE70(a1, v2 + v6, v7, a2);
}

unint64_t sub_1CFE71CBC()
{
  result = qword_1EDEC2380;
  if (!qword_1EDEC2380)
  {
    sub_1CFE72D30(255, &qword_1EDEC2378, sub_1CFE709B4, sub_1CFE70F68);
    sub_1CFE71F8C(&qword_1EDEC1910, sub_1CFE709B4, sub_1CFE71DFC);
    sub_1CFE71F8C(&qword_1EDEC1850, sub_1CFE70F68, sub_1CFE71FFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2380);
  }

  return result;
}

unint64_t sub_1CFE71DFC()
{
  result = qword_1EDEC2300;
  if (!qword_1EDEC2300)
  {
    sub_1CFE70A6C(255);
    sub_1CFE70C0C();
    sub_1CFE70D48();
    sub_1CFE70E4C();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointForeground();
    sub_1CFE70F20(qword_1EDEC29E0, type metadata accessor for OvernightMetricsChartPointForeground);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2300);
  }

  return result;
}

uint64_t sub_1CFE71F8C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFE71FFC()
{
  result = qword_1EDEC1870;
  if (!qword_1EDEC1870)
  {
    sub_1CFE70F9C();
    sub_1CFE711E0();
    sub_1CFF0D3CC();
    sub_1CFE71278();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1870);
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

void sub_1CFE72204()
{
  if (!qword_1EC512368)
  {
    sub_1CFE7084C();
    sub_1CFE722EC();
    sub_1CFE71F8C(&qword_1EDEC1890, sub_1CFE7084C, sub_1CFE71CBC);
    sub_1CFE723C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512368);
    }
  }
}

void sub_1CFE722EC()
{
  if (!qword_1EC512370)
  {
    sub_1CFE73518(255, &qword_1EC512378, sub_1CFE7238C, &qword_1EC512388, sub_1CFE7238C);
    sub_1CFF0D6AC();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512370);
    }
  }
}

unint64_t sub_1CFE723C0()
{
  result = qword_1EC512390;
  if (!qword_1EC512390)
  {
    sub_1CFE722EC();
    sub_1CFE7238C(255);
    sub_1CFE70F20(&qword_1EC512388, sub_1CFE7238C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512390);
  }

  return result;
}

unint64_t sub_1CFE724B8()
{
  result = qword_1EDEC22A0;
  if (!qword_1EDEC22A0)
  {
    sub_1CFE7157C(255);
    sub_1CFE716B4();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointShadow();
    sub_1CFE70F20(qword_1EDEC3050, type metadata accessor for OvernightMetricsChartPointShadow);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC22A0);
  }

  return result;
}

void sub_1CFE725E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E63B0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1CFE72634(uint64_t a1)
{
  sub_1CFE55184();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE72698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE72718(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for IndividualOvernightMetricsChartPoints() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1CFE727AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE72814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE72874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IndividualOvernightMetricsChartPoints() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFE6FCFC(a1, v6, a2);
}

void sub_1CFE72900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1CFE7297C()
{
  if (!qword_1EDEC18A8)
  {
    sub_1CFE709D4(255);
    type metadata accessor for IndividualOvernightMetricChartPoint.ID(255);
    sub_1CFE72AB8(255, &qword_1EDEC21E0, sub_1CFE72B24, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
    sub_1CFE70F20(&qword_1EDEC1730, sub_1CFE709D4);
    sub_1CFE70F20(&qword_1EDEC2BE8, type metadata accessor for IndividualOvernightMetricChartPoint.ID);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC18A8);
    }
  }
}

void sub_1CFE72AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1CFE72B24()
{
  if (!qword_1EDEC22C0)
  {
    sub_1CFE72C28();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointBackground();
    sub_1CFE70F20(&qword_1EDEC2A88, type metadata accessor for OvernightMetricsChartPointBackground);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22C0);
    }
  }
}

void sub_1CFE72C28()
{
  if (!qword_1EDEC2280)
  {
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointBackground();
    sub_1CFE70F20(&qword_1EDEC2A88, type metadata accessor for OvernightMetricsChartPointBackground);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2280);
    }
  }
}

void sub_1CFE72D30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1CFF0D08C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v12 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v12 + 16) & ~v12);
  v3 = sub_1CFF0C7AC();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  sub_1CFE55184();
  v11 = v5;
  v4(v2 + *(v5 + 36), v3);
  type metadata accessor for IndividualOvernightMetricChartPointCollection();

  if (*(v2 + v1[5]))
  {
  }

  v6 = v2 + v1[9];

  v7 = v6 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v8 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v4(v7, v3);
    v9 = v7 + *(v8 + 20);
    v4(v9, v3);
    v4(v9 + *(v11 + 36), v3);
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v2 + v1[10]))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1CFE730F8()
{
  result = qword_1EDEC21E8;
  if (!qword_1EDEC21E8)
  {
    sub_1CFE72AB8(255, &qword_1EDEC21E0, sub_1CFE72B24, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
    sub_1CFE72C28();
    sub_1CFF0D3CC();
    type metadata accessor for OvernightMetricsChartPointBackground();
    sub_1CFE70F20(&qword_1EDEC2A88, type metadata accessor for OvernightMetricsChartPointBackground);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC21E8);
  }

  return result;
}

unint64_t sub_1CFE73260()
{
  result = qword_1EDEC2360;
  if (!qword_1EDEC2360)
  {
    sub_1CFE72CFC(255);
    sub_1CFE71F8C(&qword_1EDEC1850, sub_1CFE70F68, sub_1CFE71FFC);
    sub_1CFE71F8C(&qword_1EDEC18B0, sub_1CFE7297C, sub_1CFE730F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2360);
  }

  return result;
}

uint64_t sub_1CFE73370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFE733D8()
{
  if (!qword_1EC512398)
  {
    sub_1CFE72CFC(255);
    sub_1CFE73518(255, &qword_1EC5123A0, sub_1CFE735CC, &qword_1EC5123B0, sub_1CFE735CC);
    sub_1CFE73260();
    sub_1CFE735CC(255);
    sub_1CFE70F20(&qword_1EC5123B0, sub_1CFE735CC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512398);
    }
  }
}

void sub_1CFE73518(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1CFE70F20(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1CFE73600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IndividualOvernightMetricsChartPoints() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_1CFF0CCEC();

  return sub_1CFE6E674(a1, v2 + v6, a2);
}

unint64_t sub_1CFE73700()
{
  result = qword_1EDEC2370;
  if (!qword_1EDEC2370)
  {
    sub_1CFE737D4();
    sub_1CFE71F8C(&qword_1EDEC18C8, sub_1CFE71788, sub_1CFE73850);
    sub_1CFE73898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2370);
  }

  return result;
}

void sub_1CFE737D4()
{
  if (!qword_1EDEC2368)
  {
    sub_1CFE71788(255);
    sub_1CFE71360();
    v0 = sub_1CFF0D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2368);
    }
  }
}

unint64_t sub_1CFE73898()
{
  result = qword_1EDEC1880;
  if (!qword_1EDEC1880)
  {
    sub_1CFE71360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1880);
  }

  return result;
}

uint64_t HKQuantity.formattedAttributedValue(for:unit:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v143 = a3;
  v109 = sub_1CFF0ECBC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1CFF0ECDC();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1CFF0C4BC();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v120 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE74BE0();
  v122 = v7;
  v121 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE74CC0(0, &qword_1EC5123C8, MEMORY[0x1E6968060]);
  v115 = v9;
  v114 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v104 - v10;
  sub_1CFE74CC0(0, &qword_1EC5123D8, MEMORY[0x1E6968048]);
  v112 = v11;
  v111 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v104 - v12;
  sub_1CFE74CC0(0, &qword_1EC5123E0, MEMORY[0x1E6968070]);
  v118 = v13;
  v117 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v104 - v14;
  v15 = sub_1CFF0DC5C();
  v138 = *(v15 - 8);
  v139 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69688D8];
  sub_1CFE77CEC(0, &qword_1EC5123E8, sub_1CFE74D20, MEMORY[0x1E697D8C8], MEMORY[0x1E69688D8]);
  v136 = *(v18 - 8);
  v137 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v134 = &v104 - v19;
  v20 = sub_1CFF0C4DC();
  v129 = *(v20 - 8);
  v130 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE77CEC(0, &qword_1EC5123F8, sub_1CFE74D74, MEMORY[0x1E6968450], v17);
  v126 = *(v22 - 8);
  v127 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  v25 = MEMORY[0x1E69E63B0];
  sub_1CFE77CEC(0, &qword_1EC512408, sub_1CFE74DC8, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E30]);
  v27 = v26;
  v125 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v104 - v28;
  sub_1CFE77CEC(0, &qword_1EC512418, sub_1CFE74DC8, v25, MEMORY[0x1E6968E58]);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v104 - v33;
  v35 = sub_1CFF0C5BC();
  v132 = *(v35 - 8);
  v133 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v131 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v142 = &v104 - v38;
  v39 = sub_1CFF0CB6C();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v43, a1, v39, v41);
  v44 = (*(v40 + 88))(v43, v39);
  if (v44 == *MEMORY[0x1E69A2E60] || v44 == *MEMORY[0x1E69A2E50])
  {
    sub_1CFF0E7AC();
    sub_1CFF0C5AC();
    return sub_1CFF0C56C();
  }

  else
  {
    if (v44 == *MEMORY[0x1E69A2E48])
    {
      v45 = [objc_opt_self() percentUnit];
      [v141 doubleValueForUnit_];
      v47 = v46;

      v144 = v47;
      sub_1CFF0C3AC();
      sub_1CFF0C60C();
      (*(v32 + 8))(v34, v31);
      sub_1CFE74DC8();
      sub_1CFE74FE4(&qword_1EC512430, &qword_1EC512408, MEMORY[0x1E6968E30]);
      sub_1CFF0E40C();
      (*(v125 + 8))(v29, v27);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v104 - 2) = v49;
      swift_getKeyPath();
      sub_1CFE74D74();
      sub_1CFF0C57C();

      v51 = v128;
      v50 = v129;
      v52 = v130;
      (*(v129 + 104))(v128, *MEMORY[0x1E6968440], v130);
      v53 = v142;
      v54 = v127;
      sub_1CFF0C58C();
      (*(v50 + 8))(v51, v52);
      (*(v126 + 8))(v24, v54);
      v55 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v55);
      *(&v104 - 2) = v56;
      swift_getKeyPath();
      sub_1CFE74D20();
      v57 = v134;
      sub_1CFF0C57C();

      v58 = v135;
      sub_1CFF0DC4C();
      v59 = v131;
      v60 = v137;
      sub_1CFF0C58C();
      (*(v138 + 8))(v58, v139);
      (*(v136 + 8))(v57, v60);
LABEL_5:
      sub_1CFF0C53C();
      v61 = v133;
      v62 = *(v132 + 8);
      v62(v59, v133);
      return (v62)(v53, v61);
    }

    if (v44 == *MEMORY[0x1E69A2E58])
    {
      v64 = v141;
      v65 = v140;
      v66 = v116;
      sub_1CFF0C41C();
      v67 = v110;
      sub_1CFF0C3EC();
      v68 = v113;
      v69 = v112;
      sub_1CFF0C42C();
      (*(v111 + 8))(v67, v69);
      sub_1CFE74F70();
      v70 = v118;
      v71 = v115;
      sub_1CFF0C43C();
      (*(v114 + 8))(v68, v71);
      v72 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v72);
      *(&v104 - 2) = v73;
      swift_getKeyPath();
      sub_1CFE74E1C(&qword_1EC5123C0, MEMORY[0x1E6968438]);
      v74 = v119;
      sub_1CFF0C57C();

      v75 = v123;
      v76 = v120;
      v77 = v124;
      (*(v123 + 104))(v120, *MEMORY[0x1E69683F0], v124);
      v78 = v142;
      v79 = v122;
      sub_1CFF0C58C();
      (*(v75 + 8))(v76, v77);
      (*(v121 + 8))(v74, v79);
      v80 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v80);
      *(&v104 - 2) = v81;
      swift_getKeyPath();
      sub_1CFE74D20();
      v82 = v134;
      sub_1CFF0C57C();

      v83 = v135;
      sub_1CFF0DC4C();
      v84 = v131;
      v85 = v137;
      sub_1CFF0C58C();
      (*(v138 + 8))(v83, v139);
      (*(v136 + 8))(v82, v85);
      sub_1CFF0C53C();
      v86 = v133;
      v87 = *(v132 + 8);
      v87(v84, v133);
      v87(v78, v86);
      return (*(v117 + 8))(v66, v70);
    }

    else
    {
      if (v44 == *MEMORY[0x1E69A2E40])
      {
        v88 = v141;
        sub_1CFF0ECFC();
        v89 = v104;
        sub_1CFF0C3FC();
        v90 = v107;
        sub_1CFF0ECCC();
        (*(v105 + 8))(v89, v106);
        sub_1CFE74E1C(&qword_1EC512420, MEMORY[0x1E696A1A8]);
        v91 = v109;
        sub_1CFF0ECEC();
        (*(v108 + 8))(v90, v91);
        v92 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v92);
        *(&v104 - 2) = v93;
        swift_getKeyPath();
        sub_1CFE74E1C(&qword_1EC5123C0, MEMORY[0x1E6968438]);
        v94 = v119;
        sub_1CFF0C57C();

        v95 = v123;
        v96 = v120;
        v97 = v124;
        (*(v123 + 104))(v120, *MEMORY[0x1E69683F0], v124);
        v53 = v142;
        v98 = v122;
        sub_1CFF0C58C();
        (*(v95 + 8))(v96, v97);
        (*(v121 + 8))(v94, v98);
        v99 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v99);
        *(&v104 - 2) = v100;
        swift_getKeyPath();
        sub_1CFE74D20();
        v101 = v134;
        sub_1CFF0C57C();

        v102 = v135;
        sub_1CFF0DC4C();
        v59 = v131;
        v103 = v137;
        sub_1CFF0C58C();
        (*(v138 + 8))(v102, v139);
        (*(v136 + 8))(v101, v103);
        goto LABEL_5;
      }

      sub_1CFF0C52C();
      return (*(v40 + 8))(v43, v39);
    }
  }
}

void sub_1CFE74BE0()
{
  if (!qword_1EC5123B8)
  {
    sub_1CFF0C4CC();
    sub_1CFE74E1C(&qword_1EC5123C0, MEMORY[0x1E6968438]);
    v0 = sub_1CFF0C59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5123B8);
    }
  }
}

unint64_t sub_1CFE74C74()
{
  result = qword_1EC5123D0;
  if (!qword_1EC5123D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC5123D0);
  }

  return result;
}

void sub_1CFE74CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE74C74();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFE74D20()
{
  result = qword_1EC5123F0;
  if (!qword_1EC5123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5123F0);
  }

  return result;
}

unint64_t sub_1CFE74D74()
{
  result = qword_1EC512400;
  if (!qword_1EC512400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512400);
  }

  return result;
}

unint64_t sub_1CFE74DC8()
{
  result = qword_1EC512410;
  if (!qword_1EC512410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512410);
  }

  return result;
}

uint64_t sub_1CFE74E1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFE74F70()
{
  result = qword_1EC512428;
  if (!qword_1EC512428)
  {
    sub_1CFE74CC0(255, &qword_1EC5123C8, MEMORY[0x1E6968060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512428);
  }

  return result;
}

uint64_t sub_1CFE74FE4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1CFE77CEC(255, a2, sub_1CFE74DC8, MEMORY[0x1E69E63B0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HKQuantity.MedialRangeRelativeStringVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

id HKQuantity.formatted(for:classification:middle:unit:variant:)(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v181 = a3;
  v182 = a1;
  v8 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v183 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v184 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE77CEC(0, &qword_1EC512438, sub_1CFE74DC8, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v172 = v12;
  v185 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v161 - v13;
  v14 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1CFF0CB6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFF0CCEC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v165 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v161 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v164 = &v161 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v166 = (&v161 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v167 = (&v161 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v169 = &v161 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v161 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v161 - v36;
  v178 = *a5;
  [v180 doubleValueForUnit_];
  v39 = v38;
  v40 = *(v20 + 16);
  v180 = a2;
  v174 = v20 + 16;
  v173 = v40;
  v40(v37, a2, v19);
  v41 = *(v20 + 88);
  v179 = v19;
  v177 = v20 + 88;
  v42 = v41(v37, v19);
  v176 = *MEMORY[0x1E69A2EE8];
  if (v42 == v176)
  {
    [v181 doubleValueForUnit_];
    v44 = v39 - v43;
  }

  else
  {
    if (v42 != *MEMORY[0x1E69A2EE0] && v42 != *MEMORY[0x1E69A2EF0] && v42 != *MEMORY[0x1E69A2ED8])
    {
      goto LABEL_96;
    }

    [v181 doubleValueForUnit_];
    v44 = v45 - v39;
  }

  (*(v16 + 16))(v18, v182, v15);
  v46 = (*(v16 + 88))(v18, v15);
  v47 = *MEMORY[0x1E69A2E60];
  v175 = v41;
  if (v46 == v47)
  {
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    v48 = v171;
    sub_1CFF0C3DC();
    v49 = sub_1CFE74FE4(&qword_1EC512440, &qword_1EC512438, MEMORY[0x1E6968E78]);
    v50 = sub_1CFE60C24();
    v51 = v172;
    v52 = v50;
    sub_1CFF0E4EC();
    v53 = v185 + 8;
    v167 = *(v185 + 8);
    v167(v48, v51);
    v185 = v53;
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v181 = ObjCClassFromMetadata;
    v164 = objc_opt_self();
    v55 = [v164 bundleForClass_];
    sub_1CFF0C7FC();
    v168 = sub_1CFF0E5AC();
    v182 = v56;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    sub_1CFF0C3DC();
    v166 = v49;
    v165 = v52;
    sub_1CFF0E4EC();
    v57 = v167;
    v167(v48, v51);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v58 = v164;
    v59 = [v164 bundleForClass_];
    sub_1CFF0C7FC();
    v162 = sub_1CFF0E5AC();
    v169 = v60;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    sub_1CFF0C3DC();
    sub_1CFF0E4EC();
    v57(v48, v51);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v61 = v58;
    v62 = v58;
    v63 = v181;
    v64 = [v61 bundleForClass_];
    sub_1CFF0C7FC();
    v163 = sub_1CFF0E5AC();
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    sub_1CFF0C3DC();
    sub_1CFF0E4EC();
    v57(v48, v51);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v65 = [v62 bundleForClass_];
    sub_1CFF0C7FC();
    v66 = sub_1CFF0E5AC();
    v67 = v170;
    v68 = v179;
    v173(v170, v180, v179);
    v69 = v175(v67, v68);
    if (v69 == v176)
    {

      if (v178)
      {

        v70 = &v189;
        return *(v70 - 32);
      }

LABEL_32:

      return v168;
    }

    if (v69 == *MEMORY[0x1E69A2EE0])
    {

      if (v178)
      {
        goto LABEL_24;
      }

      v109 = &v188;
      return *(v109 - 32);
    }

    if (v69 == *MEMORY[0x1E69A2EF0] || v69 == *MEMORY[0x1E69A2ED8])
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

  if (v46 == *MEMORY[0x1E69A2E50])
  {
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    v71 = v171;
    sub_1CFF0C3BC();
    v72 = sub_1CFE74FE4(&qword_1EC512440, &qword_1EC512438, MEMORY[0x1E6968E78]);
    v73 = sub_1CFE60C24();
    v74 = v172;
    v75 = v73;
    sub_1CFF0E4EC();
    v76 = v185 + 8;
    v167 = *(v185 + 8);
    v167(v71, v74);
    v185 = v76;
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    v77 = swift_getObjCClassFromMetadata();
    v181 = v77;
    v164 = objc_opt_self();
    v78 = [v164 bundleForClass_];
    sub_1CFF0C7FC();
    v168 = sub_1CFF0E5AC();
    v182 = v79;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    sub_1CFF0C3BC();
    v166 = v72;
    v165 = v75;
    sub_1CFF0E4EC();
    v80 = v167;
    v167(v71, v74);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v81 = v164;
    v82 = [v164 bundleForClass_];
    sub_1CFF0C7FC();
    v162 = sub_1CFF0E5AC();
    v170 = v83;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    sub_1CFF0C3BC();
    sub_1CFF0E4EC();
    v80(v71, v74);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v84 = v81;
    v62 = v81;
    v63 = v181;
    v85 = [v84 bundleForClass_];
    sub_1CFF0C7FC();
    v163 = sub_1CFF0E5AC();
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v44;
    sub_1CFF0C3BC();
    sub_1CFF0E4EC();
    v80(v71, v74);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v86 = [v62 bundleForClass_];
    sub_1CFF0C7FC();
    v66 = sub_1CFF0E5AC();
    v87 = v169;
    v88 = v179;
    v173(v169, v180, v179);
    v89 = v175(v87, v88);
    if (v89 == v176)
    {
      goto LABEL_19;
    }

    if (v89 == *MEMORY[0x1E69A2EE0])
    {

      if (v178)
      {
LABEL_24:

        return v66;
      }

LABEL_53:

      v70 = &v188;
      return *(v70 - 32);
    }

    if (v89 == *MEMORY[0x1E69A2EF0] || v89 == *MEMORY[0x1E69A2ED8])
    {
LABEL_60:

      sub_1CFF0E4DC();
      v140 = [v62 bundleForClass_];
LABEL_66:
      v140;
      sub_1CFF0C7FC();
      return sub_1CFF0E5AC();
    }

LABEL_96:
    v186 = 0.0;
    v187 = 0xE000000000000000;
    sub_1CFF0E96C();
    MEMORY[0x1D3879330](0xD000000000000017, 0x80000001CFF14F80);
    sub_1CFF0EA0C();
    result = sub_1CFF0EA2C();
    __break(1u);
    return result;
  }

  if (v46 == *MEMORY[0x1E69A2E48])
  {
    v90 = v44 * 100.0;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v90;
    v91 = v171;
    sub_1CFF0C3BC();
    v92 = sub_1CFE74FE4(&qword_1EC512440, &qword_1EC512438, MEMORY[0x1E6968E78]);
    v170 = sub_1CFE60C24();
    v93 = v172;
    sub_1CFF0E4EC();
    v94 = v185 + 8;
    v166 = *(v185 + 8);
    v166(v91, v93);
    v185 = v94;
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    v95 = swift_getObjCClassFromMetadata();
    v181 = v95;
    v164 = objc_opt_self();
    v96 = [v164 bundleForClass_];
    sub_1CFF0C7FC();
    v168 = sub_1CFF0E5AC();
    v182 = v97;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v90;
    sub_1CFF0C3BC();
    v165 = v92;
    sub_1CFF0E4EC();
    v98 = v166;
    v166(v91, v93);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v99 = v164;
    v100 = [v164 bundleForClass_];
    sub_1CFF0C7FC();
    v162 = sub_1CFF0E5AC();
    v169 = v101;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v90;
    sub_1CFF0C3BC();
    sub_1CFF0E4EC();
    v98(v91, v93);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v102 = v99;
    v62 = v99;
    v63 = v181;
    v103 = [v102 bundleForClass_];
    sub_1CFF0C7FC();
    v163 = sub_1CFF0E5AC();
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = v90;
    sub_1CFF0C3BC();
    sub_1CFF0E4EC();
    v98(v91, v93);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v104 = [v62 bundleForClass_];
    sub_1CFF0C7FC();
    v105 = sub_1CFF0E5AC();
    v106 = v167;
    v107 = v179;
    v173(v167, v180, v179);
    v108 = v175(v106, v107);
    if (v108 == v176)
    {
LABEL_19:

      if ((v178 & 1) == 0)
      {
        goto LABEL_32;
      }

      v109 = &v189;
      return *(v109 - 32);
    }

    if (v108 != *MEMORY[0x1E69A2EE0])
    {
      if (v108 == *MEMORY[0x1E69A2EF0] || v108 == *MEMORY[0x1E69A2ED8])
      {
        goto LABEL_60;
      }

      goto LABEL_96;
    }

    if ((v178 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_37:

    return v105;
  }

  if (v46 == *MEMORY[0x1E69A2E58])
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    v111 = swift_getObjCClassFromMetadata();
    v112 = objc_opt_self();
    v113 = [v112 bundleForClass_];
    sub_1CFF0C7FC();
    v168 = sub_1CFF0E5AC();
    v182 = v114;
    sub_1CFF0E4DC();
    v115 = [v112 bundleForClass_];
    sub_1CFF0C7FC();
    v185 = sub_1CFF0E5AC();
    sub_1CFF0E4DC();
    v116 = [v112 bundleForClass_];
    sub_1CFF0C7FC();
    v117 = sub_1CFF0E5AC();
    sub_1CFF0E4DC();
    v118 = [v112 bundleForClass_];
    sub_1CFF0C7FC();
    v119 = sub_1CFF0E5AC();
    v120 = v166;
    v121 = v179;
    v173(v166, v180, v179);
    v122 = v175(v120, v121);
    if (v122 == v176)
    {

      if (v178)
      {

        return v117;
      }

      goto LABEL_32;
    }

    if (v122 != *MEMORY[0x1E69A2EE0])
    {
      if (v122 == *MEMORY[0x1E69A2EF0] || v122 == *MEMORY[0x1E69A2ED8])
      {

        sub_1CFF0E4DC();
        v140 = [v112 bundleForClass_];
        goto LABEL_66;
      }

      goto LABEL_96;
    }

    if (v178)
    {

      return v119;
    }

    else
    {

      return v185;
    }
  }

  if (v46 != *MEMORY[0x1E69A2E40])
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  v123 = v44 / 60.0;
  if (v44 / 60.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v123 >= 9.22337204e18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v124 = v44 / 3600.0;
  v125 = COERCE__INT64(fabs(v44 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v44 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL || v125)
  {
    goto LABEL_93;
  }

  if (v124 <= -9.22337204e18)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v124 >= 9.22337204e18)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v126 = v123 % 60;
  v127 = v124;
  if (!v124)
  {
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v126;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    v141 = swift_getObjCClassFromMetadata();
    v142 = objc_opt_self();
    v143 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v168 = sub_1CFF0E5AC();
    v182 = v144;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v126;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v145 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v172 = sub_1CFF0E5AC();
    v185 = v146;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v126;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v147 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v181 = sub_1CFF0E5AC();
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v126;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v148 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v105 = sub_1CFF0E5AC();
    v149 = v164;
    v150 = v179;
    v173(v164, v180, v179);
    v151 = v175(v149, v150);
    if (v151 == v176)
    {
      goto LABEL_74;
    }

    if (v151 == *MEMORY[0x1E69A2EE0])
    {
      goto LABEL_81;
    }

    if (v151 != *MEMORY[0x1E69A2EF0] && v151 != *MEMORY[0x1E69A2ED8])
    {
      goto LABEL_96;
    }

    goto LABEL_71;
  }

  if (!v126)
  {
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v127;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    v141 = swift_getObjCClassFromMetadata();
    v142 = objc_opt_self();
    v152 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v168 = sub_1CFF0E5AC();
    v182 = v153;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v127;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v154 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v172 = sub_1CFF0E5AC();
    v185 = v155;
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v127;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v156 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v181 = sub_1CFF0E5AC();
    sub_1CFF0E52C();
    sub_1CFF0E51C();
    v186 = *&v127;
    sub_1CFF0E4FC();
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    v157 = [v142 bundleForClass_];
    sub_1CFF0C7FC();
    v105 = sub_1CFF0E5AC();
    v158 = v163;
    v159 = v179;
    v173(v163, v180, v179);
    v160 = v175(v158, v159);
    if (v160 == v176)
    {
LABEL_74:

      if ((v178 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }

    if (v160 == *MEMORY[0x1E69A2EE0])
    {
LABEL_81:

      if ((v178 & 1) == 0)
      {

        return v172;
      }

      goto LABEL_37;
    }

    if (v160 != *MEMORY[0x1E69A2EF0] && v160 != *MEMORY[0x1E69A2ED8])
    {
      goto LABEL_96;
    }

LABEL_71:

    sub_1CFF0E4DC();
    v140 = [v142 bundleForClass_];
    goto LABEL_66;
  }

  sub_1CFF0E52C();
  sub_1CFF0E51C();
  v186 = *&v127;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  v186 = *&v126;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  sub_1CFF0E54C();
  type metadata accessor for HealthBalanceUI();
  v128 = swift_getObjCClassFromMetadata();
  v129 = objc_opt_self();
  v130 = [v129 bundleForClass_];
  sub_1CFF0C7FC();
  v168 = sub_1CFF0E5AC();
  v182 = v131;
  sub_1CFF0E52C();
  sub_1CFF0E51C();
  v186 = *&v127;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  v186 = *&v126;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  sub_1CFF0E54C();
  v132 = [v129 bundleForClass_];
  sub_1CFF0C7FC();
  v172 = sub_1CFF0E5AC();
  v185 = v133;
  sub_1CFF0E52C();
  sub_1CFF0E51C();
  v186 = *&v127;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  v186 = *&v126;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  sub_1CFF0E54C();
  v134 = [v129 bundleForClass_];
  sub_1CFF0C7FC();
  v181 = sub_1CFF0E5AC();
  sub_1CFF0E52C();
  sub_1CFF0E51C();
  v186 = *&v127;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  v186 = *&v126;
  sub_1CFF0E4FC();
  sub_1CFF0E51C();
  sub_1CFF0E54C();
  v135 = [v129 0x1E83D243BLL];
  sub_1CFF0C7FC();
  v136 = sub_1CFF0E5AC();
  v137 = v165;
  v138 = v179;
  v173(v165, v180, v179);
  v139 = v175(v137, v138);
  if (v139 == v176)
  {

    if ((v178 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_52:

    return v181;
  }

  if (v139 != *MEMORY[0x1E69A2EE0])
  {
    if (v139 == *MEMORY[0x1E69A2EF0] || v139 == *MEMORY[0x1E69A2ED8])
    {

      sub_1CFF0E4DC();
      v140 = [v129 0x1E83D243BLL];
      goto LABEL_66;
    }

    goto LABEL_96;
  }

  if ((v178 & 1) == 0)
  {

    v70 = &v190;
    return *(v70 - 32);
  }

  return v136;
}

void sub_1CFE77CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFE77D58()
{
  result = qword_1EC512448;
  if (!qword_1EC512448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512448);
  }

  return result;
}

void sub_1CFE77DBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0ECAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFE77E20()
{
  if (!qword_1EC512460)
  {
    sub_1CFF0C50C();
    sub_1CFF0C4CC();
    v0 = sub_1CFF0ECAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512460);
    }
  }
}

void *InternalSettingsModelProvider.__allocating_init(healthStore:settingsProvider:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1CFF0C90C();
  v4[2] = a1;
  sub_1CFE77F90();
  v5 = a1;
  v4[3] = sub_1CFF0E81C();
  v6 = sub_1CFF0E82C();

  v4[4] = v6;
  v4[5] = a2;
  return v4;
}

uint64_t InternalSettingsModelProvider.init(healthStore:settingsProvider:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1CFF0C90C();
  *(v2 + 16) = a1;
  sub_1CFE77F90();
  v6 = a1;
  *(v2 + 24) = sub_1CFF0E81C();
  v7 = sub_1CFF0E82C();

  *(v3 + 32) = v7;
  *(v3 + 40) = a2;
  return v3;
}

unint64_t sub_1CFE77F90()
{
  result = qword_1EC512470;
  if (!qword_1EC512470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC512470);
  }

  return result;
}

uint64_t InternalSettingsModelProvider.notificationThreshold.getter()
{
  swift_getKeyPath();
  sub_1CFE78178();
  sub_1CFF0C8DC();

  return sub_1CFF0C92C();
}

uint64_t sub_1CFE78054@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1CFE78178();
  sub_1CFF0C8DC();

  result = sub_1CFF0C92C();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1CFE780D4()
{
  swift_getKeyPath();
  sub_1CFE78178();
  sub_1CFF0C8CC();
}

unint64_t sub_1CFE78178()
{
  result = qword_1EC512478;
  if (!qword_1EC512478)
  {
    type metadata accessor for InternalSettingsModelProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512478);
  }

  return result;
}

uint64_t type metadata accessor for InternalSettingsModelProvider()
{
  result = qword_1EC512480;
  if (!qword_1EC512480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InternalSettingsModelProvider.notificationThreshold.setter()
{
  swift_getKeyPath();
  sub_1CFE78178();
  sub_1CFF0C8CC();
}

void (*InternalSettingsModelProvider.notificationThreshold.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  *(v4 + 32) = OBJC_IVAR____TtC15HealthBalanceUI29InternalSettingsModelProvider___observationRegistrar;
  *(v4 + 16) = v1;
  *(v4 + 40) = sub_1CFE78178();
  sub_1CFF0C8DC();

  *v4 = sub_1CFF0C92C();
  *(v4 + 8) = 0;
  return sub_1CFE783AC;
}

void sub_1CFE783AC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v1[2] = v1[3];
  sub_1CFF0C8CC();

  free(v1);
}

uint64_t InternalSettingsModelProvider.resetAll()()
{
  v1[2] = v0;
  sub_1CFF0E6DC();
  v1[3] = sub_1CFF0E6CC();
  v3 = sub_1CFF0E66C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CFE78520, v3, v2);
}

uint64_t sub_1CFE78520()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1CFE785B8;

  return MEMORY[0x1EEE0D4D8]();
}

uint64_t sub_1CFE785B8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1CFE78934;
  }

  else
  {
    v5 = sub_1CFE786F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFE786F4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1CFE7878C;

  return MEMORY[0x1EEE0D4D8]();
}

uint64_t sub_1CFE7878C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1CFE78998;
  }

  else
  {
    v5 = sub_1CFE788C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFE788C8()
{

  sub_1CFF0C96C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFE78934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFE78998()
{

  v1 = *(v0 + 8);

  return v1();
}

id *InternalSettingsModelProvider.deinit()
{

  v1 = OBJC_IVAR____TtC15HealthBalanceUI29InternalSettingsModelProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t InternalSettingsModelProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15HealthBalanceUI29InternalSettingsModelProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFE78B40()
{
  result = sub_1CFF0C91C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChangeCountColorThreshold(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ChangeCountColorThreshold(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t Transaction.isTogglingOvernightMetricsChartTimeScope.getter()
{
  sub_1CFE78DAC();
  sub_1CFF0D47C();
  return v1;
}

unint64_t sub_1CFE78DAC()
{
  result = qword_1EC512490;
  if (!qword_1EC512490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512490);
  }

  return result;
}

uint64_t (*Transaction.isTogglingOvernightMetricsChartTimeScope.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1CFE78DAC();
  sub_1CFF0D47C();
  *(a1 + 16) = *(a1 + 17);
  return sub_1CFE78EAC;
}

uint64_t sub_1CFE78F08(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1CFEBDBE0(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1CFEBDBE0(v2, v4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  return sub_1CFEE6DAC(v3, v5);
}

uint64_t sub_1CFE78F88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1CFF0CCEC();
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

uint64_t sub_1CFE79040(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1CFF0CB6C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1CFE79108(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1CFF0CCEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v51 - v11;
  sub_1CFE7A020();
  result = sub_1CFF0EA4C();
  v13 = v9;
  v14 = result;
  v15 = 0;
  v16 = *(a1 + 64);
  v52 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v59 = result;
  v60 = v7 + 2;
  v66 = v7 + 4;
  v57 = v20;
  v58 = result + 64;
  v55 = v6;
  v56 = a1;
  v53 = v9;
  v54 = v7;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v62 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v15 << 6);
      v25 = *(a1 + 48);
      v26 = v7[2];
      v64 = v7[9] * v24;
      v27 = v61;
      v26(v61, v25 + v64, v6);
      v28 = *(a1 + 56);
      v65 = v24;
      v29 = *(v28 + 8 * v24);
      v63 = v7[4];
      v63(v13, v27, v6);
      v30 = *(v29 + 16);
      if (v30)
      {
        break;
      }

      v46 = v7;
      v45 = v13;
      v43 = v6;
      v44 = a1;
      v31 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v47 = v65;
      v14 = v59;
      *(v58 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      v13 = v45;
      v6 = v43;
      result = (v63)(v14[6] + v64);
      *(v14[7] + 8 * v47) = v31;
      v48 = v14[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_30;
      }

      v14[2] = v50;
      v20 = v57;
      v19 = v62;
      a1 = v44;
      v7 = v46;
      if (!v62)
      {
        goto LABEL_5;
      }
    }

    v67 = MEMORY[0x1E69E7CC0];

    result = sub_1CFEF3D14(0, v30, 0);
    v31 = v67;
    v32 = (v29 + 40);
    while (*(a2 + 16))
    {
      v33 = *v32;
      result = sub_1CFEC3B8C(*(v32 - 1));
      if ((v34 & 1) == 0)
      {
        goto LABEL_26;
      }

      v35 = *(a2 + 56);
      v36 = *(v35 + 8 * result);
      result = sub_1CFEC3B8C(v33);
      if ((v37 & 1) == 0)
      {
        goto LABEL_27;
      }

      v38 = v36 - a3;
      v39 = *(v35 + 8 * result) + a3;
      if (v38 > v39)
      {
        goto LABEL_28;
      }

      v67 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_1CFEF3D14((v40 > 1), v41 + 1, 1);
        v31 = v67;
      }

      *(v31 + 16) = v41 + 1;
      v42 = v31 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      v32 += 2;
      if (!--v30)
      {

        v43 = v55;
        v44 = v56;
        v45 = v53;
        v46 = v54;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_5:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        return v14;
      }

      v23 = *(v52 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v62 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CFE794C4(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = sub_1CFF0CCEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  sub_1CFE7A0CC(0, &qword_1EDEC4958, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v92 - v26;
  v28 = a3 * 0.5;
  v101 = sub_1CFEB8B14(MEMORY[0x1E69E7CC0]);
  *&v108[2] = MEMORY[0x1E69E7CD0];
  v106 = *(v9 + 56);
  v107 = v9 + 56;
  v106(v27, 1, 1, v8);
  v105 = *(a1 + 16);
  if (!v105)
  {

    v72 = 0;
    v73 = 0;
LABEL_71:

    v89 = v101;
    v90 = sub_1CFE79108(v101, a2, v28);

    sub_1CFE79108(v89, a2, a4 * 0.5);
    swift_bridgeObjectRelease_n();
    sub_1CFE79EF0(v27);

    sub_1CFE79F7C(v73);
    sub_1CFE79F7C(v72);
    return v90;
  }

  v94 = v22;
  v92 = v11;
  v93 = v14;
  v29 = 0;
  v102 = (v9 + 48);
  v30 = (v9 + 32);
  v99 = 0;
  v100 = (v9 + 8);
  v95 = v9;
  v96 = (v9 + 16);
  v31 = 0.0;
  v32 = 0.0;
  v33 = 1;
  v34 = 0.0;
  v35 = 1;
  v98 = a1;
  v97 = a2;
  do
  {
    if (v29 >= *(a1 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v38 = *(a1 + 8 * v29 + 32);
    sub_1CFF0CCBC();
    v36 = v27;
    if (v33)
    {
      goto LABEL_4;
    }

    v39 = v103;
    sub_1CFE79F8C(v27, v103);
    if ((*v102)(v39, 1, v8) == 1)
    {
      sub_1CFE79EF0(v27);
      v36 = v39;
LABEL_4:
      sub_1CFE79EF0(v36);
      v37 = *v30;
      (*v30)(v27, v19, v8);
      goto LABEL_5;
    }

    v37 = *v30;
    (*v30)(v104, v39, v8);
    if (sub_1CFF0CCDC())
    {
      if (!*(a2 + 16))
      {
        goto LABEL_73;
      }

      v40 = sub_1CFEC3B8C(v31);
      if ((v41 & 1) == 0)
      {
        goto LABEL_74;
      }

      v42 = *(a2 + 56);
      v43 = *(v42 + 8 * v40);
      v44 = v43 - v28;
      v45 = v28 + v43;
      if (v43 - v28 > v28 + v43)
      {
        goto LABEL_75;
      }

      v46 = sub_1CFEC3B8C(v38);
      if ((v47 & 1) == 0)
      {
        goto LABEL_76;
      }

      v48 = *(v42 + 8 * v46);
      v49 = v48 - v28;
      v50 = v28 + v48;
      if (v49 > v50)
      {
        goto LABEL_77;
      }

      v51 = v50 < v44 || v45 < v49;
      a1 = v98;
      if (!v51)
      {
        sub_1CFEE705C(v108, v31);
        sub_1CFEE705C(v108, v38);
        (*v100)(v104, v8);
        sub_1CFE79EF0(v27);
        if (v35)
        {
          if (v38 >= v31)
          {
            if (v31 >= v38)
            {
              v35 = 0;
              v32 = v31;
            }

            else
            {
              if (v31 > v38)
              {
                goto LABEL_85;
              }

              v35 = 0;
              v32 = v31;
              v31 = v38;
            }
          }

          else
          {
            if (v38 > v31)
            {
              goto LABEL_81;
            }

            v35 = 0;
            v32 = v38;
          }
        }

        else if (v38 >= v32)
        {
          if (v34 >= v38)
          {
            v35 = 0;
            v31 = v34;
          }

          else
          {
            if (v32 > v38)
            {
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              sub_1CFEC5A54();
LABEL_64:
              v82 = v108[0];
              v101 = *&v108[0];
              if ((v30 & 1) == 0)
              {
                v83 = v92;
                (*v96)(v92, v29, v8);
                sub_1CFE78F88(v19, v83, MEMORY[0x1E69E7CC0], v101);
                v82 = *&v101;
              }

              v30 = *(*&v82 + 56);
              v35 = v30[v19];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v30[v19] = v35;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_67:
                v86 = *(v35 + 16);
                v85 = *(v35 + 24);
                if (v86 >= v85 >> 1)
                {
                  v30[v19] = sub_1CFE97930((v85 > 1), v86 + 1, 1, v35);
                }

                (*v100)(v29, v8);
                v87 = v30[v19];
                *(v87 + 2) = v86 + 1;
                v88 = v87 + 16 * v86;
                *(v88 + 32) = v32;
                *(v88 + 40) = v34;
                v72 = sub_1CFE7A234;
                goto LABEL_70;
              }

LABEL_83:
              v35 = sub_1CFE97930(0, *(v35 + 16) + 1, 1, v35);
              v30[v19] = v35;
              goto LABEL_67;
            }

            v35 = 0;
            v31 = v38;
          }
        }

        else
        {
          if (v38 > v34)
          {
            goto LABEL_80;
          }

          v35 = 0;
          v32 = v38;
          v31 = v34;
        }

        goto LABEL_40;
      }
    }

    if ((v35 & 1) == 0)
    {
      sub_1CFE79F7C(v99);
      v52 = v101;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v108[0] = v52;
      a2 = sub_1CFEC3BD8(v104);
      v55 = v52[2];
      v56 = (v54 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_78;
      }

      v58 = v54;
      if (v52[3] < v57)
      {
        sub_1CFEC4614(v57, v53);
        v59 = sub_1CFEC3BD8(v104);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_87;
        }

        a2 = v59;
        v61 = v108[0];
        if (v58)
        {
          goto LABEL_35;
        }

LABEL_33:
        *(*&v61 + 8 * (a2 >> 6) + 64) |= 1 << a2;
        v35 = *&v61;
        (*(v95 + 16))(*(*&v61 + 48) + *(v95 + 72) * a2, v104, v8);
        *(*(v35 + 56) + 8 * a2) = MEMORY[0x1E69E7CC0];
        v62 = *(v35 + 16);
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_79;
        }

        v61 = *&v35;
        *(v35 + 16) = v64;
        goto LABEL_35;
      }

      if (v53)
      {
        v61 = v108[0];
        if ((v54 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1CFEC5A54();
        v61 = v108[0];
        if ((v58 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_35:
      v101 = *&v61;
      v65 = *(*&v61 + 56);
      v66 = *(v65 + 8 * a2);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *(v65 + 8 * a2) = v66;
      if ((v67 & 1) == 0)
      {
        v66 = sub_1CFE97930(0, *(v66 + 2) + 1, 1, v66);
        *(v65 + 8 * a2) = v66;
      }

      v69 = *(v66 + 2);
      v68 = *(v66 + 3);
      v99 = (v69 + 1);
      if (v69 >= v68 >> 1)
      {
        *(v65 + 8 * a2) = sub_1CFE97930((v68 > 1), v99, 1, v66);
      }

      (*v100)(v104, v8);
      sub_1CFE79EF0(v27);
      v70 = *(v65 + 8 * a2);
      a1 = v98;
      *(v70 + 16) = v99;
      v71 = v70 + 16 * v69;
      *(v71 + 32) = v32;
      *(v71 + 40) = v34;
      v35 = 1;
      v32 = 0.0;
      v99 = sub_1CFE7A234;
      v31 = 0.0;
      a2 = v97;
      goto LABEL_40;
    }

    (*v100)(v104, v8);
    sub_1CFE79EF0(v27);
    v35 = 1;
    v31 = v34;
LABEL_40:
    v37(v27, v19, v8);
    v34 = v31;
LABEL_5:
    ++v29;
    v106(v27, 0, 1, v8);
    v33 = 0;
    v31 = v38;
  }

  while (v105 != v29);

  if (v35)
  {
    v72 = 0;
LABEL_70:
    v73 = v99;
    goto LABEL_71;
  }

  v74 = v94;
  sub_1CFE79F8C(v27, v94);
  if ((*v102)(v74, 1, v8) == 1)
  {
    sub_1CFE79EF0(v74);
    v72 = 0;
    goto LABEL_70;
  }

  v29 = v93;
  v37(v93, v74, v8);
  v75 = v101;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v108[0] = v75;
  v19 = sub_1CFEC3BD8(v29);
  v77 = v75[2];
  v78 = (v76 & 1) == 0;
  v79 = v77 + v78;
  if (__OFADD__(v77, v78))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  LOBYTE(v30) = v76;
  if (v75[3] >= v79)
  {
    if ((v35 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_64;
  }

  sub_1CFEC4614(v79, v35);
  v80 = sub_1CFEC3BD8(v29);
  if ((v30 & 1) == (v81 & 1))
  {
    v19 = v80;
    goto LABEL_64;
  }

LABEL_87:
  result = sub_1CFF0EBEC();
  __break(1u);
  return result;
}

uint64_t sub_1CFE79EF0(uint64_t a1)
{
  sub_1CFE7A0CC(0, &qword_1EDEC4958, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE79F7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFE79F8C(uint64_t a1, uint64_t a2)
{
  sub_1CFE7A0CC(0, &qword_1EDEC4958, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFE7A020()
{
  if (!qword_1EDEC1648)
  {
    sub_1CFF0CCEC();
    sub_1CFE7A0CC(255, &qword_1EDEC1728, sub_1CFE59578, MEMORY[0x1E69E62F8]);
    sub_1CFE7A130();
    v0 = sub_1CFF0EA7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1648);
    }
  }
}

void sub_1CFE7A0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CFE7A130()
{
  result = qword_1EDEC5188;
  if (!qword_1EDEC5188)
  {
    sub_1CFF0CCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC5188);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFE7A19C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CFE7A1E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CFE7A280()
{
  sub_1CFE725E0(319, &qword_1EDEC4D70, MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  if (v0 <= 0x3F)
  {
    sub_1CFE69B4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFE7A330()
{
  sub_1CFF0EC3C();
  sub_1CFEAF364(*v0, v0[1]);
  sub_1CFF0C7AC();
  sub_1CFE7A620(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE69B4C();
  sub_1CFF0E45C();
  sub_1CFF0DE7C();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE7A418()
{
  sub_1CFEAF364(*v0, v0[1]);
  sub_1CFF0C7AC();
  sub_1CFE7A620(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE69B4C();
  sub_1CFF0E45C();

  return sub_1CFF0DE7C();
}

uint64_t sub_1CFE7A4F0()
{
  sub_1CFF0EC3C();
  sub_1CFEAF364(*v0, v0[1]);
  sub_1CFF0C7AC();
  sub_1CFE7A620(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE69B4C();
  sub_1CFF0E45C();
  sub_1CFF0DE7C();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE7A620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFE7A668()
{
  v1 = v0;
  sub_1CFE7B280();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFE7B480();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v1;
  sub_1CFE7B2E4();
  sub_1CFE7B3D0();
  sub_1CFF0D2DC();
  sub_1CFF0D45C();
  v12 = sub_1CFE7A620(&qword_1EC5124C8, sub_1CFE7B280);
  sub_1CFF0D17C();
  sub_1CFE7B53C(v20);
  (*(v4 + 8))(v6, v3);
  v13 = *(v1 + *(type metadata accessor for BaselineSeparators.Configuration(0) + 24));
  v18 = v12;
  v19 = v13;
  v17 = v3;
  swift_getOpaqueTypeConformance2();
  sub_1CFF0D0FC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CFE7A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_1CFE7B590();
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = v38 - v6;
  sub_1CFE7B5F4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - v10;
  v42 = sub_1CFF0D36C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7B34C();
  v39 = v14;
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = v38 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v50 = v38 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v52 = v38 - v21;
  sub_1CFF0E6DC();
  v38[2] = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFF0D87C();
  type metadata accessor for BaselineSeparators.Configuration(0);
  sub_1CFF0C7AC();
  v49 = v11;
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  sub_1CFE69B4C();
  v23 = *(v22 + 36);
  v38[0] = a1;
  v38[1] = v23;
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  v53 = *(a1 + 8);
  sub_1CFF0D1FC();

  sub_1CFF0D35C();
  v24 = v42;
  sub_1CFF0D13C();
  v40 = *(v40 + 8);
  (v40)(v13, v24);
  sub_1CFF0D87C();
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  v53 = *v38[0];
  sub_1CFF0D1FC();

  sub_1CFF0D35C();
  v25 = v50;
  sub_1CFF0D13C();
  (v40)(v13, v24);
  v26 = v41;
  v27 = *(v41 + 16);
  v28 = v43;
  v29 = v39;
  v27(v43, v52, v39);
  v30 = v44;
  v27(v44, v25, v29);
  v31 = v46;
  v27(v46, v28, v29);
  v32 = v47;
  v33 = *(v47 + 48);
  v27(&v31[v33], v30, v29);
  v34 = *(v26 + 32);
  v35 = v48;
  v34(v48, v31, v29);
  v34(v35 + *(v32 + 48), &v31[v33], v29);
  v36 = *(v26 + 8);
  v36(v50, v29);
  v36(v52, v29);
  v36(v30, v29);
  v36(v28, v29);
}

uint64_t sub_1CFE7B090(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for BaselineSeparators.Configuration(0);
  sub_1CFF0C7AC();
  sub_1CFE7A620(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  sub_1CFE69B4C();
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1CFF0DE4C();
}

uint64_t sub_1CFE7B1F8()
{
  result = type metadata accessor for BaselineSeparators.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1CFE7B280()
{
  if (!qword_1EC5124A0)
  {
    sub_1CFE7B2E4();
    sub_1CFE7B3D0();
    v0 = sub_1CFF0D2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5124A0);
    }
  }
}

void sub_1CFE7B2E4()
{
  if (!qword_1EC5124A8)
  {
    sub_1CFE7B34C();
    v0 = sub_1CFF0D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5124A8);
    }
  }
}

void sub_1CFE7B34C()
{
  if (!qword_1EC5124B0)
  {
    sub_1CFF0D36C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC5124B0);
    }
  }
}

unint64_t sub_1CFE7B3D0()
{
  result = qword_1EC5124B8;
  if (!qword_1EC5124B8)
  {
    sub_1CFE7B2E4();
    sub_1CFF0D36C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5124B8);
  }

  return result;
}

void sub_1CFE7B480()
{
  if (!qword_1EC5124C0)
  {
    sub_1CFE7B280();
    sub_1CFE7A620(&qword_1EC5124C8, sub_1CFE7B280);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC5124C0);
    }
  }
}

void sub_1CFE7B590()
{
  if (!qword_1EC5124D0)
  {
    sub_1CFE7B34C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5124D0);
    }
  }
}

void sub_1CFE7B5F4()
{
  if (!qword_1EDEC2228)
  {
    sub_1CFF0C7AC();
    v0 = sub_1CFF0D20C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2228);
    }
  }
}

uint64_t sub_1CFE7B66C()
{
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](0);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE7B6B0()
{
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](0);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE7B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFF0EBCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFE7B794(uint64_t a1)
{
  v2 = sub_1CFE7B9F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE7B7D0(uint64_t a1)
{
  v2 = sub_1CFE7B9F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE7B80C(void *a1, uint64_t a2)
{
  sub_1CFE7BC68(0, &qword_1EC5124D8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE7B9F8();
  sub_1CFF0EC9C();
  v10[1] = a2;
  sub_1CFE709D4(0);
  sub_1CFE7BCCC(&qword_1EC5124E8, &qword_1EC5124F0);
  sub_1CFF0EB7C();
  return (*(v6 + 8))(v8, v5);
}

void *sub_1CFE7B9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1CFE7BA90(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1CFE7B9F8()
{
  result = qword_1EC5124E0;
  if (!qword_1EC5124E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5124E0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1CFE7BA90(void *a1)
{
  sub_1CFE7BC68(0, &qword_1EC5124F8, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE7B9F8();
  sub_1CFF0EC8C();
  if (!v1)
  {
    sub_1CFE709D4(0);
    sub_1CFE7BCCC(&qword_1EC512500, &qword_1EC512508);
    sub_1CFF0EB0C();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

void sub_1CFE7BC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE7B9F8();
    v7 = a3(a1, &type metadata for SingleMetricChartPointCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE7BCCC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE709D4(255);
    sub_1CFE7BD48(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFE7BD48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndividualOvernightMetricChartPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFE7BDA0()
{
  result = qword_1EC512510;
  if (!qword_1EC512510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512510);
  }

  return result;
}

unint64_t sub_1CFE7BDF8()
{
  result = qword_1EC512518;
  if (!qword_1EC512518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512518);
  }

  return result;
}

unint64_t sub_1CFE7BE50()
{
  result = qword_1EC512520;
  if (!qword_1EC512520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512520);
  }

  return result;
}

unint64_t sub_1CFE7BEAC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1CFE7C294();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFE7BF44(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1CFE7C09C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_1CFE7C294()
{
  result = qword_1EDEC1590;
  if (!qword_1EDEC1590)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDEC1590);
  }

  return result;
}

uint64_t sub_1CFE7C360@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = *(a1 - 1);
  v40 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = sub_1CFF0D62C();
  v37 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = a1[3];
  v11 = a1[4];
  v33 = v32 - v12;
  v34 = v10;
  v47 = v11;
  v48 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v35 = a1[5];
  v43 = v9;
  v44 = v10;
  v45 = WitnessTable;
  v46 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v36 = v32 - v18;
  sub_1CFF0DDEC();
  v19 = *v3;
  v32[0] = v3[1];
  v32[1] = v19;
  v20 = v5;
  v21 = v39;
  (*(v5 + 16))(v39, v3, a1);
  v22 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *&v24 = v8;
  *(&v24 + 1) = v34;
  *&v25 = v11;
  *(&v25 + 1) = v35;
  *(v23 + 16) = v24;
  *(v23 + 32) = v25;
  (*(v20 + 32))(v23 + v22, v21, a1);
  v26 = v37;
  v27 = v33;
  sub_1CFF0DCCC();

  (*(v41 + 8))(v27, v26);
  v28 = *(v14 + 16);
  v29 = v36;
  v28(v36, v16, OpaqueTypeMetadata2);
  v30 = *(v14 + 8);
  v30(v16, OpaqueTypeMetadata2);
  v28(v42, v29, OpaqueTypeMetadata2);
  return (v30)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_1CFE7C71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a7;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v17 = *(v23 + *(type metadata accessor for ChartPlotSizeReader() + 56));
  v18 = sub_1CFF0D04C();
  v17(v18);
  v19 = *(v11 + 16);
  v19(v16, v13, a4);
  v20 = *(v11 + 8);
  v20(v13, a4);
  v19(v25, v16, a4);
  v20(v16, a4);
}

uint64_t sub_1CFE7C908@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ChartPlotSizeReader() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1CFE7C71C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t ChartViewModelProvider.__allocating_init(model:)(uint64_t a1)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  v7 = type metadata accessor for OvernightMetricsViewModel(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_1CFF0C90C();
  sub_1CFE7CC0C(a1, v4);
  sub_1CFE7CC8C(v4);
  sub_1CFE7EABC(a1, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  return v5;
}

uint64_t ChartViewModelProvider.init(model:)(uint64_t a1)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  v7 = type metadata accessor for OvernightMetricsViewModel(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  sub_1CFF0C90C();
  sub_1CFE7CC0C(a1, v5);
  sub_1CFE7CC8C(v5);
  sub_1CFE7EABC(a1, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  return v1;
}

uint64_t sub_1CFE7CC0C(uint64_t a1, uint64_t a2)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE7CC8C(uint64_t a1)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  swift_beginAccess();
  sub_1CFE7CC0C(v1 + v6, v5);
  v7 = sub_1CFE7E00C(v5, a1);
  sub_1CFE7EABC(v5, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CFE7E544(&qword_1EC512538, type metadata accessor for ChartViewModelProvider);
    sub_1CFF0C8CC();
  }

  else
  {
    sub_1CFE7CC0C(a1, v5);
    swift_beginAccess();
    sub_1CFE7E2D0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1CFE7EABC(a1, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
}

uint64_t sub_1CFE7CEFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFE7E544(&qword_1EC512538, type metadata accessor for ChartViewModelProvider);
  sub_1CFF0C8DC();

  v4 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  swift_beginAccess();
  return sub_1CFE7CC0C(v3 + v4, a2);
}

uint64_t sub_1CFE7CFC4(uint64_t a1)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1CFE7CC0C(a1, &v6 - v3);
  return sub_1CFE7CC8C(v4);
}

uint64_t sub_1CFE7D068@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CFE7E544(&qword_1EC512538, type metadata accessor for ChartViewModelProvider);
  sub_1CFF0C8DC();

  v3 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  swift_beginAccess();
  return sub_1CFE7CC0C(v5 + v3, a1);
}

uint64_t sub_1CFE7D130(uint64_t a1, uint64_t a2)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1CFE7CC0C(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  swift_beginAccess();
  sub_1CFE7E2D0(v6, a1 + v7);
  return swift_endAccess();
}

void (*sub_1CFE7D204(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CFE7E544(&qword_1EC512538, type metadata accessor for ChartViewModelProvider);
  sub_1CFF0C8DC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CFF0C8FC();

  v4[7] = sub_1CFE7CE98();
  return sub_1CFE7D33C;
}

void sub_1CFE7D33C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1CFF0C8EC();

  free(v1);
}

uint64_t ChartViewModelProvider.deinit()
{
  sub_1CFE7EABC(v0 + OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  v1 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ChartViewModelProvider.__deallocating_deinit()
{
  sub_1CFE7EABC(v0 + OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  v1 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AlertTileChart.init(viewModelProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFE74DC8();
  sub_1CFF0D49C();
  result = type metadata accessor for AlertTileChart(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t AlertTileChart.viewModelProvider.getter()
{
  type metadata accessor for AlertTileChart(0);
}

uint64_t AlertTileChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  sub_1CFE7EA00(0, &qword_1EC512540, MEMORY[0x1E697F948]);
  v22[1] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v24 = v22 - v3;
  sub_1CFE7E3AC();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for OvernightMetricsViewModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = *(type metadata accessor for AlertTileChart(0) + 20);
  v22[0] = v1;
  v18 = *(v1 + v17);
  swift_getKeyPath();
  v29 = v18;
  sub_1CFE7E544(&qword_1EC512538, type metadata accessor for ChartViewModelProvider);
  sub_1CFF0C8DC();

  v19 = OBJC_IVAR____TtC15HealthBalanceUI22ChartViewModelProvider__model;
  swift_beginAccess();
  sub_1CFE7CC0C(v18 + v19, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CFE7EABC(v9, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
    swift_storeEnumTagMultiPayload();
    sub_1CFE7E464();
    return sub_1CFF0D93C();
  }

  else
  {
    sub_1CFE7E58C(v9, v16);
    LOBYTE(v29) = 0;
    sub_1CFE7E5F0(v16, v13, type metadata accessor for OvernightMetricsViewModel);
    OvernightMetricsChart.init(timeScope:model:alignWarmupProgressCounterToChartPlotArea:)(&v29, v13, 0, v6);
    KeyPath = swift_getKeyPath();
    sub_1CFE7DA54(v27);
    v28[0] = KeyPath;
    memcpy(&v28[1], v27, 0x118uLL);
    memcpy(&v6[*(v23 + 36)], v28, 0x120uLL);
    v29 = KeyPath;
    memcpy(v30, v27, sizeof(v30));
    sub_1CFE7E5F0(v28, &v26, sub_1CFE7E414);
    sub_1CFE7E658(&v29, sub_1CFE7E414);
    sub_1CFE7E5F0(v6, v24, sub_1CFE7E3AC);
    swift_storeEnumTagMultiPayload();
    sub_1CFE7E464();
    sub_1CFF0D93C();
    sub_1CFE7E658(v6, sub_1CFE7E3AC);
    return sub_1CFE7E658(v16, type metadata accessor for OvernightMetricsViewModel);
  }
}

double sub_1CFE7DA54@<D0>(uint64_t a1@<X8>)
{
  v34 = sub_1CFF0DB9C();
  v2 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7EA68(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1CFF0DBEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 secondarySystemGroupedBackgroundColor];
  v36 = sub_1CFF0DE3C();
  v35 = sub_1CFF0D51C();
  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDEC4A48;
  v33 = sub_1CFF0DE3C();
  if (qword_1EDEC4A30 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEC4A38;
  v32 = sub_1CFF0DE3C();
  sub_1CFE7E870();
  sub_1CFF0D4AC();
  v30 = v36;
  v37 = 0;
  v16 = [v12 tertiaryLabelColor];
  v31 = sub_1CFF0DE3C();
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EF0], v8);
  v17 = *MEMORY[0x1E6980E28];
  v18 = sub_1CFF0DB2C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  (*(v19 + 56))(v7, 0, 1, v18);
  sub_1CFF0DB3C();
  sub_1CFF0DB7C();
  sub_1CFE7EABC(v7, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
  (*(v9 + 8))(v11, v8);
  v20 = v34;
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v34);
  v21 = sub_1CFF0DBCC();

  (*(v2 + 8))(v4, v20);
  LODWORD(v36) = sub_1CFF0D99C();
  v22 = sub_1CFF0D51C();
  v36 = sub_1CFF0DEAC();
  v23 = sub_1CFF0D51C();
  v36 = sub_1CFF0DE6C();
  v24 = sub_1CFF0D51C();
  sub_1CFF0DE6C();
  v25 = sub_1CFF0DEBC();

  v36 = v25;
  v26 = sub_1CFF0D51C();
  LODWORD(v36) = sub_1CFF0D98C();
  HIDWORD(v36) = 1036831949;
  sub_1CFE7EB18();
  sub_1CFE7E544(&qword_1EDEC1C00, sub_1CFE7EB18);
  v27 = sub_1CFF0D51C();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = v35;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v28 = v33;
  *(a1 + 64) = 0x4014000000000000;
  *(a1 + 72) = v28;
  *(a1 + 80) = v32;
  *(a1 + 88) = 0x3FE0000000000000;
  *(a1 + 96) = v30;
  *(a1 + 104) = v37;
  *(a1 + 105) = v36;
  *(a1 + 108) = *(&v36 + 3);
  *(a1 + 112) = xmmword_1CFF0FC60;
  *(a1 + 128) = xmmword_1CFF0FC70;
  result = 0.09;
  *(a1 + 144) = xmmword_1CFF0FC80;
  *(a1 + 160) = xmmword_1CFF0FC90;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = v24;
  *(a1 + 216) = v26;
  *(a1 + 224) = v27;
  *(a1 + 232) = v22;
  *(a1 + 240) = v23;
  *(a1 + 248) = 1;
  *(a1 + 256) = v31;
  *(a1 + 264) = v21;
  *(a1 + 272) = 0x4010000000000000;
  return result;
}

uint64_t sub_1CFE7E00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  sub_1CFE7EB70();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1CFE7CC0C(a1, v13);
  sub_1CFE7CC0C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1CFE7CC0C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1CFE7E58C(&v13[v15], v7);
      v18 = _s15HealthBalanceUI25OvernightMetricsViewModelV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1CFE7E658(v7, type metadata accessor for OvernightMetricsViewModel);
      sub_1CFE7E658(v10, type metadata accessor for OvernightMetricsViewModel);
      sub_1CFE7EABC(v13, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1CFE7E658(v10, type metadata accessor for OvernightMetricsViewModel);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CFE7E658(v13, sub_1CFE7EB70);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CFE7EABC(v13, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CFE7E2D0(uint64_t a1, uint64_t a2)
{
  sub_1CFE7EA68(0, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFE7E3AC()
{
  if (!qword_1EC512548)
  {
    type metadata accessor for OvernightMetricsChart(255);
    sub_1CFE7E414();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512548);
    }
  }
}

void sub_1CFE7E414()
{
  if (!qword_1EDEC1AB8)
  {
    v0 = sub_1CFF0DA4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1AB8);
    }
  }
}

unint64_t sub_1CFE7E464()
{
  result = qword_1EC512550;
  if (!qword_1EC512550)
  {
    sub_1CFE7E3AC();
    sub_1CFE7E544(&qword_1EC512558, type metadata accessor for OvernightMetricsChart);
    sub_1CFE7E544(&qword_1EDEC1AC0, sub_1CFE7E414);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512550);
  }

  return result;
}

uint64_t sub_1CFE7E544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFE7E58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE7E5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE7E658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFE7E6DC()
{
  sub_1CFE7EA68(319, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
  if (v0 <= 0x3F)
  {
    sub_1CFF0C91C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CFE7E870()
{
  if (!qword_1EC512570)
  {
    sub_1CFE74DC8();
    v0 = sub_1CFF0D4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512570);
    }
  }
}

void sub_1CFE7E8E0()
{
  sub_1CFE7E870();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChartViewModelProvider(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFE7E964()
{
  result = qword_1EC512588;
  if (!qword_1EC512588)
  {
    sub_1CFE7EA00(255, &qword_1EC512590, MEMORY[0x1E697F960]);
    sub_1CFE7E464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512588);
  }

  return result;
}

void sub_1CFE7EA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1CFE7E3AC();
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1CFE7EA68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0E8AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE7EABC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFE7EA68(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFE7EB18()
{
  if (!qword_1EDEC1BF8)
  {
    v0 = sub_1CFF0D8CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1BF8);
    }
  }
}

void sub_1CFE7EB70()
{
  if (!qword_1EDEC3938)
  {
    sub_1CFE7EA68(255, &qword_1EDEC3940, type metadata accessor for OvernightMetricsViewModel);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC3938);
    }
  }
}

uint64_t type metadata accessor for BalanceWidgetAccessoryRectangularSpecs()
{
  result = qword_1EDEC4450;
  if (!qword_1EDEC4450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFE7EC64()
{
  result = sub_1CFF0E2DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BalanceWidgetAccessoryRectangularSpecs.PresentationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}