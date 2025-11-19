uint64_t sub_1CFE45D00()
{

  if (v0)
  {
    v1 = sub_1CFEF2100;
  }

  else
  {
    v1 = sub_1CFE45E10;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1CFE45E10()
{
  v37 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    sub_1CFF0D01C();
    v4 = sub_1CFF0D02C();
    v5 = sub_1CFF0E7EC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[27];
    v8 = v0[23];
    v9 = v0[20];
    if (v6)
    {
      v34 = v0[27];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136446210;
      v12 = sub_1CFF0ED2C();
      v14 = sub_1CFE462A4(v12, v13, &v36);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1CFE44000, v4, v5, "[%{public}s] Query observation loop ended", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1D387A160](v11, -1, -1);
      MEMORY[0x1D387A160](v10, -1, -1);

      v34(v8, v9);
    }

    else
    {

      v7(v8, v9);
    }

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v3 + 32))(v0[15], v1, v2);
    sub_1CFF0D01C();
    v15 = sub_1CFF0D02C();
    v16 = sub_1CFF0E7EC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[27];
    v19 = v0[24];
    v20 = v0[20];
    if (v17)
    {
      v35 = v0[27];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136446210;
      v23 = sub_1CFF0ED2C();
      v25 = sub_1CFE462A4(v23, v24, &v36);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1CFE44000, v15, v16, "[%{public}s] Received day summaries", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D387A160](v22, -1, -1);
      MEMORY[0x1D387A160](v21, -1, -1);

      v35(v19, v20);
    }

    else
    {

      v18(v19, v20);
    }

    Strong = swift_weakLoadStrong();
    v0[29] = Strong;
    if (Strong)
    {
      sub_1CFF0E6DC();
      v0[30] = sub_1CFF0E6CC();
      v30 = sub_1CFF0E66C();

      return MEMORY[0x1EEE6DFA0](sub_1CFEF1FC4, v30, v29);
    }

    else
    {
      (*(v0[14] + 8))(v0[15], v0[13]);
      v31 = swift_task_alloc();
      v0[28] = v31;
      *v31 = v0;
      v31[1] = sub_1CFE45D00;
      v32 = v0[16];
      v33 = v0[17];

      return MEMORY[0x1EEE6DB90](v32, 0, 0, v33, v0 + 8);
    }
  }
}

unint64_t sub_1CFE462A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFE46418(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CFE463BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1CFE463BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1CFE46418(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CFE5C0A8(a5, a6);
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
    result = sub_1CFF0E9CC();
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

uint64_t sub_1CFE46588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0C7AC();
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

uint64_t sub_1CFE46644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFF0C7AC();
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

uint64_t sub_1CFE466FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFF0C7AC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1CFE537F0();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1CFE4683C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BalanceWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1CFF0C7AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1CFE537F0();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1CFE46988(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OvernightMetricsChartLayout(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CFE46A34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OvernightMetricsChartLayout(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFE46AD8()
{
  v1 = type metadata accessor for SevenDaySingleMetricChartContent();
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(v1 + 28);

  v5 = v4 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v6 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1CFF0C7AC();
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v9 = v5 + *(v6 + 20);
    v8(v9, v7);
    sub_1CFE55184();
    v8(v9 + *(v10 + 36), v7);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE46DA0()
{
  sub_1CFE54714();
  sub_1CFE54AAC(255, &qword_1EDEC1FF0, sub_1CFE5492C, sub_1CFE54984);
  sub_1CFE548D4(&qword_1EDEC21C8, sub_1CFE54714);
  sub_1CFE55074();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE46E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0E2DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CFE46F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFF0E2DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CFE4702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE5DBD0(0, &qword_1EDEC2108, MEMORY[0x1E6985838], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for BalanceWidgetTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFE4714C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE5DBD0(0, &qword_1EDEC2108, MEMORY[0x1E6985838], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for BalanceWidgetTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CFE47290()
{
  sub_1CFE602E0(255, &qword_1EDEC1A18, sub_1CFE5EB78, sub_1CFE5EC04);
  sub_1CFE5EB78();
  sub_1CFE5EC04();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE4737C()
{
  v1 = type metadata accessor for BalanceWidgetAccessoryRectangularTitleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  sub_1CFE5E930(0, &qword_1EDEC2148, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for BalanceWidgetAccessoryRectangularSpecs() + 24);
    v5 = sub_1CFF0E2DC();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(v1 + 20);
  v7 = sub_1CFF0CADC();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for OvernightMetricsViewModel(0);

  v9 = v8[6];
  type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v10 = sub_1CFF0CDFC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  v12 = v6 + v8[7];
  v13 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_1CFF0C7AC();
    v15 = *(*(v14 - 8) + 8);
    v15(v12, v14);
    v16 = v12 + *(v13 + 20);
    v15(v16, v14);
    sub_1CFE60AA0(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    v15(v16 + *(v17 + 36), v14);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  v18 = v6 + v8[8];

  v19 = *(type metadata accessor for OvernightMetricsChartPointCollection() + 20);
  v20 = sub_1CFF0C89C();
  (*(*(v20 - 8) + 8))(v18 + v19, v20);

  v21 = v6 + v8[11];
  v22 = sub_1CFF0C7AC();
  v23 = *(*(v22 - 8) + 8);
  v23(v21, v22);
  sub_1CFE60AA0(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v25 = v24;
  v23(v21 + *(v24 + 36), v22);
  v26 = v6 + v8[12];
  v23(v26, v22);
  v23(v26 + *(v25 + 36), v22);

  v27 = *(type metadata accessor for BalanceWidgetViewModel() + 20);
  v28 = sub_1CFF0C9EC();
  (*(*(v28 - 8) + 8))(v6 + v27, v28);

  return swift_deallocObject();
}

uint64_t sub_1CFE47A18@<X0>(_BYTE *a1@<X8>)
{
  result = SettingsModelProvider.sleepingSampleChangeNotificationsEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFE47A90()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  sub_1CFE698AC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296));

  return swift_deallocObject();
}

uint64_t sub_1CFE47B2C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for OvernightMetricsAxisStyle();
  v19 = *(*(v2 - 1) + 80);
  v17 = *(*(v2 - 1) + 64);
  v3 = *(*(type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0) - 8) + 80);
  v18 = (v19 + 32) & ~v19;
  v4 = v0 + v18;
  type metadata accessor for OvernightMetricsAxisConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_1CFF0C7AC();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v18, v6);
  sub_1CFE69B4C();
  v16 = v8;
  v7(v0 + v18 + *(v8 + 36), v6);
  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  }

  if (*(v4 + v2[9]))
  {
  }

  (*(*(v1 - 8) + 8))(v4 + v2[10], v1);
  v9 = v4 + v2[11];
  v14 = *(v9 + 240);
  v15 = *(v9 + 256);
  v13 = *(v9 + 208);
  sub_1CFE698AC(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104), *(v9 + 112), *(v9 + 120), *(v9 + 128), *(v9 + 136), *(v9 + 144), *(v9 + 152), *(v9 + 160), *(v9 + 168), *(v9 + 176), *(v9 + 184), *(v9 + 192), *(v9 + 200), v13, *(&v13 + 1), *(v9 + 224), *(v9 + 232), v14, *(&v14 + 1), v15, *(&v15 + 1), *(v9 + 272), *(v9 + 280));
  v10 = v2[12];
  sub_1CFE696E4(0, &qword_1EDEC2140, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CFF0C89C();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  v7(v0 + ((v18 + v17 + v3) & ~v3), v6);
  v7(v0 + ((v18 + v17 + v3) & ~v3) + *(v16 + 36), v6);

  return swift_deallocObject();
}

uint64_t sub_1CFE47E98()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for OvernightMetricsAxisStyle();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  type metadata accessor for OvernightMetricsAxisConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_1CFF0C7AC();
  v6 = *(*(v5 - 8) + 8);
  v6(v3, v5);
  sub_1CFE69B4C();
  v6(v3 + *(v7 + 36), v5);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0);
  }

  else
  {
    type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  }

  if (*(v3 + v2[9]))
  {
  }

  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);
  v8 = v3 + v2[11];
  v13 = *(v8 + 240);
  v14 = *(v8 + 256);
  v12 = *(v8 + 208);
  sub_1CFE698AC(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104), *(v8 + 112), *(v8 + 120), *(v8 + 128), *(v8 + 136), *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168), *(v8 + 176), *(v8 + 184), *(v8 + 192), *(v8 + 200), v12, *(&v12 + 1), *(v8 + 224), *(v8 + 232), v13, *(&v13 + 1), v14, *(&v14 + 1), *(v8 + 272), *(v8 + 280));
  v9 = v2[12];
  sub_1CFE696E4(0, &qword_1EDEC2140, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1CFF0C89C();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE481A8()
{
  type metadata accessor for OvernightMetricsAxisStyle();
  swift_getWitnessTable();
  sub_1CFF0D97C();
  sub_1CFF0D27C();
  sub_1CFF0D28C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1CFE69B4C();
  swift_getOpaqueTypeConformance2();
  sub_1CFE69BE0();
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CFF0D1DC();
  sub_1CFF0E8AC();
  sub_1CFE69C50();
  sub_1CFF0D08C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CFE69ACC(&qword_1EDEC2248, sub_1CFE69C50);
  swift_getWitnessTable();
  sub_1CFF0D38C();
  sub_1CFF0D9AC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D08C();
  sub_1CFF0D25C();
  sub_1CFE69CE4(255);
  sub_1CFF0D08C();
  sub_1CFE69ACC(&qword_1EDEC2238, sub_1CFE69CE4);
  swift_getWitnessTable();
  sub_1CFF0D38C();
  sub_1CFF0D25C();
  sub_1CFF0E8AC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE48788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFF0C7AC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFE48894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CFF0CB6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CFF0C7AC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE489A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OvernightMetricsChartLayout(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 40);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFE48AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for OvernightMetricsChartLayout(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 40) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE48BC8()
{
  v1 = v0;
  v2 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v17 = *(*(v2 - 1) + 80);
  v15 = *(*(v2 - 1) + 64);
  v3 = sub_1CFF0CCEC();
  v18 = *(v3 - 8);
  v19 = v3;
  v14 = *(v18 + 80);
  v16 = (v17 + 16) & ~v17;
  v4 = v0 + v16;
  v5 = sub_1CFF0C7AC();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v16, v5);
  sub_1CFE55184();
  v13 = v7;
  v6(v0 + v16 + *(v7 + 36), v5);
  type metadata accessor for IndividualOvernightMetricChartPointCollection();

  if (*(v0 + v16 + v2[5]))
  {
  }

  v8 = v4 + v2[9];

  v9 = v8 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v10 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v6(v9, v5);
    v11 = v9 + *(v10 + 20);
    v6(v11, v5);
    v6(v11 + *(v13 + 36), v5);

    v1 = v0;
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v4 + v2[10]))
  {
  }

  (*(v18 + 8))(v1 + ((v16 + v15 + v14) & ~v14), v19);

  return swift_deallocObject();
}

uint64_t sub_1CFE48F84(uint64_t a1, uint64_t a2)
{
  sub_1CFE72AB8(0, &qword_1EDEC21E0, sub_1CFE72B24, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE490A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1CFE74E1C(&qword_1EC5123C0, MEMORY[0x1E6968438]);

  return MEMORY[0x1EEDC3C08](v2, v3);
}

void sub_1CFE491A8()
{
  sub_1CFE74D20();
  sub_1CFF0C5EC();
  __break(1u);
}

void sub_1CFE49264()
{
  sub_1CFE74D74();
  sub_1CFF0C5CC();
  __break(1u);
}

uint64_t sub_1CFE49320@<X0>(_BYTE *a1@<X8>)
{
  sub_1CFE78DAC();
  result = sub_1CFF0D47C();
  *a1 = v3;
  return result;
}

uint64_t sub_1CFE493D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE69B4C();
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

void sub_1CFE49490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE69B4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1CFE4954C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaselineSeparators.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFE495B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaselineSeparators.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFE49628()
{
  sub_1CFE7B480();
  sub_1CFE7B280();
  sub_1CFE7A620(&qword_1EC5124C8, sub_1CFE7B280);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE496F8()
{
  v3 = *(v0 + 16);
  v1 = type metadata accessor for ChartPlotSizeReader();
  (*(*(v3 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)) + *(v1 + 52));

  return swift_deallocObject();
}

uint64_t sub_1CFE497F0()
{
  sub_1CFF0D62C();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE4989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE7E870();
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

void sub_1CFE49958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE7E870();
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

uint64_t sub_1CFE49A14(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1CFF0E2DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1CFE49AB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1CFF0E2DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFE49B58(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1CFE7F8F0(0, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
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
      v13 = type metadata accessor for OvernightMetricsChartLayout(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1CFE49C98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1CFE7F8F0(0, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
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
      v13 = type metadata accessor for OvernightMetricsChartLayout(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CFE49DD8()
{
  v1 = type metadata accessor for GradientOverlaidPills();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + v1[5];
  v5 = type metadata accessor for OvernightMetricsChartPoint();
  v6 = *(*(v5 - 8) + 48);
  if (!v6(v4, 1, v5))
  {
    v7 = sub_1CFF0C7AC();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v9 = v4 + *(v5 + 20);
    v8(v9, v7);
    sub_1CFE55184();
    v8(v9 + *(v10 + 36), v7);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  v11 = v3 + v1[7];

  v12 = v11 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  if (!v6(v12, 1, v5))
  {
    v13 = sub_1CFF0C7AC();
    v14 = *(*(v13 - 8) + 8);
    v14(v12, v13);
    v15 = v12 + *(v5 + 20);
    v14(v15, v13);
    sub_1CFE55184();
    v14(v15 + *(v16 + 36), v13);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v3 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE4A1A0(uint64_t a1, uint64_t a2)
{
  sub_1CFE81B20(0, &qword_1EDEC21D0, sub_1CFE8112C, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE4A240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OvernightMetricsChartLayout(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 40);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFE4A350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for OvernightMetricsChartLayout(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 40) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE4A4D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFF0D70C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFE4A530@<X0>(void *a1@<X8>)
{
  result = sub_1CFF0D72C();
  *a1 = v3;
  return result;
}

uint64_t sub_1CFE4A584@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CFF0D7DC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1CFE4A5E8(uint64_t a1, uint64_t a2)
{
  sub_1CFE87DB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE4A64C()
{
  sub_1CFE86A10();
  sub_1CFE86984();
  sub_1CFE86BD0(&qword_1EDEC1CA0, sub_1CFE86984, sub_1CFE86ACC);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE4A720()
{
  sub_1CFE88108(255);
  sub_1CFE87B10();
  sub_1CFE882F4();
  sub_1CFE88C34(&qword_1EDEC1638, sub_1CFE87B10);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE4A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE55184();
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

void sub_1CFE4A8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE55184();
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

uint64_t sub_1CFE4A9B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFF0CADC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[11];

  return v20(v21, a2, v19);
}

uint64_t sub_1CFE4AC00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CFF0CADC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[11];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1CFE4AE90()
{

  return swift_deallocObject();
}

uint64_t sub_1CFE4AEE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CFE4AF24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CFE4AF7C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE4AFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1CFF0CA6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFE4B080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_1CFF0CA6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFE4B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OvernightMetricsChartLayout(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 40);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFE4B23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for OvernightMetricsChartLayout(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 40) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE4B354(uint64_t a1, uint64_t a2)
{
  sub_1CFE69B4C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFE4B3C0(uint64_t a1, uint64_t a2)
{
  sub_1CFE69B4C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFE4B45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0C7AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFE4B56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CFF0C7AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for IndividualOvernightMetricChartPointCollection();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE4B680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0CA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 280);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CFE4B73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFF0CA6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 280) = -a2;
  }

  return result;
}

uint64_t sub_1CFE4B7FC()
{
  v1 = (type metadata accessor for WarmupProgressCounter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1CFF0CA6C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[8];
  v7 = *(v4 + 240);
  v8 = *(v4 + 256);
  v6 = *(v4 + 208);
  sub_1CFE698AC(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), v6, *(&v6 + 1), *(v4 + 224), *(v4 + 232), v7, *(&v7 + 1), v8, *(&v8 + 1), *(v4 + 272), *(v4 + 280));

  return swift_deallocObject();
}

uint64_t sub_1CFE4B944(uint64_t a1, uint64_t a2)
{
  sub_1CFEB216C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE4B9A8(uint64_t a1)
{
  sub_1CFEB216C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE4BA04(uint64_t a1, uint64_t a2)
{
  sub_1CFEB23E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE4BA68(uint64_t a1)
{
  sub_1CFEB264C(0, &qword_1EC5128F8, sub_1CFEB23E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE4BAE8()
{
  sub_1CFEB8230();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1CFE4BB70()
{
  v16 = sub_1CFF0CADC();
  v1 = *(v16 - 8);
  v14 = (*(v1 + 80) + 120) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v3 = sub_1CFF0C7AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + v5 + v14 + 1) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = sub_1CFF0C89C();
  v10 = *(v15 - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  (*(v1 + 8))(v0 + v14, v16);
  v12 = *(v4 + 8);
  v12(v0 + v6, v3);
  v12(v0 + v8, v3);

  (*(v10 + 8))(v0 + v11, v15);

  return swift_deallocObject();
}

uint64_t sub_1CFE4BDB0()
{

  return swift_deallocObject();
}

uint64_t sub_1CFE4BDF0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_1CFEBC3B8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = type metadata accessor for OvernightMetricsChartLayout(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_1CFE4BFD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_1CFEBC3B8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = type metadata accessor for OvernightMetricsChartLayout(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1CFE4C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OvernightMetricsChartLayout(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 40);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFE4C2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for OvernightMetricsChartLayout(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 40) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE4C3E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CFF0C89C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CFE4C48C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFF0C89C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFE4C530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OvernightMetricsViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1CFF0C9EC();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1CFE4C638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OvernightMetricsViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CFF0C9EC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE4C740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
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

uint64_t sub_1CFE4C7FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
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

uint64_t sub_1CFE4C8B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1CFEC75F8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1CFE4C994(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1CFEC75F8(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1CFE4CA68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1CFEC8CF4(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
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
      v13 = type metadata accessor for OvernightMetricsChartLayout(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1CFE4CBBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1CFEC8CF4(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
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
      v13 = type metadata accessor for OvernightMetricsChartLayout(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CFE4CD10()
{
  v1 = type metadata accessor for SmoothedLineTrace();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + v1[5];
  v5 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    v6 = sub_1CFF0CB6C();
    (*(*(v6 - 8) + 8))(v4, v6);
    v7 = v5[5];
    v8 = sub_1CFF0C7AC();
    v9 = *(*(v8 - 8) + 8);
    v9(v4 + v7, v8);
    v10 = v4 + v5[6];
    v9(v10, v8);
    sub_1CFE55184();
    v12 = v11;
    v9(v10 + *(v11 + 36), v8);
    v13 = v4 + v5[7];
    v9(v13, v8);
    v9(v13 + *(v12 + 36), v8);
    v14 = v5[9];
    v15 = sub_1CFF0CCEC();
    (*(*(v15 - 8) + 8))(v4 + v14, v15);
  }

  v16 = v3 + v1[7];

  v17 = v16 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v18 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_1CFF0C7AC();
    v20 = *(*(v19 - 8) + 8);
    v20(v17, v19);
    v21 = v17 + *(v18 + 20);
    v20(v21, v19);
    sub_1CFE55184();
    v20(v21 + *(v22 + 36), v19);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v3 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE4D194(uint64_t a1, uint64_t a2)
{
  sub_1CFEC8CF4(0, &qword_1EDEC22D8, sub_1CFEC8D58, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE4D228()
{
  sub_1CFEC9150();
  sub_1CFEC9080();
  sub_1CFEC8EAC();
  sub_1CFEC8BC0();
  sub_1CFEC8F30();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE4D32C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1CFEC94DC(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_1CFEC9510(0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[13];
      goto LABEL_5;
    }

    v15 = type metadata accessor for OvernightMetricsChartLayout(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

void sub_1CFE4D4E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1CFEC94DC(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return;
  }

  sub_1CFEC9510(0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[13];
    goto LABEL_5;
  }

  v15 = type metadata accessor for OvernightMetricsChartLayout(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[14];

  v16(v17, a2, a2, v15);
}

uint64_t sub_1CFE4D69C()
{
  v1 = type metadata accessor for OvernightMetricsChartContent();
  v26 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v26 + 16) & ~v26);
  v3 = v2 + v1[5];

  v4 = *(type metadata accessor for OvernightMetricsChartPointCollection() + 20);
  v5 = sub_1CFF0C89C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v2 + v1[6];
  v7 = type metadata accessor for OvernightMetricsChartPoint();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {
    v9 = sub_1CFF0C7AC();
    v10 = *(*(v9 - 8) + 8);
    v10(v6, v9);
    v11 = v6 + *(v7 + 20);
    v10(v11, v9);
    sub_1CFECB39C(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    v10(v11 + *(v12 + 36), v9);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  if (*(v2 + v1[7]))
  {
  }

  v13 = v2 + v1[13];
  v14 = type metadata accessor for BaselineSeparators.Configuration(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = v13 + *(v14 + 20);
    v16 = sub_1CFF0C7AC();
    v17 = *(*(v16 - 8) + 8);
    v17(v15, v16);
    sub_1CFECB39C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
    v17(v15 + *(v18 + 36), v16);
  }

  v19 = v2 + v1[14];

  v20 = v19 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  if (!v8(v20, 1, v7))
  {
    v21 = sub_1CFF0C7AC();
    v22 = *(*(v21 - 8) + 8);
    v22(v20, v21);
    v23 = v20 + *(v7 + 20);
    v22(v23, v21);
    sub_1CFECB39C(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    v22(v23 + *(v24 + 36), v21);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v2 + v1[15]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE4DC18(uint64_t a1, uint64_t a2)
{
  sub_1CFE71788(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE4DC7C(uint64_t a1, uint64_t a2)
{
  sub_1CFE71788(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1CFE4DCE0@<X0>(void *a1@<X8>)
{
  sub_1CFEA7D14();
  sub_1CFF0D81C();
  return memcpy(a1, __src, 0x118uLL);
}

uint64_t sub_1CFE4DD48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_1CFED2054(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, MEMORY[0x1E69E6720]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[11];
      goto LABEL_5;
    }

    v15 = type metadata accessor for OvernightMetricsChart.Derivations(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

void sub_1CFE4DF60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return;
  }

  sub_1CFED2054(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, MEMORY[0x1E69E6720]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  v15 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  v16(v17, a2, a2, v15);
}

uint64_t sub_1CFE4E178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
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

void sub_1CFE4E250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1CFE4E36C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFF0D74C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFE4E3B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CFF0E15C();
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
      v13 = sub_1CFF0C7CC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1CFE4E4D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1CFF0E15C();
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
      v13 = sub_1CFF0C7CC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CFE4E5F8()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for MultilayerCircularGauge() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);
  (*(*(v5 - 8) + 8))(v3 + v2[17]);
  return swift_deallocObject();
}

uint64_t sub_1CFE4E734()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for MultilayerCircularGauge() - 8);
  v3 = v0 + ((*(*v2 + 80) + 64) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);
  (*(*(v5 - 8) + 8))(v3 + v2[17]);
  return swift_deallocObject();
}

uint64_t sub_1CFE4E870()
{
  sub_1CFE607AC();
  sub_1CFF0D62C();
  sub_1CFF0D86C();
  sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  swift_getWitnessTable();
  sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  v0 = MEMORY[0x1E69E6370];
  v3 = MEMORY[0x1E6980A08];
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1CFF0D62C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, v0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0DFDC();
  sub_1CFF0D62C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  swift_getTupleTypeMetadata2();
  sub_1CFF0E16C();
  swift_getWitnessTable();
  sub_1CFF0DFFC();
  sub_1CFED9300();
  swift_getTupleTypeMetadata3();
  sub_1CFF0E16C();
  swift_getWitnessTable();
  sub_1CFF0E01C();
  swift_getWitnessTable();
  sub_1CFF0D5BC();
  sub_1CFF0D62C();
  v1 = MEMORY[0x1E69E7DE0];
  sub_1CFED9860(255, &qword_1EDEC1AA8, MEMORY[0x1E69E7DE0], v3);
  sub_1CFF0D62C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CFED929C(&qword_1EDEC1AB0, &qword_1EDEC1AA8, v1);
  return swift_getWitnessTable();
}

uint64_t sub_1CFE4ECE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFF0CADC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1CFF0CE6C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CFE4EE5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFF0CB6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1CFF0CADC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1CFF0CE6C();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1CFE4EFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0C55C();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1CFE4F0A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFF0C55C();
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1CFE4F164(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v1;
  v6 = *(a1 + 64);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  sub_1CFE5307C(v5, v4);
  return sub_1CFEE01D8(v5);
}

uint64_t sub_1CFE4F1B8()
{
  sub_1CFF0DA5C();
  sub_1CFF0D62C();
  sub_1CFEE0D50(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1CFE4F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0D43C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFF0D61C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1CFF0E2DC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1CFE4F394(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CFF0D43C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1CFF0D61C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1CFF0E2DC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1CFE4F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0CA6C();
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

uint64_t sub_1CFE4F59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CFF0CA6C();
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

uint64_t sub_1CFE4F654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CB6C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFE4F6C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1CFF0CB6C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1CFE4F740(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFF0C7AC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_1CFE55184();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1CFF0CCEC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1CFE4F8E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFF0CB6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1CFF0C7AC();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_1CFE55184();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1CFF0CCEC();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[9];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFE4FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1CFF0C7AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFE4FB6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CFF0CB6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1CFF0C7AC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CFE4FD18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CFE4FD50()
{
  sub_1CFEF7BBC(0, &qword_1EDEC16E8, MEMORY[0x1E69E87C8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1CFE4FE54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1CFE4FE9C()
{

  return swift_deallocObject();
}

uint64_t sub_1CFE4FED4()
{
  v1 = sub_1CFF0CADC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CFE4FF98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CFE4FFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CFE50080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CFE50160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFE501CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFE5023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CFF0CA6C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1CFEF99F4(0, &qword_1EDEC2128, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1CFE503AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BalanceWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1CFF0CA6C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1CFEF99F4(0, &qword_1EDEC2128, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCC0]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1CFE50534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFF0D75C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFE506A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OvernightMetricsChartLayout(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_1CFF01BF0(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for OvernightMetricsAxisConfiguration(0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[13];
      goto LABEL_7;
    }

    v18 = type metadata accessor for OvernightMetricsChart.Derivations(0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[14];

    return v19(v20, a2, v18);
  }
}

void sub_1CFE508D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OvernightMetricsChartLayout(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  v13 = type metadata accessor for OvernightMetricsChartPointCollection();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_1CFF01BF0(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return;
  }

  v17 = type metadata accessor for OvernightMetricsAxisConfiguration(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[13];
    goto LABEL_7;
  }

  v18 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[14];

  v19(v20, a2, a2, v18);
}

uint64_t sub_1CFE50B08(uint64_t a1)
{
  sub_1CFF0148C(0, &qword_1EDEC1B38, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE50BB0()
{
  v1 = type metadata accessor for AnimatableOvernightMetricsChart();
  v27 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v27 + 16) & ~v27);

  v3 = v2 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = *(*(v4 - 8) + 48);
  if (!v5(v3, 1, v4))
  {
    v6 = sub_1CFF0C7AC();
    v7 = *(*(v6 - 8) + 8);
    v7(v3, v6);
    v8 = v3 + *(v4 + 20);
    v7(v8, v6);
    sub_1CFF0182C(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    v7(v8 + *(v9 + 36), v6);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  v10 = v2 + v1[6];

  v11 = *(type metadata accessor for OvernightMetricsChartPointCollection() + 20);
  v12 = sub_1CFF0C89C();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  v13 = v2 + v1[7];
  if (!v5(v13, 1, v4))
  {
    v14 = sub_1CFF0C7AC();
    v15 = *(*(v14 - 8) + 8);
    v15(v13, v14);
    v16 = v13 + *(v4 + 20);
    v15(v16, v14);
    sub_1CFF0182C(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    v15(v16 + *(v17 + 36), v14);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  if (*(v2 + v1[8]))
  {
  }

  v18 = v2 + v1[13];
  type metadata accessor for OvernightMetricsAxisConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = sub_1CFF0C7AC();
  v21 = *(*(v20 - 8) + 8);
  v21(v18, v20);
  sub_1CFE69B4C();
  v23 = v22;
  v21(v18 + *(v22 + 36), v20);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0);
  }

  else
  {
    type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  }

  v24 = v2 + v1[14];
  v21(v24, v20);
  v21(v24 + *(v23 + 36), v20);
  v25 = v24 + *(type metadata accessor for OvernightMetricsChart.Derivations(0) + 20);
  v21(v25, v20);
  v21(v25 + *(v23 + 36), v20);

  if (*(v2 + v1[15]))
  {
  }

  sub_1CFF018C8(*(v2 + v1[16]), *(v2 + v1[16] + 8));

  return swift_deallocObject();
}

uint64_t sub_1CFE51184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1CFF0438C(0, &qword_1EDEC2130, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CFE512A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BalanceWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1CFF0438C(0, &qword_1EDEC2130, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCC0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1CFE513D0()
{
  sub_1CFF02DA0();
  sub_1CFF02CF0();
  sub_1CFE87B10();
  sub_1CFF02E74();
  sub_1CFF02FC8(&qword_1EDEC1638, sub_1CFE87B10);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CFE514A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFE51514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFE515F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1CFF06494(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
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
      v13 = type metadata accessor for OvernightMetricsChartLayout(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1CFE51748(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1CFF06494(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
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
      v13 = type metadata accessor for OvernightMetricsChartLayout(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CFE5189C()
{
  v1 = type metadata accessor for SingleMetricMinorPointMarks();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + v1[5];
  v5 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    v6 = sub_1CFF0CB6C();
    (*(*(v6 - 8) + 8))(v4, v6);
    v7 = v5[5];
    v8 = sub_1CFF0C7AC();
    v9 = *(*(v8 - 8) + 8);
    v9(v4 + v7, v8);
    v10 = v4 + v5[6];
    v9(v10, v8);
    sub_1CFE55184();
    v12 = v11;
    v9(v10 + *(v11 + 36), v8);
    v13 = v4 + v5[7];
    v9(v13, v8);
    v9(v13 + *(v12 + 36), v8);
    v14 = v5[9];
    v15 = sub_1CFF0CCEC();
    (*(*(v15 - 8) + 8))(v4 + v14, v15);
  }

  v16 = v3 + v1[7];

  v17 = v16 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 20);
  v18 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_1CFF0C7AC();
    v20 = *(*(v19 - 8) + 8);
    v20(v17, v19);
    v21 = v17 + *(v18 + 20);
    v20(v21, v19);
    sub_1CFE55184();
    v20(v21 + *(v22 + 36), v19);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  type metadata accessor for OvernightMetricsChartLayout(0);

  if (*(v3 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CFE51D20(uint64_t a1, uint64_t a2)
{
  sub_1CFF06394(0, &qword_1EDEC21F0, sub_1CFF05F08, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE51DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE69B4C();
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1CFE51E80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE69B4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1CFE51F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BaselineBand.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CFE51FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BaselineBand.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CFE52108()
{
  sub_1CFF0A80C();
  sub_1CFF0A6FC();
  sub_1CFF0A5E4();
  sub_1CFF0A550();
  sub_1CFF0A6B4(&qword_1EDEC17C8, sub_1CFF0A550);
  sub_1CFE60C24();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CFE5235C(uint64_t a1, int a2)
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

uint64_t sub_1CFE5237C(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFE523CC()
{
  v1 = *(v0 + 32);
  v42 = *(v0 + 16);
  v43 = v1;
  v2 = *(v0 + 64);
  v44 = *(v0 + 48);
  v45 = v2;
  v46 = *(v0 + 80);
  v3 = v42;
  if (v42)
  {
    v4 = *(&v42 + 1);
    v6 = v43;
    v5 = v44;
    v7 = *(&v45 + 1);
    v8 = v45;
    v9 = v46;
  }

  else
  {
    if (qword_1EDEC27D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDEC82D0;
    swift_getKeyPath();
    *&v37 = v10;
    sub_1CFE52D50(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
    sub_1CFF0C8DC();

    v11 = *(v10 + 32);
    v12 = *(v10 + 48);
    v13 = *(v10 + 64);
    v41 = *(v10 + 80);
    v39 = v12;
    v40 = v13;
    v38 = v11;
    v37 = *(v10 + 16);
    v7 = *(&v13 + 1);
    v9 = v41;
    v8 = v13;
    v27 = v11;
    v29 = v12;
    v4 = *(&v37 + 1);
    v3 = v37;
    sub_1CFE5307C(&v37, &v32);
    v6 = v27;
    v5 = v29;
  }

  *&v37 = v3;
  *(&v37 + 1) = v4;
  v38 = v6;
  v39 = v5;
  *&v40 = v8;
  *(&v40 + 1) = v7;
  v41 = v9;
  v14 = *(v4 + 16);
  sub_1CFE530D8(&v42, &v32);
  sub_1CFE530D8(&v42, &v32);
  sub_1CFE531B0(&v37);
  if (v14 < 2)
  {
    return sub_1CFE53204(&v42);
  }

  v15 = v42;
  if (v42)
  {
    v16 = *(&v42 + 1);
    v18 = v43;
    v17 = v44;
    v19 = *(&v45 + 1);
    v20 = v45;
    v21 = v46;
  }

  else
  {
    if (qword_1EDEC27D8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDEC82D0;
    swift_getKeyPath();
    *&v32 = v23;
    sub_1CFE52D50(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
    sub_1CFF0C8DC();

    v24 = *(v23 + 32);
    v25 = *(v23 + 48);
    v26 = *(v23 + 64);
    v36 = *(v23 + 80);
    v34 = v25;
    v35 = v26;
    v33 = v24;
    v32 = *(v23 + 16);
    v19 = *(&v26 + 1);
    v21 = v36;
    v20 = v26;
    v28 = v24;
    v30 = v25;
    v16 = *(&v32 + 1);
    v15 = v32;
    sub_1CFE5307C(&v32, v31);
    v18 = v28;
    v17 = v30;
  }

  *&v32 = v15;
  *(&v32 + 1) = v16;
  v33 = v18;
  v34 = v17;
  *&v35 = v20;
  *(&v35 + 1) = v19;
  v36 = v21;
  return sub_1CFE531B0(&v32);
}

void sub_1CFE526A0(uint64_t a1@<X8>)
{
  v17 = *(v1 + 12);
  v16 = *v1;
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_1CFF0D89C();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
  sub_1CFE52EF0();
  *(a1 + *(v5 + 52)) = v17;
  *(a1 + *(v5 + 56)) = 256;

  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  sub_1CFE52FA0(0);
  v7 = (a1 + *(v6 + 36));
  *v7 = v13;
  v7[1] = v14;
  v7[2] = v15;
  sub_1CFE52FC8(0);
  v9 = a1 + *(v8 + 36);
  *v9 = 0;
  *(v9 + 8) = (*(&v16 + 1) - *&v16) * 0.5;
  sub_1CFE523CC();
  v11 = v10;
  sub_1CFE52FF0(0);
  *(a1 + *(v12 + 36)) = v11;
}

uint64_t sub_1CFE52800(uint64_t a1, id *a2)
{
  result = sub_1CFF0E57C();
  *a2 = 0;
  return result;
}

uint64_t sub_1CFE52878(uint64_t a1, id *a2)
{
  v3 = sub_1CFF0E58C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CFE528F8@<X0>(uint64_t *a1@<X8>)
{
  sub_1CFF0E59C();
  v2 = sub_1CFF0E56C();

  *a1 = v2;
  return result;
}

uint64_t sub_1CFE5293C()
{
  v0 = sub_1CFF0E59C();
  v1 = MEMORY[0x1D3879350](v0);

  return v1;
}

uint64_t sub_1CFE52978()
{
  sub_1CFF0E59C();
  sub_1CFF0E5EC();
}

uint64_t sub_1CFE529CC()
{
  sub_1CFF0E59C();
  sub_1CFF0EC3C();
  sub_1CFF0E5EC();
  v0 = sub_1CFF0EC7C();

  return v0;
}

uint64_t sub_1CFE52A54()
{
  v0 = sub_1CFF0E59C();
  v2 = v1;
  if (v0 == sub_1CFF0E59C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CFF0EBCC();
  }

  return v5 & 1;
}

void *sub_1CFE52ADC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CFE52AEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CFF0E56C();

  *a1 = v2;
  return result;
}

uint64_t sub_1CFE52B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFF0E59C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFE52B6C(uint64_t a1, int a2)
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

uint64_t sub_1CFE52B8C(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFE52C04(uint64_t a1)
{
  v2 = sub_1CFE52D50(&qword_1EC512210, type metadata accessor for HKFeatureIdentifier);
  v3 = sub_1CFE52D50(&qword_1EC512218, type metadata accessor for HKFeatureIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFE52D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_15HealthBalanceUI36OvernightMetricsChartAnimationValuesV010IndividualE5StateVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1CFE52E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CFE52E6C(uint64_t result, int a2, int a3)
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
      *(result + 96) = (a2 - 1);
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

void sub_1CFE52EF0()
{
  if (!qword_1EDEC2170)
  {
    sub_1CFF0E03C();
    sub_1CFE52D50(&qword_1EDEC1950, MEMORY[0x1E6981998]);
    v0 = sub_1CFF0D41C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2170);
    }
  }
}

void sub_1CFE53018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE530D8(uint64_t a1, uint64_t a2)
{
  sub_1CFE53160(0, &qword_1EDEC2B38, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFE53160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFE53204(uint64_t a1)
{
  sub_1CFE53160(0, &qword_1EDEC2B38, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE532C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1CFE53340()
{
  result = qword_1EDEC1FE0;
  if (!qword_1EDEC1FE0)
  {
    sub_1CFE52FA0(255);
    sub_1CFE52D50(&qword_1EDEC2178, sub_1CFE52EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1FE0);
  }

  return result;
}

uint64_t BaselineRelativeChartPoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0C7AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BaselineRelativeChartPoint.init(date:value:color:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = sub_1CFF0C7AC();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for BaselineRelativeChartPoint();
  v11 = a4 + *(result + 20);
  *v11 = v7;
  *(v11 + 8) = v8;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for BaselineRelativeChartPoint()
{
  result = qword_1EC512220;
  if (!qword_1EC512220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static BaselineRelativeChartPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1CFF0C77C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for BaselineRelativeChartPoint() + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return sub_1CFF0DE4C();
}

uint64_t sub_1CFE535D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1CFF0C77C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return sub_1CFF0DE4C();
}

uint64_t sub_1CFE5366C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0C7AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1CFE536D8()
{
  result = qword_1EDEC49A8;
  if (!qword_1EDEC49A8)
  {
    sub_1CFF0C7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC49A8);
  }

  return result;
}

uint64_t sub_1CFE53758()
{
  result = sub_1CFF0C7AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1CFE537F0()
{
  if (!qword_1EDEC17B8)
  {
    sub_1CFF0E3CC();
    v0 = sub_1CFF0E8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC17B8);
    }
  }
}

uint64_t type metadata accessor for BalanceWidgetTimelineEntry()
{
  result = qword_1EDEC4870;
  if (!qword_1EDEC4870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE538A8()
{
  type metadata accessor for BalanceWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_1CFF0C7AC();
    if (v1 <= 0x3F)
    {
      sub_1CFE537F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFE53948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1CFF0C7AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for SevenDaySingleMetricChartContent()
{
  result = qword_1EDEC2F98;
  if (!qword_1EDEC2F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFE53A34()
{
  result = type metadata accessor for OvernightMetricsChartLayout(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFE53AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1CFE55298();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SingleMetricMinorPointMarks();
  v5 = MEMORY[0x1EEE9AC00](v28);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v27 - v7);
  v9 = type metadata accessor for SmoothedLineTrace();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v27 - v12);
  sub_1CFF0E6DC();
  v29 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 8);
  sub_1CFE53F5C(v13 + v9[5]);
  v15 = *(a1 + 16);
  v16 = type metadata accessor for SevenDaySingleMetricChartContent();
  v17 = *(v16 + 28);
  sub_1CFE5542C(a1 + v17, v13 + v9[7], type metadata accessor for OvernightMetricsChartLayout);
  v18 = *(v16 + 32);
  memcpy(v36, (a1 + v18), sizeof(v36));
  *v13 = v14;
  *(v13 + v9[6]) = v15;
  memcpy(v13 + v9[8], (a1 + v18), 0x118uLL);
  v19 = v28;
  sub_1CFE53F5C(v8 + *(v28 + 20));
  sub_1CFE5542C(a1 + v17, v8 + v19[7], type metadata accessor for OvernightMetricsChartLayout);
  memcpy(v37, (a1 + v18), 0x118uLL);
  *v8 = v14;
  *(v8 + v19[6]) = v15;
  memcpy(v8 + v19[8], (a1 + v18), 0x118uLL);
  v20 = v30;
  sub_1CFE5542C(v13, v30, type metadata accessor for SmoothedLineTrace);
  v21 = v34;
  sub_1CFE5542C(v8, v34, type metadata accessor for SingleMetricMinorPointMarks);
  sub_1CFE548D4(qword_1EDEC3F88, type metadata accessor for SmoothedLineTrace);
  v22 = v31;
  sub_1CFE5542C(v20, v31, type metadata accessor for SmoothedLineTrace);
  sub_1CFE548D4(qword_1EDEC37F0, type metadata accessor for SingleMetricMinorPointMarks);
  v23 = v32;
  v24 = *(v32 + 48);
  sub_1CFE5542C(v21, v22 + v24, type metadata accessor for SingleMetricMinorPointMarks);
  v25 = v33;
  sub_1CFE55308(v22, v33, type metadata accessor for SmoothedLineTrace);
  sub_1CFE55308(v22 + v24, v25 + *(v23 + 48), type metadata accessor for SingleMetricMinorPointMarks);
  swift_bridgeObjectRetain_n();
  sub_1CFE55370(v36, v35);
  sub_1CFE55370(v37, v35);
  sub_1CFE553CC(v8, type metadata accessor for SingleMetricMinorPointMarks);
  sub_1CFE553CC(v13, type metadata accessor for SmoothedLineTrace);
  sub_1CFE553CC(v21, type metadata accessor for SingleMetricMinorPointMarks);
  sub_1CFE553CC(v20, type metadata accessor for SmoothedLineTrace);
}

uint64_t sub_1CFE53F5C@<X0>(uint64_t a1@<X8>)
{
  if ((*v1 & 1) != 0 || (v3 = *(v1 + 8), (v4 = *(v3 + 16)) == 0))
  {
    v11 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  else
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
    v13 = *(v6 - 8);
    sub_1CFE5542C(v3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a1, type metadata accessor for IndividualOvernightMetricChartPoint);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  return v7(v8, v9, 1, v10);
}

void sub_1CFE54090(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v16 = a1;
  v4 = type metadata accessor for SevenDaySingleMetricChartContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1CFF0E0EC();
  v9 = v8;
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE5542C(v15, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SevenDaySingleMetricChartContent);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1CFE55308(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SevenDaySingleMetricChartContent);

  sub_1CFE5492C();
  (*(*(v12 - 8) + 16))(a3, v16, v12);

  sub_1CFE54AAC(0, &qword_1EDEC1FF0, sub_1CFE5492C, sub_1CFE54984);
  v14 = (a3 + *(v13 + 36));
  *v14 = v7;
  v14[1] = v9;
  v14[2] = sub_1CFE55218;
  v14[3] = v11;
}

__n128 sub_1CFE54308@<Q0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFF0DE8C();
  v4 = *a1;
  v5 = sub_1CFF0DEBC();

  sub_1CFF0E13C();
  v6 = sub_1CFF0E12C();

  sub_1CFF0D55C();
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  *&v16[7] = v17;
  *&v16[23] = v18;
  *&v16[39] = v19;
  sub_1CFF0E10C();
  sub_1CFF0D6BC();
  sub_1CFF0E13C();
  v7 = sub_1CFF0E12C();

  *a2 = v5;
  *(a2 + 8) = 256;
  *(a2 + 16) = v6;
  *(a2 + 24) = v4;
  *(a2 + 25) = *v16;
  *(a2 + 41) = *&v16[16];
  *(a2 + 57) = *&v16[32];
  *(a2 + 72) = *(&v19 + 1);
  *(a2 + 144) = v13;
  *(a2 + 160) = v14;
  *(a2 + 176) = v15;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  result = v12;
  *(a2 + 112) = v11;
  *(a2 + 128) = v12;
  *(a2 + 192) = v7;
  *(a2 + 200) = v4;
  return result;
}

uint64_t sub_1CFE54534()
{
  sub_1CFE54714();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_1CFE54778();
  sub_1CFE547EC();
  sub_1CFF0D2DC();
  v8 = v0;
  sub_1CFE54AAC(0, &qword_1EDEC1FF0, sub_1CFE5492C, sub_1CFE54984);
  sub_1CFE548D4(&qword_1EDEC21C8, sub_1CFE54714);
  sub_1CFE55074();
  sub_1CFF0D10C();
  return (*(v3 + 8))(v5, v2);
}

void sub_1CFE54714()
{
  if (!qword_1EDEC21C0)
  {
    sub_1CFE54778();
    sub_1CFE547EC();
    v0 = sub_1CFF0D2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC21C0);
    }
  }
}

void sub_1CFE54778()
{
  if (!qword_1EDEC2398)
  {
    type metadata accessor for SmoothedLineTrace();
    type metadata accessor for SingleMetricMinorPointMarks();
    v0 = sub_1CFF0D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2398);
    }
  }
}

unint64_t sub_1CFE547EC()
{
  result = qword_1EDEC23A0;
  if (!qword_1EDEC23A0)
  {
    sub_1CFE54778();
    sub_1CFE548D4(qword_1EDEC3F88, type metadata accessor for SmoothedLineTrace);
    sub_1CFE548D4(qword_1EDEC37F0, type metadata accessor for SingleMetricMinorPointMarks);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC23A0);
  }

  return result;
}

uint64_t sub_1CFE548D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFE5492C()
{
  if (!qword_1EDEC1AF8)
  {
    sub_1CFE54714();
    v0 = sub_1CFF0D9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1AF8);
    }
  }
}

void sub_1CFE54984()
{
  if (!qword_1EDEC1B18)
  {
    sub_1CFE54A18();
    sub_1CFE548D4(&qword_1EDEC2078, sub_1CFE54A18);
    v0 = sub_1CFF0D94C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1B18);
    }
  }
}

void sub_1CFE54A18()
{
  if (!qword_1EDEC2070)
  {
    sub_1CFE54AAC(255, &qword_1EDEC1CE8, sub_1CFE54B20, sub_1CFE54CE0);
    sub_1CFE54D90();
    v0 = sub_1CFF0D5BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2070);
    }
  }
}

void sub_1CFE54AAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1CFF0D62C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1CFE54B20()
{
  if (!qword_1EDEC1D88)
  {
    sub_1CFE54B80();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1D88);
    }
  }
}

void sub_1CFE54B80()
{
  if (!qword_1EDEC1E98)
  {
    sub_1CFE54AAC(255, &qword_1EDEC1FC8, sub_1CFE54C10, sub_1CFE54CE0);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1E98);
    }
  }
}

void sub_1CFE54C10()
{
  if (!qword_1EDEC2160)
  {
    sub_1CFE54C8C();
    v0 = sub_1CFF0D41C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2160);
    }
  }
}

unint64_t sub_1CFE54C8C()
{
  result = qword_1EDEC1828;
  if (!qword_1EDEC1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1828);
  }

  return result;
}

void sub_1CFE54CE0()
{
  if (!qword_1EDEC1C18)
  {
    sub_1CFE54D3C();
    v0 = sub_1CFF0D8BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1C18);
    }
  }
}

unint64_t sub_1CFE54D3C()
{
  result = qword_1EDEC4890[0];
  if (!qword_1EDEC4890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC4890);
  }

  return result;
}

unint64_t sub_1CFE54D90()
{
  result = qword_1EDEC1CF0;
  if (!qword_1EDEC1CF0)
  {
    sub_1CFE54AAC(255, &qword_1EDEC1CE8, sub_1CFE54B20, sub_1CFE54CE0);
    sub_1CFE54EE4(&qword_1EDEC1D90, sub_1CFE54B20, sub_1CFE54EA8);
    sub_1CFE548D4(&qword_1EDEC1C20, sub_1CFE54CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1CF0);
  }

  return result;
}

uint64_t sub_1CFE54EE4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1CFE54F64()
{
  result = qword_1EDEC1FD0;
  if (!qword_1EDEC1FD0)
  {
    sub_1CFE54AAC(255, &qword_1EDEC1FC8, sub_1CFE54C10, sub_1CFE54CE0);
    sub_1CFE548D4(&qword_1EDEC2168, sub_1CFE54C10);
    sub_1CFE548D4(&qword_1EDEC1C20, sub_1CFE54CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1FD0);
  }

  return result;
}

unint64_t sub_1CFE55074()
{
  result = qword_1EDEC1FF8;
  if (!qword_1EDEC1FF8)
  {
    sub_1CFE54AAC(255, &qword_1EDEC1FF0, sub_1CFE5492C, sub_1CFE54984);
    sub_1CFE548D4(&qword_1EDEC1B00, sub_1CFE5492C);
    sub_1CFE548D4(&qword_1EDEC1B20, sub_1CFE54984);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1FF8);
  }

  return result;
}

void sub_1CFE55184()
{
  if (!qword_1EDEC4D30)
  {
    sub_1CFF0C7AC();
    sub_1CFE548D4(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v0 = sub_1CFF0E79C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4D30);
    }
  }
}

double sub_1CFE55218@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SevenDaySingleMetricChartContent() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_1CFE54308(v4, a1).n128_u64[0];
  return result;
}

void sub_1CFE55298()
{
  if (!qword_1EDEC3EE0[0])
  {
    type metadata accessor for SmoothedLineTrace();
    type metadata accessor for SingleMetricMinorPointMarks();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDEC3EE0);
    }
  }
}

uint64_t sub_1CFE55308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE553CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE5542C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE55494@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = sub_1CFF0E29C();
  v1 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - v5;
  v7 = sub_1CFF0C7AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  sub_1CFF0E28C();
  sub_1CFF0E25C();
  sub_1CFF0E26C();
  v14 = *(v1 + 8);
  v15 = v3;
  v16 = v19[0];
  v14(v15, v19[0]);
  sub_1CFF0E28C();
  v14(v6, v16);
  sub_1CFF0C65C();
  sub_1CFF0C65C();
  sub_1CFF0C64C();
  v17 = *(v8 + 8);
  v17(v10, v7);
  return (v17)(v13, v7);
}

uint64_t type metadata accessor for BalanceWidgetAccessoryCircularSpecs()
{
  result = qword_1EDEC4578;
  if (!qword_1EDEC4578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFE55748()
{
  result = sub_1CFF0E2DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

int *sub_1CFE557BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0E2DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D7BC();
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v7 = result;
    v8 = [result isAppleWatch];

    (*(v3 + 32))(a1, v5, v2);
    result = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
    *(a1 + result[5]) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE558DC()
{
  v0 = sub_1CFEBFD10();
  v2 = 0x656C637269632E35;
  if (v0 != 5)
  {
    v2 = 0;
  }

  if ((v0 - 1) < 4)
  {
    v2 = v0 | 0x656C637269632E30;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CFE55950()
{
  v0 = sub_1CFF0E2DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E2CC();
  v4 = sub_1CFF0E2AC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4 & 1) != 0 || (sub_1CFF0E2BC(), v6 = sub_1CFF0E2AC(), v5(v3, v0), (v6))
  {
    sub_1CFF0DEAC();
  }

  else
  {
    v7 = [objc_opt_self() systemGrayColor];
    sub_1CFF0DE3C();
  }

  v8 = sub_1CFF0DEBC();

  return v8;
}

uint64_t sub_1CFE55AB8(uint64_t a1, unsigned int *a2, void *a3, id *a4, uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v7 = sub_1CFF0E2DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFF0CCEC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *a2, v11, v13);
  v16 = sub_1CFEBFEE8(v15);
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    return sub_1CFE55950();
  }

  sub_1CFF0E2CC();
  v17 = sub_1CFF0E2AC();
  v18 = *(v8 + 8);
  v18(v10, v7);
  if (v17 & 1) != 0 || (sub_1CFF0E2BC(), v19 = sub_1CFF0E2AC(), v18(v10, v7), (v19))
  {
    sub_1CFF0DEAC();
  }

  else
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v21 = *v24;
    sub_1CFF0DE3C();
  }

  v22 = sub_1CFF0DEBC();

  return v22;
}

uint64_t sub_1CFE55D1C()
{
  v0 = sub_1CFF0E2DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E2CC();
  v4 = sub_1CFF0E2AC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return sub_1CFF0DEAC();
  }

  sub_1CFF0E2BC();
  v6 = sub_1CFF0E2AC();
  v5(v3, v0);
  if (v6)
  {
    return sub_1CFF0DEAC();
  }

  v8 = sub_1CFEBFD10();
  if (v9)
  {
    return sub_1CFF0DE9C();
  }

  if (v8 == 1)
  {
    if (qword_1EDEC1688 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDEC1690;
  }

  else if (v8)
  {
    if (qword_1EDEC4A30 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDEC4A38;
  }

  else
  {
    if (qword_1EDEC4A40 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDEC4A48;
  }

  v11 = v10;
  return sub_1CFF0DE3C();
}

uint64_t sub_1CFE55F14()
{
  v0 = sub_1CFF0E2DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E2CC();
  v4 = sub_1CFF0E2AC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return sub_1CFF0DEAC();
  }

  sub_1CFF0E2BC();
  v6 = sub_1CFF0E2AC();
  v5(v3, v0);
  if (v6)
  {
    return sub_1CFF0DEAC();
  }

  v8 = [objc_opt_self() systemGrayColor];
  sub_1CFF0DE3C();
  v9 = sub_1CFF0DEBC();

  return v9;
}

id sub_1CFE56070()
{
  v0 = sub_1CFF0DBEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE594D4(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = [result isAppleWatch];

    if (v9)
    {
      sub_1CFF0DB3C();
      v10 = sub_1CFF0DB2C();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = sub_1CFF0DB5C();
      sub_1CFE58424(v6, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
    }

    else
    {
      (*(v1 + 104))(v3, *MEMORY[0x1E6980F20], v0);
      v12 = sub_1CFF0DB2C();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      sub_1CFF0DB3C();
      v11 = sub_1CFF0DB7C();
      sub_1CFE58424(v6, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
      (*(v1 + 8))(v3, v0);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CFE56318()
{
  v0 = sub_1CFF0DBEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE594D4(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = [result isAppleWatch];

    if (v9)
    {
      sub_1CFF0DB3C();
      v10 = sub_1CFF0DB2C();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = sub_1CFF0DB5C();
      sub_1CFE58424(v6, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
    }

    else
    {
      (*(v1 + 104))(v3, *MEMORY[0x1E6980F38], v0);
      v12 = sub_1CFF0DB2C();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      v11 = sub_1CFF0DB7C();
      sub_1CFE58424(v6, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
      (*(v1 + 8))(v3, v0);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CFE565BC()
{
  sub_1CFE594D4(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    [result isAppleWatch];

    sub_1CFF0DB4C();
    v5 = sub_1CFF0DB2C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = sub_1CFF0DB5C();
    sub_1CFE58424(v2, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CFE56728@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v1 = sub_1CFF0E2DC();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - v4;
  v5 = sub_1CFF0CFFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 systemGrayColor];
  *&v47[0] = sub_1CFF0DE3C();
  v35 = sub_1CFF0D51C();
  v11 = [v9 systemGrayColor];
  sub_1CFF0DE3C();
  v12 = sub_1CFF0DEBC();

  *&v47[0] = v12;
  v34 = sub_1CFF0D51C();
  v13 = [v9 systemGrayColor];
  sub_1CFF0DE3C();
  v14 = sub_1CFF0DEBC();

  *&v47[0] = v14;
  v15 = sub_1CFF0D51C();
  if (qword_1EDEC23B0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EDEC82B8);
  v17 = *(v6 + 16);
  v17(v8, v16, v5);
  sub_1CFF0DEFC();
  v18 = sub_1CFF0DEBC();

  if (qword_1EDEC23A8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_1EDEC82A0);
  v17(v8, v19, v5);
  sub_1CFF0DEFC();
  v20 = sub_1CFF0DEBC();

  sub_1CFF0DEAC();
  v21 = sub_1CFF0DEBC();

  *&v47[0] = sub_1CFF0DE8C();
  v22 = sub_1CFF0D51C();
  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEC4A48;
  v24 = sub_1CFF0DE3C();
  if (qword_1EDEC4A30 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDEC4A38;
  v26 = sub_1CFF0DE3C();
  sub_1CFEA7570(&v47[14] + 8);
  v45 = 1;
  v43 = 1;
  *&v47[0] = v18;
  *(&v47[0] + 1) = v20;
  *&v47[1] = v21;
  BYTE8(v47[1]) = 0;
  *(&v47[1] + 9) = *v42;
  HIDWORD(v47[1]) = *(&v42[1] + 1);
  LOBYTE(v47[2]) = 1;
  *(&v47[2] + 1) = *v46;
  DWORD1(v47[2]) = *&v46[3];
  *(&v47[2] + 1) = v22;
  *&v47[3] = 0;
  BYTE8(v47[3]) = 1;
  *(&v47[3] + 9) = *v44;
  HIDWORD(v47[3]) = *&v44[3];
  *&v47[4] = 0x4014000000000000;
  *(&v47[4] + 1) = v24;
  *&v47[5] = v26;
  *(&v47[5] + 1) = 0x3FE0000000000000;
  *&v47[6] = 0;
  BYTE8(v47[6]) = 1;
  v47[7] = xmmword_1CFF0FC60;
  v47[8] = xmmword_1CFF0FC70;
  v47[9] = xmmword_1CFF0FC80;
  v47[10] = xmmword_1CFF0FC90;
  memset(&v47[11], 0, 24);
  WORD4(v47[12]) = 1;
  HIWORD(v47[12]) = v42[143];
  *(&v47[12] + 10) = *&v42[141];
  *&v47[13] = v35;
  *(&v47[13] + 1) = v34;
  *&v47[14] = v15;
  v28 = v38;
  v27 = v39;
  v29 = v40;
  (*(v39 + 16))(v38, v36, v40);
  v30 = v37;
  sub_1CFF0E2CC();
  sub_1CFE58378();
  LOBYTE(v26) = sub_1CFF0E4CC();
  v31 = *(v27 + 8);
  v31(v30, v29);
  if (v26)
  {
    v31(v28, v29);
    memcpy(v42, v47, 0x118uLL);
    static OvernightMetricsChartSpec.accented(_:)(v42, v41);
    return sub_1CFE583D0(v47);
  }

  sub_1CFF0E2BC();
  v32 = sub_1CFF0E4CC();
  v31(v30, v29);
  v31(v28, v29);
  if (v32)
  {
    memcpy(v42, v47, 0x118uLL);
    static OvernightMetricsChartSpec.vibrant(_:)(v42, v41);
    return sub_1CFE583D0(v47);
  }

  return memcpy(v41, v47, 0x118uLL);
}

void *sub_1CFE56D4C(uint64_t a1)
{
  sub_1CFE594D4(0, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for MultilayerCircularGaugeLayer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = sub_1CFE56FB8(a1);
  v18 = v12;
  sub_1CFE57398(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFE58424(v4, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer);
  }

  else
  {
    sub_1CFE58494(v4, v11);
    sub_1CFE584F8(v11, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1CFE97A28(0, v12[2] + 1, 1, v12);
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1CFE97A28(v13 > 1, v14 + 1, 1, v12);
    }

    sub_1CFE5855C(v11);
    v12[2] = v14 + 1;
    sub_1CFE58494(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
    v18 = v12;
  }

  v15 = sub_1CFE579F8();
  sub_1CFEE0860(v15);
  return v18;
}

uint64_t sub_1CFE56FB8(uint64_t a1)
{
  if (*(v1 + *(type metadata accessor for BalanceWidgetAccessoryCircularSpecs() + 20)))
  {
    v3 = 0.075;
  }

  else
  {
    v3 = 0.05;
  }

  sub_1CFE594D4(0, &qword_1EDEC1608, type metadata accessor for MultilayerCircularGaugeLayer, MEMORY[0x1E69E6F90]);
  v4 = type metadata accessor for MultilayerCircularGaugeLayer();
  v5 = *(*(v4 - 1) + 72);
  v6 = (*(*(v4 - 1) + 80) + 32) & ~*(*(v4 - 1) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CFF0FCA0;
  result = _s15HealthBalanceUI25OvernightMetricsViewModelV11medialRangeSNySdGvg_0();
  v10 = v9 - v3;
  if (v9 - v3 < -1.5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = v7;
  v11 = v7 + v6;
  v31 = a1;
  sub_1CFE55AB8(a1, MEMORY[0x1E69A2EE0], &qword_1EDEC4A30, &qword_1EDEC4A38, sub_1CFEB3174);
  v12 = sub_1CFF0D51C();
  v13 = v4[6];
  v14 = *MEMORY[0x1E6981DF0];
  v15 = sub_1CFF0E15C();
  v16 = *(*(v15 - 8) + 104);
  v16(v11 + v13, v14, v15);
  sub_1CFF0C7BC();
  *v11 = 0xBFF8000000000000;
  *(v11 + 8) = v10;
  *(v11 + 16) = v12;
  *(v11 + v4[7]) = 0x3FF0000000000000;
  *(v11 + v4[8]) = 2;
  v17 = v11 + v4[9];
  *v17 = 0x4000000000000000;
  *(v17 + 8) = 0;
  result = _s15HealthBalanceUI25OvernightMetricsViewModelV11medialRangeSNySdGvg_0();
  v19 = v3 + v18;
  if (v3 + v18 > 1.5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = v11 + v5;
  sub_1CFE55AB8(v31, MEMORY[0x1E69A2EE8], &qword_1EDEC4A30, &qword_1EDEC4A38, sub_1CFEB3174);
  v21 = sub_1CFF0D51C();
  v16(v11 + v5 + v4[6], v14, v15);
  sub_1CFF0C7BC();
  *v20 = v19;
  *(v20 + 8) = 0x3FF8000000000000;
  *(v20 + 16) = v21;
  *(v20 + v4[7]) = 0x3FF0000000000000;
  *(v20 + v4[8]) = 3;
  v22 = v11 + v5 + v4[9];
  *v22 = 0x4000000000000000;
  *(v22 + 8) = 0;
  _s15HealthBalanceUI25OvernightMetricsViewModelV11medialRangeSNySdGvg_0();
  v24 = v3 + v23;
  result = _s15HealthBalanceUI25OvernightMetricsViewModelV11medialRangeSNySdGvg_0();
  v26 = v25 - v3;
  if (v24 <= v26)
  {
    v27 = v11 + 2 * v5;
    sub_1CFE55AB8(v31, MEMORY[0x1E69A2EF0], &qword_1EDEC4A40, &qword_1EDEC4A48, sub_1CFEB2F78);
    v28 = sub_1CFF0D51C();
    v16(v27 + v4[6], v14, v15);
    sub_1CFF0C7BC();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = v28;
    *(v27 + v4[7]) = 0x3FF0000000000000;
    *(v27 + v4[8]) = 1;
    v29 = v27 + v4[9];
    *v29 = 0x4000000000000000;
    *(v29 + 8) = 0;
    return v30;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CFE57398@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0E2DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = COERCE_DOUBLE(sub_1CFEC0200());
  if (v8)
  {
    v9 = type metadata accessor for MultilayerCircularGaugeLayer();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    if (v6 <= 1.5)
    {
      v12 = v6;
    }

    else
    {
      v12 = 1.5;
    }

    if (v6 >= -1.5)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1.5;
    }

    if (v7 >= -1.5)
    {
      v14 = v7;
    }

    else
    {
      v14 = -1.5;
    }

    if (v7 <= 1.5)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1.5;
    }

    _s15HealthBalanceUI25OvernightMetricsViewModelV11medialRangeSNySdGvg_0();
    v17 = v16;
    v19 = v18;
    sub_1CFF0E2CC();
    v20 = sub_1CFF0E2AC();
    v21 = *(v3 + 8);
    v21(v5, v2);
    if (v20 & 1) != 0 || (sub_1CFF0E2BC(), v22 = sub_1CFF0E2AC(), v21(v5, v2), (v22))
    {
      sub_1CFF0DEAC();
    }

    else
    {
      if (qword_1EDEC4A40 != -1)
      {
        swift_once();
      }

      v23 = qword_1EDEC4A48;
      sub_1CFF0DE3C();
    }

    sub_1CFF0E2CC();
    v24 = sub_1CFF0E2AC();
    v21(v5, v2);
    if (v24 & 1) != 0 || (sub_1CFF0E2BC(), v25 = sub_1CFF0E2AC(), v21(v5, v2), (v25))
    {
      sub_1CFF0DEAC();
    }

    else
    {
      if (qword_1EDEC4A30 != -1)
      {
        swift_once();
      }

      v26 = qword_1EDEC4A38;
      sub_1CFF0DE3C();
    }

    if (v13 >= v17)
    {

      v34 = sub_1CFF0E0AC();
      v36 = v39;
      v30 = sub_1CFE9780C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
    }

    else
    {

      v27 = sub_1CFF0E0AC();
      v29 = v28;
      v30 = sub_1CFE9780C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1CFE9780C((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[16 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v29;

      v34 = sub_1CFF0E0AC();
      v36 = v35;
      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
    }

    if (v38 >= v37 >> 1)
    {
      v30 = sub_1CFE9780C((v37 > 1), v38 + 1, 1, v30);
    }

    *(v30 + 2) = v38 + 1;
    v40 = &v30[16 * v38];
    *(v40 + 4) = v34;
    *(v40 + 5) = v36;
    if (v19 < v15)
    {

      v41 = sub_1CFF0E0AC();
      v44 = *(v30 + 2);
      v43 = *(v30 + 3);
      if (v44 >= v43 >> 1)
      {
        v57 = v41;
        v58 = v42;
        v59 = sub_1CFE9780C((v43 > 1), v44 + 1, 1, v30);
        v42 = v58;
        v30 = v59;
        v41 = v57;
      }

      *(v30 + 2) = v44 + 1;
      v45 = &v30[16 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;

      v46 = sub_1CFF0E0AC();
      v49 = *(v30 + 2);
      v48 = *(v30 + 3);
      if (v49 >= v48 >> 1)
      {
        v60 = v46;
        v61 = v47;
        v62 = sub_1CFE9780C((v48 > 1), v49 + 1, 1, v30);
        v47 = v61;
        v30 = v62;
        v46 = v60;
      }

      *(v30 + 2) = v49 + 1;
      v50 = &v30[16 * v49];
      *(v50 + 4) = v46;
      *(v50 + 5) = v47;
    }

    sub_1CFF0E0BC();

    sub_1CFF0E1CC();
    sub_1CFF0D5FC();
    v51 = sub_1CFF0D51C();
    v52 = type metadata accessor for MultilayerCircularGaugeLayer();
    v53 = v52[6];
    v54 = *MEMORY[0x1E6981DF0];
    v55 = sub_1CFF0E15C();
    (*(*(v55 - 8) + 104))(a1 + v53, v54, v55);
    sub_1CFF0C7BC();
    *a1 = v13;
    *(a1 + 8) = v15;
    *(a1 + 16) = v51;
    *(a1 + v52[7]) = 0x3FF0000000000000;
    *(a1 + v52[8]) = 0;
    v56 = a1 + v52[9];
    *v56 = 0;
    *(v56 + 8) = 1;
    return (*(*(v52 - 1) + 56))(a1, 0, 1, v52);
  }
}

uint64_t sub_1CFE579F8()
{
  v1 = sub_1CFF0CCEC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 104))(v5, *MEMORY[0x1E69A2EF0], v1, v3);
  v6 = sub_1CFEC0600(v5);
  (*(v2 + 8))(v5, v1);
  v22 = v0;
  v7 = sub_1CFEDA398(sub_1CFE585B8, v21, v6);

  v8 = sub_1CFE581B4(v7, 0.25);

  v20 = v0;
  v9 = sub_1CFEDA4AC(sub_1CFE585D0, v19, v8);

  v10 = sub_1CFE57BF0();
  v18 = v0;
  v11 = sub_1CFEDA4AC(sub_1CFE58610, v17, v10);

  sub_1CFE58F14(v9);
  v13 = v12;

  sub_1CFE58F14(v11);
  v15 = v14;

  v23 = v13;
  sub_1CFEE0860(v15);
  return v23;
}

uint64_t sub_1CFE57BF0()
{
  v1 = sub_1CFF0CCEC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v2 + 104);
  v6(v5, *MEMORY[0x1E69A2EE0], v1, v3);
  v7 = sub_1CFEC0600(v5);
  v8 = *(v2 + 8);
  v8(v5, v1);
  (v6)(v5, *MEMORY[0x1E69A2EE8], v1);
  v9 = sub_1CFEC0600(v5);
  v8(v5, v1);
  v15 = v7;
  sub_1CFEE0774(v9);
  v14 = v0;
  v10 = sub_1CFEDA398(sub_1CFE595D0, v13, v15);

  v11 = sub_1CFE581B4(v10, 0.25);

  return v11;
}

uint64_t sub_1CFE57DA4@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, id *a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v42 = a5;
  v6 = sub_1CFF0E15C();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFF0E2DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  sub_1CFE594D4(0, &qword_1EDEC1608, type metadata accessor for MultilayerCircularGaugeLayer, MEMORY[0x1E69E6F90]);
  v14 = type metadata accessor for MultilayerCircularGaugeLayer();
  v15 = (*(*(v14 - 1) + 80) + 32) & ~*(*(v14 - 1) + 80);
  v38 = *(*(v14 - 1) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CFF0FCB0;
  sub_1CFF0E2CC();
  v17 = sub_1CFF0E2AC();
  v18 = *(v9 + 8);
  v18(v11, v8);
  if (v17 & 1) != 0 || (sub_1CFF0E2BC(), v19 = sub_1CFF0E2AC(), v18(v11, v8), (v19))
  {
    v20 = sub_1CFF0DEAC();
  }

  else
  {
    if (*v35 != -1)
    {
      swift_once();
    }

    v21 = *v36;
    v20 = sub_1CFF0DE3C();
  }

  v37 = v16;
  v22 = (v16 + v15);
  v43 = v20;
  v23 = sub_1CFF0D51C();
  v25 = v39;
  v24 = v40;
  v26 = *(v40 + 104);
  v27 = v41;
  v26(v39, *MEMORY[0x1E6981DF0], v41);
  sub_1CFF0C7BC();
  *v22 = v12;
  *(v22 + 1) = v13;
  *(v22 + 2) = v23;
  v28 = *(v24 + 32);
  v28(&v22[v14[6]], v25, v27);
  *&v22[v14[7]] = 0x3FF0000000000000;
  v22[v14[8]] = 0;
  v29 = &v22[v14[9]];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v22[v38];
  v43 = sub_1CFF0DE8C();
  v31 = sub_1CFF0D51C();
  v26(v25, *MEMORY[0x1E6981DC0], v27);
  sub_1CFF0C7BC();
  *v30 = v12;
  *(v30 + 1) = v13;
  *(v30 + 2) = v31;
  result = (v28)(&v30[v14[6]], v25, v27);
  *&v30[v14[7]] = 0x3FE0000000000000;
  v30[v14[8]] = 0;
  v33 = &v30[v14[9]];
  *v33 = 0;
  v33[8] = 1;
  *v42 = v37;
  return result;
}

uint64_t sub_1CFE581B4(char *a1, double a2)
{
  v19 = a1;

  sub_1CFE58650(&v19);
  v3 = v19;
  v4 = *(v19 + 2);
  if (v4 < 2)
  {
    return v3;
  }

  v5 = 0;
  v6 = 1;
  while (v5 < v4)
  {
    if (v6 >= v4)
    {
      goto LABEL_23;
    }

    v7 = *&v3[16 * v5 + 32];
    v8 = *&v3[16 * v5 + 40];
    v9 = v8 + a2;
    if (*v7.i64 - a2 > v8 + a2)
    {
      goto LABEL_24;
    }

    v10 = *&v3[16 * v6 + 32];
    if (*v7.i64 - a2 > *v10.i64 || *v10.i64 > v9)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_25;
      }

      ++v5;
      if (v6 >= v4)
      {
        return v3;
      }
    }

    else
    {
      v13.f64[0] = *&v3[16 * v5 + 32];
      v13.f64[1] = *&v3[16 * v6 + 40];
      v14.f64[0] = *&v3[16 * v6 + 32];
      v14.f64[1] = *&v3[16 * v5 + 40];
      v15 = vbslq_s8(vcgtq_f64(v14, v13), v7, v10);
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v15, 1), v15))).u8[0])
      {
        goto LABEL_26;
      }

      v18 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1CFE98100(v3);
      }

      v16 = *(v3 + 2);
      if (v5 >= v16)
      {
        goto LABEL_27;
      }

      *&v3[16 * v5 + 32] = v18;
      if (v6 >= v16)
      {
        goto LABEL_28;
      }

      v4 = v16 - 1;
      memmove(&v3[16 * v6 + 32], &v3[16 * v6 + 48], 16 * (v16 - 1 - v6));
      *(v3 + 2) = v4;
      if (v6 >= v4)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1CFE58378()
{
  result = qword_1EDEC17D8;
  if (!qword_1EDEC17D8)
  {
    sub_1CFF0E2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC17D8);
  }

  return result;
}

uint64_t sub_1CFE58424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFE594D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFE58494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultilayerCircularGaugeLayer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE584F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultilayerCircularGaugeLayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE5855C(uint64_t a1)
{
  v2 = type metadata accessor for MultilayerCircularGaugeLayer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE58650(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CFEF6574(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1CFF0EB8C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1CFE59578();
      v7 = sub_1CFF0E64C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1CFE58798(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1CFE58798(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1CFEF63F0(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1CFE58D10((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CFE975F8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1CFE975F8((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1CFE58D10((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1CFE58D10(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_1CFE58F14(uint64_t a1)
{
  sub_1CFE594D4(0, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - v6;
  v7 = type metadata accessor for MultilayerCircularGaugeLayer();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v54 = 0;
  v10 = 0;
  v47 = *(v11 + 80);
  v49 = v11;
  v50 = (v47 + 32) & ~v47;
  v55 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0] + v50;
  v12 = (v11 + 56);
  v48 = v11 + 48;
LABEL_4:
  v15 = *(a1 + 16);
  if (v10 == v15)
  {
LABEL_36:
    v18 = v51;
    (*v12)(v51, 1, 1, v7, v8);
LABEL_37:
    v41 = v55;

    sub_1CFE58424(v18, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer);
    v42 = v41[3];
    if (v42 < 2)
    {
      return;
    }

    v43 = v42 >> 1;
    v36 = __OFSUB__(v43, v54);
    v44 = v43 - v54;
    if (!v36)
    {
      v41[2] = v44;
      return;
    }
  }

  else
  {
    if (v10 < v15)
    {
      while (1)
      {
        v16 = *(a1 + 32 + 8 * v10);

        if (v16)
        {
          break;
        }

LABEL_9:
        ++v10;
        v17 = *(a1 + 16);
        if (v10 == v17)
        {
          goto LABEL_36;
        }

        if (v10 >= v17)
        {
          goto LABEL_41;
        }
      }

      v13 = *(v16 + 16);
      if (!v13)
      {
        (*v12)(v4, 1, 1, v7);
        sub_1CFE58424(v4, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer);
        goto LABEL_9;
      }

      v14 = 0;
      ++v10;
      while (1)
      {
        v18 = v51;
        if (v14 >= v13)
        {
          goto LABEL_42;
        }

        v19 = v49;
        v20 = *(v49 + 72);
        v56 = v14;
        sub_1CFE584F8(v16 + v50 + v20 * v14, v4);
        (*(v19 + 56))(v4, 0, 1, v7);
        sub_1CFE59440(v4, v18);
        if ((*(v19 + 48))(v18, 1, v7) == 1)
        {
          goto LABEL_37;
        }

        sub_1CFE58494(v18, v52);
        v22 = v54;
        v21 = v55;
        if (!v54)
        {
          break;
        }

LABEL_34:
        v36 = __OFSUB__(v22, 1);
        v37 = v22 - 1;
        if (v36)
        {
          goto LABEL_43;
        }

        v54 = v37;
        ++v56;
        v38 = v21;
        v39 = v20;
        v40 = v53;
        sub_1CFE58494(v52, v53);
        v53 = v40 + v39;
        v55 = v38;
        v13 = *(v16 + 16);
        v14 = v56;
        if (v56 == v13)
        {
          (*v12)(v4, 1, 1, v7);
          sub_1CFE58424(v4, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer);
          goto LABEL_4;
        }
      }

      v23 = v55[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_45;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      sub_1CFE594D4(0, &qword_1EDEC1608, type metadata accessor for MultilayerCircularGaugeLayer, MEMORY[0x1E69E6F90]);
      v26 = v50;
      v54 = v25;
      v21 = swift_allocObject();
      v27 = _swift_stdlib_malloc_size(v21);
      if (!v20)
      {
        goto LABEL_46;
      }

      v28 = v27 - v26;
      if (v27 - v26 == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_47;
      }

      v30 = v26;
      v31 = v28 / v20;
      v32 = v55;
      v21[2] = v54;
      v21[3] = 2 * (v28 / v20);
      v33 = v21 + v26;
      v34 = *(v32 + 24) >> 1;
      v35 = v34 * v20;
      if (!*(v32 + 16))
      {
LABEL_33:
        v53 = v33 + v35;
        v22 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        goto LABEL_34;
      }

      if (v21 < v32 || v33 >= v32 + v30 + v35)
      {
        v53 = v33;
        v54 = v28 / v20;
        v46 = v34 * v20;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v21 == v55)
        {
LABEL_32:
          v55[2] = 0;
          goto LABEL_33;
        }

        v53 = v33;
        v54 = v28 / v20;
        v46 = v34 * v20;
        swift_arrayInitWithTakeBackToFront();
      }

      v35 = v46;
      v33 = v53;
      v31 = v54;
      goto LABEL_32;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_1CFE59440(uint64_t a1, uint64_t a2)
{
  sub_1CFE594D4(0, qword_1EDEC36F8, type metadata accessor for MultilayerCircularGaugeLayer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFE594D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double *sub_1CFE5953C@<X0>(double *result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  if (*result <= 1.5)
  {
    v3 = *result;
  }

  else
  {
    v3 = 1.5;
  }

  v4 = -1.5;
  if (v2 >= -1.5)
  {
    v4 = *result;
  }

  else
  {
    v3 = -1.5;
  }

  if (v2 <= 1.5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.5;
  }

  *a2 = v3;
  a2[1] = v5;
  return result;
}

void sub_1CFE59578()
{
  if (!qword_1EDEC4D70)
  {
    v0 = sub_1CFF0E4AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4D70);
    }
  }
}

uint64_t BalanceMetricsTimeScope.hashValue.getter()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE5968C()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE596D4()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

uint64_t getEnumTagSinglePayload for BalanceMetricsTimeScope(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BalanceMetricsTimeScope(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t BalanceWidgetDataProvider.init(healthStore:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  sub_1CFF0CF4C();
  v4 = a1;
  result = sub_1CFF0CF3C();
  a2[1] = result;
  return result;
}

uint64_t BalanceWidgetDataProvider.loadSummaries(for:isLiveContent:isRetrying:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 481) = a4;
  *(v5 + 480) = a3;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v6 = sub_1CFF0E9EC();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_1CFF0CC5C();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_1CFF0C7AC();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  v9 = sub_1CFF0CC3C();
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();
  sub_1CFE5B7DC();
  *(v5 + 192) = v10;
  *(v5 + 200) = *(v10 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  sub_1CFE5C014();
  *(v5 + 224) = v11;
  *(v5 + 232) = swift_task_alloc();
  v12 = sub_1CFF0CDCC();
  *(v5 + 240) = v12;
  *(v5 + 248) = *(v12 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v13 = sub_1CFF0CEFC();
  *(v5 + 272) = v13;
  *(v5 + 280) = *(v13 - 8);
  *(v5 + 288) = swift_task_alloc();
  v14 = sub_1CFF0CADC();
  *(v5 + 296) = v14;
  *(v5 + 304) = *(v14 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v15 = sub_1CFF0D03C();
  *(v5 + 336) = v15;
  *(v5 + 344) = *(v15 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = *v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFE59D20, 0, 0);
}

uint64_t sub_1CFE59D20()
{
  v65 = v0;
  v1 = *(v0 + 296);
  v2 = (*(v0 + 304) + 16);
  v3 = *(v0 + 88);
  if (*(v0 + 480) == 1)
  {
    v4 = *(v0 + 328);
    sub_1CFF0D01C();
    v62 = *v2;
    (*v2)(v4, v3, v1);
    v5 = sub_1CFF0D02C();
    v6 = sub_1CFF0E7EC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 392);
    v9 = *(v0 + 336);
    v10 = *(v0 + 344);
    v11 = *(v0 + 328);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    if (v7)
    {
      v14 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64 = v60;
      *v14 = 136446466;
      *(v14 + 4) = sub_1CFE462A4(0xD000000000000019, 0x80000001CFF0FD90, &v64);
      *(v14 + 12) = 2082;
      sub_1CFE5C550(&qword_1EDEC4988, MEMORY[0x1E69A2E08]);
      v54 = v9;
      v57 = v8;
      v15 = sub_1CFF0EB9C();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1CFE462A4(v15, v17, &v64);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_1CFE44000, v5, v6, "[%{public}s] beginning query for days: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D387A160](v60, -1, -1);
      MEMORY[0x1D387A160](v14, -1, -1);

      v19 = *(v10 + 8);
      v19(v57, v54);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      v19 = *(v10 + 8);
      v19(v8, v9);
    }

    *(v0 + 416) = 0x80000001CFF0FD90;
    *(v0 + 424) = v19;
    v62(*(v0 + 320), *(v0 + 88), *(v0 + 296));
    sub_1CFF0CEEC();
    v35 = swift_task_alloc();
    *(v0 + 432) = v35;
    *v35 = v0;
    v35[1] = sub_1CFE5A4F8;
    v36 = *(v0 + 400);
    v37 = *(v0 + 264);

    return MEMORY[0x1EEE0D410](v37, v36, 0xD000000000000019, 0x80000001CFF0FD90);
  }

  else
  {
    v20 = *(v0 + 312);
    sub_1CFF0D01C();
    v63 = *v2;
    (*v2)(v20, v3, v1);
    v21 = sub_1CFF0D02C();
    v22 = sub_1CFF0E7EC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 376);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v28 = *(v0 + 304);
    v27 = *(v0 + 312);
    v29 = *(v0 + 296);
    if (v23)
    {
      v61 = *(v0 + 336);
      v30 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v30 = 136446466;
      *(v30 + 4) = sub_1CFE462A4(0xD000000000000019, 0x80000001CFF0FD90, &v64);
      *(v30 + 12) = 2082;
      sub_1CFE5C550(&qword_1EDEC4988, MEMORY[0x1E69A2E08]);
      v31 = sub_1CFF0EB9C();
      v55 = v24;
      v33 = v32;
      (*(v28 + 8))(v27, v29);
      v34 = sub_1CFE462A4(v31, v33, &v64);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_1CFE44000, v21, v22, "[%{public}s] returning fake data for days: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D387A160](v58, -1, -1);
      MEMORY[0x1D387A160](v30, -1, -1);

      (*(v25 + 8))(v55, v61);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v24, v26);
    }

    v38 = *(v0 + 320);
    v39 = *(v0 + 296);
    v53 = *(v0 + 200);
    v56 = *(v0 + 208);
    v59 = *(v0 + 192);
    v40 = *(v0 + 176);
    v41 = *(v0 + 184);
    v42 = *(v0 + 160);
    v52 = *(v0 + 168);
    v43 = *(v0 + 152);
    v51 = *(v0 + 144);
    v45 = *(v0 + 128);
    v44 = *(v0 + 136);
    v49 = *(v0 + 120);
    v50 = *(v0 + 216);
    v46 = *(v0 + 88);
    sub_1CFF0CF1C();
    v63(v38, v46, v39);
    sub_1CFF0CC2C();
    sub_1CFF0CC1C();
    sub_1CFF0C78C();
    sub_1CFF0CC4C();
    sub_1CFF0CF0C();
    (*(v45 + 8))(v44, v49);
    (*(v43 + 8))(v42, v51);
    (*(v40 + 8))(v41, v52);
    v63(v38, v46, v39);
    (*(v53 + 16))(v56, v50, v59);
    swift_getOpaqueTypeConformance2();
    sub_1CFF0E62C();
    sub_1CFF0CD7C();
    (*(v53 + 8))(v50, v59);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1CFE5A4F8()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1CFE5AA20;
  }

  else
  {
    v2 = sub_1CFE5A60C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFE5A60C()
{
  v36 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  sub_1CFF0D01C();
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_1CFF0D02C();
  v6 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[52];
    v28 = v0[42];
    v29 = v0[48];
    v32 = v0[36];
    v33 = v0[53];
    v30 = v0[35];
    v31 = v0[34];
    v8 = v0[31];
    v9 = v0[29];
    v26 = v0[30];
    v25 = v0[32];
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v10 = 136446466;
    *(v10 + 4) = sub_1CFE462A4(0xD000000000000019, v7, &v35);
    *(v10 + 12) = 2082;
    sub_1CFF0CDAC();
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    sub_1CFF0E29C();
    sub_1CFF0EA0C();
    MEMORY[0x1D3879330](3026478, 0xE300000000000000);
    sub_1CFF0EA0C();
    v12 = v0[7];
    v11 = v0[8];
    sub_1CFE5C460(v9);
    (*(v8 + 8))(v25, v26);
    v13 = sub_1CFE462A4(v12, v11, &v35);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_1CFE44000, v5, v6, "[%{public}s] received day summary collection for morning index range: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D387A160](v27, -1, -1);
    MEMORY[0x1D387A160](v10, -1, -1);

    v33(v29, v28);
    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v14 = v0[53];
    v15 = v0[48];
    v16 = v0[42];
    v34 = v0[36];
    v17 = v5;
    v19 = v0[34];
    v18 = v0[35];
    v20 = v0[31];
    v21 = v0[32];
    v22 = v0[30];

    (*(v20 + 8))(v21, v22);
    v14(v15, v16);
    (*(v18 + 8))(v34, v19);
  }

  (*(v0[31] + 32))(v0[10], v0[33], v0[30]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1CFE5AA20()
{
  v44 = v0;
  v1 = *(v0 + 440);
  sub_1CFF0D01C();
  v2 = v1;
  v3 = sub_1CFF0D02C();
  v4 = sub_1CFF0E7CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 416);
    v41 = *(v0 + 368);
    v42 = *(v0 + 424);
    v40 = *(v0 + 336);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1CFE462A4(0xD000000000000019, v5, v43);
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v8 = *(*(v0 + 24) - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = sub_1CFF0E5BC();
    v11 = v10;

    v12 = sub_1CFE462A4(v9, v11, v43);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1CFE44000, v3, v4, "[%{public}s] error while fetching day summaries: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D387A160](v7, -1, -1);
    MEMORY[0x1D387A160](v6, -1, -1);

    v42(v41, v40);
  }

  else
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 368);
    v15 = *(v0 + 336);

    v13(v14, v15);
  }

  if (*(v0 + 481) == 1)
  {
    sub_1CFF0D01C();
    v16 = sub_1CFF0D02C();
    v17 = sub_1CFF0E7CC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 424);
    if (v18)
    {
      v20 = *(v0 + 416);
      v21 = *(v0 + 360);
      v22 = *(v0 + 336);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1CFE462A4(0xD000000000000019, v20, v43);
      _os_log_impl(&dword_1CFE44000, v16, v17, "[%{public}s] already retried once, throwing error", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D387A160](v24, -1, -1);
      MEMORY[0x1D387A160](v23, -1, -1);
    }

    else
    {
      v21 = *(v0 + 360);
      v22 = *(v0 + 336);
    }

    v19(v21, v22);
    v35 = *(v0 + 280);
    v34 = *(v0 + 288);
    v36 = *(v0 + 272);
    swift_willThrow();
    (*(v35 + 8))(v34, v36);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    sub_1CFF0D01C();
    v25 = sub_1CFF0D02C();
    v26 = sub_1CFF0E7EC();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 424);
    if (v27)
    {
      v29 = *(v0 + 416);
      v30 = *(v0 + 352);
      v31 = *(v0 + 336);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1CFE462A4(0xD000000000000019, v29, v43);
      _os_log_impl(&dword_1CFE44000, v25, v26, "[%{public}s] retrying data fetch in 1 sec", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1D387A160](v33, -1, -1);
      MEMORY[0x1D387A160](v32, -1, -1);
    }

    else
    {
      v30 = *(v0 + 352);
      v31 = *(v0 + 336);
    }

    v28(v30, v31);
    sub_1CFF0EC1C();
    v39 = swift_task_alloc();
    *(v0 + 448) = v39;
    *v39 = v0;
    v39[1] = sub_1CFE5B070;

    return sub_1CFE5BB5C(1000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1CFE5B070()
{
  v2 = *v1;
  *(v2 + 456) = v0;

  if (v0)
  {
    (*(*(v2 + 104) + 8))(*(v2 + 112), *(v2 + 96));

    return MEMORY[0x1EEE6DFA0](sub_1CFE5B34C, 0, 0);
  }

  else
  {
    v7 = *(v2 + 400);
    (*(*(v2 + 104) + 8))(*(v2 + 112), *(v2 + 96));
    *(v2 + 40) = v7;
    v3 = swift_task_alloc();
    *(v2 + 464) = v3;
    *v3 = v2;
    v3[1] = sub_1CFE5B238;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);

    return BalanceWidgetDataProvider.loadSummaries(for:isLiveContent:isRetrying:)(v4, v5, 1, 1);
  }
}

uint64_t sub_1CFE5B238()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1CFE5B654;
  }

  else
  {
    v2 = sub_1CFE5B4D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFE5B34C()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CFE5B4D4()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CFE5B654()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1CFE5B7DC()
{
  if (!qword_1EDEC4938)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC4938);
    }
  }
}

id sub_1CFE5B83C()
{
  v0 = sub_1CFF0D03C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = sub_1CFF0E7BC();

    if (v9)
    {
      sub_1CFF0D01C();
      v10 = sub_1CFF0D02C();
      v11 = sub_1CFF0E7EC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_1CFE462A4(0xD000000000000019, 0x80000001CFF0FD90, &v19);
        _os_log_impl(&dword_1CFE44000, v10, v11, "[%{public}s] checking feature status", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1D387A160](v13, -1, -1);
        MEMORY[0x1D387A160](v12, -1, -1);
      }

      (*(v1 + 8))(v6, v0);
      return sub_1CFF0CF2C();
    }

    else
    {
      sub_1CFF0D01C();
      v14 = sub_1CFF0D02C();
      v15 = sub_1CFF0E7EC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_1CFE462A4(0xD000000000000019, 0x80000001CFF0FD90, &v19);
        _os_log_impl(&dword_1CFE44000, v14, v15, "[%{public}s] returning empty feature status", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1D387A160](v17, -1, -1);
        MEMORY[0x1D387A160](v16, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      sub_1CFEB8700(MEMORY[0x1E69E7CC0]);
      return sub_1CFF0CDDC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE5BB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1CFF0E9DC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1CFE5BC5C, 0, 0);
}

uint64_t sub_1CFE5BC5C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1CFF0E9EC();
  v5 = sub_1CFE5C550(&qword_1EC512230, MEMORY[0x1E69E8820]);
  sub_1CFF0EBFC();
  sub_1CFE5C550(&qword_1EC512238, MEMORY[0x1E69E87E8]);
  sub_1CFF0E9FC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1CFE5BDEC;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1CFE5BDEC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFE5BFA8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1CFE5BFA8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CFE5C014()
{
  if (!qword_1EDEC4A58)
  {
    sub_1CFF0E29C();
    sub_1CFE5C550(qword_1EDEC4A88, MEMORY[0x1E696B418]);
    v0 = sub_1CFF0E4AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4A58);
    }
  }
}

uint64_t sub_1CFE5C0A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CFE5C0F4(a1, a2);
  sub_1CFE5C224(&unk_1F4C90748);
  return v3;
}

uint64_t sub_1CFE5C0F4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CFE5C310(v5, 0);
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

  result = sub_1CFF0E9CC();
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
        v10 = sub_1CFF0E60C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CFE5C310(v10, 0);
        result = sub_1CFF0E95C();
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

uint64_t sub_1CFE5C224(uint64_t result)
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

  result = sub_1CFE5C378(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1CFE5C310(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CFE5C598();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CFE5C378(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE5C598();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1CFE5C460(uint64_t a1)
{
  sub_1CFE5C014();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE5C4BC(uint64_t *a1, int a2)
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

uint64_t sub_1CFE5C504(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFE5C550(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFE5C598()
{
  if (!qword_1EDEC15A8)
  {
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC15A8);
    }
  }
}

uint64_t sub_1CFE5C5E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFF0D80C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE5DBD0(0, &qword_1EDEC2138, MEMORY[0x1E6985838], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1CFE5DC34(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CFF0E30C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1CFF0E7DC();
    v13 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    sub_1CFF0D7FC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t WidgetFamily.balanceWidget(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = MEMORY[0x1E697F948];
  sub_1CFE5D224(0, &qword_1EDEC1BD8, MEMORY[0x1E697F948]);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - v4;
  v6 = MEMORY[0x1E697F960];
  sub_1CFE5D224(0, &qword_1EDEC1B90, MEMORY[0x1E697F960]);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = type metadata accessor for BalanceWidgetSystemSmallView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for BalanceWidgetAccessoryRectangularView(0);
  MEMORY[0x1EEE9AC00](v36);
  v33[0] = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE5D9E8(0, &qword_1EDEC1BA0, v2);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  sub_1CFE5D28C(0, &qword_1EDEC1BD0, v2);
  v33[1] = v17;
  MEMORY[0x1EEE9AC00](v17);
  v35 = v33 - v18;
  sub_1CFE5D28C(0, &qword_1EDEC1B80, v6);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v37 = v33 - v21;
  v34 = type metadata accessor for BalanceWidgetAccessoryCircularView(0);
  MEMORY[0x1EEE9AC00](v34);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CFF0E30C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27, v38, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x1E69857E8])
  {
    sub_1CFE5D668(v40, v12, type metadata accessor for BalanceWidgetViewModel);
    *(v12 + *(v10 + 20)) = swift_getKeyPath();
    sub_1CFE5DBD0(0, &qword_1EDEC2158, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D668(v12, v5, type metadata accessor for BalanceWidgetSystemSmallView);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D3F8(qword_1EDEC47E0, type metadata accessor for BalanceWidgetSystemSmallView);
    sub_1CFF0D93C();
    sub_1CFE5D6D0(v9, v16, &qword_1EDEC1B90, sub_1CFE5D224);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D2FC();
    sub_1CFE5D440();
    sub_1CFF0D93C();
    sub_1CFE5D750(v9, &qword_1EDEC1B90, sub_1CFE5D224);
    v29 = type metadata accessor for BalanceWidgetSystemSmallView;
    return sub_1CFE5D7C8(v12, v29);
  }

  v38 = v20;
  if (v28 == *MEMORY[0x1E6985818])
  {
    sub_1CFE5D668(v40, v23, type metadata accessor for BalanceWidgetViewModel);
    *&v23[*(v34 + 20)] = swift_getKeyPath();
    sub_1CFE5DBD0(0, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D668(v23, v35, type metadata accessor for BalanceWidgetAccessoryCircularView);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D3F8(qword_1EDEC4618, type metadata accessor for BalanceWidgetAccessoryCircularView);
    sub_1CFE5D3F8(qword_1EDEC44F0, type metadata accessor for BalanceWidgetAccessoryRectangularView);
    v31 = v37;
    sub_1CFF0D93C();
    sub_1CFE5D6D0(v31, v16, &qword_1EDEC1B80, sub_1CFE5D28C);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D2FC();
    sub_1CFE5D440();
    sub_1CFF0D93C();
    sub_1CFE5D750(v31, &qword_1EDEC1B80, sub_1CFE5D28C);
    return sub_1CFE5D7C8(v23, type metadata accessor for BalanceWidgetAccessoryCircularView);
  }

  else
  {
    if (v28 == *MEMORY[0x1E6985828])
    {
      v12 = v33[0];
      sub_1CFE5D668(v40, v33[0] + *(v36 + 20), type metadata accessor for BalanceWidgetViewModel);
      *v12 = swift_getKeyPath();
      sub_1CFE5DBD0(0, &qword_1EDEC2148, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCB8]);
      swift_storeEnumTagMultiPayload();
      sub_1CFE5D668(v12, v35, type metadata accessor for BalanceWidgetAccessoryRectangularView);
      swift_storeEnumTagMultiPayload();
      sub_1CFE5D3F8(qword_1EDEC4618, type metadata accessor for BalanceWidgetAccessoryCircularView);
      sub_1CFE5D3F8(qword_1EDEC44F0, type metadata accessor for BalanceWidgetAccessoryRectangularView);
      v32 = v37;
      sub_1CFF0D93C();
      sub_1CFE5D6D0(v32, v16, &qword_1EDEC1B80, sub_1CFE5D28C);
      swift_storeEnumTagMultiPayload();
      sub_1CFE5D2FC();
      sub_1CFE5D440();
      sub_1CFF0D93C();
      sub_1CFE5D750(v32, &qword_1EDEC1B80, sub_1CFE5D28C);
      v29 = type metadata accessor for BalanceWidgetAccessoryRectangularView;
      return sub_1CFE5D7C8(v12, v29);
    }

    swift_storeEnumTagMultiPayload();
    sub_1CFE5D3F8(qword_1EDEC47E0, type metadata accessor for BalanceWidgetSystemSmallView);
    sub_1CFF0D93C();
    sub_1CFE5D6D0(v9, v16, &qword_1EDEC1B90, sub_1CFE5D224);
    swift_storeEnumTagMultiPayload();
    sub_1CFE5D2FC();
    sub_1CFE5D440();
    sub_1CFF0D93C();
    sub_1CFE5D750(v9, &qword_1EDEC1B90, sub_1CFE5D224);
    return (*(v25 + 8))(v27, v24);
  }
}

void sub_1CFE5D224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BalanceWidgetSystemSmallView(255);
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1CFE5D28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BalanceWidgetAccessoryCircularView(255);
    v7 = type metadata accessor for BalanceWidgetAccessoryRectangularView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1CFE5D2FC()
{
  result = qword_1EDEC1B88;
  if (!qword_1EDEC1B88)
  {
    sub_1CFE5D28C(255, &qword_1EDEC1B80, MEMORY[0x1E697F960]);
    sub_1CFE5D3F8(qword_1EDEC4618, type metadata accessor for BalanceWidgetAccessoryCircularView);
    sub_1CFE5D3F8(qword_1EDEC44F0, type metadata accessor for BalanceWidgetAccessoryRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B88);
  }

  return result;
}

uint64_t sub_1CFE5D3F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFE5D440()
{
  result = qword_1EDEC1B98;
  if (!qword_1EDEC1B98)
  {
    sub_1CFE5D224(255, &qword_1EDEC1B90, MEMORY[0x1E697F960]);
    sub_1CFE5D3F8(qword_1EDEC47E0, type metadata accessor for BalanceWidgetSystemSmallView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B98);
  }

  return result;
}

uint64_t sub_1CFE5D50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CFF0E30C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE5C5E8(v8);
  WidgetFamily.balanceWidget(for:)(v2 + *(a1 + 20), a2);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CFE5D5F0()
{
  sub_1CFF0D6EC();
  type metadata accessor for BalanceWidgetSystemSmallSpecs();
  sub_1CFF0D6FC();
  return sub_1CFF0D7BC();
}

uint64_t sub_1CFE5D668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE5D6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x1E697F960]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFE5D750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFE5D7C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *sub_1CFE5D828@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0E2DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D7BC();
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v7 = result;
    v8 = [result isAppleWatch];

    (*(v3 + 32))(a1, v5, v2);
    result = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
    *(a1 + result[5]) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1CFE5D94C()
{
  result = qword_1EDEC1B30;
  if (!qword_1EDEC1B30)
  {
    sub_1CFE5D9E8(255, &qword_1EDEC1B28, MEMORY[0x1E697F960]);
    sub_1CFE5D2FC();
    sub_1CFE5D440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B30);
  }

  return result;
}

void sub_1CFE5D9E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E697F960];
    sub_1CFE5D28C(255, &qword_1EDEC1B80, MEMORY[0x1E697F960]);
    v8 = v7;
    sub_1CFE5D224(255, &qword_1EDEC1B90, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata accessor for BalanceWidgetEntryView()
{
  result = qword_1EDEC4918;
  if (!qword_1EDEC4918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE5DB00()
{
  sub_1CFE5DBD0(319, &qword_1EDEC2108, MEMORY[0x1E6985838], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BalanceWidgetTimelineEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFE5DBD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE5DC34(uint64_t a1, uint64_t a2)
{
  sub_1CFE5DBD0(0, &qword_1EDEC2138, MEMORY[0x1E6985838], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE5DD2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v49 = sub_1CFF0DA3C();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = MEMORY[0x1E6968FB0];
  v46 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E69E6720];
  sub_1CFE5E930(0, &qword_1EDEC49B0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = v36 - v5;
  v6 = type metadata accessor for BalanceWidgetAccessoryRectangularSpecs();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE609B8(0, &qword_1EDEC1F08, sub_1CFE5E994, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - v11;
  sub_1CFE5EB78();
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1E69856A0];
  sub_1CFE602E0(0, &qword_1EDEC1A18, sub_1CFE5EB78, sub_1CFE5EC04);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v40 = v36 - v18;
  *v12 = sub_1CFF0D8EC();
  *(v12 + 1) = 0x400C000000000000;
  v12[16] = 0;
  sub_1CFE5EDE4();
  sub_1CFE5E3A4(v1, &v12[*(v19 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_1CFE5E708(v8);
  type metadata accessor for BalanceWidgetAccessoryRectangularView(0);
  sub_1CFE7EE90(v52);
  v37 = type metadata accessor for BalanceWidgetAccessoryRectangularSpecs;
  sub_1CFE5EF0C(v8, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs);
  v53[0] = KeyPath;
  memcpy(&v53[1], v52, 0x118uLL);
  memcpy(&v12[*(v10 + 44)], v53, 0x120uLL);
  v54 = KeyPath;
  memcpy(v55, v52, sizeof(v55));
  v21 = MEMORY[0x1E6980A08];
  sub_1CFE5FD44(v53, v51, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08], sub_1CFE60A50);
  sub_1CFE60CF0(&v54, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, v21, sub_1CFE60A50);
  sub_1CFF0E0CC();
  sub_1CFF0D6BC();
  sub_1CFE5EE7C(v12, v15);
  v22 = v38;
  v23 = &v15[*(v38 + 36)];
  v24 = v51[5];
  *(v23 + 4) = v51[4];
  *(v23 + 5) = v24;
  *(v23 + 6) = v51[6];
  v25 = v51[1];
  *v23 = v51[0];
  *(v23 + 1) = v25;
  v26 = v51[3];
  *(v23 + 2) = v51[2];
  *(v23 + 3) = v26;
  v36[1] = v2;
  sub_1CFE5E708(v8);
  LODWORD(v21) = *v8;
  sub_1CFE5EF0C(v8, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs);
  v27 = v39;
  sub_1CFEC09A8(v21 == 2, v39);
  v28 = sub_1CFF0C63C();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = sub_1CFE5EC04();
  v30 = v40;
  v31 = v22;
  sub_1CFF0DD0C();
  sub_1CFE60CF0(v27, &qword_1EDEC49B0, v45, v44, sub_1CFE5E930);
  sub_1CFE5EF0C(v15, sub_1CFE5EB78);
  sub_1CFE5E708(v8);
  sub_1CFE7F554();
  v32 = sub_1CFF0DEDC();

  sub_1CFE5EF0C(v8, v37);
  v50 = v32;
  v33 = v46;
  sub_1CFF0DA2C();
  v52[0] = v31;
  v52[1] = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_1CFF0DDAC();
  (*(v47 + 8))(v33, v49);

  return (*(v43 + 8))(v30, v34);
}

uint64_t sub_1CFE5E3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for OvernightMetricsViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OvernightMetricsChart(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for BalanceWidgetAccessoryRectangularTitleView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v22 - v16);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = a1 + *(type metadata accessor for BalanceWidgetAccessoryRectangularView(0) + 20);
  sub_1CFE5FDB8(v18, v17 + *(v12 + 20), type metadata accessor for BalanceWidgetViewModel);
  *v17 = swift_getKeyPath();
  sub_1CFE5E930(0, &qword_1EDEC2148, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v23 = *(v18 + *(type metadata accessor for BalanceWidgetViewModel() + 24));
  sub_1CFE5FDB8(v18, v5, type metadata accessor for OvernightMetricsViewModel);
  OvernightMetricsChart.init(timeScope:model:alignWarmupProgressCounterToChartPlotArea:)(&v23, v5, 0, v11);
  sub_1CFE5FDB8(v17, v14, type metadata accessor for BalanceWidgetAccessoryRectangularTitleView);
  sub_1CFE5FDB8(v11, v8, type metadata accessor for OvernightMetricsChart);
  v19 = v22;
  sub_1CFE5FDB8(v14, v22, type metadata accessor for BalanceWidgetAccessoryRectangularTitleView);
  sub_1CFE5EA28();
  sub_1CFE5FDB8(v8, v19 + *(v20 + 48), type metadata accessor for OvernightMetricsChart);
  sub_1CFE5EF0C(v11, type metadata accessor for OvernightMetricsChart);
  sub_1CFE5EF0C(v17, type metadata accessor for BalanceWidgetAccessoryRectangularTitleView);
  sub_1CFE5EF0C(v8, type metadata accessor for OvernightMetricsChart);
  sub_1CFE5EF0C(v14, type metadata accessor for BalanceWidgetAccessoryRectangularTitleView);
}

uint64_t sub_1CFE5E708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFF0D80C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1CFE5E930(0, &qword_1EDEC2148, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1CFE5FD44(v2, &v14 - v10, &qword_1EDEC2148, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, v8, sub_1CFE5E930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFE60B3C(v11, a1, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs);
  }

  sub_1CFF0E7DC();
  v13 = sub_1CFF0DA6C();
  sub_1CFF0D00C();

  sub_1CFF0D7FC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1CFE5E930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFE5E994()
{
  if (!qword_1EDEC19A8)
  {
    sub_1CFE5E930(255, &qword_1EDEC1818, sub_1CFE5EA28, MEMORY[0x1E6981F40]);
    sub_1CFE5EAF0();
    v0 = sub_1CFF0DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC19A8);
    }
  }
}

void sub_1CFE5EA28()
{
  if (!qword_1EDEC40C8[0])
  {
    type metadata accessor for BalanceWidgetAccessoryRectangularTitleView(255);
    type metadata accessor for OvernightMetricsChart(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDEC40C8);
    }
  }
}

uint64_t sub_1CFE5EAB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CFE5EAF0()
{
  result = qword_1EDEC1820;
  if (!qword_1EDEC1820)
  {
    sub_1CFE5E930(255, &qword_1EDEC1818, sub_1CFE5EA28, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1820);
  }

  return result;
}

void sub_1CFE5EB78()
{
  if (!qword_1EDEC1DD8)
  {
    sub_1CFE609B8(255, &qword_1EDEC1F08, sub_1CFE5E994, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1DD8);
    }
  }
}

unint64_t sub_1CFE5EC04()
{
  result = qword_1EDEC1DE0;
  if (!qword_1EDEC1DE0)
  {
    sub_1CFE5EB78();
    sub_1CFE5EC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1DE0);
  }

  return result;
}

unint64_t sub_1CFE5EC84()
{
  result = qword_1EDEC1F10;
  if (!qword_1EDEC1F10)
  {
    sub_1CFE609B8(255, &qword_1EDEC1F08, sub_1CFE5E994, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
    sub_1CFE60594(&qword_1EDEC19B0, sub_1CFE5E994);
    sub_1CFE5ED80(&qword_1EDEC1AC0, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F10);
  }

  return result;
}

uint64_t sub_1CFE5ED80(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE60A50(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFE5EDE4()
{
  if (!qword_1EDEC20B0)
  {
    sub_1CFE5E930(255, &qword_1EDEC1818, sub_1CFE5EA28, MEMORY[0x1E6981F40]);
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC20B0);
    }
  }
}

uint64_t sub_1CFE5EE7C(uint64_t a1, uint64_t a2)
{
  sub_1CFE609B8(0, &qword_1EDEC1F08, sub_1CFE5E994, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE5EF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFE5EF6C(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_1CFE60164();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE60684();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE60718();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE60778(0);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_1CFF0D84C();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE60A50(0, &qword_1EDEC15F8, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFF0FCB0;
  v15 = sub_1CFF0DA7C();
  *(inited + 32) = v15;
  v16 = sub_1CFF0DA9C();
  *(inited + 33) = v16;
  v17 = sub_1CFF0DA8C();
  sub_1CFF0DA8C();
  if (sub_1CFF0DA8C() != v15)
  {
    v17 = sub_1CFF0DA8C();
  }

  sub_1CFF0DA8C();
  if (sub_1CFF0DA8C() != v16)
  {
    v17 = sub_1CFF0DA8C();
  }

  sub_1CFE60828();
  v19 = *(v18 + 44);
  *v3 = v17;
  sub_1CFE60890();
  sub_1CFE5F3AC(v31[1]);
  sub_1CFE60950(v3, &v6[v19], sub_1CFE60164);

  sub_1CFF0E0FC();
  sub_1CFF0D6BC();
  sub_1CFE60950(v6, v10, sub_1CFE60684);
  v20 = &v10[*(v8 + 36)];
  v21 = v39;
  *(v20 + 4) = v38;
  *(v20 + 5) = v21;
  *(v20 + 6) = v40;
  v22 = v35;
  *v20 = v34;
  *(v20 + 1) = v22;
  v23 = v37;
  *(v20 + 2) = v36;
  *(v20 + 3) = v23;
  KeyPath = swift_getKeyPath();
  sub_1CFE60950(v10, v13, sub_1CFE60718);
  v25 = &v13[*(v32 + 36)];
  *v25 = KeyPath;
  *(v25 + 1) = 1;
  v25[16] = 0;
  v26 = swift_getKeyPath();
  v27 = v13;
  v28 = v33;
  sub_1CFE60950(v27, v33, sub_1CFE60778);
  sub_1CFE609B8(0, &qword_1EDEC1D18, sub_1CFE60778, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
  v30 = v28 + *(v29 + 36);
  *v30 = v26;
  *(v30 + 8) = 1;
}

uint64_t sub_1CFE5F3AC(uint64_t a1)
{
  v2 = type metadata accessor for BalanceWidgetAccessoryRectangularTitleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1CFEC0DF8();
  v13[0] = MEMORY[0x1E69E7CD0];
  v6 = sub_1CFEFDCC0(v5);

  v13[2] = v6;
  swift_getKeyPath();
  sub_1CFE5FDB8(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalanceWidgetAccessoryRectangularTitleView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1CFE60B3C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for BalanceWidgetAccessoryRectangularTitleView);
  sub_1CFE60A50(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFE602E0(0, &qword_1EDEC1A30, sub_1CFE6036C, sub_1CFE6046C);
  sub_1CFE60C88(&qword_1EDEC1708);
  sub_1CFE6036C(255);
  v10 = v9;
  v11 = sub_1CFE6046C();
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1CFF0E06C();
}

uint64_t sub_1CFE5F698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  sub_1CFE5E930(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_1CFF0DB1C();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BalanceWidgetAccessoryRectangularSpecs();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  sub_1CFE6036C(0);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  sub_1CFF0E6DC();
  v47 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v58 = v19;
  *(&v58 + 1) = v18;
  sub_1CFE60C24();

  v20 = sub_1CFF0DC6C();
  v22 = v21;
  v24 = v23;
  v51 = a2;
  sub_1CFE5E708(v15);
  if (*v15)
  {
    sub_1CFF0DBAC();
  }

  else
  {
    sub_1CFF0DB0C();
    v25 = *MEMORY[0x1E6980E28];
    v26 = sub_1CFF0DB2C();
    v45 = v8;
    v27 = v26;
    v28 = *(v26 - 8);
    (*(v28 + 104))(v7, v25, v26);
    (*(v28 + 56))(v7, 0, 1, v27);
    sub_1CFF0DB6C();
    sub_1CFE60CF0(v7, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1CFE5E930);
    (*(v46 + 8))(v10, v45);
    sub_1CFF0DB4C();
    sub_1CFF0DB8C();
  }

  sub_1CFE5EF0C(v15, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs);
  v29 = sub_1CFF0DC3C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1CFE60C78(v20, v22, v24 & 1);

  v36 = sub_1CFF0DADC();
  sub_1CFF0D40C();
  v65 = v33 & 1;
  v62 = 0;
  *&v58 = v29;
  *(&v58 + 1) = v31;
  LOBYTE(v59) = v33 & 1;
  *(&v59 + 1) = *v64;
  DWORD1(v59) = *&v64[3];
  *(&v59 + 1) = v35;
  LOBYTE(v60) = v36;
  DWORD1(v60) = *&v63[3];
  *(&v60 + 1) = *v63;
  *(&v60 + 1) = v37;
  *v61 = v38;
  *&v61[8] = v39;
  *&v61[16] = v40;
  v61[24] = 0;
  v56 = v60;
  v57[0] = *v61;
  *(v57 + 9) = *&v61[9];
  v55 = v59;
  v54 = v58;
  v53 = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C907B0);
  sub_1CFE60A50(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFE60C88(&qword_1EDEC1710);
  sub_1CFF0E47C();

  sub_1CFE60414();
  sub_1CFE6051C();
  v41 = v48;
  sub_1CFF0DDCC();
  swift_arrayDestroy();
  sub_1CFE5EF0C(&v58, sub_1CFE60414);

  v42 = v50;
  sub_1CFE5E708(v50);
  type metadata accessor for BalanceWidgetAccessoryRectangularTitleView(0);
  sub_1CFEBFD10();
  sub_1CFE5EF0C(v42, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs);
  sub_1CFE6046C();
  sub_1CFF0DCFC();
  sub_1CFE5EF0C(v41, sub_1CFE6036C);
}

uint64_t sub_1CFE5FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1CFE5FDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE5E930(0, &qword_1EDEC2120, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for BalanceWidgetViewModel();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFE5E930(0, &qword_1EDEC2120, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for BalanceWidgetViewModel();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1CFE60094()
{
  sub_1CFE5E930(319, &qword_1EDEC2120, type metadata accessor for BalanceWidgetAccessoryRectangularSpecs, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BalanceWidgetViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFE60164()
{
  if (!qword_1EDEC20F0)
  {
    sub_1CFE601C8();
    sub_1CFE605DC();
    v0 = sub_1CFF0D4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC20F0);
    }
  }
}

void sub_1CFE601C8()
{
  if (!qword_1EDEC1830)
  {
    sub_1CFE60A50(255, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1CFE602E0(255, &qword_1EDEC1A30, sub_1CFE6036C, sub_1CFE6046C);
    sub_1CFE60C88(&qword_1EDEC1708);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1830);
    }
  }
}

void sub_1CFE602E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1CFE603A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1CFF0D62C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1CFE60414()
{
  if (!qword_1EDEC1FB8)
  {
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1FB8);
    }
  }
}

unint64_t sub_1CFE6046C()
{
  result = qword_1EDEC1E90;
  if (!qword_1EDEC1E90)
  {
    sub_1CFE6036C(255);
    sub_1CFE6051C();
    sub_1CFE60594(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E90);
  }

  return result;
}

unint64_t sub_1CFE6051C()
{
  result = qword_1EDEC1FC0;
  if (!qword_1EDEC1FC0)
  {
    sub_1CFE60414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1FC0);
  }

  return result;
}

uint64_t sub_1CFE60594(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFE605DC()
{
  result = qword_1EDEC1838;
  if (!qword_1EDEC1838)
  {
    sub_1CFE601C8();
    sub_1CFE6036C(255);
    sub_1CFE6046C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1838);
  }

  return result;
}