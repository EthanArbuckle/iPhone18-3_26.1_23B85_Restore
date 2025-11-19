uint64_t sub_1C3C31398()
{
  result = sub_1C3D1E3C4();
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3C31488(uint64_t a1)
{
  sub_1C3C317D8(0, &qword_1EC085840, MEMORY[0x1E69A3060], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C3C3154C()
{
  result = qword_1EC085848;
  if (!qword_1EC085848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085848);
  }

  return result;
}

void sub_1C3C315A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C3D206E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1C3C315FC()
{
  result = qword_1EC085850;
  if (!qword_1EC085850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085850);
  }

  return result;
}

uint64_t sub_1C3C31660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1C3C316B4()
{
  if (!qword_1EC085858)
  {
    sub_1C3D1EB44();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC085858);
    }
  }
}

uint64_t sub_1C3C31720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1C3C315A0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C3C3177C(uint64_t a1)
{
  sub_1C3C316B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3C317D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C3C3183C()
{
  result = qword_1EC085878;
  if (!qword_1EC085878)
  {
    sub_1C3C317D8(255, &qword_1EC085870, type metadata accessor for HealthChartsSeriesChartPoint, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085878);
  }

  return result;
}

void sub_1C3C318F4()
{
  if (!qword_1EC085888)
  {
    sub_1C3D1EC24();
    sub_1C3C31974(255, &qword_1EC085890);
    v0 = sub_1C3D20B44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085888);
    }
  }
}

uint64_t sub_1C3C31974(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C3C319D0(uint64_t a1, uint64_t a2)
{
  sub_1C3C318F4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C3C31A34()
{
  v0 = [objc_allocWithZone(HKUIMetricColors) init];
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC08DBD8;
  v2 = sub_1C3D200C4();
  v3 = objc_opt_self();
  v4 = [v3 colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v4)
  {
    [v0 setKeyColor_];

    v5 = [v3 hk_chartOverlayPillLightColor];
    [v0 setContextViewPrimaryTextColor_];

    v6 = [v3 hk_defaultSecondaryTextColor];
    [v0 setContextViewSecondaryTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3C31BA4()
{
  v0 = [objc_allocWithZone(HKUIMetricColors) init];
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC08DBD8;
  v2 = sub_1C3D200C4();
  v3 = objc_opt_self();
  v4 = [v3 colorNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v4)
  {
    [v0 setKeyColor_];

    v5 = [v3 hk_chartOverlayPillLightColor];
    [v0 setContextViewPrimaryTextColor_];

    v6 = [v3 hk_defaultSecondaryTextColor];
    [v0 setContextViewSecondaryTextColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t DoneButton.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C3C31D94(void (*a1)(uint64_t))
{
  v3 = sub_1C3D1F004();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];

  a1(v8);
  return MEMORY[0x1C692F290](v5, v7, v6);
}

uint64_t sub_1C3C31E54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_1C3D1F004();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v8 = v3[1];

  a3(v10);
  return MEMORY[0x1C692F290](v7, v9, v8);
}

uint64_t View.navigationBarButton(item:side:action:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v10 = a1;
  v11 = v8;
  v12 = a3;
  v13 = a4;

  MEMORY[0x1C692F110](&v10, a5, &type metadata for BarButtonAdapterModifier, a6);
}

uint64_t View.navigationBarButton(item:side:accessibilityID:action:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v12 = a1;
  v13 = v10;
  v14 = a5;
  v15 = a6;

  MEMORY[0x1C692F110](&v12, a7, &type metadata for BarButtonAdapterModifier, a8);
}

void sub_1C3C31FE4(void *a1)
{
  v3 = v1[1];
  v27 = *v1;
  v28 = v3;
  v29 = v1[2];
  v30 = BYTE8(v27);
  if (BYTE8(v27))
  {
    v4 = &selRef_rightBarButtonItem;
  }

  else
  {
    v4 = &selRef_leftBarButtonItem;
  }

  v5 = [a1 *v4];
  v25 = v5;
  if (!v5)
  {
    v7 = v27;
    goto LABEL_15;
  }

  v6 = [v5 tag];
  v7 = v27;
  if (v6 != v27)
  {
LABEL_15:
    v16 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v7 target:0 action:0];
    sub_1C3C32D0C();
    v17 = swift_allocObject();
    v18 = v28;
    v17[1] = v27;
    v17[2] = v18;
    v17[3] = v29;
    sub_1C3C32D60(&v27, v26);
    v19 = sub_1C3D206D4();
    [v16 setPrimaryAction_];

    v20 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v21 = v16;
      v20 = sub_1C3D200C4();
    }

    else
    {
      v22 = v16;
    }

    [v16 setAccessibilityIdentifier_];

    v23 = v30;
    v24 = v16;
    if (v23)
    {
      [a1 setRightBarButtonItem_];
    }

    else
    {
      [a1 setLeftBarButtonItem_];
    }

    return;
  }

  v8 = v6;
  v9 = [v25 accessibilityIdentifier];
  if (!v9)
  {
    v7 = v8;
    if (!*(&v29 + 1))
    {
LABEL_23:

      return;
    }

    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_1C3D20104();
  v13 = v12;

  if (!*(&v29 + 1))
  {

    v7 = v8;
    goto LABEL_15;
  }

  if (v11 != v29 || *(&v29 + 1) != v13)
  {
    v15 = sub_1C3D20A54();

    v7 = v8;
    if (v15)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }
}

uint64_t sub_1C3C322B8(uint64_t a1, uint64_t a2)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a2 + 16))(isCurrentExecutor);
}

uint64_t sub_1C3C32360(void *a1)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C31FE4(a1);
}

uint64_t BarButtonAdapterModifier.Side.hashValue.getter()
{
  v1 = *v0;
  sub_1C3D20B04();
  MEMORY[0x1C6930170](v1);
  return sub_1C3D20B34();
}

uint64_t _s8HealthUI30StandardDateDataEntryValidatorV16ValidationResultO11WarningKindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C3D20B04();
  MEMORY[0x1C6930170](v1);
  return sub_1C3D20B34();
}

uint64_t sub_1C3C324F4()
{
  v1 = *v0;
  sub_1C3D20B04();
  MEMORY[0x1C6930170](v1);
  return sub_1C3D20B34();
}

uint64_t BarButtonAdapterModifier.body(content:)()
{
  sub_1C3C3261C();
  sub_1C3C32C0C(&qword_1EC0858B0, sub_1C3C3261C);
  sub_1C3C326CC();

  sub_1C3D1FA54();
}

void sub_1C3C3261C()
{
  if (!qword_1EC0858A0)
  {
    sub_1C3C32678();
    v0 = sub_1C3D1F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0858A0);
    }
  }
}

unint64_t sub_1C3C32678()
{
  result = qword_1EC0858A8;
  if (!qword_1EC0858A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0858A8);
  }

  return result;
}

unint64_t sub_1C3C326CC()
{
  result = qword_1EC0858B8;
  if (!qword_1EC0858B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0858B8);
  }

  return result;
}

unint64_t sub_1C3C32778()
{
  result = qword_1EC0858C0;
  if (!qword_1EC0858C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0858C0);
  }

  return result;
}

uint64_t sub_1C3C327E8()
{
  sub_1C3C3261C();
  sub_1C3C32C0C(&qword_1EC0858B0, sub_1C3C3261C);
  sub_1C3C326CC();

  sub_1C3D1FA54();
}

uint64_t sub_1C3C328EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C3C32934(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C3C32980(uint64_t a1, int a2)
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

uint64_t sub_1C3C329C8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BarButtonAdapterModifier.Side(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BarButtonAdapterModifier.Side(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C3C32B78()
{
  if (!qword_1EC0858D0)
  {
    sub_1C3D1F404();
    sub_1C3C32C0C(&qword_1EC0858D8, MEMORY[0x1E697C4C0]);
    v0 = sub_1C3D1FC54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0858D0);
    }
  }
}

uint64_t sub_1C3C32C0C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C3C32C68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C3C32CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C3C32D0C()
{
  result = qword_1EC0858E0;
  if (!qword_1EC0858E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0858E0);
  }

  return result;
}

void sub_1C3C32DB4()
{
  v0 = sub_1C3D1EA94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C3D1EAD4();
  sub_1C3D1EA84();
  (*(v1 + 8))(v3, v0);
  v5 = sub_1C3D200C4();

  v6 = [v4 initWithIdentifier:v5 onlyOneValuePerDay:1];

  if (!v6)
  {
    __break(1u);
  }
}

id AudiogramLongitudinalChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

id AudiogramLongitudinalChartDataSource.init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(type metadata accessor for AudiogramAnalyticsManager());
  *&v2[OBJC_IVAR____TtC8HealthUI36AudiogramLongitudinalChartDataSource_analyticsManager] = sub_1C3CE5060(a2);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AudiogramLongitudinalChartDataSource();
  v6 = objc_msgSendSuper2(&v8, sel_initWithDisplayType_healthStore_, a1, a2);

  return v6;
}

uint64_t sub_1C3C330F8(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v65 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1C3D1DCF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  v15 = [a1 startDate];
  sub_1C3D1E1A4();

  sub_1C3D1E1B4();
  LOBYTE(v15) = sub_1C3D1E194();
  v64 = v9;
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v12, v8);
  v69 = v17;
  v70 = v8;
  v17(v14, v8);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = [a1 statisticsInterval];
  sub_1C3D1DCA4();

  sub_1C3D1DCC4();
  if (v19)
  {
    sub_1C3D1DCB4();
    if (v20)
    {
      sub_1C3D1DC84();
      if (v21)
      {
        sub_1C3D1DCE4();
        if (v22)
        {
          sub_1C3D1DCD4();
          v24 = v23;
          (*(v5 + 8))(v7, v4);
          if (v24)
          {
            v25 = 0;
          }

          else
          {
            v25 = 5;
          }
        }

        else
        {
          (*(v5 + 8))(v7, v4);
          v25 = 4;
        }
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v25 = 3;
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v25 = 2;
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v25 = 1;
  }

  v62 = v25;
  v27 = objc_opt_self();
  v28 = [a1 startDate];
  sub_1C3D1E1A4();

  v29 = sub_1C3D1E174();
  v30 = v69;
  v31 = v70;
  v69(v14, v70);
  v32 = v30;
  v33 = [a1 endDate];
  sub_1C3D1E1A4();

  v34 = sub_1C3D1E174();
  v32(v14, v31);
  v59 = [v27 predicateForSamplesWithStartDate:v29 endDate:v34 options:0];

  sub_1C3D20104();
  v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v36 = sub_1C3D200C4();

  v37 = [v35 initWithKey:v36 ascending:1];
  v57 = v37;

  sub_1C3D1E1D4();
  sub_1C3C27CB4(0, &qword_1EC0857A0);
  v58 = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_1C396C43C(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v61 = v38;
  v39 = swift_allocObject();
  v60 = xmmword_1C3D5EAE0;
  *(v39 + 16) = xmmword_1C3D5EAE0;
  *(v39 + 32) = v37;
  v40 = v64;
  (*(v64 + 16))(v12, v14, v31);
  v41 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v42 = (v63 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v67;
  *(v43 + 16) = v65;
  *(v43 + 24) = v44;
  *(v43 + 32) = v62;
  v65 = v16;
  v45 = v68;
  *(v43 + 40) = v68;
  (*(v40 + 32))(v43 + v41, v12, v31);
  *(v43 + v42) = ObjectType;
  v46 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1C3C27CB4(0, &unk_1EC0858F8);
  v47 = v59;
  ObjectType = v57;

  v48 = v45;
  v49 = sub_1C3D202A4();

  aBlock[4] = sub_1C3C3459C;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3C344C0;
  aBlock[3] = &block_descriptor_2;
  v50 = _Block_copy(aBlock);
  v51 = v58;
  v52 = [v46 initWithSampleType:v58 predicate:v47 limit:0 sortDescriptors:v49 resultsHandler:v50];

  _Block_release(v50);

  v53 = v52;
  v54 = [v48 queryDescription];
  [v53 setDebugIdentifier_];

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = v53;

  v69(v14, v70);
  return v55;
}

uint64_t sub_1C3C337FC(uint64_t a1, unint64_t a2, void *a3, void (*a4)(__int128 *, id), uint64_t a5, int a6, char *a7)
{
  v68 = a6;
  v69 = a5;
  v70 = a4;
  v10 = sub_1C3D1E3C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C3D1E1E4();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - v18;
  if (a2)
  {
    v20 = sub_1C3C81AC8(a2);
    if (v20)
    {
      v21 = v20;
      sub_1C3D1E1D4();
      LOBYTE(v72) = v68;
      v22 = [a7 queryCalendar];
      sub_1C3D1E384();

      v23 = _s8HealthUI30AudiogramLongitudinalChartDataC013makeAggregateeF010audiograms19aggregationStrategy8calendarSayACGSaySo17HKAudiogramSampleCG_AA011AggregationK0O10Foundation8CalendarVtFZ_0(v21, &v72, v13);
      (*(v11 + 8))(v13, v10);
      sub_1C3D1E1D4();
      sub_1C3D1E164();
      v25 = v24;
      sub_1C3D1E164();
      v27 = v26;
      v28 = *&a7[OBJC_IVAR____TtC8HealthUI36AudiogramLongitudinalChartDataSource_analyticsManager];
      if (v21 >> 62)
      {
        v29 = sub_1C3D20964();
      }

      else
      {
        v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1C3C34740(0, &qword_1EC085910, sub_1C3C347A4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C3D5F320;
      *(inited + 32) = 0x656D614E776F6C66;
      v31 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = 0xD000000000000026;
      *(inited + 56) = 0x80000001C3D825B0;
      *(inited + 72) = v31;
      *(inited + 80) = 0xD000000000000013;
      *(inited + 88) = 0x80000001C3D81F40;
      v32 = MEMORY[0x1E69E63B0];
      *(inited + 96) = v25;
      *(inited + 120) = v32;
      *(inited + 128) = 0xD000000000000019;
      *(inited + 136) = 0x80000001C3D81F60;
      *(inited + 144) = v27;
      *(inited + 168) = v32;
      *(inited + 176) = 0xD000000000000013;
      *(inited + 184) = 0x80000001C3D81F80;
      *(inited + 192) = v25 + v27;
      *(inited + 216) = v32;
      strcpy((inited + 224), "audiogramCount");
      v33 = MEMORY[0x1E69E6530];
      *(inited + 239) = -18;
      *(inited + 240) = v29;
      *(inited + 264) = v33;
      *(inited + 272) = 0xD000000000000013;
      v34 = v68;
      *(inited + 280) = 0x80000001C3D81F20;
      if (v34 > 2)
      {
        if (v34 == 3)
        {
          v35 = 0xE600000000000000;
          v36 = 1801807223;
          goto LABEL_24;
        }

        if (v34 != 4)
        {
          v35 = 0xE600000000000000;
          v36 = 1918985593;
          goto LABEL_24;
        }

        v35 = 0xE700000000000000;
        v52 = 0x796C68746E6F6DLL;
      }

      else if (v34)
      {
        if (v34 == 1)
        {
          v35 = 0xE600000000000000;
          v36 = 1920298856;
LABEL_24:
          v52 = v36 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          goto LABEL_25;
        }

        v35 = 0xE500000000000000;
        v52 = 0x796C696164;
      }

      else
      {
        v35 = 0xE400000000000000;
        v52 = 1701736302;
      }

LABEL_25:
      *(inited + 312) = v31;
      *(inited + 288) = v52;
      *(inited + 296) = v35;
      v53 = sub_1C3C75090(inited);
      swift_setDeallocating();
      sub_1C3C347A4();
      swift_arrayDestroy();
      v54 = sub_1C3C75090(MEMORY[0x1E69E7CC0]);
      v55 = type metadata accessor for AudiogramPerformanceAnalytics.Metric();
      v56 = objc_allocWithZone(v55);
      *&v56[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_duPayload] = v53;
      *&v56[OBJC_IVAR____TtCC8HealthUI29AudiogramPerformanceAnalytics6Metric_ihaPayload] = v54;
      v71.receiver = v56;
      v71.super_class = v55;
      v57 = objc_msgSendSuper2(&v71, sel_init);
      type metadata accessor for AudiogramPerformanceAnalytics.Event();
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = &protocol witness table for AudiogramPerformanceAnalytics.Metric;
      v59 = v57;

      sub_1C3CE4D50(v60, v28);

      sub_1C3C34740(0, &qword_1EC086EC0, type metadata accessor for AudiogramLongitudinalChartData, MEMORY[0x1E69E62F8]);
      *(&v73 + 1) = v61;
      *&v72 = v23;
      v70(&v72, 0);
      v62 = v67;
      v63 = *(v66 + 8);
      v63(v17, v67);
      v63(v19, v62);
      return sub_1C396C69C(&v72);
    }
  }

  if (a3)
  {
    v37 = a3;
  }

  else
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
  }

  v38 = a3;
  if (qword_1EC0850C0 != -1)
  {
    swift_once();
  }

  v39 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v39, qword_1EC08DCE0);
  v40 = v37;
  v41 = sub_1C3D1ED84();
  v42 = sub_1C3D204F4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v72 = v45;
    *v43 = 136446466;
    v46 = sub_1C3D20CD4();
    v48 = sub_1C3C22C28(v46, v47, &v72);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2114;
    v49 = v37;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 14) = v50;
    *v44 = v50;
    _os_log_impl(&dword_1C3942000, v41, v42, "[%{public}s] Query failed with error: %{public}@", v43, 0x16u);
    sub_1C3C3467C(v44);
    MEMORY[0x1C69321D0](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1C69321D0](v45, -1, -1);
    MEMORY[0x1C69321D0](v43, -1, -1);
  }

  v72 = 0u;
  v73 = 0u;
  v51 = v37;
  v70(&v72, v37);

  return sub_1C396C69C(&v72);
}

uint64_t sub_1C3C34038(uint64_t a1)
{
  sub_1C396C578(a1, v13);
  if (!v13[3])
  {
    sub_1C396C69C(v13);
    return 0;
  }

  sub_1C3C34740(0, &qword_1EC086EC0, type metadata accessor for AudiogramLongitudinalChartData, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v12;
  v2 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  if (!(v12 >> 62))
  {
    v3 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_15:

LABEL_16:
    sub_1C3C315FC();
    v10 = sub_1C3D202A4();

    [v2 setChartPoints_];

    return v2;
  }

  v3 = sub_1C3D20964();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_5:
  v13[0] = MEMORY[0x1E69E7CC0];
  result = sub_1C3D208C4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C692FEB0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = type metadata accessor for AudiogramLongitudinalChartPoint();
      v9 = objc_allocWithZone(v8);
      *&v9[OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData] = v7;
      v11.receiver = v9;
      v11.super_class = v8;
      objc_msgSendSuper2(&v11, sel_init);
      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
    }

    while (v3 != v5);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id AudiogramLongitudinalChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id AudiogramLongitudinalChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramLongitudinalChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramLongitudinalChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C344C0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1C3C27CB4(0, &qword_1EC085908);
    v5 = sub_1C3D202B4();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3C3467C(uint64_t a1)
{
  sub_1C3C346D8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3C346D8()
{
  if (!qword_1EC081110)
  {
    sub_1C3C27CB4(255, &qword_1EC081120);
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081110);
    }
  }
}

void sub_1C3C34740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3C347A4()
{
  if (!qword_1EC085918)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC085918);
    }
  }
}

uint64_t HealthChartsSeriesChartPoint.__allocating_init<A, B>(_:index:aggregation:unit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a2;
  v61 = a4;
  v64 = a3;
  sub_1C3C34EA8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C3D1EB74();
  v55 = *(v63 - 8);
  v15 = MEMORY[0x1EEE9AC00](v63);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthChartsSeriesChartPoint.XAxisInterval(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = *(a5 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v51 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v25);
  *&v65 = a5;
  *(&v65 + 1) = a6;
  v66 = a7;
  v67 = a8;
  v60 = a8;
  v26 = sub_1C3D1EBB4();
  sub_1C3D1EB94();
  sub_1C3C34F20();
  v27 = swift_dynamicCast();
  v62 = a1;
  if (v27)
  {
    sub_1C3972F30(&v65, v68);
    __swift_project_boxed_opaque_existential_0(v68, v69);
    sub_1C3D1ECC4();
    swift_storeEnumTagMultiPayload();
    v28 = v54;
    sub_1C3D1EBA4();
    v29 = a6;
    v30 = v55;
    (*(v55 + 16))(v17, v64, v63);
    v31 = v61;
    v32 = v57;
    sub_1C3C35880(v61, v57, sub_1C3C34EA8);
    v33 = objc_allocWithZone(v58);
    v34 = sub_1C3C35670(v59, v22, v28, v17, v32);
    (*(v56 + 8))(v28, v29);
    sub_1C3C35BF0(v31, sub_1C3C34EA8);
    (*(v30 + 8))(v64, v63);
    (*(*(v26 - 8) + 8))(v62, v26);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v68);
    return v34;
  }

  v35 = v26;
  v36 = v54;
  v37 = v55;
  v53 = a6;
  v38 = v35;
  sub_1C3D1EB94();
  sub_1C3C34F8C();
  if (swift_dynamicCast())
  {
    sub_1C3972F30(&v65, v68);
    __swift_project_boxed_opaque_existential_0(v68, v69);
    sub_1C3D1ECD4();
    v39 = v22;
    *v22 = v65;
    swift_storeEnumTagMultiPayload();
    sub_1C3D1EBA4();
    v40 = v37;
    v41 = *(v37 + 16);
    v42 = v17;
    v43 = v63;
    v41(v17, v64, v63);
    v44 = v61;
    v45 = v57;
    sub_1C3C35880(v61, v57, sub_1C3C34EA8);
    v46 = objc_allocWithZone(v58);
    v47 = v42;
    v48 = v53;
    v34 = sub_1C3C35670(v59, v39, v36, v47, v45);
    (*(v56 + 8))(v36, v48);
    sub_1C3C35BF0(v44, sub_1C3C34EA8);
    (*(v40 + 8))(v64, v43);
    (*(*(v38 - 8) + 8))(v62, v38);
    goto LABEL_5;
  }

  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD000000000000022, 0x80000001C3D82610);
  v50 = v51;
  sub_1C3D1EB94();
  sub_1C3D20A34();
  (*(v52 + 8))(v50, a5);
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

void sub_1C3C34EA8()
{
  if (!qword_1EC085880)
  {
    sub_1C3D1EC44();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085880);
    }
  }
}

unint64_t sub_1C3C34F20()
{
  result = qword_1EC085928;
  if (!qword_1EC085928)
  {
    sub_1C3D1E1E4();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085928);
  }

  return result;
}

unint64_t sub_1C3C34F8C()
{
  result = qword_1EC085930;
  if (!qword_1EC085930)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085930);
  }

  return result;
}

id HealthChartsSeriesChartPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthChartsSeriesChartPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C351B4(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_1C3D20A44();
  __swift_destroy_boxed_opaque_existential_0(v7);

  return v5;
}

uint64_t _s8HealthUI0A22ChartsSeriesChartPointC19xValueAsGenericTypeypyF_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C3D1E1E4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C3D1DC54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HealthChartsSeriesChartPoint.XAxisInterval(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C3C35880(v1 + OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_x, v10, type metadata accessor for HealthChartsSeriesChartPoint.XAxisInterval);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v12 = *v10 + (v10[1] - *v10) * 0.5;
    a1[3] = MEMORY[0x1E69E63B0];
    *a1 = v12;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1C3D1DC44();
    sub_1C3D1DC34();
    a1[3] = v3;
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_1C3D1E154();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double HealthChartsSeriesChartPoint.yValue()@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yStart);
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *a1 = result;
  return result;
}

double HealthChartsSeriesChartPoint.yValue(forKey:)@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yStart);
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *a1 = result;
  return result;
}

uint64_t HealthChartsSeriesChartPoint.allYValues()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yStart);
  v2 = *(v0 + OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yEnd);
  sub_1C3C358E8();
  result = swift_allocObject();
  if (v1 == v2)
  {
    *(result + 16) = xmmword_1C3D5F370;
    *(result + 56) = MEMORY[0x1E69E63B0];
    *(result + 32) = v1;
  }

  else
  {
    *(result + 16) = xmmword_1C3D5DCD0;
    v4 = MEMORY[0x1E69E63B0];
    *(result + 56) = MEMORY[0x1E69E63B0];
    *(result + 32) = v1;
    *(result + 88) = v4;
    *(result + 64) = v2;
  }

  return result;
}

double HealthChartsSeriesChartPoint.maxYValue()@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yEnd);
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *a1 = result;
  return result;
}

id sub_1C3C35670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v21 = 0x407365697265536BLL;
  v22 = 0xE800000000000000;
  v20 = a1;
  v12 = sub_1C3D20A14();
  MEMORY[0x1C692F800](v12);

  v13 = &v6[OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_seriesIdentifier];
  *v13 = 0x407365697265536BLL;
  *(v13 + 1) = 0xE800000000000000;
  sub_1C3C35880(a2, &v6[OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_x], type metadata accessor for HealthChartsSeriesChartPoint.XAxisInterval);
  sub_1C3D1ECB4();
  *&v6[OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yStart] = v21;
  sub_1C3D1ECA4();
  *&v6[OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_yEnd] = v21;
  v14 = OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_aggregation;
  v15 = sub_1C3D1EB74();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], a4, v15);
  sub_1C3C35880(a5, &v6[OBJC_IVAR____TtC8HealthUI28HealthChartsSeriesChartPoint_unit], sub_1C3C34EA8);
  v19.receiver = v6;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_1C3C35BF0(a5, sub_1C3C34EA8);
  (*(v16 + 8))(a4, v15);
  sub_1C3C35BF0(a2, type metadata accessor for HealthChartsSeriesChartPoint.XAxisInterval);
  return v17;
}

uint64_t sub_1C3C35880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C3C358E8()
{
  if (!qword_1EC080D50)
  {
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080D50);
    }
  }
}

uint64_t sub_1C3C35964(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3C3599C()
{
  type metadata accessor for HealthChartsSeriesChartPoint.XAxisInterval(319);
  if (v0 <= 0x3F)
  {
    sub_1C3D1EB74();
    if (v1 <= 0x3F)
    {
      sub_1C3C34EA8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C3C35B24()
{
  sub_1C3D1DC54();
  if (v0 <= 0x3F)
  {
    sub_1C3C35B98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C3C35B98()
{
  if (!qword_1EC085970)
  {
    v0 = sub_1C3D20014();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085970);
    }
  }
}

uint64_t sub_1C3C35BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id Locale.isIn24HourTime.getter()
{
  v0 = sub_1C3D1E234();
  v1 = [v0 hk_isIn24HourTime];

  return v1;
}

uint64_t Locale.isAMPMSymbolBeforeTime.getter()
{
  sub_1C3C36C48(0, &qword_1EC085978, MEMORY[0x1E69685B0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v65 - v1;
  sub_1C3C36B54();
  v91 = v3;
  v97 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C3D1DF24();
  v87 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1C3D1DD44();
  v79 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v82 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v65 - v8;
  v100 = sub_1C3D1DE24();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1C3D1DE04();
  v88 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1C3D1DE34();
  v89 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v85 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C3C36BB4();
  v86 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C3D1E124();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_1C3D1DE74();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C3D1DFF4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1C3D1E4A4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1C3C36C48(0, &qword_1EC085998, MEMORY[0x1E69690E8]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v65 - v23;
  sub_1C3C36C48(0, &qword_1EC0859A0, MEMORY[0x1E69690F0]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v65 - v26;
  v71 = sub_1C3D1E144();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1C3D1E1E4();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1E1D4();
  sub_1C3D1E0F4();
  v32 = sub_1C3D1E104();
  (*(*(v32 - 8) + 56))(v27, 0, 1, v32);
  sub_1C3D1E0C4();
  v33 = sub_1C3D1E0D4();
  (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
  sub_1C3D1E244();
  sub_1C3D1E374();
  sub_1C3D1E494();
  sub_1C3D1DFE4();
  sub_1C3D1E134();
  v34 = v80;
  v69 = v29;
  sub_1C3D1E0B4();
  v66 = v31;
  sub_1C3D1E114();
  (*(v83 + 8))(v34, v84);
  v35 = v85;
  sub_1C3D1DE44();
  v36 = v89;
  v37 = v35;
  v38 = v35;
  v39 = v101;
  (v89[2])(v14, v37, v101);
  v40 = *(v86 + 44);
  v41 = sub_1C3C36C9C(&qword_1EC085990, MEMORY[0x1E69687C8]);
  sub_1C3D20404();
  (v36[1])(v38, v39);
  ++v98;
  v42 = v88++;
  v89 = (v42 + 2);
  v86 = v97 + 8;
  ++v87;
  v85 = (v79 + 6);
  v80 = (v79 + 4);
  LODWORD(v78) = *MEMORY[0x1E6968568];
  v77 = (v79 + 13);
  ++v79;
  v76 = *MEMORY[0x1E6968580];
  v75 = *MEMORY[0x1E6968560];
  v92 = v14;
  v84 = v40;
  v83 = v41;
  while (1)
  {
    while (1)
    {
      v43 = v99;
      sub_1C3D20424();
      sub_1C3C36C9C(&qword_1EC0859A8, MEMORY[0x1E69687B0]);
      v44 = v100;
      v45 = sub_1C3D20034();
      (*v98)(v43, v44);
      LODWORD(v97) = v45;
      if (v45)
      {
LABEL_8:
        v63 = v97 ^ 1;
        goto LABEL_10;
      }

      v46 = sub_1C3D20444();
      v47 = v2;
      v49 = v94;
      v48 = v95;
      (*v89)(v94);
      v46(v103, 0);
      v50 = v93;
      v51 = v102;
      v52 = v90;
      v53 = v91;
      v54 = v96;
      sub_1C3D20434();
      sub_1C3D1DDE4();
      (*v88)(v49, v48);
      swift_getKeyPath();
      sub_1C3D1DD74();
      sub_1C3D1DED4();

      (*v87)(v54, v50);
      swift_getKeyPath();
      sub_1C3C36CE4();
      sub_1C3D1DFC4();

      (*v86)(v52, v53);
      v2 = v47;
      if ((*v85)(v47, 1, v51) != 1)
      {
        break;
      }

      sub_1C3C36D38(v47);
      v14 = v92;
    }

    v55 = v102;
    v56 = v81;
    (*v80)(v81, v47, v102);
    v57 = *v77;
    v58 = v82;
    (*v77)(v82, v78, v55);
    v59 = sub_1C3D1DD34();
    v60 = *v79;
    (*v79)(v58, v55);
    if (v59)
    {
      break;
    }

    v57(v58, v76, v55);
    v61 = sub_1C3D1DD34();
    v60(v58, v55);
    if (v61)
    {
      break;
    }

    v57(v58, v75, v55);
    v62 = sub_1C3D1DD34();
    v60(v58, v55);
    v60(v56, v55);
    v2 = v47;
    v14 = v92;
    if (v62)
    {
      goto LABEL_8;
    }
  }

  v60(v56, v55);
  v63 = 0;
  v14 = v92;
LABEL_10:
  sub_1C3C36DB0(v14);
  (*(v72 + 8))(v74, v73);
  (*(v70 + 8))(v69, v71);
  (*(v67 + 8))(v66, v68);
  return v63 & 1;
}

void sub_1C3C36B54()
{
  if (!qword_1EC085980)
  {
    sub_1C3D1DD74();
    v0 = sub_1C3D1DFD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085980);
    }
  }
}

void sub_1C3C36BB4()
{
  if (!qword_1EC085988)
  {
    sub_1C3D1DE34();
    sub_1C3C36C9C(&qword_1EC085990, MEMORY[0x1E69687C8]);
    v0 = sub_1C3D20934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085988);
    }
  }
}

void sub_1C3C36C48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3C36C9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3C36CE4()
{
  result = qword_1EC0859B0;
  if (!qword_1EC0859B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0859B0);
  }

  return result;
}

uint64_t sub_1C3C36D38(uint64_t a1)
{
  sub_1C3C36C48(0, &qword_1EC085978, MEMORY[0x1E69685B0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C36DB0(uint64_t a1)
{
  sub_1C3C36BB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HKInteractiveChartInteractionAnalyticsManager.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C3C3747C(a1);

  return v4;
}

id HKInteractiveChartInteractionAnalyticsManager.init(healthStore:)(void *a1)
{
  v2 = sub_1C3C3747C(a1);

  return v2;
}

void sub_1C3C36EB4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager_submissionManager);
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_allocObject();
    *(v5 + 16) = ObjectType;
    v7[4] = sub_1C3C37678;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1C3C37218;
    v7[3] = &block_descriptor_3;
    v6 = _Block_copy(v7);

    [v2 submitEvent:a1 completion:v6];
    _Block_release(v6);
  }
}

void sub_1C3C36FA4(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      ErrorValue = swift_getErrorValue();
      MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v4 + 16))(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
      v5 = sub_1C3D20134();
      v7 = v6;
    }

    else
    {
      v7 = 0xE400000000000000;
      v5 = 1701736270;
    }

    if (qword_1EC081090 != -1)
    {
      swift_once();
    }

    v8 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v8, qword_1EC08DBE8);

    v9 = sub_1C3D1ED84();
    v10 = sub_1C3D204F4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446466;
      v13 = sub_1C3D20CD4();
      v15 = sub_1C3C22C28(v13, v14, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_1C3C22C28(v5, v7, &v18);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1C3942000, v9, v10, "[%{public}s] Failed to submit analytics with error %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v12, -1, -1);
      MEMORY[0x1C69321D0](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C3C37218(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id HKInteractiveChartInteractionAnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKInteractiveChartInteractionAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKInteractiveChartInteractionAnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C3747C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 profileIdentifier];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = HKLogAnalytics();
    v7 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v6 healthDataSource:a1];
  }

  else
  {
    if (qword_1EC081090 != -1)
    {
      swift_once();
    }

    v8 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v8, qword_1EC08DBE8);
    v9 = sub_1C3D1ED84();
    v10 = sub_1C3D20514();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      v13 = sub_1C3D20CD4();
      v15 = sub_1C3C22C28(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C3942000, v9, v10, "[%{public}s] Will omit analytics for non-primary profile.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C69321D0](v12, -1, -1);
      MEMORY[0x1C69321D0](v11, -1, -1);
    }

    v7 = 0;
  }

  *&v2[OBJC_IVAR____TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager_submissionManager] = v7;
  v16 = type metadata accessor for HKInteractiveChartInteractionAnalyticsManager();
  v19.receiver = v2;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3C37728(void *a1, void *a2)
{
  v35 = a2;
  sub_1C3C38108(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v35 - v5;
  v7 = [a1 displayTypeController];
  v8 = [objc_opt_self() appleBalanceMetricsType];
  v9 = [v7 displayTypeForObjectType_];

  if (v9)
  {
    v10 = [v9 displayCategory];
    v11 = [a1 unitController];
    v12 = [a1 chartDataCacheController];
    v13 = [v9 hk:6 standardSeriesForTimeScope:v10 displayCategory:v11 unitController:v12 dataCacheController:?];

    if (v13)
    {
      type metadata accessor for BalanceSeries();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = [v9 displayCategory];
        v17 = [a1 unitController];
        v18 = [a1 chartDataCacheController];
        v19 = [v9 hk:5 standardSeriesForTimeScope:v16 displayCategory:v17 unitController:v18 dataCacheController:?];

        if (v19)
        {
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            v21 = v20;
            v22 = v35;
            sub_1C3C37FE0(v35, v6);
            v23 = OBJC_IVAR___HKBalanceSeries_selectedMetric;
            swift_beginAccess();
            sub_1C3C38074(v6, v15 + v23);
            swift_endAccess();
            sub_1C3C37FE0(v22, v6);
            v24 = OBJC_IVAR___HKBalanceSeries_selectedMetric;
            swift_beginAccess();
            sub_1C3C38074(v6, v21 + v24);
            swift_endAccess();
            v25 = [objc_allocWithZone(type metadata accessor for BalanceChartFormatter()) init];
            sub_1C3C38108(0, &qword_1EC0859C8, sub_1C3C3816C, MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1C3D5F4C0;
            *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            *(inited + 40) = v15;
            v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);
            v35 = v13;
            *(inited + 48) = [v27 initWithInteger_];
            *(inited + 56) = v21;
            v28 = objc_allocWithZone(MEMORY[0x1E696AD98]);
            v29 = v19;
            *(inited + 64) = [v28 initWithInteger_];
            *(inited + 72) = v21;
            *(inited + 80) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            *(inited + 88) = v21;
            sub_1C3C751A8(inited);
            swift_setDeallocating();
            sub_1C3C3816C();
            swift_arrayDestroy();
            v30 = objc_allocWithZone(HKInteractiveChartDisplayType);
            sub_1C3C27CB4(0, &qword_1EC0855F0);
            sub_1C3C27CB4(0, &qword_1EC0859D8);
            sub_1C3C381FC();
            v31 = sub_1C3D1FEE4();

            v32 = [v30 initWithBaseDisplayType:v9 valueFormatter:v25 dataTypeCode:305 seriesForTimeScopeMapping:v31];

            return v32;
          }

          v34 = v9;
        }

        else
        {
          v34 = v13;
          v19 = v9;
        }
      }

      else
      {
        v34 = v9;
        v19 = v13;
      }

      v9 = v19;
    }
  }

  result = sub_1C3D20944();
  __break(1u);
  return result;
}

id sub_1C3C37C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C3D1E974();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(HKDateRangeDataSource) initWithSourceDelegate_];
  (*(v7 + 16))(v9, a2, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x1E69A2EE8])
  {
    v12 = 2;
  }

  else if (v11 == *MEMORY[0x1E69A2EE0])
  {
    v12 = 1;
  }

  else if (v11 == *MEMORY[0x1E69A2EF0])
  {
    v12 = 3;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v12 = 0;
  }

  v13 = [objc_allocWithZone(HKLevelOverlaySeries) initWithDisplayType:a1 dataSource:v10 options:v12];
  v14 = objc_opt_self();
  sub_1C3CE035C();
  v16 = v15;
  v17 = [v14 presentationStyleWithColor:v15 options:0];

  [v17 setAxisAnnotationStyle_];
  sub_1C3C27C60();
  v18 = swift_allocObject();
  v30 = xmmword_1C3D5EAE0;
  *(v18 + 16) = xmmword_1C3D5EAE0;
  *(v18 + 32) = v17;
  sub_1C3C27CB4(0, &qword_1EC0859C0);
  v19 = v13;
  v20 = v17;
  v21 = sub_1C3D202A4();

  [v19 setUnhighlightedPresentationStyles_];

  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  *(v22 + 32) = v20;
  v23 = v20;
  v24 = sub_1C3D202A4();

  [v19 setHighlightedPresentationStyles_];

  [v19 setInactivePresentationStyle_];
  v25 = objc_allocWithZone(type metadata accessor for BalanceChartFormatter());
  v26 = v19;
  v27 = [v25 init];
  v28 = [objc_allocWithZone(HKInteractiveChartDisplayType) initWithGraphSeries:v26 baseDisplayType:a1 valueFormatter:v27 dataTypeCode:305];

  return v28;
}

uint64_t sub_1C3C37FE0(uint64_t a1, uint64_t a2)
{
  sub_1C3C38108(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C38074(uint64_t a1, uint64_t a2)
{
  sub_1C3C38108(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C3C38108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3C3816C()
{
  if (!qword_1EC0859D0)
  {
    sub_1C3C27CB4(255, &qword_1EC0855F0);
    sub_1C3C27CB4(255, &qword_1EC0859D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0859D0);
    }
  }
}

unint64_t sub_1C3C381FC()
{
  result = qword_1EC0859E0;
  if (!qword_1EC0859E0)
  {
    sub_1C3C27CB4(255, &qword_1EC0855F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0859E0);
  }

  return result;
}

void sub_1C3C38264(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1C3C382C4()
{
  v1 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C3C38310(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C3C383CC()
{
  v1 = [v0 collectionViewLayout];
  type metadata accessor for CalendarViewLayout();

  return swift_dynamicCastClassUnconditional();
}

id sub_1C3C38430()
{
  v1 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController____lazy_storage___yearOverlay;
  v2 = *&v0[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController____lazy_storage___yearOverlay];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1C3C384A0(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1C3C3A4A0(v4);
  }

  sub_1C3C3A4B0(v2);
  return v3;
}

id sub_1C3C384A0(void *a1)
{
  result = [a1 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_1C3D200C4();
  v4 = [v2 _visibleDecorationViewsOfKind_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C3D202B4();

  if (!*(v5 + 16))
  {

    return 0;
  }

  sub_1C3C233C8(v5 + 32, v7);

  type metadata accessor for CalendarYearOverlayView();
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id BaseCalendarViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id BaseCalendarViewController.init(collectionViewLayout:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource] = 0;
  v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible] = 0;
  v3 = &v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController____lazy_storage___yearOverlay] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseCalendarViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCollectionViewLayout_, a1);

  return v4;
}

id BaseCalendarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C3D200C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseCalendarViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource] = 0;
  v3[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible] = 0;
  v5 = &v3[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v3[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController____lazy_storage___yearOverlay] = 1;
  if (a2)
  {
    v6 = sub_1C3D200C4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for BaseCalendarViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id BaseCalendarViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BaseCalendarViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource] = 0;
  v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible] = 0;
  v3 = &v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController____lazy_storage___yearOverlay] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseCalendarViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id BaseCalendarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCalendarViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall BaseCalendarViewController.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  v2 = v1 + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  BaseCalendarViewController.updateYearOverlay()();
}

Swift::Void __swiftcall BaseCalendarViewController.updateYearOverlayForScrollViewWillEndDragging(targetContentOffset:)(CGPoint targetContentOffset)
{
  v2 = v1;
  y = targetContentOffset.y;
  x = targetContentOffset.x;
  swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset];
  *v5 = x;
  v5[1] = y;
  *(v5 + 16) = 0;
  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 contentOffset];
    v9 = v8;

    v10 = vabdd_f64(y, v9);
    v11 = [v2 collectionViewLayout];
    type metadata accessor for CalendarViewLayout();
    v12 = swift_dynamicCastClassUnconditional();
    v13 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
    swift_beginAccess();
    v14 = *(v12 + v13);

    if (v14 * 5.5 < v10)
    {
      if (qword_1EC0850A8 != -1)
      {
        swift_once();
      }

      v15 = sub_1C3D1EDA4();
      __swift_project_value_buffer(v15, qword_1EC08DCB0);
      v16 = sub_1C3D1ED84();
      v17 = sub_1C3D20514();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136446210;
        v20 = sub_1C3D20CD4();
        v22 = sub_1C3C22C28(v20, v21, &v26);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1C3942000, v16, v17, "[%{public}s] Triggering the year overlay on drag end", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1C69321D0](v19, -1, -1);
        MEMORY[0x1C69321D0](v18, -1, -1);
      }

      *(v2 + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible) = 1;
      v23 = sub_1C3C38430();
      if (v23)
      {
        v24 = v23;
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1C3CD3EDC(1, sub_1C3C39DD8, v25, 0.25);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3C39364(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  sub_1C3C39FA8(a5);
}

double BaseCalendarViewController.decelerationDistanceThresholdForDisplayingMonthBanner.getter()
{
  v1 = [v0 collectionViewLayout];
  type metadata accessor for CalendarViewLayout();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  swift_beginAccess();
  v4 = *(v2 + v3);

  return v4 * 5.5;
}

double BaseCalendarViewController.decelerationDistanceThresholdToStopShowingMonthBanner.getter()
{
  v1 = [v0 collectionViewLayout];
  type metadata accessor for CalendarViewLayout();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  swift_beginAccess();
  v4 = *(v2 + v3);

  return v4 * 1.1;
}

Swift::Void __swiftcall BaseCalendarViewController.updateYearOverlay()()
{
  v1 = v0;
  swift_getObjectType();
  sub_1C3C3A14C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v62[-v6];
  sub_1C3C3A14C(0, &qword_1EC085A08, MEMORY[0x1E6969C28]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v62[-v12];
  v14 = [v0 collectionView];
  if (!v14)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 isDragging];

  v17 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible;
  if (!v16 || *(v1 + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible) != 1 || (*(v1 + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset + 16) & 1) != 0)
  {
LABEL_12:
    if (*(v1 + v17) != 1)
    {
      return;
    }

    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v34 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v34, qword_1EC08DCB0);
    v35 = sub_1C3D1ED84();
    v36 = sub_1C3D20514();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63[0] = v38;
      *v37 = 136446210;
      v39 = sub_1C3D20CD4();
      v41 = sub_1C3C22C28(v39, v40, v63);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1C3942000, v35, v36, "[%{public}s] Hiding the visible year overlay", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1C69321D0](v38, -1, -1);
      MEMORY[0x1C69321D0](v37, -1, -1);
    }

    *(v1 + v17) = 0;
    v42 = v1 + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset;
    *v42 = 0;
    *(v42 + 1) = 0;
    v42[16] = 1;
    v43 = sub_1C3C38430();
    if (v43)
    {
      v44 = v43;
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1C3CD3EDC(0, sub_1C3C3A1A0, v45, 0.75);
    }

    v46 = [v1 collectionView];
    if (v46)
    {
      v47 = v46;
      [v46 _verticalVelocity];
      v49 = v48;

      if (v49 <= 1.5)
      {
        (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
      }

      return;
    }

    goto LABEL_30;
  }

  v18 = *(v1 + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset + 8);
  v19 = [v1 collectionView];
  if (!v19)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = v19;
  [v19 contentOffset];
  v22 = v21;

  v23 = vabdd_f64(v18, v22);
  v24 = [v1 collectionViewLayout];
  type metadata accessor for CalendarViewLayout();
  v25 = swift_dynamicCastClassUnconditional();
  v26 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_itemHeight;
  swift_beginAccess();
  v27 = *(v25 + v26);

  if (v27 * 1.1 >= v23)
  {
    v17 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible;
    goto LABEL_12;
  }

  v28 = sub_1C3C38430();
  if (v28)
  {
    v29 = v28;
    v30 = [v1 collectionView];
    if (v30)
    {
      v31 = v30;
      [v29 center];
      v32 = [v31 indexPathForItemAtPoint_];

      if (v32)
      {
        sub_1C3D1E564();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v50 = sub_1C3D1E5B4();
      v51 = *(v50 - 8);
      (*(v51 + 56))(v11, v33, 1, v50);
      sub_1C3C3A1A8(v11, v13);
      if ((*(v51 + 48))(v13, 1, v50) == 1)
      {

        v52 = &qword_1EC085A08;
        v53 = MEMORY[0x1E6969C28];
        v54 = v13;
LABEL_28:
        sub_1C3C3A328(v54, v52, v53);
        return;
      }

      v55 = sub_1C3D1E5A4();
      (*(v51 + 8))(v13, v50);
      v56 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource;
      swift_beginAccess();
      v57 = *(v1 + v56);
      if (v57)
      {
        v58 = v57;
        CalendarViewDataSource.startDate(forSection:)(v55, v7);

        v59 = sub_1C3D1E1E4();
        (*(*(v59 - 8) + 56))(v7, 0, 1, v59);
        v60 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
        swift_beginAccess();
        sub_1C3C3A228(v29 + v60, v5);
        swift_beginAccess();
        sub_1C3C3A2A8(v7, v29 + v60);
        swift_endAccess();
        sub_1C3CD3630(v5);

        v61 = MEMORY[0x1E6969530];
        sub_1C3C3A328(v5, &qword_1EC085770, MEMORY[0x1E6969530]);
        v54 = v7;
        v52 = &qword_1EC085770;
        v53 = v61;
        goto LABEL_28;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

void sub_1C3C39CD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible) & 1) == 0)
    {
      v2 = sub_1C3C38430();
      if (v2)
      {
        v3 = v2;
        [v2 setHidden_];
      }
    }
  }
}

void sub_1C3C39D54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible) == 1)
    {
      v2 = sub_1C3C38430();
      if (v2)
      {
        v3 = v2;
        [v2 setHidden_];
      }
    }
  }
}

void sub_1C3C39DE0(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if ((a1 & 1) == 0)
  {
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v4, qword_1EC08DCB0);
    v5 = sub_1C3D1ED84();
    v6 = sub_1C3D20514();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      v9 = sub_1C3D20CD4();
      v11 = sub_1C3C22C28(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1C3942000, v5, v6, "[%{public}s] scrollViewDidEndDragging without deceleration: resuming data fetching", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1C69321D0](v8, -1, -1);
      MEMORY[0x1C69321D0](v7, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))();

    BaseCalendarViewController.updateYearOverlay()();
  }
}

void sub_1C3C39FA8(const char *a1)
{
  v3 = v1;
  swift_getObjectType();
  if (qword_1EC0850A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v4, qword_1EC08DCB0);
  v5 = sub_1C3D1ED84();
  v6 = sub_1C3D20514();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_1C3D20CD4();
    v11 = sub_1C3C22C28(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C3942000, v5, v6, a1, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1C69321D0](v8, -1, -1);
    MEMORY[0x1C69321D0](v7, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xD8))();

  BaseCalendarViewController.updateYearOverlay()();
}

void sub_1C3C3A14C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3C3A1A8(uint64_t a1, uint64_t a2)
{
  sub_1C3C3A14C(0, &qword_1EC085A08, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C3A228(uint64_t a1, uint64_t a2)
{
  sub_1C3C3A14C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C3A2A8(uint64_t a1, uint64_t a2)
{
  sub_1C3C3A14C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C3A328(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3C3A14C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C3C3A4A0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1C3C3A4B0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t SleepScoreYAxis.algorithmVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8HealthUI15SleepScoreYAxis_algorithmVersion;
  v4 = sub_1C3D1E6F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SleepScoreYAxis.__allocating_init(algorithmVersion:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(HKNumericAxisConfiguration) init];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredAxisStyle];
  [v6 setPreferredStyle_];

  v8 = OBJC_IVAR____TtC8HealthUI15SleepScoreYAxis_algorithmVersion;
  v9 = sub_1C3D1E6F4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v13.receiver = v3;
  v13.super_class = v1;
  v11 = objc_msgSendSuper2(&v13, sel_initWithConfiguration_, v6);

  (*(v10 + 8))(a1, v9);
  return v11;
}

id SleepScoreYAxis.init(algorithmVersion:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(HKNumericAxisConfiguration) init];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredAxisStyle];
  [v6 setPreferredStyle_];

  v8 = OBJC_IVAR____TtC8HealthUI15SleepScoreYAxis_algorithmVersion;
  v9 = sub_1C3D1E6F4();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v1[v8], a1, v9);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithConfiguration_, v6);

  (*(v10 + 8))(a1, v9);
  return v11;
}

id SleepScoreYAxis.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfiguration_];

  return v3;
}

id SleepScoreYAxis.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s8HealthUI15SleepScoreYAxisC14findAxisLabels12inModelRange9zoomScaleSaySo11HKAxisLabelCGSgSo07HKValueK0CyyXlGSg_12CoreGraphics7CGFloatVtF_0(void *a1)
{
  v3 = sub_1C3D1E624();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E6E4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  sub_1C3C3B1E8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  result = [a1 minValue];
  if (!result)
  {
    return result;
  }

  v55 = v11;
  v58 = result;
  v18 = MEMORY[0x1E69E7C98];
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v19 = v57;
  result = [a1 maxValue];
  if (!result)
  {
    return result;
  }

  v58 = result;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v20 = (COERCE__INT64(fabs(v57 - v19)) - 0x10000000000000) >> 53;
    if (COERCE__INT64(v57 - v19) >= 0 && v20 <= 0x3FE || (COERCE__INT64(v57 - v19) - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v23 = sub_1C3D1E604();
      sub_1C3D1E604();
      if (v23 <= v24)
      {
        v58 = MEMORY[0x1E69E7CC0];
        v51 = *(v8 + 56);
        v52 = v8 + 56;
        v51(v16, 1, 1, v7);
        v25 = MEMORY[0x1C692DD30](v1 + OBJC_IVAR____TtC8HealthUI15SleepScoreYAxis_algorithmVersion);
        v26 = v8;
        v27 = *(v25 + 16);
        if (!v27)
        {

          v30 = &selRef_setCollatedSummaryCount_;
LABEL_31:
          v41 = [objc_allocWithZone(HKAxisLabel) init];
          [v41 v30[477]];
          v42 = sub_1C3D1E804();
          [v41 setLocation_];

          v18 = v41;
          MEMORY[0x1C692F8F0]();
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_32;
          }

          goto LABEL_35;
        }

        v49 = v3;
        v53 = *(v26 + 16);
        v54 = v26 + 16;
        v28 = v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v50 = (v26 + 48);
        v29 = *(v26 + 72);
        v44[1] = v25;
        v45 = (v26 + 8);
        v47 = (v4 + 8);
        v48 = v29;
        v46 = (v26 + 32);
        v30 = &selRef_setCollatedSummaryCount_;
        while (1)
        {
          v53(v13, v28, v7);
          sub_1C3D1E6A4();
          v56 = v31;
          v32 = [objc_allocWithZone(HKAxisLabel) init];
          [v32 v30[477]];
          v33 = sub_1C3D1E804();
          [v32 setLocation_];

          v34 = v32;
          MEMORY[0x1C692F8F0]();
          v18 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C3D202C4();
          }

          sub_1C3D202F4();
          if ((*v50)(v16, 1, v7))
          {
            v35 = 0;
          }

          else
          {
            v18 = v55;
            v53(v55, v16, v7);
            sub_1C3D1E6A4();
            v35 = v36;
            (*v45)(v18, v7);
          }

          if (__OFADD__(v56, v35))
          {
            break;
          }

          v56 = v34;
          sub_1C3D1E6C4();
          sub_1C3D1E614();
          (*v47)(v6, v49);
          v37 = [objc_allocWithZone(HKAxisLabel) init];
          [v37 v30[477]];
          v38 = sub_1C3D1E804();
          [v37 setLocation_];

          v39 = sub_1C3D200C4();

          [v37 setText_];

          v40 = v37;
          MEMORY[0x1C692F8F0]();
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C3D202C4();
          }

          sub_1C3D202F4();

          sub_1C3C3B240(v16);
          (*v46)(v16, v13, v7);
          v51(v16, 0, 1, v7);
          v28 += v48;
          --v27;
          v30 = &selRef_setCollatedSummaryCount_;
          if (!v27)
          {

            goto LABEL_31;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_35:
      sub_1C3D202C4();
LABEL_32:
      sub_1C3D202F4();

      v43 = v58;
      sub_1C3C3B240(v16);
      return v43;
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreYAxis()
{
  result = qword_1EC085A10;
  if (!qword_1EC085A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C3B0E0()
{
  result = sub_1C3D1E6F4();
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

unint64_t sub_1C3C3B19C()
{
  result = qword_1EC086E80;
  if (!qword_1EC086E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086E80);
  }

  return result;
}

void sub_1C3C3B1E8()
{
  if (!qword_1EC085A20)
  {
    sub_1C3D1E6E4();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085A20);
    }
  }
}

uint64_t sub_1C3C3B240(uint64_t a1)
{
  sub_1C3C3B1E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DailyModelProvider.FetchState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29[0] = v29 - v9;
  v29[1] = a4;
  v29[2] = a3;
  State = type metadata accessor for DailyModelProvider.FetchState();
  v11 = *(State - 8);
  MEMORY[0x1EEE9AC00](State);
  v31 = v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v29 - v16;
  v18 = *(v15 + 48);
  v30 = v11;
  v19 = *(v11 + 16);
  v19(v29 - v16, a1, State);
  v19(&v17[v18], v32, State);
  v32 = v8;
  v20 = *(v8 + 48);
  v21 = v20(v17, 3, AssociatedTypeWitness);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v17[v18], 3, AssociatedTypeWitness) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v20(&v17[v18], 3, AssociatedTypeWitness) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    v22 = 0;
    State = TupleTypeMetadata2;
    goto LABEL_12;
  }

  if (!v21)
  {
    v19(v31, v17, State);
    if (!v20(&v17[v18], 3, AssociatedTypeWitness))
    {
      v24 = v32;
      v25 = &v17[v18];
      v26 = v29[0];
      (*(v32 + 32))(v29[0], v25, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v27 = v31;
      v22 = sub_1C3D20034();
      v28 = *(v24 + 8);
      v28(v26, AssociatedTypeWitness);
      v28(v27, AssociatedTypeWitness);
      v14 = v30;
      goto LABEL_12;
    }

    (*(v32 + 8))(v31, AssociatedTypeWitness);
    goto LABEL_11;
  }

  if (v20(&v17[v18], 3, AssociatedTypeWitness) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = 1;
  v14 = v30;
LABEL_12:
  (*(v14 + 8))(v17, State);
  return v22 & 1;
}

uint64_t sub_1C3C3B704@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1C3D1E484();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C3C3B798(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1C3D1E484();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C3C3B834@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_1C3D1E484();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t *DailyModelProvider.__allocating_init(dataSource:minimumBufferDuration:prefetchMultiplier:cacheLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_1C3C414B8(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v10;
}

uint64_t *DailyModelProvider.init(dataSource:minimumBufferDuration:prefetchMultiplier:cacheLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_1C3C414B8(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

char *DailyModelProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  if (*&v0[*(*v0 + 128)])
  {

    sub_1C3D1EEC4();

    v2 = *v0;
  }

  (*(*(*(v3 + 80) - 8) + 8))(&v0[*(v2 + 96)]);

  v4 = *(*v0 + 112);
  v5 = sub_1C3D1E484();
  v6 = *(*(v5 - 8) + 8);
  v6(&v1[v4], v5);
  v6(&v1[*(*v1 + 120)], v5);

  sub_1C3C425CC(&v1[*(*v1 + 168)], &qword_1EC085A28, sub_1C3C41754);
  return v1;
}

uint64_t DailyModelProvider.__deallocating_deinit()
{
  DailyModelProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C3C3BC04(uint64_t a1)
{
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C3C417E8(a1, &v6 - v3);
  return sub_1C3C3C6B4(v4);
}

uint64_t sub_1C3C3BCA8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v59 = v4;
  sub_1C3C41754();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v59 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v64 = (&v59 - v16);
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v65 = &v59 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  sub_1C3C42BBC();
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v4 + 168);
  swift_beginAccess();
  v32 = *(v28 + 56);
  v33 = v6;
  v66 = a1;
  sub_1C3C417E8(a1, v30);
  sub_1C3C417E8(v2 + v31, &v30[v32]);
  v63 = v7;
  v36 = *(v7 + 48);
  v35 = v7 + 48;
  v34 = v36;
  if (v36(v30, 1, v33) == 1)
  {
    if (v34(&v30[v32], 1, v33) == 1)
    {
      return sub_1C3C425CC(v30, &qword_1EC085A28, sub_1C3C41754);
    }

    goto LABEL_6;
  }

  sub_1C3C417E8(v30, v26);
  if (v34(&v30[v32], 1, v33) == 1)
  {
    sub_1C3C42C3C(v26, sub_1C3C41754);
LABEL_6:
    sub_1C3C42C3C(v30, sub_1C3C42BBC);
    goto LABEL_7;
  }

  v67 = v33;
  v53 = v64;
  sub_1C3C42308(&v30[v32], v64, sub_1C3C41754);
  sub_1C3D1FE54();
  sub_1C3C428EC(&unk_1EC0862A0, MEMORY[0x1E696B418]);
  if (sub_1C3D20034())
  {
    v54 = sub_1C3D20034();
    sub_1C3C42C3C(v53, sub_1C3C41754);
    v33 = v67;
    sub_1C3C42C3C(v26, sub_1C3C41754);
    result = sub_1C3C425CC(v30, &qword_1EC085A28, sub_1C3C41754);
    if (v54)
    {
      return result;
    }
  }

  else
  {
    sub_1C3C42C3C(v53, sub_1C3C41754);
    sub_1C3C42C3C(v26, sub_1C3C41754);
    sub_1C3C425CC(v30, &qword_1EC085A28, sub_1C3C41754);
    v33 = v67;
  }

LABEL_7:
  sub_1C3C417E8(v2 + v31, v24);
  if (v34(v24, 1, v33) != 1)
  {
    v67 = v33;
    v39 = v69;
    sub_1C3C42308(v24, v69, sub_1C3C41754);
    v40 = *(v2 + *(*v2 + 144));
    v41 = *(v2 + *(*v2 + 152));
    if ((v40 * v41) >> 64 == (v40 * v41) >> 63)
    {
      v26 = v68;
      sub_1C3D20454();
      sub_1C3D1FE54();
      sub_1C3C428EC(&qword_1EC0857D8, MEMORY[0x1E696B418]);
      sub_1C3D20704();
      v35 = *(v2 + *(*v2 + 160));
      if (v35 >= v71[0])
      {
LABEL_21:
        sub_1C3C3C98C(v39);
        sub_1C3C42C3C(v26, sub_1C3C41754);
        return sub_1C3C42C3C(v39, sub_1C3C41754);
      }

      if (qword_1EC0850A8 == -1)
      {
LABEL_13:
        v42 = sub_1C3D1EDA4();
        __swift_project_value_buffer(v42, qword_1EC08DCB0);
        v43 = v60;
        sub_1C3C427D4(v39, v60, sub_1C3C41754);
        swift_retain_n();
        v44 = sub_1C3D1ED84();
        LODWORD(v66) = sub_1C3D20504();
        if (os_log_type_enabled(v44, v66))
        {
          v45 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v71[0] = v65;
          *v45 = 136447234;
          v46 = sub_1C3D20CD4();
          v64 = v44;
          v48 = sub_1C3C22C28(v46, v47, v71);

          *(v45 + 4) = v48;
          v39 = v69;
          *(v45 + 12) = 2050;
          sub_1C3D20704();
          v49 = v70;
          sub_1C3C42C3C(v43, sub_1C3C41754);
          *(v45 + 14) = v49;
          *(v45 + 22) = 2048;

          *(v45 + 24) = v40;

          *(v45 + 32) = 2048;

          *(v45 + 34) = v41;

          *(v45 + 42) = 2048;

          *(v45 + 44) = v35;

          v50 = v64;
          _os_log_impl(&dword_1C3942000, v64, v66, "[%{public}s] Cache limit too small for active day range: %{public}ld +/- %ld * %ld > %ld", v45, 0x34u);
          v51 = v65;
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x1C69321D0](v51, -1, -1);
          v52 = v45;
          v26 = v68;
          MEMORY[0x1C69321D0](v52, -1, -1);
        }

        else
        {

          sub_1C3C42C3C(v43, sub_1C3C41754);
        }

        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_13;
  }

  sub_1C3C425CC(v24, &qword_1EC085A28, sub_1C3C41754);
  v38 = v65;
  sub_1C3C417E8(v66, v65);
  if (v34(v38, 1, v33) == 1)
  {
    return sub_1C3C425CC(v38, &qword_1EC085A28, sub_1C3C41754);
  }

  v55 = v38;
  v56 = v62;
  sub_1C3C42308(v55, v62, sub_1C3C41754);
  v57 = v56;
  v58 = v61;
  sub_1C3C42308(v57, v61, sub_1C3C41754);
  (*(v63 + 56))(v58, 0, 1, v33);
  swift_beginAccess();
  sub_1C3C42C9C(v58, v2 + v31);
  return swift_endAccess();
}

uint64_t sub_1C3C3C650@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 168);
  swift_beginAccess();
  return sub_1C3C417E8(v1 + v3, a1);
}

uint64_t sub_1C3C3C6B4(uint64_t a1)
{
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = *(*v1 + 168);
  swift_beginAccess();
  sub_1C3C417E8(v1 + v6, v5);
  swift_beginAccess();
  sub_1C3C41868(a1, v1 + v6);
  swift_endAccess();
  sub_1C3C3BCA8(v5);
  sub_1C3C425CC(a1, &qword_1EC085A28, sub_1C3C41754);
  return sub_1C3C425CC(v5, &qword_1EC085A28, sub_1C3C41754);
}

void (*sub_1C3C3C7D4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 40) = v8;
  v10 = *(*v1 + 168);
  swift_beginAccess();
  sub_1C3C417E8(v1 + v10, v9);
  return sub_1C3C3C8F4;
}

void sub_1C3C3C8F4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1C3C417E8(v4, v3);
    sub_1C3C3C6B4(v3);
    sub_1C3C425CC(v4, &qword_1EC085A28, sub_1C3C41754);
  }

  else
  {
    sub_1C3C3C6B4(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1C3C3C98C(uint64_t a1)
{
  v102 = a1;
  v98 = *v1;
  v2 = v98;
  v97 = *(v98 + 80);
  v91 = *(v97 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v96 = &v81 - v3;
  sub_1C3C42370(0, &qword_1EC085D60, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v81 - v5;
  sub_1C3C42858();
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C3D1E444();
  v89 = *(v111 - 8);
  v9 = MEMORY[0x1EEE9AC00](v111);
  v94 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v81 - v11;
  sub_1C3C41754();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C3D1E484();
  v110 = *(v15 - 8);
  v16 = v110;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v86 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v105 = &v81 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v81 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v106 = &v81 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v81 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v81 - v30;
  v108 = &v81 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v81 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v109 = &v81 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v103 = &v81 - v37;
  v38 = *(v1 + *(v2 + 144));
  v107 = v1;
  v92 = v38;
  sub_1C3D20454();
  sub_1C3D20464();
  v85 = v14;
  sub_1C3C42C3C(v14, sub_1C3C41754);
  sub_1C3C3B704(v31);
  v39 = v16 + 16;
  v40 = *(v16 + 16);
  v104 = v28;
  v40(v28, v34, v15);
  v101 = v23;
  v40(v23, v34, v15);
  v40(v105, v31, v15);
  v41 = sub_1C3C428EC(&qword_1EC085B48, MEMORY[0x1E6969B50]);
  v42 = v106;
  sub_1C3D20794();
  sub_1C3D20784();
  v43 = *(v110 + 8);
  v110 += 8;
  v43(v42, v15);
  v44 = v108;
  v43(v108, v15);
  v43(v34, v15);
  sub_1C3C3B834(v34);
  v45 = v44;
  v46 = v109;
  v40(v45, v109, v15);
  v40(v42, v46, v15);
  v84 = v40;
  v83 = v39;
  v40(v101, v34, v15);
  v48 = v103;
  v47 = v104;
  sub_1C3D20794();
  v93 = v41;
  sub_1C3D20784();
  v49 = v107;
  v43(v47, v15);
  v99 = v34;
  v43(v34, v15);
  v43(v46, v15);
  result = sub_1C3D1E414();
  v51 = *v49;
  if (result)
  {
    (*(*(v98 + 88) + 40))(v97);
    return (v43)(v48, v15);
  }

  else
  {
    v82 = v43;
    if ((v92 * *(v49 + *(v51 + 152))) >> 64 == (v92 * *(v49 + *(v51 + 152))) >> 63)
    {
      v52 = v85;
      sub_1C3D20454();
      v53 = v108;
      sub_1C3D20464();
      sub_1C3C42C3C(v52, sub_1C3C41754);
      sub_1C3C3B704(v47);
      v54 = v84;
      v84(v106, v53, v15);
      v54(v105, v53, v15);
      v54(v86, v47, v15);
      v55 = v101;
      sub_1C3D20794();
      sub_1C3D20784();
      v56 = v82;
      v82(v55, v15);
      v57 = v104;
      v56(v104, v15);
      v56(v53, v15);
      sub_1C3C3B834(v53);
      v58 = v99;
      v54(v57, v99, v15);
      v54(v55, v58, v15);
      v54(v105, v53, v15);
      v59 = v15;
      v60 = v106;
      sub_1C3D20794();
      v61 = v109;
      sub_1C3D20784();
      v56(v60, v59);
      v56(v53, v59);
      v56(v99, v59);
      sub_1C3D1E454();
      v109 = v59;
      v56(v61, v59);
      sub_1C3D1E434();
      v62 = *(v87 + 36);
      v63 = v107;
      sub_1C3C428EC(&qword_1EC085BB0, MEMORY[0x1E6969B30]);
      v64 = v111;
      while (1)
      {
        sub_1C3D20424();
        if (*&v8[v62] == v112)
        {
          break;
        }

        v65 = sub_1C3D20444();
        v65(&v112, 0);
        sub_1C3D20434();
        swift_beginAccess();
        v64 = v111;
        sub_1C3D1E3F4();
        swift_endAccess();
      }

      sub_1C3C42C3C(v8, sub_1C3C42858);
      v66 = sub_1C3D203A4();
      (*(*(v66 - 8) + 56))(v95, 1, 1, v66);
      v67 = *(*v63 + 96);
      v68 = v89;
      (*(v89 + 16))(v94, v100, v64);
      v69 = v91;
      v70 = v97;
      (*(v91 + 16))(v96, &v63[v67], v97);
      sub_1C3D20374();

      v71 = sub_1C3D20364();
      v72 = (*(v68 + 80) + 48) & ~*(v68 + 80);
      v73 = (v88 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = (*(v69 + 80) + v73 + 8) & ~*(v69 + 80);
      v75 = (v90 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      v77 = MEMORY[0x1E69E85E0];
      *(v76 + 2) = v71;
      *(v76 + 3) = v77;
      *(v76 + 4) = v70;
      v78 = v98;
      *(v76 + 5) = *(v98 + 88);
      v79 = &v76[v72];
      v80 = v111;
      (*(v68 + 32))(v79, v94, v111);
      *&v76[v73] = v63;
      (*(v69 + 32))(&v76[v74], v96, v70);
      *&v76[v75] = v78;
      sub_1C3CD907C(0, 0, v95, &unk_1C3D5F638, v76);

      (*(v68 + 8))(v100, v80);
      return (v82)(v103, v109);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C3C3D630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[30] = *a5;
  sub_1C3C41754();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  sub_1C3C42858();
  v7[33] = v8;
  v7[34] = swift_task_alloc();
  sub_1C3D20374();
  v7[35] = sub_1C3D20364();
  v10 = sub_1C3D20314();
  v7[36] = v10;
  v7[37] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C3C3D75C, v10, v9);
}

uint64_t sub_1C3C3D75C()
{
  v28 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 216);
  sub_1C3D1E434();
  v4 = *(v2 + 36);
  *(v0 + 368) = v4;
  v5 = *v3;
  *(v0 + 304) = *(*v3 + 120);
  *(v0 + 312) = *(v5 + 104);
  sub_1C3D1E444();
  sub_1C3C428EC(&qword_1EC085BB0, MEMORY[0x1E6969B30]);
  sub_1C3D20424();
  if (*(v1 + v4) == *(v0 + 144))
  {
    sub_1C3C42C3C(*(v0 + 272), sub_1C3C42858);

    sub_1C3C40468();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = sub_1C3D20444();
    v10 = *v9;
    *(v0 + 320) = *v9;
    v11 = v9[1];
    *(v0 + 328) = v11;
    v8(v0 + 16, 0);
    sub_1C3D20434();
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1C3D1EDA4();
    *(v0 + 336) = __swift_project_value_buffer(v12, qword_1EC08DCB0);
    v13 = sub_1C3D1ED84();
    v14 = sub_1C3D204E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v15 = 136446466;
      v16 = sub_1C3D20CD4();
      v18 = sub_1C3C22C28(v16, v17, &v27);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v0 + 192) = v10;
      *(v0 + 200) = v11;
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      sub_1C3D20924();
      MEMORY[0x1C692F800](3943982, 0xE300000000000000);
      sub_1C3D20924();
      v19 = sub_1C3C22C28(*(v0 + 128), *(v0 + 136), &v27);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1C3942000, v13, v14, "[%{public}s] Fetching values in %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v25, -1, -1);
      MEMORY[0x1C69321D0](v15, -1, -1);
    }

    v20 = *(v0 + 240);
    sub_1C3D20474();
    v22 = *(v20 + 80);
    v21 = *(v20 + 88);
    v26 = (*(v21 + 24) + **(v21 + 24));
    v23 = swift_task_alloc();
    *(v0 + 344) = v23;
    *v23 = v0;
    v23[1] = sub_1C3C3DBFC;
    v24 = *(v0 + 256);

    return v26(v24, v22, v21);
  }
}

uint64_t sub_1C3C3DBFC(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[32];
  if (v1)
  {
    sub_1C3C42C3C(v5, sub_1C3C41754);
    v6 = v4[36];
    v7 = v4[37];
    v8 = sub_1C3C3E3D8;
  }

  else
  {
    v4[45] = a1;
    sub_1C3C42C3C(v5, sub_1C3C41754);
    v6 = v4[36];
    v7 = v4[37];
    v8 = sub_1C3C3DD6C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1C3C3DD6C()
{
  v36 = v0;
  sub_1C3C3EE9C(*(v0 + 360), *(v0 + 320), *(v0 + 328));

  v1 = sub_1C3D1ED84();
  v2 = sub_1C3D204E4();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 320);
    v3 = *(v0 + 328);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136446466;
    v7 = sub_1C3D20CD4();
    v9 = sub_1C3C22C28(v7, v8, &v35);

    *(v5 + 4) = v9;
    *(v0 + 112) = 0;
    *(v0 + 176) = v4;
    *(v5 + 12) = 2080;
    *(v0 + 184) = v3;
    *(v0 + 120) = 0xE000000000000000;
    sub_1C3D20924();
    MEMORY[0x1C692F800](3943982, 0xE300000000000000);
    sub_1C3D20924();
    v10 = sub_1C3C22C28(*(v0 + 112), *(v0 + 120), &v35);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_1C3942000, v1, v2, "[%{public}s] Finished fetching in %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v6, -1, -1);
    MEMORY[0x1C69321D0](v5, -1, -1);
  }

  v11 = *(v0 + 368);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  swift_beginAccess();
  sub_1C3D1E404();
  swift_endAccess();
  sub_1C3D20474();
  sub_1C3D1EEE4();
  sub_1C3C42C3C(v13, sub_1C3C41754);
  sub_1C3D1E444();
  sub_1C3C428EC(&qword_1EC085BB0, MEMORY[0x1E6969B30]);
  sub_1C3D20424();
  if (*(v12 + v11) == *(v0 + 144))
  {
    sub_1C3C42C3C(*(v0 + 272), sub_1C3C42858);

    sub_1C3C40468();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = sub_1C3D20444();
    v18 = *v17;
    *(v0 + 320) = *v17;
    v19 = v17[1];
    *(v0 + 328) = v19;
    v16(v0 + 16, 0);
    sub_1C3D20434();
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C3D1EDA4();
    *(v0 + 336) = __swift_project_value_buffer(v20, qword_1EC08DCB0);
    v21 = sub_1C3D1ED84();
    v22 = sub_1C3D204E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v23 = 136446466;
      v24 = sub_1C3D20CD4();
      v26 = sub_1C3C22C28(v24, v25, &v35);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      *(v0 + 192) = v18;
      *(v0 + 200) = v19;
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      sub_1C3D20924();
      MEMORY[0x1C692F800](3943982, 0xE300000000000000);
      sub_1C3D20924();
      v27 = sub_1C3C22C28(*(v0 + 128), *(v0 + 136), &v35);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_1C3942000, v21, v22, "[%{public}s] Fetching values in %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v33, -1, -1);
      MEMORY[0x1C69321D0](v23, -1, -1);
    }

    v28 = *(v0 + 240);
    sub_1C3D20474();
    v30 = *(v28 + 80);
    v29 = *(v28 + 88);
    v34 = (*(v29 + 24) + **(v29 + 24));
    v31 = swift_task_alloc();
    *(v0 + 344) = v31;
    *v31 = v0;
    v31[1] = sub_1C3C3DBFC;
    v32 = *(v0 + 256);

    return v34(v32, v30, v29);
  }
}

uint64_t sub_1C3C3E3D8()
{
  v45 = v0;
  v1 = *(v0 + 352);
  v2 = v1;
  v3 = sub_1C3D1ED84();
  v4 = sub_1C3D204F4();

  if (os_log_type_enabled(v3, v4))
  {
    v40 = *(v0 + 352);
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v7 = 136446722;
    v8 = sub_1C3D20CD4();
    v10 = sub_1C3C22C28(v8, v9, &v44);

    *(v0 + 96) = 0;
    *(v7 + 4) = v10;
    *(v0 + 152) = v6;
    *(v7 + 12) = 2082;
    *(v0 + 160) = v5;
    *(v0 + 104) = 0xE000000000000000;
    sub_1C3D20924();
    MEMORY[0x1C692F800](3943982, 0xE300000000000000);
    sub_1C3D20924();
    v11 = sub_1C3C22C28(*(v0 + 96), *(v0 + 104), &v44);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v12 = *(*(v0 + 80) - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = sub_1C3D20134();
    v15 = v14;

    v16 = sub_1C3C22C28(v13, v15, &v44);

    *(v7 + 24) = v16;
    _os_log_impl(&dword_1C3942000, v3, v4, "[%{public}s] Error fetching values in %{public}s: %{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v41, -1, -1);
    MEMORY[0x1C69321D0](v7, -1, -1);
  }

  else
  {
    v17 = *(v0 + 352);
  }

  v18 = *(v0 + 368);
  v19 = *(v0 + 272);
  v20 = *(v0 + 248);
  swift_beginAccess();
  sub_1C3D1E404();
  swift_endAccess();
  sub_1C3D20474();
  sub_1C3D1EEE4();
  sub_1C3C42C3C(v20, sub_1C3C41754);
  sub_1C3D1E444();
  sub_1C3C428EC(&qword_1EC085BB0, MEMORY[0x1E6969B30]);
  sub_1C3D20424();
  if (*(v19 + v18) == *(v0 + 144))
  {
    sub_1C3C42C3C(*(v0 + 272), sub_1C3C42858);

    sub_1C3C40468();

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = sub_1C3D20444();
    v25 = *v24;
    *(v0 + 320) = *v24;
    v26 = v24[1];
    *(v0 + 328) = v26;
    v23(v0 + 16, 0);
    sub_1C3D20434();
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1C3D1EDA4();
    *(v0 + 336) = __swift_project_value_buffer(v27, qword_1EC08DCB0);
    v28 = sub_1C3D1ED84();
    v29 = sub_1C3D204E4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v30 = 136446466;
      v31 = sub_1C3D20CD4();
      v33 = sub_1C3C22C28(v31, v32, &v44);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v0 + 192) = v25;
      *(v0 + 200) = v26;
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      sub_1C3D20924();
      MEMORY[0x1C692F800](3943982, 0xE300000000000000);
      sub_1C3D20924();
      v34 = sub_1C3C22C28(*(v0 + 128), *(v0 + 136), &v44);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_1C3942000, v28, v29, "[%{public}s] Fetching values in %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v42, -1, -1);
      MEMORY[0x1C69321D0](v30, -1, -1);
    }

    v35 = *(v0 + 240);
    sub_1C3D20474();
    v37 = *(v35 + 80);
    v36 = *(v35 + 88);
    v43 = (*(v36 + 24) + **(v36 + 24));
    v38 = swift_task_alloc();
    *(v0 + 344) = v38;
    *v38 = v0;
    v38[1] = sub_1C3C3DBFC;
    v39 = *(v0 + 256);

    return v43(v39, v37, v36);
  }
}

uint64_t sub_1C3C3EB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_1C3D1E484();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1C3D206E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  swift_beginAccess();
  sub_1C3D1FE54();
  sub_1C3C428EC(&unk_1EC087240, MEMORY[0x1E696B418]);

  v22 = a1;
  sub_1C3D1FF54();

  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
    sub_1C3C3B704(v4);
    sub_1C3D1FE34();
    v11 = sub_1C3D1E424();
    v12 = *(v21 + 8);
    v13 = v23;
    v12(v4, v23);
    if (v11)
    {
      return (*(v10 + 56))(v24, 3, 3, AssociatedTypeWitness);
    }

    sub_1C3C3B834(v4);
    sub_1C3D1FE34();
    v19 = sub_1C3D1E424();
    v12(v4, v13);
    v16 = *(v10 + 56);
    v17 = v24;
    if (v19)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v15 = v24;
    (*(v10 + 32))(v24, v9, AssociatedTypeWitness);
    v16 = *(v10 + 56);
    v17 = v15;
    v18 = 0;
  }

  return v16(v17, v18, 3, AssociatedTypeWitness);
}

uint64_t sub_1C3C3EE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v50 = *v3;
  sub_1C3C29A0C();
  v65 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v64 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v49 - v9;
  v10 = sub_1C3D1FE54();
  v11 = *(v10 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = (&v49 - v14);
  sub_1C3C426C0();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C41754();
  v20 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v49 - v24;
  v52 = a2;
  v26 = v18;
  v53 = a3;
  sub_1C3D20474();
  sub_1C3C427D4(v25, v18, sub_1C3C41754);
  v27 = *(v16 + 44);
  v59 = v11;
  v30 = *(v11 + 16);
  v28 = v11 + 16;
  v29 = v30;
  v49 = v25;
  v30(v26 + v27, v25, v10);
  v62 = v20;
  v31 = *(v20 + 36);
  v32 = v27;
  v61 = sub_1C3C428EC(&unk_1EC0862A0, MEMORY[0x1E696B418]);
  if (sub_1C3D20034())
  {
LABEL_8:
    sub_1C3C42C3C(v26, sub_1C3C426C0);
    v46 = sub_1C3C42C3C(v49, sub_1C3C41754);
    MEMORY[0x1EEE9AC00](v46);
    v47 = *(v50 + 88);
    *(&v49 - 2) = *(v50 + 80);
    *(&v49 - 1) = v47;
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    sub_1C3C428EC(&unk_1EC087240, MEMORY[0x1E696B418]);
    sub_1C3D1FF44();

    sub_1C3D1FF34();
    swift_endAccess();
    swift_beginAccess();
    sub_1C3D1E3F4();
    return swift_endAccess();
  }

  else
  {
    v33 = v59++;
    v60 = (v33 + 4);
    v35 = v66;
    v34 = v67;
    v57 = v28;
    v58 = v32;
    v55 = v31;
    v56 = v29;
    v54 = v26;
    while (1)
    {
      v29(v35, v26 + v32, v10);
      v36 = v10;
      v10 = *v60;
      (*v60)(v34, v26 + v32, v36);
      sub_1C3C428EC(&qword_1EC086290, MEMORY[0x1E696B418]);
      if ((sub_1C3D20004() & 1) == 0)
      {
        break;
      }

      v37 = v63;
      v29(v63, v26, v36);
      v38 = v26;
      v39 = v65;
      v29(v37 + *(v65 + 48), v38 + v31, v36);
      v40 = v64;
      sub_1C3C427D4(v37, v64, sub_1C3C29A0C);
      v41 = *(v39 + 48);
      v10(v23, v40, v36);
      v35 = *v59;
      (*v59)(v40 + v41, v36);
      v42 = v37;
      v34 = v67;
      sub_1C3C42308(v42, v40, sub_1C3C29A0C);
      v43 = *(v39 + 48);
      v26 = *(v62 + 36);
      v10(&v23[v26], v40 + v43, v36);
      v35(v40, v36);
      if ((sub_1C3D20004() & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = v36;
      v36 = sub_1C3D1FFE4();
      sub_1C3C42C3C(v23, sub_1C3C41754);
      if ((v36 & 1) == 0)
      {
        goto LABEL_11;
      }

      v69 = 1;
      sub_1C3C428EC(&qword_1EC0857D8, MEMORY[0x1E696B418]);
      v26 = v54;
      v32 = v58;
      sub_1C3D206F4();
      v35(v34, v10);
      v36 = v66;
      v44 = v68;
      sub_1C3C3F658(v66);
      v68 = v44;
      if (v44)
      {
        goto LABEL_12;
      }

      v35(v36, v10);
      v31 = v55;
      v35 = v36;
      v45 = sub_1C3D20034();
      v29 = v56;
      if (v45)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:

    v35(v36, v10);
    result = sub_1C3C42C3C(v26, sub_1C3C426C0);
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3C3F658(uint64_t a1)
{
  v10 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_1C3D206E4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1C3D1FE54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v8, v10, v5);
  (*(*(AssociatedTypeWitness - 8) + 56))(v4, 1, 1, AssociatedTypeWitness);
  swift_beginAccess();
  sub_1C3C428EC(&unk_1EC087240, MEMORY[0x1E696B418]);
  sub_1C3D1FF44();
  sub_1C3D1FF64();
  swift_endAccess();
}

uint64_t sub_1C3C3F8F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_1C3C3F9F4()
{
  v23 = *v0;
  v1 = v23;
  v22 = MEMORY[0x1E69E8050];
  sub_1C3C42370(0, &qword_1EC085B60, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  sub_1C3C423C4();
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 88);
  v10 = *(v9 + 32);
  v21 = *(v1 + 80);
  v27 = v10();
  sub_1C3C42580();
  v11 = sub_1C3D205C4();
  v26 = v11;
  v12 = sub_1C3D205A4();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_1C3C424B0();
  sub_1C3C428EC(&qword_1EC085B78, sub_1C3C424B0);
  sub_1C3C428EC(&qword_1EC085B80, sub_1C3C42580);
  sub_1C3D1EFE4();
  sub_1C3C425CC(v4, &qword_1EC085B60, v22);

  v13 = swift_allocObject();
  v14 = v21;
  v13[2] = v21;
  v13[3] = v9;
  v13[4] = v23;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v9;
  v16[4] = v15;
  sub_1C3C428EC(&qword_1EC085B88, sub_1C3C423C4);
  v17 = v24;
  v18 = sub_1C3D1EFD4();

  (*(v25 + 8))(v8, v17);
  return v18;
}

void sub_1C3C3FDD0(void **a1)
{
  v1 = *a1;
  if (qword_1EC0850A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v2, qword_1EC08DCB0);
  v3 = v1;
  oslog = sub_1C3D1ED84();
  v4 = sub_1C3D20514();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;
    v7 = sub_1C3D20CD4();
    v9 = sub_1C3C22C28(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = v1;
    sub_1C3C42660();
    v11 = sub_1C3D20134();
    v13 = sub_1C3C22C28(v11, v12, &v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1C3942000, oslog, v4, "[%{public}s] Error observing model change: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v6, -1, -1);
    MEMORY[0x1C69321D0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C3C3FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C3D20374();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a2;
  return sub_1C3CD5634(sub_1C3C42640, v8);
}

uint64_t sub_1C3C40034()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C3C40110();
  }
}

uint64_t sub_1C3C40110()
{
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18[-1] - v1;
  sub_1C3C41754();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C3C650(v2);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_1C3C425CC(v2, &qword_1EC085A28, sub_1C3C41754);
  }

  sub_1C3C42308(v2, v7, sub_1C3C41754);
  if (qword_1EC0850A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v9, qword_1EC08DCB0);
  v10 = sub_1C3D1ED84();
  v11 = sub_1C3D20514();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136446210;
    v14 = sub_1C3D20CD4();
    v16 = sub_1C3C22C28(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C3942000, v10, v11, "[%{public}s] Model change detected: reloading all data", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C69321D0](v13, -1, -1);
    MEMORY[0x1C69321D0](v12, -1, -1);
  }

  swift_beginAccess();
  sub_1C3D1E464();
  swift_endAccess();
  swift_beginAccess();
  sub_1C3D1E464();
  swift_endAccess();
  sub_1C3C3C98C(v7);
  return sub_1C3C42C3C(v7, sub_1C3C41754);
}

uint64_t sub_1C3C40468()
{
  v1 = v0;
  v106 = sub_1C3D1E3D4();
  v90 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C42274();
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29A0C();
  v92 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v86 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v82 - v9;
  v10 = sub_1C3D1E484();
  v103 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v93 = &v82 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v82 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v101 = &v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v96 = &v82 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v87 = &v82 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v104 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v82 - v25;
  v26 = sub_1C3D1FE54();
  v102 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v91 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v82 - v29;
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v82 - v31;
  sub_1C3C41754();
  v34 = v33;
  v100 = *(v33 - 1);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v84 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v98 = &v82 - v37;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_1C3C428EC(&unk_1EC087240, MEMORY[0x1E696B418]);

  v99 = v26;
  v38 = sub_1C3D1FF24();

  v40 = *(v1 + *(*v1 + 160));
  if (v40 < v38)
  {
    sub_1C3C3C650(v32);
    if (v100[6](v32, 1, v34) == 1)
    {
      return sub_1C3C425CC(v32, &qword_1EC085A28, sub_1C3C41754);
    }

    sub_1C3C42308(v32, v98, sub_1C3C41754);
    sub_1C3C428EC(&qword_1EC0857D8, MEMORY[0x1E696B418]);
    v41 = v99;
    sub_1C3D20704();
    if (v107[0] <= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v107[0];
    }

    result = sub_1C3D20704();
    if (__OFSUB__(v42, v107[0]))
    {
      __break(1u);
    }

    else
    {
      v43 = v97;
      sub_1C3D1FE04();
      v44 = v91;
      sub_1C3D1FDE4();
      sub_1C3C428EC(&qword_1EC086290, MEMORY[0x1E696B418]);
      result = sub_1C3D20004();
      if (result)
      {
        v100 = v34;
        v45 = v102;
        v46 = v85;
        (*(v102 + 16))(v85, v43, v41);
        v47 = v92;
        v48 = *(v45 + 32);
        v48(v46 + v92[12], v44, v41);
        v83 = v48;
        v49 = v86;
        sub_1C3C427D4(v46, v86, sub_1C3C29A0C);
        v91 = v47[12];
        v50 = v84;
        v48(v84, v49, v41);
        v51 = *(v45 + 8);
        v51(&v91[v49], v41);
        sub_1C3C42308(v46, v49, sub_1C3C29A0C);
        v83(v50 + *(v100 + 9), v49 + v92[12], v41);
        v102 = v45 + 8;
        v91 = v51;
        v51(v49, v41);
        v52 = v104;
        sub_1C3D20464();
        sub_1C3C42C3C(v50, sub_1C3C41754);
        v53 = v87;
        sub_1C3C3B704(v87);
        v54 = v95;
        v55 = v52;
        sub_1C3D1E3E4();
        v56 = v103;
        v58 = (v103 + 8);
        v57 = *(v103 + 8);
        v100 = v57;
        (v57)(v53, v10);
        (v57)(v55, v10);
        sub_1C3C3B704(v53);
        v59 = *(v56 + 16);
        v92 = v59;
        (v59)(v101, v53, v10);
        (v59)(v93, v53, v10);
        (v59)(v94, v54, v10);
        v86 = MEMORY[0x1E6969B50];
        v60 = sub_1C3C428EC(&qword_1EC085B48, MEMORY[0x1E6969B50]);
        v61 = v88;
        v103 = v60;
        sub_1C3D20794();
        v62 = v101;
        sub_1C3D20784();
        v63 = v100;
        (v100)(v61, v10);
        (v63)(v53, v10);
        sub_1C3C3B834(v53);
        v64 = v104;
        v65 = v92;
        (v92)(v62, v104, v10);
        v65(v93, v64, v10);
        v65(v94, v53, v10);
        sub_1C3D20794();
        v66 = v96;
        sub_1C3D20784();
        v67 = v61;
        v68 = v100;
        (v100)(v67, v10);
        (v68)(v53, v10);
        v69 = v104;
        v101 = v58;
        (v68)(v104, v10);
        v103 = v56 + 16;
        (v92)(v69, v66, v10);
        v70 = v86;
        sub_1C3C428EC(&qword_1EC085B50, v86);
        sub_1C3D20224();
        sub_1C3C428EC(&qword_1EC085B40, v70);
        v71 = (v90 + 8);
        v72 = v105;
        while (1)
        {
          sub_1C3D20424();
          sub_1C3C428EC(&qword_1EC085B58, MEMORY[0x1E6969B18]);
          v73 = v106;
          v74 = sub_1C3D20034();
          (*v71)(v72, v73);
          if (v74)
          {
            break;
          }

          v75 = sub_1C3D20444();
          v76 = v1;
          v78 = *v77;
          v75(v107, 0);
          sub_1C3D20434();
          v107[0] = v78;
          v1 = v76;
          sub_1C3C411F4();
        }

        sub_1C3C42C3C(v5, sub_1C3C42274);
        v79 = v100;
        (v100)(v96, v10);
        v80 = v104;
        v81 = v95;
        (v92)(v104, v95, v10);
        sub_1C3C3B798(v80);
        (v79)(v81, v10);
        (v91)(v97, v99);
        return sub_1C3C42C3C(v98, sub_1C3C41754);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C3C411F4()
{
  v0 = sub_1C3D1FE54();
  v9 = *(v0 - 8);
  v10 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = sub_1C3D206E4();
  v3 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v8 - v4;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1FDD4();
  swift_beginAccess();
  sub_1C3C428EC(&unk_1EC087240, MEMORY[0x1E696B418]);
  v6 = v10;
  sub_1C3D1FF44();
  sub_1C3D1FF04();
  (*(v9 + 8))(v2, v6);
  (*(v3 + 8))(v5, v8);
  swift_endAccess();
}

uint64_t *sub_1C3C414B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *(*v4 + 104);
  sub_1C3C42D1C();
  swift_allocObject();
  *(v4 + v11) = sub_1C3D1EEF4();
  sub_1C3D1E474();
  sub_1C3D1E474();
  *(v4 + *(*v4 + 128)) = 0;
  v12 = *(*v4 + 136);
  sub_1C3D1FE54();
  v13 = *(v10 + 80);
  swift_getAssociatedTypeWitness();
  sub_1C3C428EC(&unk_1EC087240, MEMORY[0x1E696B418]);
  *(v5 + v12) = sub_1C3D1FEC4();
  v14 = *(*v5 + 168);
  sub_1C3C41754();
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  (*(*(v13 - 8) + 16))(v5 + *(*v5 + 96), a1, v13);
  *(v5 + *(*v5 + 144)) = a2;
  *(v5 + *(*v5 + 152)) = a3;
  *(v5 + *(*v5 + 160)) = a4;
  *(v5 + *(*v5 + 128)) = sub_1C3C3F9F4();

  return v5;
}

void sub_1C3C41754()
{
  if (!qword_1EC085A30[0])
  {
    sub_1C3D1FE54();
    sub_1C3C428EC(&qword_1EC086290, MEMORY[0x1E696B418]);
    v0 = sub_1C3D20484();
    if (!v1)
    {
      atomic_store(v0, qword_1EC085A30);
    }
  }
}

uint64_t sub_1C3C417E8(uint64_t a1, uint64_t a2)
{
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C41868(uint64_t a1, uint64_t a2)
{
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1C3C418EC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C3D1E484();
    if (v1 <= 0x3F)
    {
      sub_1C3C42370(319, &qword_1EC085A28, sub_1C3C41754);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1C3C41B44()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1C3C41BAC(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 3;
  v7 = *(v4 + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
    goto LABEL_34;
  }

  v11 = 8 * v7;
  if (v7 <= 3)
  {
    v13 = ((a2 - v6 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v13 < 2)
    {
LABEL_33:
      if (v6)
      {
LABEL_34:
        v15 = (*(v4 + 48))(a1);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v12 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_33;
  }

LABEL_22:
  v14 = (v12 - 1) << v11;
  if (v7 > 3)
  {
    v14 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v14) + 1;
}

void sub_1C3C41D9C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 3;
  v9 = *(v6 + 64);
  if (v7 <= 2)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 3) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
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

    v9 += v10;
  }

  v13 = a3 - v8;
  if (a3 <= v8)
  {
    v14 = 0;
    if (v8 < a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 1;
    if (v9 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 < a2)
    {
LABEL_24:
      v19 = ~v8 + a2;
      if (v9 < 4)
      {
        v20 = (v19 >> (8 * v9)) + 1;
        if (v9)
        {
          v21 = v19 & ~(-1 << (8 * v9));
          bzero(a1, v9);
          if (v9 != 3)
          {
            if (v9 == 2)
            {
              *a1 = v21;
              if (v14 > 1)
              {
LABEL_50:
                if (v14 == 2)
                {
                  *&a1[v9] = v20;
                }

                else
                {
                  *&a1[v9] = v20;
                }

                return;
              }
            }

            else
            {
              *a1 = v19;
              if (v14 > 1)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_47;
          }

          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        if (v14 > 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        bzero(a1, v9);
        *a1 = v19;
        v20 = 1;
        if (v14 > 1)
        {
          goto LABEL_50;
        }
      }

LABEL_47:
      if (v14)
      {
        a1[v9] = v20;
      }

      return;
    }
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v9] = 0;
  }

  else if (v14)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  v22 = *(v6 + 56);

  v22(a1, a2 + 3);
}

uint64_t dispatch thunk of DailyModelProviderDataSource.fetchModels(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3C42150;

  return v9(a1, a2, a3);
}

uint64_t sub_1C3C42150(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1C3C42274()
{
  if (!qword_1EC085B38)
  {
    sub_1C3D1E484();
    sub_1C3C428EC(&qword_1EC085B40, MEMORY[0x1E6969B50]);
    v0 = sub_1C3D20934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085B38);
    }
  }
}

uint64_t sub_1C3C42308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C3C42370(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C423C4()
{
  if (!qword_1EC085B68)
  {
    sub_1C3C424B0();
    sub_1C3C42580();
    sub_1C3C428EC(&qword_1EC085B78, sub_1C3C424B0);
    sub_1C3C428EC(&qword_1EC085B80, sub_1C3C42580);
    v0 = sub_1C3D1EE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085B68);
    }
  }
}

void sub_1C3C424B0()
{
  if (!qword_1EC085B70)
  {
    sub_1C3C4251C();
    v0 = sub_1C3D1EE94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085B70);
    }
  }
}

unint64_t sub_1C3C4251C()
{
  result = qword_1EC085890;
  if (!qword_1EC085890)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085890);
  }

  return result;
}

unint64_t sub_1C3C42580()
{
  result = qword_1EC087070;
  if (!qword_1EC087070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC087070);
  }

  return result;
}

uint64_t sub_1C3C425CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3C42370(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C3C42660()
{
  if (!qword_1EC085B90)
  {
    sub_1C3C4251C();
    v0 = sub_1C3D1EE84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085B90);
    }
  }
}

void sub_1C3C426C0()
{
  if (!qword_1EC085B98)
  {
    sub_1C3C41754();
    sub_1C3C42724();
    v0 = sub_1C3D20934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085B98);
    }
  }
}

unint64_t sub_1C3C42724()
{
  result = qword_1EC085BA0;
  if (!qword_1EC085BA0)
  {
    sub_1C3C41754();
    sub_1C3C428EC(&qword_1EC0857D8, MEMORY[0x1E696B418]);
    sub_1C3C29678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085BA0);
  }

  return result;
}

uint64_t sub_1C3C427D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C3C42858()
{
  if (!qword_1EC085BA8)
  {
    sub_1C3D1E444();
    sub_1C3C428EC(&qword_1EC085BB0, MEMORY[0x1E6969B30]);
    v0 = sub_1C3D20934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085BA8);
    }
  }
}

uint64_t sub_1C3C428EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3C42934(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_1C3D1E444() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v8);
  v14 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1C3C42AC8;

  return sub_1C3C3D630(a1, v11, v12, v1 + v7, v13, v1 + v10, v14);
}

uint64_t sub_1C3C42AC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1C3C42BBC()
{
  if (!qword_1EC085BB8)
  {
    sub_1C3C42370(255, &qword_1EC085A28, sub_1C3C41754);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC085BB8);
    }
  }
}

uint64_t sub_1C3C42C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C42C9C(uint64_t a1, uint64_t a2)
{
  sub_1C3C42370(0, &qword_1EC085A28, sub_1C3C41754);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C3C42D1C()
{
  if (!qword_1EC085BC0)
  {
    sub_1C3C41754();
    v0 = sub_1C3D1EF04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085BC0);
    }
  }
}

id HKWidthDesignation.init(viewWidth:)(double a1)
{
  v2 = objc_opt_self();

  return [v2 widthDesignationFromViewWidth_];
}

uint64_t UIMutableTraits.widthDesignation.getter()
{
  sub_1C396DDFC();
  sub_1C396DEC8(&qword_1EC080E50);
  sub_1C3D1EDB4();
  return v1;
}

uint64_t UIMutableTraits.widthDesignation.setter()
{
  sub_1C396DDFC();
  sub_1C396DEC8(&qword_1EC080E50);
  return sub_1C3D1EDC4();
}

uint64_t (*UIMutableTraits.widthDesignation.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.widthDesignation.getter();
  return sub_1C3C43000;
}

uint64_t sub_1C3C43028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C396DEC8(&qword_1EC085BD0);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.widthDesignation.getter()
{
  sub_1C3C432FC();
  sub_1C3D1F3C4();
  return v1;
}

uint64_t (*EnvironmentValues.widthDesignation.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C3C432FC();
  sub_1C3D1F3C4();
  return sub_1C3C43180;
}

uint64_t sub_1C3C431B8@<X0>(void *a1@<X8>)
{
  sub_1C396DDFC();
  sub_1C396DEC8(&qword_1EC080E50);
  result = sub_1C3D20604();
  *a1 = v3;
  return result;
}

uint64_t _sSo18HKWidthDesignationV8HealthUIE1loiySbAB_ABtFZ_0(unint64_t a1, unint64_t a2)
{
  type metadata accessor for HKWidthDesignation(0);
  if (a1 - 1 < 6 && a2 - 1 < 6)
  {
    return a1 < a2;
  }

  result = sub_1C3D20A74();
  __break(1u);
  return result;
}

unint64_t sub_1C3C432FC()
{
  result = qword_1EC085BC8;
  if (!qword_1EC085BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085BC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKTraitWidthDesignation(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HKTraitWidthDesignation(_WORD *result, int a2, int a3)
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

unint64_t sub_1C3C43468()
{
  result = qword_1EC085BD8;
  if (!qword_1EC085BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085BD8);
  }

  return result;
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

id sub_1C3C43684(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 6)
  {
    (*(v11 + 16))(v13, a3);
    v14 = objc_allocWithZone(type metadata accessor for BalanceDayXAxis());
    v15 = sub_1C3CF4C4C(v13);
    v16 = objc_allocWithZone(HKDateGraphViewController);
    v17 = sub_1C3D1E364();
    v18 = [v16 initWithDateZoom:6 previousDateZoom:a2 previousXAxisSpace:v17 currentCalendar:v15 customDateAxis:a4];
  }

  else
  {
    v17 = sub_1C3D1E364();
    v19 = type metadata accessor for BalanceInteractiveChartViewController();
    v21.receiver = v5;
    v21.super_class = v19;
    v18 = objc_msgSendSuper2(&v21, sel_makePrimaryGraphViewControllerWithDateZoom_previousDateZoom_previousXAxisSpace_currentCalendar_, a1, a2, v17, a4);
  }

  return v18;
}

id sub_1C3C44674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceInteractiveChartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3C446CC()
{
  if (!qword_1EC085BE8)
  {
    sub_1C3C27CB4(255, &unk_1EC085700);
    v0 = sub_1C3D20304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085BE8);
    }
  }
}

id sub_1C3C44734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v31 = a7;
  v32 = a3;
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v30 = a2;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = MEMORY[0x1E6969530];
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - v19;
  sub_1C3C451B0(a8, &v30 - v19, &qword_1EC085770, v17);
  v21 = sub_1C3D1E1E4();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v23 = sub_1C3D1E174();
    (*(v22 + 8))(v20, v21);
  }

  sub_1C3C451B0(a9, v16, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  v24 = sub_1C3D1E3C4();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v16, 1, v24) != 1)
  {
    v26 = sub_1C3D1E364();
    (*(v25 + 8))(v16, v24);
  }

  v27 = type metadata accessor for BalanceInteractiveChartViewController();
  v36.receiver = v11;
  v36.super_class = v27;
  v28 = objc_msgSendSuper2(&v36, sel_initWithHealthStore_primaryDisplayType_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_, a1, v30, v32, v33, v34, v35, v31, v23, v26, a10);

  sub_1C3C4521C(a9, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  sub_1C3C4521C(a8, &qword_1EC085770, MEMORY[0x1E6969530]);
  return v28;
}

id sub_1C3C44A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v32 = a8;
  v33 = a7;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v31 = a2;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = MEMORY[0x1E6969530];
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - v18;
  sub_1C3C27CB4(0, &qword_1EC0855F0);
  sub_1C3C27CB4(0, &qword_1EC085BF0);
  sub_1C3C381FC();
  v20 = sub_1C3D1FEE4();

  sub_1C3C451B0(a9, v19, &qword_1EC085770, v16);
  v21 = sub_1C3D1E1E4();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    v23 = sub_1C3D1E174();
    (*(v22 + 8))(v19, v21);
  }

  sub_1C3C451B0(a10, v15, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  v24 = sub_1C3D1E3C4();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v15, 1, v24) != 1)
  {
    v26 = sub_1C3D1E364();
    (*(v25 + 8))(v15, v24);
  }

  v27 = type metadata accessor for BalanceInteractiveChartViewController();
  v38.receiver = v12;
  v38.super_class = v27;
  v28 = objc_msgSendSuper2(&v38, sel_initWithTimeScopeRanges_healthStore_primaryDisplayType_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_, v20, v31, v34, v35, v36, v37, v33, v32, v23, v26, a11);

  sub_1C3C4521C(a10, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  sub_1C3C4521C(a9, &qword_1EC085770, MEMORY[0x1E6969530]);
  return v28;
}

id sub_1C3C44D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a2;
  v34 = a8;
  v35 = a7;
  v37 = a5;
  v38 = a6;
  v36 = a4;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  sub_1C3C446CC();
  v17 = sub_1C3D202A4();

  if (a3)
  {
    sub_1C3C27CB4(0, &qword_1EC085BF8);
    v18 = sub_1C3D202A4();
  }

  else
  {
    v18 = 0;
  }

  v39 = a10;
  sub_1C396C578(a10, v41);
  v19 = v42;
  if (v42)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v21 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v20);
    v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v23);
    v24 = sub_1C3D20A44();
    (*(v21 + 8))(v23, v19);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v24 = 0;
  }

  sub_1C3C451B0(a11, v16, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  v25 = sub_1C3D1E3C4();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v16, 1, v25) != 1)
  {
    v27 = sub_1C3D1E364();
    (*(v26 + 8))(v16, v25);
  }

  if (a13)
  {
    sub_1C3C27CB4(0, &qword_1EC0855F0);
    sub_1C3C27CB4(0, &qword_1EC085BF0);
    sub_1C3C381FC();
    v28 = sub_1C3D1FEE4();
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for BalanceInteractiveChartViewController();
  v40.receiver = v32;
  v40.super_class = v29;
  v30 = objc_msgSendSuper2(&v40, sel_initWithStackedDisplayTypes_primaryDisplayTypeStackIndex_stackedDisplayTypeHeights_healthStore_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_timeScopeRanges_, v17, v33, v18, v36, v37, v38, v35, v34, a9, v24, v27, a12, v28);

  swift_unknownObjectRelease();
  sub_1C3C4521C(a11, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  sub_1C396C69C(v39);
  return v30;
}

void sub_1C3C4515C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3C451B0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C3C4515C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3C4521C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3C4515C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AudiogramPerformanceAnalytics.Event.__allocating_init(metric:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AudiogramPerformanceAnalytics.Event.init(metric:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AudiogramPerformanceAnalytics.Event.makeUnrestrictedEventPayload(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  v5 = v1;
  v6 = v4(ObjectType, v2);

  return v6;
}

uint64_t AudiogramPerformanceAnalytics.Event.makeIHAGatedEventPayload(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = v1;
  v6 = v4(ObjectType, v2);

  return v6;
}

uint64_t AudiogramPerformanceAnalytics.Event.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id AudiogramPerformanceAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramPerformanceAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramPerformanceAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AudiogramPerformanceAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramPerformanceAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AttributedString.ranges<A>(of:options:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a2;
  v73 = a3;
  v70 = sub_1C3D1DF44();
  v81 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C45F84();
  v68 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v54 - v12;
  sub_1C3C45FEC(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C46020();
  v16 = v15;
  v76 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v78 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  v23 = sub_1C3D1DE54();
  v77 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v54 - v27;
  v74 = a4;
  v75 = a5;
  v71 = a1;
  if (sub_1C3D20414() < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C3D1DDB4();
  sub_1C3D1DE64();
  v58 = sub_1C3C460B4(&qword_1EC0810B0, MEMORY[0x1E69687E8]);
  result = sub_1C3D20004();
  if (result)
  {
    v30 = *(v77 + 16);
    v62 = (v77 + 32);
    v59 = (v77 + 8);
    v61 = (v81 + 1);
    v60 = (v76 + 48);
    v81 = MEMORY[0x1E69E7CC0];
    v57 = v22;
    v64 = v16;
    v77 += 16;
    v56 = v26;
    v63 = v28;
    v55 = v30;
    while (1)
    {
      v31 = v67;
      v30(v67, v28, v23);
      v32 = v68;
      v33 = *v62;
      (*v62)(v31 + *(v68 + 48), v26, v23);
      v34 = v23;
      v35 = v66;
      sub_1C3C461C4(v31, v66, sub_1C3C45F84);
      v79 = *(v32 + 48);
      v36 = v65;
      v33(v65, v35, v34);
      v37 = *v59;
      (*v59)(&v79[v35], v34);
      v38 = v31;
      v39 = v80;
      sub_1C3C4615C(v38, v35, sub_1C3C45F84);
      v40 = *(v32 + 48);
      v41 = v64;
      v33(v36 + *(v64 + 36), (v35 + v40), v34);
      v42 = v35;
      v23 = v34;
      v79 = v37;
      (v37)(v42, v34);
      sub_1C3C460B4(&qword_1EC080E58, sub_1C3C46020);
      v43 = v69;
      sub_1C3D1DEB4();
      sub_1C3C460FC(v36, sub_1C3C46020);
      sub_1C3C460B4(&qword_1EC081098, MEMORY[0x1E6968968]);
      v44 = v70;
      sub_1C3D1DFB4();
      (*v61)(v43, v44);
      if ((*v60)(v39, 1, v41) == 1)
      {
        break;
      }

      v45 = v57;
      sub_1C3C4615C(v80, v57, sub_1C3C46020);
      sub_1C3C461C4(v45, v78, sub_1C3C46020);
      v46 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1C3C46F9C(0, v46[2] + 1, 1, v46, &qword_1EC080D88, sub_1C3C46020, sub_1C3C46020);
      }

      v26 = v56;
      v48 = v46[2];
      v47 = v46[3];
      v81 = v46;
      if (v48 >= v47 >> 1)
      {
        v81 = sub_1C3C46F9C(v47 > 1, v48 + 1, 1, v81, &qword_1EC080D88, sub_1C3C46020, sub_1C3C46020);
      }

      v49 = v63;
      (v79)(v63, v34);
      v50 = v81;
      v81[2] = v48 + 1;
      v51 = v50 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v48;
      v28 = v49;
      sub_1C3C4615C(v78, v51, sub_1C3C46020);
      v52 = v49;
      v53 = v55;
      v55(v52, v45 + *(v41 + 36), v34);
      sub_1C3C460FC(v45, sub_1C3C46020);
      sub_1C3D1DE64();
      result = sub_1C3D20004();
      v30 = v53;
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    (v79)(v63, v34);
    sub_1C3C460FC(v80, sub_1C3C45FEC);
    return v81;
  }

  else
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1C3C45F84()
{
  if (!qword_1EC0810B8)
  {
    sub_1C3D1DE54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0810B8);
    }
  }
}

void sub_1C3C46020()
{
  if (!qword_1EC080E68)
  {
    sub_1C3D1DE54();
    sub_1C3C460B4(&qword_1EC0810B0, MEMORY[0x1E69687E8]);
    v0 = sub_1C3D20484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080E68);
    }
  }
}

uint64_t sub_1C3C460B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3C460FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C4615C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C461C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1C3C4622C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C3C46C7C();
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C3C464C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C3C4676C(0, &qword_1EC085C18, sub_1C3C471F4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C3C471F4(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C3C46610(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C3C4676C(0, &qword_1EC085598, sub_1C3C256F4, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1C3C4676C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1C3C467D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396C48C(0, &qword_1EC085C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C3C468D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396C48C(0, &unk_1EC086560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C3C46A14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396C48C(0, &qword_1EC080D90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C3C46B58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396C48C(0, &qword_1EC085510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C3C46C7C()
{
  if (!qword_1EC085C08)
  {
    sub_1C3C473C0(255, &qword_1EC086E40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C08);
    }
  }
}

char *sub_1C3C46D00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C396C48C(0, &qword_1EC086D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C3C46E08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C3C4676C(0, &qword_1EC0855B8, sub_1C3C47190, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C3C47190();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C3C46F9C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C3C4676C(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1C3C47190()
{
  result = qword_1EC0855C0;
  if (!qword_1EC0855C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC0855C0);
  }

  return result;
}

void sub_1C3C47228()
{
  if (!qword_1EC085C28)
  {
    sub_1C3D1E1E4();
    sub_1C3C460B4(&qword_1EC085C30, MEMORY[0x1E6969530]);
    v0 = sub_1C3D1EBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C28);
    }
  }
}

void sub_1C3C472D8()
{
  if (!qword_1EC085C40)
  {
    sub_1C3D1DC54();
    sub_1C3C473C0(255, &qword_1EC085970, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1C3C460B4(&qword_1EC085C48, MEMORY[0x1E6968130]);
    sub_1C3C47414();
    v0 = sub_1C3D1EBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C40);
    }
  }
}

void sub_1C3C473C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1C3C47414()
{
  result = qword_1EC085C50;
  if (!qword_1EC085C50)
  {
    sub_1C3C473C0(255, &qword_1EC085970, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085C50);
  }

  return result;
}

void sub_1C3C47498()
{
  if (!qword_1EC085C60)
  {
    sub_1C3D1DC54();
    sub_1C3C460B4(&qword_1EC085C48, MEMORY[0x1E6968130]);
    v0 = sub_1C3D1EBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C60);
    }
  }
}

void sub_1C3C47548()
{
  if (!qword_1EC085C70)
  {
    sub_1C3D1E1E4();
    sub_1C3C473C0(255, &qword_1EC085970, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1C3C460B4(&qword_1EC085C30, MEMORY[0x1E6969530]);
    sub_1C3C47414();
    v0 = sub_1C3D1EBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C70);
    }
  }
}

void sub_1C3C47630()
{
  if (!qword_1EC085C80)
  {
    v0 = sub_1C3D1EBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C80);
    }
  }
}

void sub_1C3C4769C()
{
  if (!qword_1EC085C90)
  {
    sub_1C3C473C0(255, &qword_1EC085970, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1C3C47414();
    v0 = sub_1C3D1EBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085C90);
    }
  }
}

id sub_1C3C47738(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR___HKClinicalAuthorizationFlowManager_ingestionObserverSet;
  v8 = HKLogHealthRecordsCategory();
  v9 = objc_allocWithZone(MEMORY[0x1E696C2F0]);
  v10 = sub_1C3D200C4();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  *&v3[v7] = v11;
  *&v3[OBJC_IVAR___HKClinicalAuthorizationFlowManager_healthStore] = a1;
  *&v3[OBJC_IVAR___HKClinicalAuthorizationFlowManager_healthRecordsStore] = a2;
  v17 = 0;
  sub_1C3C48FE4(0, &qword_1EC085D70, MEMORY[0x1E695BF98]);
  swift_allocObject();
  v12 = a1;
  v13 = a2;
  *&v3[OBJC_IVAR___HKClinicalAuthorizationFlowManager_ingestionStatus] = sub_1C3D1EF34();
  sub_1C3C48FE4(0, &qword_1EC087530, MEMORY[0x1E695BF70]);
  swift_allocObject();
  *&v3[OBJC_IVAR___HKClinicalAuthorizationFlowManager_accountsEvents] = sub_1C3D1EEF4();
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v13 registerAccountsEventListener_];

  return v14;
}

uint64_t sub_1C3C47A54()
{
  v1[19] = v0;
  sub_1C3C48D80();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_1C3D20374();
  v1[23] = sub_1C3D20364();
  v4 = sub_1C3D20314();
  v1[24] = v4;
  v1[25] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C3C47B48, v4, v3);
}

uint64_t sub_1C3C47B48()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[20];
  v11 = *(v1[19] + OBJC_IVAR___HKClinicalAuthorizationFlowManager_healthRecordsStore);
  v8 = v1[21];
  v7 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1C3C47D34;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1C3C48E34(0, &qword_1EC085D48, &qword_1EC085D50, 0x1E696BFC0, MEMORY[0x1E69E62F8]);
  sub_1C3C4251C();
  sub_1C3D20324();
  (*(v8 + 32))(boxed_opaque_existential_0, v7, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3C48124;
  v1[13] = &block_descriptor_4;
  [v11 fetchClinicalConnectedAccountsWithCompletion_];
  (*(v8 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C3C47D34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1C3C47ED4;
  }

  else
  {
    v5 = sub_1C3C47E64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C3C47E64()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C3C47ED4()
{
  v26 = v0;

  swift_willThrow();
  if (qword_1EC0850C8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[19];
  v3 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v3, qword_1EC08DCF8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C3D1ED84();
  v7 = sub_1C3D204F4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  if (v8)
  {
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136315394;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_1C3D20104();
    v17 = v16;

    v18 = sub_1C3C22C28(v15, v17, &v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&dword_1C3942000, v6, v7, "%s failed to load connected accounts: %@", v11, 0x16u);
    sub_1C3C3467C(v12);
    MEMORY[0x1C69321D0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1C69321D0](v24, -1, -1);
    MEMORY[0x1C69321D0](v11, -1, -1);
  }

  v21 = v0[1];
  v22 = MEMORY[0x1E69E7CC0];

  return v21(v22);
}

void sub_1C3C48124(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1C3C48D80();
    v4 = a3;
    sub_1C3D20334();
  }

  else
  {
    sub_1C3C27CB4(0, &qword_1EC085D50);
    sub_1C3D202B4();
    sub_1C3C48D80();
    sub_1C3D20344();
  }
}

void sub_1C3C481D8(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___HKClinicalAuthorizationFlowManager_ingestionObserverSet];
  sub_1C3C27CB4(0, &qword_1EC087070);
  v5 = sub_1C3D205C4();
  [v4 registerObserver:a1 queue:v5];

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v9[4] = sub_1C3C48FC4;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C3C483D4;
  v9[3] = &block_descriptor_15;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v4 notifyObserver:a1 handler:v7];
  _Block_release(v7);
}

uint64_t sub_1C3C4830C(void *a1)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1EF24();
  [a1 ingestionStatusDidChangeTo_];
}

uint64_t sub_1C3C483D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C3C486E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1C3D20374();
  v6[11] = sub_1C3D20364();
  v8 = sub_1C3D20314();

  return MEMORY[0x1EEE6DFA0](sub_1C3C48784, v8, v7);
}

uint64_t sub_1C3C48784()
{
  v19 = v0;
  v1 = v0[8];

  if ((v1 - 3) >= 3)
  {
    if ((v1 - 1) > 1)
    {
      if (qword_1EC0850C8 != -1)
      {
        swift_once();
      }

      v7 = sub_1C3D1EDA4();
      __swift_project_value_buffer(v7, qword_1EC08DCF8);
      v8 = sub_1C3D1ED84();
      v9 = sub_1C3D204F4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[8];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315394;
        v13 = sub_1C3D20CD4();
        v15 = sub_1C3C22C28(v13, v14, &v18);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v10;
        _os_log_impl(&dword_1C3942000, v8, v9, "%s observed unknown accounts event %lu", v11, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1C69321D0](v12, -1, -1);
        MEMORY[0x1C69321D0](v11, -1, -1);
      }
    }

    else
    {
      v3 = v0[8];
      v2 = v0[9];
      v0[2] = v3;
      sub_1C3D1EF14();
      v4 = *(v2 + OBJC_IVAR___HKClinicalAuthorizationFlowManager_ingestionObserverSet);
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v0[6] = sub_1C3C48FBC;
      v0[7] = v5;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1C3C483D4;
      v0[5] = &block_descriptor_9_0;
      v6 = _Block_copy(v0 + 2);

      [v4 notifyObservers_];
      _Block_release(v6);
    }
  }

  else
  {
    v0[2] = v0[8];
    sub_1C3D1EEE4();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C3C48A28(void *a1, uint64_t a2)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 ingestionStatusDidChangeTo_];
}

id sub_1C3C48CA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3C48D80()
{
  if (!qword_1EC085D40)
  {
    sub_1C3C48E34(255, &qword_1EC085D48, &qword_1EC085D50, 0x1E696BFC0, MEMORY[0x1E69E62F8]);
    sub_1C3C4251C();
    v0 = sub_1C3D20354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085D40);
    }
  }
}

void sub_1C3C48E34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C3C27CB4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C3C48E9C()
{
  if (!qword_1EC085D60)
  {
    sub_1C3D203A4();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085D60);
    }
  }
}

uint64_t sub_1C3C48EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C3C42AC8;

  return sub_1C3C486E8(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_14()
{
}

{
}

void sub_1C3C48FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    type metadata accessor for HKHealthRecordsAccountsEvent(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C3C4905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v73 = a3;
  v74 = a4;
  v72 = sub_1C3D1DF44();
  v8 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C45F84();
  v70 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v57 - v13;
  sub_1C3C4AACC(0, &qword_1EC080E60, sub_1C3C46020);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v57 - v15;
  sub_1C3C46020();
  v17 = v16;
  v75 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = sub_1C3D1DE54();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v57 - v29;
  v80 = a1;
  v81 = a2;
  if (sub_1C3D20174() < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C3D1DDB4();
  sub_1C3D1DE64();
  v61 = sub_1C3C4AB88(&qword_1EC0810B0, MEMORY[0x1E69687E8]);
  result = sub_1C3D20004();
  if (result)
  {
    v34 = *(v25 + 16);
    v33 = v25 + 16;
    v32 = v34;
    v65 = (v33 + 16);
    v35 = (v33 - 8);
    v62 = (v75 + 48);
    v63 = (v8 + 8);
    v79 = MEMORY[0x1E69E7CC0];
    v77 = v5;
    v60 = v23;
    v59 = v33;
    v58 = v28;
    v66 = v30;
    v57 = v34;
    v64 = v17;
    v36 = v68;
    while (1)
    {
      v32(v36, v30, v24);
      v37 = v70;
      v38 = *v65;
      (*v65)(v36 + *(v70 + 48), v28, v24);
      v39 = v24;
      v40 = v69;
      sub_1C3C4AB20(v36, v69, sub_1C3C45F84);
      v41 = *(v37 + 48);
      v42 = v67;
      v38(v67, v40, v24);
      v43 = *v35;
      (*v35)(v40 + v41, v39);
      sub_1C3C4615C(v36, v40, sub_1C3C45F84);
      v44 = *(v37 + 48);
      v45 = v64;
      v38(v42 + *(v64 + 36), (v40 + v44), v39);
      v46 = v40;
      v47 = v43;
      v48 = v78;
      v24 = v39;
      v47(v46, v39);
      sub_1C3C4AB88(&qword_1EC080E58, sub_1C3C46020);
      v49 = v71;
      sub_1C3D1DEB4();
      sub_1C3C4A854(v42);
      sub_1C3C4AB88(&qword_1EC081098, MEMORY[0x1E6968968]);
      sub_1C3C4999C();
      v50 = v72;
      sub_1C3D1DFB4();
      (*v63)(v49, v50);
      if ((*v62)(v48, 1, v45) == 1)
      {
        break;
      }

      v51 = v60;
      sub_1C3C4615C(v78, v60, sub_1C3C46020);
      sub_1C3C4AB20(v51, v76, sub_1C3C46020);
      v52 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1C3C46738(0, v52[2] + 1, 1, v52);
      }

      v30 = v66;
      v54 = v52[2];
      v53 = v52[3];
      v79 = v52;
      if (v54 >= v53 >> 1)
      {
        v79 = sub_1C3C46738(v53 > 1, v54 + 1, 1, v79);
      }

      v47(v30, v24);
      v55 = v79;
      v79[2] = v54 + 1;
      sub_1C3C4615C(v76, v55 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v54, sub_1C3C46020);
      v56 = v57;
      v57(v30, (v51 + *(v45 + 36)), v24);
      sub_1C3C4A854(v51);
      v28 = v58;
      sub_1C3D1DE64();
      result = sub_1C3D20004();
      v32 = v56;
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v47(v66, v39);
    sub_1C3C4AA70(v78, &qword_1EC080E60, sub_1C3C46020);
    return v79;
  }

  else
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t String.lettersSmallCaps()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_1C3D1DBD4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v19 = a1;
  v20 = a2;
  sub_1C3C4999C();
  v19 = sub_1C3D20734();
  v20 = v12;
  sub_1C3D1DBB4();
  sub_1C3D1DBC4();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v14 = sub_1C3D20714();
  v13(v9, v5);
  v15 = sub_1C3C4A6E8(v14);

  String.smallCaps(for:)(v15, v18);
}

unint64_t sub_1C3C4999C()
{
  result = qword_1EC080EB0;
  if (!qword_1EC080EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080EB0);
  }

  return result;
}

uint64_t String.smallCaps(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C3C4AACC(0, &qword_1EC085D78, MEMORY[0x1E6980FF8]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  sub_1C3C46020();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v14 - 8);

  sub_1C3D1DF14();
  sub_1C3D1DE84();
  sub_1C3C49D18(a1, a2);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v22[1] = v15;
    v23 = v18;
    do
    {
      sub_1C3C4AB20(v17, v13, sub_1C3C46020);
      sub_1C3D1F964();
      v19 = sub_1C3D1F974();
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
      sub_1C3C4AB88(&qword_1EC080E58, sub_1C3C46020);
      v20 = sub_1C3D1DEA4();
      sub_1C3C4A780(v9, v7);
      sub_1C3C4A800();
      sub_1C3D1DF54();
      sub_1C3C4AA70(v9, &qword_1EC085D78, MEMORY[0x1E6980FF8]);
      v20(v24, 0);
      sub_1C3C4A854(v13);
      v17 += v23;
      --v16;
    }

    while (v16);
  }
}

void sub_1C3C49D18(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  sub_1C3C4AACC(0, &qword_1EC085DA8, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v32 - v4;
  v37 = sub_1C3D1DE74();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 56);
  v33 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v34 = (v5 + 8);
  v35 = (v5 + 16);
  v40 = a1;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
    v41 = v13;
LABEL_11:
    v15 = (*(v40 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v15;
    v17 = v15[1];
    v18 = v36;
    v19 = v37;
    (*v35)(v36, v39, v37);
    v20 = sub_1C3D1E294();
    v21 = v38;
    (*(*(v20 - 8) + 56))(v38, 1, 1, v20);

    v22 = sub_1C3C4905C(v16, v17, 0, v21);
    sub_1C3C4AA70(v21, &qword_1EC085DA8, MEMORY[0x1E6969770]);
    (*v34)(v18, v19);

    v23 = *(v22 + 16);
    v13 = v41;
    v24 = v41[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > v13[3] >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v13 = sub_1C3C46738(isUniquelyReferenced_nonNull_native, v27, 1, v13);
    }

    v10 &= v10 - 1;
    if (*(v22 + 16))
    {
      v28 = (v13[3] >> 1) - v13[2];
      sub_1C3C46020();
      if (v28 < v23)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v29 = v13[2];
        v30 = __OFADD__(v29, v23);
        v31 = v29 + v23;
        if (v30)
        {
          goto LABEL_28;
        }

        v13[2] = v31;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v33 + 8 * v14);
    ++v12;
    if (v10)
    {
      v41 = v13;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id String.designatorSmallCaps(dateFormatter:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C3D1DBD4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-v14];
  if ((sub_1C3C4A3DC() & 1) == 0)
  {

    sub_1C3D1DF14();
    return sub_1C3D1DE84();
  }

  if (([a1 formattingContext] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    v32 = a2;
    v33 = a3;
    sub_1C3C4999C();
    v32 = sub_1C3D20734();
    v33 = v27;
    sub_1C3D1DBB4();
    sub_1C3D1DBC4();
    v28 = *(v10 + 8);
    v28(v15, v9);
    v29 = sub_1C3D20714();
    v28(v13, v9);
    v30 = sub_1C3C4A6E8(v29);

    String.smallCaps(for:)(v30, a4);
  }

  sub_1C3C4A8B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5DCD0;
  result = [a1 AMSymbol];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  v19 = sub_1C3D20104();
  v21 = v20;

  *(inited + 32) = v19;
  *(inited + 40) = v21;
  result = [a1 PMSymbol];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_1C3D20104();
  v25 = v24;

  *(inited + 48) = v23;
  *(inited + 56) = v25;
  v26 = sub_1C3C4A6E8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  String.smallCaps(for:)(v26, a4);
}

uint64_t sub_1C3C4A3DC()
{
  v1 = [v0 AMSymbol];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_1C3D20104();
  v5 = v4;

  v6 = [v0 PMSymbol];
  if (!v6)
  {
LABEL_13:

LABEL_14:
    v18 = 0;
    return v18 & 1;
  }

  v7 = v6;
  v8 = sub_1C3D20104();
  v10 = v9;

  sub_1C3C4999C();
  v11 = sub_1C3D20734();
  v13 = v12;
  v14 = sub_1C3D20734();
  v16 = v15;
  if (v11 != v3 || v13 != v5)
  {
    v17 = sub_1C3D20A54();

    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_8:
  if (v14 == v8 && v16 == v10)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_1C3D20A54();
  }

  return v18 & 1;
}

uint64_t NSDateFormatter.attributedString(from:options:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  v8 = sub_1C3D1E174();
  v9 = [v3 stringFromDate_];

  v10 = sub_1C3D20104();
  v12 = v11;

  if (v7)
  {
    String.designatorSmallCaps(dateFormatter:)(v3, v10, v12, a2);
  }

  else
  {
    sub_1C3D1DF14();
    return sub_1C3D1DE84();
  }
}

uint64_t sub_1C3C4A6E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C692FA20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C3C661F8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C3C4A780(uint64_t a1, uint64_t a2)
{
  sub_1C3C4AACC(0, &qword_1EC085D78, MEMORY[0x1E6980FF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C3C4A800()
{
  result = qword_1EC085D80;
  if (!qword_1EC085D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085D80);
  }

  return result;
}

uint64_t sub_1C3C4A854(uint64_t a1)
{
  sub_1C3C46020();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C3C4A8B0()
{
  if (!qword_1EC081100)
  {
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081100);
    }
  }
}

unint64_t sub_1C3C4A904()
{
  result = qword_1EC085D88;
  if (!qword_1EC085D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085D88);
  }

  return result;
}

unint64_t sub_1C3C4A95C()
{
  result = qword_1EC085D90;
  if (!qword_1EC085D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085D90);
  }

  return result;
}

unint64_t sub_1C3C4A9B4()
{
  result = qword_1EC085D98;
  if (!qword_1EC085D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085D98);
  }

  return result;
}

unint64_t sub_1C3C4AA0C()
{
  result = qword_1EC085DA0;
  if (!qword_1EC085DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085DA0);
  }

  return result;
}

uint64_t sub_1C3C4AA70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3C4AACC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C3C4AACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3C4AB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C4AB88(unint64_t *a1, void (*a2)(uint64_t))
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

void *HKAdaptiveModalPresented<>.makeDoneButtonForModalDismiss()(uint64_t a1)
{
  sub_1C3C27CB4(0, &qword_1EC085DB0);
  v2 = sub_1C3D20544();
  sub_1C3C27CB4(0, &qword_1EC0858E0);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v7 = v4;
  v5 = sub_1C3D206D4();
  [v2 setPrimaryAction_];

  return v2;
}

void sub_1C3C4ACF4()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
  }
}

void UIViewController._hk_showAdaptively(_:sender:animated:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = [v4 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 2)
  {
    v10 = [objc_allocWithZone(HKNavigationController) initWithRootViewController_];
    [a1 viewControllerWillEnterAdaptiveModal];
    v11 = v10;
    [v11 setModalPresentationStyle_];

    [v4 presentViewController:v11 animated:a3 & 1 completion:0];
  }

  else
  {
    if (v8 == 1)
    {
      v9 = [v4 navigationController];
      if (!v9)
      {
        return;
      }
    }

    else
    {
      v9 = [v4 navigationController];
      if (!v9)
      {
        return;
      }
    }

    v11 = v9;
    [v9 hk:a1 showViewController:a3 & 1 animated:?];
  }
}

uint64_t sub_1C3C4AF50(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v9 = a3;
    v10 = a1;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v12 = a3;
    v13 = a1;
  }

  UIViewController._hk_showAdaptively(_:sender:animated:)(a3, v11, a5);

  sub_1C396C69C(v15);
}

uint64_t sub_1C3C4B058(uint64_t a1, int a2)
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

uint64_t sub_1C3C4B0A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1C3C4B10C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v12[1] = a1;
  v12[2] = a2;
  v12[3] = a3;
  v3 = sub_1C3D1F6A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C4BF58(0, &qword_1EC085DB8, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C3D5DCD0;
  v8 = sub_1C3D1F704();
  *(v7 + 32) = v8;
  v9 = sub_1C3D1F724();
  *(v7 + 33) = v9;
  v10 = sub_1C3D1F714();
  sub_1C3D1F714();
  if (sub_1C3D1F714() != v8)
  {
    v10 = sub_1C3D1F714();
  }

  sub_1C3D1F714();
  if (sub_1C3D1F714() != v9)
  {
    v10 = sub_1C3D1F714();
  }

  sub_1C3C4B3B0(v16);
  memcpy(v14, v16, sizeof(v14));
  memcpy(v15, v16, sizeof(v15));
  sub_1C3C4C198(v14, v13, &qword_1EC085DC0, sub_1C3C4BC18);
  sub_1C3C4C204(v15, &qword_1EC085DC0, sub_1C3C4BC18);
  memcpy(&v17[7], v14, 0x140uLL);
  v13[0] = v10;
  memcpy(&v13[1], v17, 0x147uLL);
  sub_1C3D1F684();
  sub_1C3C4C050();
  sub_1C3C4C140();
  sub_1C3D1FA44();
  (*(v4 + 8))(v6, v3);
  memcpy(v16, v13, sizeof(v16));
  return sub_1C3C4C39C(v16, sub_1C3C4C050);
}

uint64_t sub_1C3C4B3B0@<X0>(void *a1@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1C3D1F3F4();
  LOBYTE(v37) = 1;
  sub_1C3C4B89C(0, 1, &v49);
  v19 = *&v50[80];
  v20 = *&v50[96];
  v15 = *&v50[16];
  v16 = *&v50[32];
  v17 = *&v50[48];
  v18 = *&v50[64];
  v13 = v49;
  v14 = *v50;
  v22[6] = *&v50[80];
  v22[7] = *&v50[96];
  v22[2] = *&v50[16];
  v22[3] = *&v50[32];
  v22[4] = *&v50[48];
  v22[5] = *&v50[64];
  v21 = *&v50[112];
  v23 = *&v50[112];
  v22[0] = v49;
  v22[1] = *v50;
  sub_1C3C4C198(&v13, v39, &qword_1EC085DD8, sub_1C3C4BD14);
  sub_1C3C4C204(v22, &qword_1EC085DD8, sub_1C3C4BD14);
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[119] = v20;
  *&v12[23] = v14;
  *&v12[39] = v15;
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[135] = v21;
  *&v12[7] = v13;
  v1 = v37;
  v2 = sub_1C3D1F434();
  LOBYTE(v37) = 1;
  sub_1C3C4B89C(1, 0, &v49);
  v30 = *&v50[80];
  v31 = *&v50[96];
  v26 = *&v50[16];
  v27 = *&v50[32];
  v28 = *&v50[48];
  v29 = *&v50[64];
  v24 = v49;
  v25 = *v50;
  v33[6] = *&v50[80];
  v33[7] = *&v50[96];
  v33[2] = *&v50[16];
  v33[3] = *&v50[32];
  v33[5] = *&v50[64];
  v33[4] = *&v50[48];
  v32 = *&v50[112];
  v34 = *&v50[112];
  v33[1] = *v50;
  v33[0] = v49;
  sub_1C3C4C198(&v24, v39, &qword_1EC085DD8, sub_1C3C4BD14);
  sub_1C3C4C204(v33, &qword_1EC085DD8, sub_1C3C4BD14);
  *&v11[87] = v29;
  *&v11[103] = v30;
  *&v11[119] = v31;
  *&v11[135] = v32;
  *&v11[23] = v25;
  *&v11[39] = v26;
  *&v11[55] = v27;
  *&v11[71] = v28;
  *&v11[7] = v24;
  v35 = v8;
  v3 = v1;
  v36[0] = v1;
  *&v36[33] = *&v12[32];
  *&v36[17] = *&v12[16];
  *&v36[81] = *&v12[80];
  *&v36[97] = *&v12[96];
  *&v36[113] = *&v12[112];
  *&v36[128] = *&v12[127];
  *&v36[49] = *&v12[48];
  *&v36[65] = *&v12[64];
  *&v36[1] = *v12;
  __src[6] = *&v36[80];
  __src[7] = *&v36[96];
  __src[8] = *&v36[112];
  __src[9] = *&v12[127];
  __src[2] = *&v36[16];
  __src[3] = *&v36[32];
  __src[4] = *&v36[48];
  __src[5] = *&v36[64];
  __src[0] = v8;
  __src[1] = *v36;
  *&v38[97] = *&v11[96];
  *&v38[81] = *&v11[80];
  *&v38[33] = *&v11[32];
  *&v38[17] = *&v11[16];
  *&v38[113] = *&v11[112];
  *&v38[128] = *&v11[127];
  *&v38[49] = *&v11[48];
  v4 = v37;
  v37 = v2;
  v38[0] = v4;
  *&v38[65] = *&v11[64];
  *&v38[1] = *v11;
  __src[16] = *&v38[80];
  __src[17] = *&v38[96];
  __src[18] = *&v38[112];
  __src[19] = *&v11[127];
  __src[12] = *&v38[16];
  __src[13] = *&v38[32];
  __src[14] = *&v38[48];
  __src[15] = *&v38[64];
  __src[10] = v2;
  __src[11] = *v38;
  memcpy(a1, __src, 0x140uLL);
  v46 = *&v11[80];
  v47 = *&v11[96];
  *v48 = *&v11[112];
  *&v48[15] = *&v11[127];
  v42 = *&v11[16];
  v43 = *&v11[32];
  v44 = *&v11[48];
  v45 = *&v11[64];
  v39[0] = v2;
  v39[1] = 0;
  v40 = v4;
  v41 = *v11;
  v5 = MEMORY[0x1E69817F0];
  sub_1C3C4C260(&v35, &v49, &qword_1EC085DD0, MEMORY[0x1E69817F0]);
  v6 = MEMORY[0x1E6981860];
  sub_1C3C4C260(&v37, &v49, &qword_1EC085E08, MEMORY[0x1E6981860]);
  sub_1C3C4C2CC(v39, &qword_1EC085E08, v6);
  *&v50[81] = *&v12[80];
  *&v50[97] = *&v12[96];
  *&v50[113] = *&v12[112];
  *&v50[128] = *&v12[127];
  *&v50[17] = *&v12[16];
  *&v50[33] = *&v12[32];
  *&v50[49] = *&v12[48];
  *&v50[65] = *&v12[64];
  v49 = v8;
  v50[0] = v3;
  *&v50[1] = *v12;
  sub_1C3C4C2CC(&v49, &qword_1EC085DD0, v5);
}

uint64_t sub_1C3C4B89C@<X0>(char a1@<W5>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C4999C();

  v4 = sub_1C3D1F994();
  v29 = v5;
  v30 = v4;
  v28 = v6;
  v31 = v7;

  v8 = sub_1C3D1F994();
  v10 = v9;
  v12 = v11;
  sub_1C3D1FB44();
  v13 = sub_1C3D1F914();
  v15 = v14;
  v17 = v16;
  v27 = v18;

  sub_1C3C2EE8C(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v37 = v28 & 1;
  v36 = 1;
  *&v41 = v13;
  *(&v41 + 1) = v15;
  LOBYTE(v42) = v17 & 1;
  *(&v42 + 1) = *v39;
  DWORD1(v42) = *&v39[3];
  *(&v42 + 1) = v27;
  *&v43 = KeyPath;
  *(&v43 + 1) = a2;
  LOBYTE(v44) = a1 & 1;
  DWORD1(v44) = *&v38[3];
  *(&v44 + 1) = *v38;
  *(&v44 + 1) = v20;
  LOBYTE(v45) = 1;
  DWORD1(v45) = *&v40[3];
  *(&v45 + 1) = *v40;
  *(&v45 + 1) = v21;
  v46 = 0x3FC999999999999ALL;
  *&v35[87] = 0x3FC999999999999ALL;
  *&v35[71] = v45;
  *&v35[55] = v44;
  *&v35[39] = v43;
  *&v35[23] = v42;
  *&v35[7] = v41;
  *a3 = v30;
  *(a3 + 8) = v29;
  *(a3 + 16) = v28 & 1;
  *(a3 + 24) = v31;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v22 = *v35;
  *(a3 + 57) = *&v35[16];
  *(a3 + 41) = v22;
  v23 = *&v35[32];
  v24 = *&v35[48];
  v25 = *&v35[64];
  *(a3 + 120) = *&v35[79];
  *(a3 + 105) = v25;
  *(a3 + 89) = v24;
  *(a3 + 73) = v23;
  v47[0] = v13;
  v47[1] = v15;
  v48 = v17 & 1;
  *&v49[3] = *&v39[3];
  *v49 = *v39;
  v50 = v27;
  v51 = KeyPath;
  v52 = a2;
  v53 = a1 & 1;
  *&v54[3] = *&v38[3];
  *v54 = *v38;
  v55 = v20;
  v56 = 1;
  *&v57[3] = *&v40[3];
  *v57 = *v40;
  v58 = v21;
  v59 = 0x3FC999999999999ALL;
  sub_1C3C4C328(v30, v29, v28 & 1);

  sub_1C3C4C338(&v41, &v34);
  sub_1C3C4C39C(v47, sub_1C3C4BD84);
  sub_1C3C2EE8C(v30, v29, v28 & 1);
}

void sub_1C3C4BC18()
{
  if (!qword_1EC085DC8)
  {
    sub_1C3C4BFA8(255, &qword_1EC085DD0, MEMORY[0x1E69817F0]);
    sub_1C3C4BFA8(255, &qword_1EC085E08, MEMORY[0x1E6981860]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC085DC8);
    }
  }
}

void sub_1C3C4BCC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1FD34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C4BD14()
{
  if (!qword_1EC085DE0)
  {
    sub_1C3C4BD84(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC085DE0);
    }
  }
}

void sub_1C3C4BDE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1C3C4BF58(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1C3D1F1A4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C3C4BE7C()
{
  if (!qword_1EC085DF8)
  {
    sub_1C3C4BEDC();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085DF8);
    }
  }
}

void sub_1C3C4BEDC()
{
  if (!qword_1EC0811F0)
  {
    sub_1C3C4BF58(255, &qword_1EC0813B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = sub_1C3D1F6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0811F0);
    }
  }
}

void sub_1C3C4BF58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C3C4BFA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1C3C4BCC0(255, &qword_1EC085DD8, sub_1C3C4BD14);
    v7 = v6;
    v8 = sub_1C3C4C0F0(&qword_1EC085E00, &qword_1EC085DD8, sub_1C3C4BD14);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C3C4C050()
{
  if (!qword_1EC085E10)
  {
    sub_1C3C4BCC0(255, &qword_1EC085DC0, sub_1C3C4BC18);
    sub_1C3C4C0F0(&qword_1EC085E18, &qword_1EC085DC0, sub_1C3C4BC18);
    v0 = sub_1C3D1F0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E10);
    }
  }
}

uint64_t sub_1C3C4C0F0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C3C4BCC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3C4C140()
{
  result = qword_1EC085E20;
  if (!qword_1EC085E20)
  {
    sub_1C3C4C050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085E20);
  }

  return result;
}

uint64_t sub_1C3C4C198(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C3C4BCC0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3C4C204(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3C4BCC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3C4C260(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1C3C4BFA8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3C4C2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1C3C4BFA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3C4C328(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C3C4C338(uint64_t a1, uint64_t a2)
{
  sub_1C3C4BD84(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C4C39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C3C4C410()
{
  if (!qword_1EC085E28)
  {
    sub_1C3C4C46C();
    v0 = sub_1C3D1F0A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E28);
    }
  }
}

unint64_t sub_1C3C4C46C()
{
  result = qword_1EC086E60;
  if (!qword_1EC086E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086E60);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalAccountBrandLogoView()
{
  result = qword_1EC085E30;
  if (!qword_1EC085E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3C4C520()
{
  sub_1C3C4C5BC();
  if (v0 <= 0x3F)
  {
    sub_1C3C4C608();
    if (v1 <= 0x3F)
    {
      sub_1C3C4C410();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C3C4C5BC()
{
  result = qword_1EC085D50;
  if (!qword_1EC085D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC085D50);
  }

  return result;
}

unint64_t sub_1C3C4C608()
{
  result = qword_1EC085E40;
  if (!qword_1EC085E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC085E40);
  }

  return result;
}

uint64_t sub_1C3C4C688(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C3D201F4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3C4C6D0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C3D1F424();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1C3C4C808(v1, a1 + 24);
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  type metadata accessor for ClinicalAccountBrandLogoView();
  sub_1C3C4C410();
  sub_1C3D1F094();
  sub_1C3D1F094();
  sub_1C3D1FD14();
  sub_1C3D1F0F4();
  *(a1 + 120) = v19;
  *(a1 + 136) = v20;
  *(a1 + 152) = v21;
  v3 = sub_1C3D1F7A4();
  sub_1C3D1F014();
  *(a1 + 168) = v3;
  *(a1 + 176) = v4;
  *(a1 + 184) = v5;
  *(a1 + 192) = v6;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0;
  v8 = sub_1C3D1F774();
  sub_1C3D1F014();
  *(a1 + 216) = v8;
  *(a1 + 224) = v9;
  *(a1 + 232) = v10;
  *(a1 + 240) = v11;
  *(a1 + 248) = v12;
  *(a1 + 256) = 0;
  v13 = sub_1C3D1F794();
  result = sub_1C3D1F014();
  *(a1 + 264) = v13;
  *(a1 + 272) = v15;
  *(a1 + 280) = v16;
  *(a1 + 288) = v17;
  *(a1 + 296) = v18;
  *(a1 + 304) = 0;
  return result;
}

uint64_t sub_1C3C4C808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClinicalAccountBrandLogoView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C4D7A4(a1 + 8, v13);
  sub_1C3C4E114(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for ClinicalAccountBrandLogoView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1C3C4D808(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v8 + v7);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  sub_1C3C4D7A4(v13, v12);
  sub_1C3C4D7A4(v12, v11);
  sub_1C3C4C608();
  sub_1C3D1FBF4();
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);

  *(a2 + 16) = sub_1C3C4D86C;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1C3C4C9E0@<X0>(unint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v80 = sub_1C3D1F1D4();
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1FB94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C4D8EC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C4E8F8(0, &qword_1EC085E98, sub_1C3C4D8EC, sub_1C3C4DCA4, MEMORY[0x1E697F948]);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - v16;
  if (a1 >> 62)
  {
    v64 = sub_1C3D1FD14();
    v66 = v65;
    sub_1C3C4D14C(a2, &v83);
    v99 = v89;
    v100 = v90;
    v101 = v91;
    v95 = v85;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v93 = v83;
    v94 = v84;
    v109 = v89;
    v110 = v90;
    v111 = v91;
    v105 = v85;
    v106 = v86;
    v107 = v87;
    v108 = v88;
    v102 = v92;
    v112 = v92;
    v103 = v83;
    v104 = v84;
    sub_1C3C4E374(&v93, &v82);
    sub_1C3C4E408(&v103, &qword_1EC085EA8, sub_1C3C4DD38, MEMORY[0x1E6981F40]);
    *v17 = v64;
    *(v17 + 1) = v66;
    v67 = v100;
    *(v17 + 7) = v99;
    *(v17 + 8) = v67;
    *(v17 + 9) = v101;
    *(v17 + 20) = v102;
    v68 = v96;
    *(v17 + 3) = v95;
    *(v17 + 4) = v68;
    v69 = v98;
    *(v17 + 5) = v97;
    *(v17 + 6) = v69;
    v70 = v94;
    *(v17 + 1) = v93;
    *(v17 + 2) = v70;
    swift_storeEnumTagMultiPayload();
    sub_1C3C4DCA4();
    sub_1C3C4E17C();
    sub_1C3C4EC18(&qword_1EC085F20, sub_1C3C4DCA4);
    return sub_1C3D1F564();
  }

  else
  {
    v77 = v15;
    v79 = v11;
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v76 = sub_1C3D1FBD4();
    (*(v7 + 8))(v9, v6);
    LODWORD(v75) = sub_1C3D1F744();
    sub_1C3D1F014();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    LOBYTE(v103) = 1;
    LOBYTE(v93) = 0;
    v26 = sub_1C3D1FD14();
    v72 = v27;
    v73 = v26;
    sub_1C3D20374();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1C3C4D934(0);
    v29 = &v13[*(v28 + 36)];
    v30 = *(v80 + 20);
    v31 = *MEMORY[0x1E697F468];
    v32 = sub_1C3D1F414();
    v33 = *(*(v32 - 8) + 104);
    v74 = v31;
    v34 = v31;
    v35 = v33;
    v33(&v29[v30], v34, v32);
    __asm { FMOV            V0.2D, #3.0 }

    v71 = _Q0;
    *v29 = _Q0;
    v41 = sub_1C3D1FB24();

    sub_1C3C4DA9C();
    *&v29[*(v42 + 52)] = v41;
    *&v29[*(v42 + 56)] = 256;
    sub_1C3C4DA08();
    v44 = &v29[*(v43 + 36)];
    v45 = v72;
    *v44 = v73;
    v44[1] = v45;
    *v13 = v76;
    *(v13 + 1) = 0;
    v13[16] = 1;
    v13[17] = 0;
    v13[24] = v75;
    *(v13 + 4) = v19;
    *(v13 + 5) = v21;
    *(v13 + 6) = v23;
    *(v13 + 7) = v25;
    v13[64] = 0;
    v46 = sub_1C3D1FD14();
    v75 = v47;
    v76 = v46;
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v48 = v78;
    v49 = &v13[*(v79 + 36)];
    v35(&v78[*(v80 + 20)], v74, v32);
    *v48 = v71;
    v50 = sub_1C3D1F604();
    sub_1C3D1F054();
    sub_1C3C4E114(v48, v49, MEMORY[0x1E697EAF0]);
    sub_1C3C4DEE8();
    v52 = v49 + *(v51 + 36);
    v53 = v104;
    *v52 = v103;
    *(v52 + 16) = v53;
    *(v52 + 32) = v105;
    sub_1C3C4DF7C();
    *(v49 + *(v54 + 52)) = v50;
    *(v49 + *(v54 + 56)) = 256;
    v55 = sub_1C3D1FD14();
    v57 = v56;
    sub_1C3C4E314(v48, MEMORY[0x1E697EAF0]);

    sub_1C3C4E02C();
    v59 = (v49 + *(v58 + 36));
    *v59 = v55;
    v59[1] = v57;
    sub_1C3C4DB4C();
    v61 = (v49 + *(v60 + 36));
    v62 = v75;
    *v61 = v76;
    v61[1] = v62;
    sub_1C3C4E114(v13, v17, sub_1C3C4D8EC);
    swift_storeEnumTagMultiPayload();
    sub_1C3C4DCA4();
    sub_1C3C4E17C();
    sub_1C3C4EC18(&qword_1EC085F20, sub_1C3C4DCA4);
    sub_1C3D1F564();
    return sub_1C3C4E314(v13, sub_1C3C4D8EC);
  }
}