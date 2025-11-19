uint64_t sub_1C3C9ACF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  sub_1C3C9AC90(0, &qword_1EC086BB8, sub_1C3C99D30, MEMORY[0x1E697DCC0]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  sub_1C3C9AC90(0, &qword_1EC086BB8, sub_1C3C99D30, MEMORY[0x1E697DCC0]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1C3C9AF18()
{
  sub_1C3C9AC90(319, &qword_1EC086BB8, sub_1C3C99D30, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA01_c9Modifier_L0Vy06HealthB0010OnboardinglE0VG_Qo_HOTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1C3C9A4F0(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06HealthB0010OnboardingE7MarginsVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1C3D1F1A4();
  sub_1C3C9A4F0(a3, a4);
  return swift_getWitnessTable();
}

uint64_t sub_1C3C9B0D4(uint64_t a1, uint64_t a2)
{
  sub_1C3C9AC90(0, &qword_1EC086BB0, sub_1C3C99D30, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C9B190(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C3C23C4C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C3C23C4C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C3C233B8(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1C3C9B2A0(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1C3D20964();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1C3C23C4C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1C692FEB0](i, a1);
        sub_1C3C27CB4(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1C3C23C4C((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1C3C233B8(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1C3C27CB4(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1C3C23C4C((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1C3C233B8(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

id sub_1C3C9B4F0(uint64_t a1)
{
  v2 = sub_1C3D1E1E4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *(a1 + OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData) + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregationIntervalMidpoint, v2, v3);
  v6 = sub_1C3D20A84();

  return v6;
}

void sub_1C3C9B5E4(uint64_t a1@<X8>)
{
  v3 = [*(*(v1 + OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData) + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary) overallMetrics];
  if (v3 && (v4 = v3, v5 = [v3 averageSensitivity], v4, v5))
  {
    v6 = [objc_opt_self() decibelHearingLevelUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    *(a1 + 24) = MEMORY[0x1E69E63B0];
    *a1 = -v8;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1C3C9B960()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData);
  v2 = OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary;
  v3 = [*(v1 + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary) leftEarMetrics];
  v4 = [v3 averageSensitivity];

  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v7 = [objc_opt_self() decibelHearingLevelUnit];
    [v4 doubleValueForUnit_];
    v6 = v8;
  }

  v9 = [*(v1 + v2) rightEarMetrics];
  v10 = [v9 averageSensitivity];

  if (v10)
  {
    v11 = [objc_opt_self() decibelHearingLevelUnit];
    [v10 doubleValueForUnit_];
    v5 = v12;
  }

  sub_1C3C9C7E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5DCD0;
  *(inited + 32) = v6;
  *(inited + 40) = v4 == 0;
  *(inited + 48) = v5;
  *(inited + 56) = v10 == 0;
  if (!v4)
  {
    v14 = MEMORY[0x1E69E7CC0];

    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v14 = sub_1C3C467D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1C3C467D0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  *&v14[8 * v16 + 32] = -v6;

  if (v10)
  {
LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1C3C467D0(0, *(v14 + 2) + 1, 1, v14);
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      v14 = sub_1C3C467D0((v17 > 1), v18 + 1, 1, v14);
    }

    *(v14 + 2) = v18 + 1;
    *&v14[8 * v18 + 32] = -v5;
  }

LABEL_16:
  v19 = sub_1C3C9B190(v14);

  return v19;
}

uint64_t sub_1C3C9BC5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData);
  v2 = OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary;
  v3 = [*(v1 + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary) leftEarMetrics];
  v4 = [v3 averageSensitivity];

  v5 = [*(v1 + v2) rightEarMetrics];
  v6 = [v5 averageSensitivity];

  if (!v4)
  {
    if (!v6)
    {
      return 0;
    }

    v16 = [objc_opt_self() decibelHearingLevelUnit];
    [v6 doubleValueForUnit_];
    v10 = v17;

    return *&v10;
  }

  v7 = objc_opt_self();
  v8 = [v7 decibelHearingLevelUnit];
  [v4 doubleValueForUnit_];
  v10 = v9;
  if (!v6)
  {

    return *&v10;
  }

  v11 = [v7 decibelHearingLevelUnit];
  [v6 doubleValueForUnit_];
  v13 = v12;

  if (v10 > v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  return *&v14;
}

uint64_t sub_1C3C9BE2C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData);
  v2 = OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary;
  v3 = [*(v1 + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary) leftEarMetrics];
  v4 = [v3 averageSensitivity];

  v5 = [*(v1 + v2) rightEarMetrics];
  v6 = [v5 averageSensitivity];

  if (!v4)
  {
    if (!v6)
    {
      return 0;
    }

    v16 = [objc_opt_self() decibelHearingLevelUnit];
    [v6 doubleValueForUnit_];
    v10 = v17;

    return *&v10;
  }

  v7 = objc_opt_self();
  v8 = [v7 decibelHearingLevelUnit];
  [v4 doubleValueForUnit_];
  v10 = v9;
  if (!v6)
  {

    return *&v10;
  }

  v11 = [v7 decibelHearingLevelUnit];
  [v6 doubleValueForUnit_];
  v13 = v12;

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  return *&v14;
}

id sub_1C3C9BFFC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  if (v6)
  {
    sub_1C3C9B5E4(v15);

    v7 = v16;
    if (!v16)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E63B0];
    v16 = MEMORY[0x1E69E63B0];
    v15[0] = v5 ^ 0x8000000000000000;
  }

  v9 = __swift_project_boxed_opaque_existential_0(v15, v7);
  v10 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  v8 = sub_1C3D20A44();
  (*(v10 + 8))(v13, v7);
  __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_6:

  return v8;
}

char *sub_1C3C9C170(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C3D1E1E4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = *(v3 + OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData);
  (*(v10 + 16))(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &v9[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregationIntervalMidpoint], v6, v7);
  v11 = &selRef_chartDataRangeForTimeScope_dataRange_firstWeekday_calendar_cadence_alignment_;
  [a1 coordinateForValue_];
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary;
  v15 = v9;
  v16 = [*&v9[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary] leftEarMetrics];
  v17 = [v16 averageSensitivity];

  v18 = &selRef_dateIntervalsByValuesCount;
  if (v17)
  {
    v19 = [objc_opt_self() decibelHearingLevelUnit];
    [v17 doubleValueForUnit_];

    v20 = sub_1C3D1E804();
    v21 = a2;
    [a2 coordinateForValue_];
    v23 = v22;

    type metadata accessor for AudiogramLongitudinalLineSeriesPresentationStyle();
    *(swift_initStackObject() + 16) = 1;
    v24 = sub_1C3C6859C();
    v25 = sub_1C3C46B58(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1C3C46B58((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[40 * v27];
    *(v28 + 4) = 0x6C6156597466656CLL;
    *(v28 + 5) = 0xEA00000000006575;
    *(v28 + 6) = v13;
    *(v28 + 7) = -v23;
    *(v28 + 8) = v24;
    v11 = &selRef_chartDataRangeForTimeScope_dataRange_firstWeekday_calendar_cadence_alignment_;
    v18 = &selRef_dateIntervalsByValuesCount;
  }

  else
  {
    v21 = a2;
    v25 = MEMORY[0x1E69E7CC0];
  }

  v29 = [*&v15[v14] rightEarMetrics];
  v30 = [v29 averageSensitivity];

  if (v30)
  {
    v31 = [objc_opt_self() decibelHearingLevelUnit];
    [v30 v18[277]];

    v32 = sub_1C3D1E804();
    [v21 v11[313]];
    v34 = v33;

    type metadata accessor for AudiogramLongitudinalLineSeriesPresentationStyle();
    *(swift_initStackObject() + 16) = 2;
    v35 = sub_1C3C6859C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1C3C46B58(0, *(v25 + 2) + 1, 1, v25);
    }

    v37 = *(v25 + 2);
    v36 = *(v25 + 3);
    if (v37 >= v36 >> 1)
    {
      v25 = sub_1C3C46B58((v36 > 1), v37 + 1, 1, v25);
    }

    *(v25 + 2) = v37 + 1;
    v38 = &v25[40 * v37];
    *(v38 + 4) = 0x6156597468676972;
    *(v38 + 5) = 0xEB0000000065756CLL;
    *(v38 + 6) = v13;
    *(v38 + 7) = -v34;
    *(v38 + 8) = v35;
  }

  else if (!*(v25 + 2))
  {

    return 0;
  }

  v39 = sub_1C3C9BC5C(v3);
  if ((v40 & 1) == 0)
  {
    v53 = MEMORY[0x1E69E63B0];
    *&v52 = v39 ^ 0x8000000000000000;
LABEL_17:
    sub_1C3C233B8(&v52, &v54);
    v41 = sub_1C3C9BE2C(v3);
    if (v42)
    {
      sub_1C3C9B5E4(&v50);
      if (!v51)
      {
        __swift_destroy_boxed_opaque_existential_0(&v54);

        sub_1C396C69C(&v50);
        return 0;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E63B0];
      *&v50 = v41 ^ 0x8000000000000000;
    }

    sub_1C3C233B8(&v50, &v52);
    __swift_project_boxed_opaque_existential_0(&v54, v55);
    [v21 v11[313]];
    v44 = v43;
    swift_unknownObjectRelease();
    *&v50 = *__swift_project_boxed_opaque_existential_0(&v52, v53);
    [v21 v11[313]];
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = sub_1C3C9C6F0(v25, v15, v44, v46);
    __swift_destroy_boxed_opaque_existential_0(&v52);
    __swift_destroy_boxed_opaque_existential_0(&v54);
    return v47;
  }

  sub_1C3C9B5E4(&v52);
  if (v53)
  {
    goto LABEL_17;
  }

  sub_1C396C69C(&v52);
  return 0;
}

char *sub_1C3C9C6F0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for HKMultiLineSeriesBlockCoordinate();
  result = objc_allocWithZone(v8);
  *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_coordinates] = a1;
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(a1 + 48);
    v11 = (a1 + 48);
    v13 = v12;
    v14 = v12;
    do
    {
      v15 = *v11;
      v11 += 5;
      v16 = v15;
      if (v15 < v14)
      {
        v14 = v16;
      }

      if (v13 <= v16)
      {
        v13 = v16;
      }

      --v10;
    }

    while (v10);
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_minYValue] = a3;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_maxYValue] = a4;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_startXValue] = v14;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_endXValue] = v13;
    *&result[OBJC_IVAR____TtC8HealthUI32HKMultiLineSeriesBlockCoordinate_userInfo] = a2;
    v17.receiver = result;
    v17.super_class = v8;
    return objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3C9C7E8()
{
  if (!qword_1EC086BE8)
  {
    sub_1C3C6EAF0(255, &qword_1EC086BF0);
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086BE8);
    }
  }
}

id InternalSettingsTapGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C3D20A44();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id InternalSettingsTapGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s8HealthUI36InternalSettingsTapGestureRecognizerC07gestureG0_13shouldReceiveSbSo09UIGestureG0C_So7UITouchCtF_0(void *a1, id a2)
{
  v4 = [a2 view];
  v5 = [a1 view];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    v6 = v4;
LABEL_8:

    goto LABEL_9;
  }

  sub_1C3C9CBCC();
  v7 = sub_1C3D206B4();

  if (v7)
  {
    return 1;
  }

LABEL_9:
  v8 = [a2 view];
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass() == 0;

  return v10;
}

unint64_t sub_1C3C9CBCC()
{
  result = qword_1EC080DE0;
  if (!qword_1EC080DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC080DE0);
  }

  return result;
}

uint64_t DefaultFeatureRegulatoryInfoTransformProvider.featureRegulatoryInfoTransform(onboardingRecord:pairedDeviceFeatureAttributesProvider:reenableActionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_1C3C9D2EC(0, &qword_1EC086470, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - v11;
  sub_1C3C9D2EC(0, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  v68 = *(v18 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v18;
  v54 = a3;
  v55 = v12;
  if (!v19)
  {
    goto LABEL_6;
  }

  v23 = [v19 onboardingState];
  if ((v23 - 3) >= 2)
  {
    if (v23 != 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v24 = (*(*v5 + 104))(v20);
    v66 = 0;
    v25 = v24 ^ 1;
    goto LABEL_9;
  }

  sub_1C3C9D3AC(a3, v17);
  if ((*(v68 + 48))(v17, 1, v18) == 1)
  {
    sub_1C3C9D42C(v17);
LABEL_7:
    v66 = 0;
LABEL_8:
    v25 = 1;
    goto LABEL_9;
  }

  sub_1C3C9D4A4(v17, v22);
  if (v22[*(v18 + 32)] == 1)
  {
    v51 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    v66 = (*(v51 + 24))(ObjectType, v51);
    sub_1C3C9D508(v22);
    goto LABEL_8;
  }

  sub_1C3C9D508(v22);
  v25 = 1;
  v66 = 1;
LABEL_9:
  v26 = PairedDeviceFeatureAttributesProvider.pairedDeviceAttributes.getter(v70);
  v28 = v70[0];
  v27 = v70[1];
  v29 = v70[2];
  v30 = v70[3];
  v32 = v70[4];
  v31 = v70[5];
  v33 = (*(*v5 + 80))(v26);
  v64 = v34;
  v65 = v33;
  v35 = (*(*v5 + 88))();
  v62 = v36;
  v63 = v35;
  if (v25)
  {
    sub_1C3C54F58(v28, v27, v29);
    sub_1C3C54F58(v30, v32, v31);
    v60 = v27;
    v61 = v28;
    v56 = v29;
    v57 = v31;
    v58 = v32;
    v59 = v30;
    if ((v66 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v37 = sub_1C3C9D3AC(v54, v69);
    v66 = v25;
    if ((v25 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v39 = v55;
    (*(*v5 + 96))(v37);
    sub_1C3C54FE4(v28, v27, v29);
    sub_1C3C54FE4(v30, v32, v31);
    goto LABEL_16;
  }

  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 1;
  v57 = 0;
  if (v66)
  {
    goto LABEL_14;
  }

LABEL_11:
  v37 = (*(v68 + 56))(v69, 1, 1, v67);
  v66 = v25;
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1C3C54FE4(v28, v27, v29);
  sub_1C3C54FE4(v30, v32, v31);
  v38 = sub_1C3D1E064();
  v39 = v55;
  (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
LABEL_16:
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  v40 = type metadata accessor for FeatureRegulatoryInfo(0);
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 56) = 0;
  v41 = *(v40 + 32);
  (*(v68 + 56))(a4 + v41, 1, 1, v67);
  v42 = *(v40 + 36);
  v43 = sub_1C3D1E064();
  (*(*(v43 - 8) + 56))(a4 + v42, 1, 1, v43);
  v44 = v64;
  *a4 = v65;
  *(a4 + 8) = v44;
  v45 = v62;
  *(a4 + 16) = v63;
  *(a4 + 24) = v45;
  sub_1C3C6E5BC(*(a4 + 32), *(a4 + 40), *(a4 + 48), *(a4 + 56), *(a4 + 64), *(a4 + 72));
  v46 = v60;
  *(a4 + 32) = v61;
  *(a4 + 40) = v46;
  v48 = v58;
  v47 = v59;
  *(a4 + 48) = v56;
  *(a4 + 56) = v47;
  v49 = v57;
  *(a4 + 64) = v48;
  *(a4 + 72) = v49;
  *(a4 + 80) = v66 & 1;
  sub_1C3C9D340(v69, a4 + v41, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
  return sub_1C3C9D340(v39, a4 + v42, &qword_1EC086470, MEMORY[0x1E6968FB0]);
}

void sub_1C3C9D2EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1C3C9D340(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C3C9D2EC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3C9D3AC(uint64_t a1, uint64_t a2)
{
  sub_1C3C9D2EC(0, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C9D42C(uint64_t a1)
{
  sub_1C3C9D2EC(0, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C9D4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C9D508(uint64_t a1)
{
  v2 = type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3C9D694(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_5:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 56) + ((v8 << 9) | (8 * v9)));

    if (*(v10 + 16))
    {
      v14 = *(v10 + 32);
      for (i = 1; ; i = 0)
      {
        if (v10)
        {
          while (1)
          {
            v16 = *(v10 + 16);
            if (i == v16)
            {
              break;
            }

            if (i >= v16)
            {
              goto LABEL_32;
            }

            v17 = v10 + 8 * i++;
            if (*(v17 + 32) < v14)
            {
              v14 = *(v17 + 32);
            }
          }
        }

        if (!v5)
        {
          break;
        }

        v18 = v8;
LABEL_28:
        v20 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 56) + ((v18 << 9) | (8 * v20)));
      }

      v19 = v8;
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v6)
        {
          v13 = v14;
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v18);
        ++v19;
        if (v5)
        {
          v8 = v18;
          goto LABEL_28;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v11 = v8;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v11;
    if (v5)
    {
      v8 = v12;
      goto LABEL_5;
    }
  }

  v13 = 0.0;
LABEL_13:
  sub_1C3CA38B4();

  return *&v13;
}

uint64_t sub_1C3C9D880(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C3C9D8C4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_5:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 56) + ((v8 << 9) | (8 * v9)));

    if (*(v10 + 16))
    {
      v14 = *(v10 + 32);
      for (i = 1; ; i = 0)
      {
        if (v10)
        {
          while (1)
          {
            v16 = *(v10 + 16);
            if (i == v16)
            {
              break;
            }

            if (i >= v16)
            {
              goto LABEL_32;
            }

            v17 = v10 + 8 * i++;
            if (v14 < *(v17 + 32))
            {
              v14 = *(v17 + 32);
            }
          }
        }

        if (!v5)
        {
          break;
        }

        v18 = v8;
LABEL_28:
        v20 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 56) + ((v18 << 9) | (8 * v20)));
      }

      v19 = v8;
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v6)
        {
          v13 = v14;
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v18);
        ++v19;
        if (v5)
        {
          v8 = v18;
          goto LABEL_28;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v11 = v8;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v11;
    if (v5)
    {
      v8 = v12;
      goto LABEL_5;
    }
  }

  v13 = 0.0;
LABEL_13:
  sub_1C3CA38B4();

  return *&v13;
}

uint64_t sub_1C3C9DAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

id BalanceDaySeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalanceDaySeries.init()()
{
  v1 = sub_1C3D1E2A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D1E3C4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x1E6969868], v1, v7);
  sub_1C3D1E2B4();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 32))(&v0[OBJC_IVAR___HKBalanceDaySeries_gregorianCalendar], v9, v5);
  *&v0[OBJC_IVAR___HKBalanceDaySeries_sleepingMetrics] = sub_1C3D1E8A4();
  v10 = type metadata accessor for BalanceDaySeries();
  v12.receiver = v0;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t type metadata accessor for BalanceDaySeries()
{
  result = qword_1EC086CA8;
  if (!qword_1EC086CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3C9DF08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = v6;
  v177 = a6;
  v155 = a5;
  v142 = a4;
  v141 = a3;
  v140 = a2;
  swift_getObjectType();
  v10 = sub_1C3D1EDA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1C3D1E1E4();
  v15 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v163 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C617FC();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v160 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C3D1E8C4();
  v161 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v164 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v166 = &v140 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v174 = &v140 - v25;
  v26 = [a1 chartPoints];
  if (!v26)
  {
    goto LABEL_93;
  }

  v27 = v26;
  sub_1C3C77FEC(0, &qword_1EC085850);
  v7 = sub_1C3D202B4();

  v28 = sub_1C3C81C30(v7);

  if (!v28)
  {
    goto LABEL_93;
  }

  v145 = v28;
  v144 = v28 & 0xFFFFFFFFFFFFFF8;
  if (v28 >> 62)
  {
    goto LABEL_114;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v30 = v161;
  v31 = v174;
  v7 = MEMORY[0x1E69E7CC0];
  if (!v29)
  {
LABEL_98:
    v148 = v7;
LABEL_99:
    sub_1C3C77FEC(0, &unk_1EC086B40);
    v137 = sub_1C3D202A4();
    v138 = objc_opt_self();
    v180 = v140;
    v181 = v141;
    v182 = v142;
    v139 = [v138 coordinateListWithCoordinates:v137 blockPath:&v180];

    if (v139)
    {
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v10 = 0;
  v32 = *(v8 + OBJC_IVAR___HKBalanceDaySeries_sleepingMetrics);
  v147 = v145 & 0xC000000000000001;
  v143 = v145 + 32;
  v173 = v161 + 16;
  v171 = v32;
  v172 = *(v32 + 16);
  v168 = v161 + 48;
  v165 = (v161 + 32);
  v176 = (v161 + 8);
  v151 = (v161 + 56);
  v150 = (v15 + 1);
  v148 = MEMORY[0x1E69E7CC0];
  v15 = v160;
  v146 = v29;
  v156 = v8;
  while (1)
  {
    if (v147)
    {
      v33 = MEMORY[0x1C692FEB0](v10, v145);
    }

    else
    {
      if (v10 >= *(v144 + 16))
      {
        goto LABEL_110;
      }

      v33 = *(v143 + 8 * v10);
    }

    v175 = v33;
    v34 = __OFADD__(v10, 1);
    v35 = v10 + 1;
    if (v34)
    {
      goto LABEL_107;
    }

    v149 = v35;
    v183 = v7;
    if (v172)
    {
      v167 = OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valuesByMetric;
      v159 = OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_date;
      v158 = OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_warmupRangeByMetric;
      v157 = OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection;
      v169 = v171 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v170 = OBJC_IVAR___HKBalanceSeries_selectedMetric;
      swift_beginAccess();
      for (i = 0; i != v172; ++i)
      {
        if (i >= *(v171 + 16))
        {
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
          goto LABEL_113;
        }

        v37 = *(v30 + 16);
        v37(v31, v169 + *(v30 + 72) * i, v19);
        sub_1C3CA2D80(v8 + v170, v15, sub_1C3C617FC);
        if ((*(v30 + 48))(v15, 1, v19) == 1)
        {
          sub_1C3CA2DE8(v15, sub_1C3C617FC);
        }

        else
        {
          v38 = v166;
          (*v165)(v166, v15, v19);
          sub_1C3CA3AF4(&unk_1EC086C98, MEMORY[0x1E69A2E68]);
          v39 = sub_1C3D20034();
          v40 = *v176;
          v41 = v38;
          v31 = v174;
          (*v176)(v41, v19);
          if ((v39 & 1) == 0)
          {
            v40(v31, v19);
            continue;
          }
        }

        v42 = *&v175[v167];
        if (*(v42 + 16) && (v43 = sub_1C3CA0330(v31), (v44 & 1) != 0))
        {
          v15 = *(*(v42 + 56) + 8 * v43);

          sub_1C3C9FA40(v31, &v175[v159], v163);
          v45 = [v155 transform];
          v46 = sub_1C3D1E174();
          [v45 coordinateForValue_];
          v48 = v47;

          v37(v164, v31, v19);
          v49 = v15[2];
          if (v49)
          {
            v180 = MEMORY[0x1E69E7CC0];
            sub_1C3C23DF8(0, v49, 0);
            v50 = v180;
            v51 = 32;
            do
            {
              v52 = [v177 transform];
              v53 = sub_1C3D1E804();
              [v52 coordinateForValue_];
              v55 = v54;

              v180 = v50;
              v8 = *(v50 + 16);
              v56 = *(v50 + 24);
              if (v8 >= v56 >> 1)
              {
                sub_1C3C23DF8((v56 > 1), v8 + 1, 1);
                v50 = v180;
              }

              *(v50 + 16) = v8 + 1;
              *(v50 + 8 * v8 + 32) = v55;
              v51 += 8;
              --v49;
            }

            while (v49);
          }

          else
          {

            v50 = MEMORY[0x1E69E7CC0];
          }

          v57 = MEMORY[0x1E69E7CC8];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v180 = v57;
          v59 = v164;
          sub_1C3CA22C8(v50, v164, isUniquelyReferenced_nonNull_native, sub_1C3CF91E4, &qword_1EC086D28, &unk_1EC086D30, MEMORY[0x1E69E7DE0]);
          v60 = *v176;
          (*v176)(v59, v19);
          v61 = v180;
          sub_1C3D1E994();
          if (v62 > v63)
          {
            goto LABEL_103;
          }

          v64 = [v177 transform];
          v65 = sub_1C3D1E804();
          [v64 coordinateForValue_];
          v67 = v66;

          v15 = sub_1C3D1E804();
          [v64 coordinateForValue_];
          v69 = v68;

          v70 = v174;
          if (v67 > v69)
          {
            goto LABEL_104;
          }

          v71 = *(*&v175[v158] + 16);
          v72 = 0.0;
          v162 = v60;
          if (v71 && (sub_1C3CA0330(v174), (v73 & 1) != 0))
          {
            v74 = [v177 transform];
            v75 = sub_1C3D1E804();
            [v74 coordinateForValue_];
            v72 = v76;

            v15 = sub_1C3D1E804();
            [v74 coordinateForValue_];
            v78 = v77;

            if (v72 > v78)
            {
              goto LABEL_106;
            }

            v79 = 0;
          }

          else
          {
            v79 = 1;
            v78 = 0.0;
          }

          sub_1C3C4D7A4(&v175[v157], &v180);
          v80 = v153;
          v37(v153, v70, v19);
          (*v151)(v80, 0, 1, v19);
          *(v80 + *(v154 + 20)) = 0;
          v81 = type metadata accessor for BalanceCoordinateInfo(0);
          v82 = objc_allocWithZone(v81);
          sub_1C3C4D7A4(&v180, v82 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection);
          sub_1C3CA2D80(v80, v82 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context, type metadata accessor for BalanceCoordinateInfo.Context);
          v179.receiver = v82;
          v179.super_class = v81;
          v83 = objc_msgSendSuper2(&v179, sel_init);
          sub_1C3CA2DE8(v80, type metadata accessor for BalanceCoordinateInfo.Context);
          __swift_destroy_boxed_opaque_existential_0(&v180);
          v84 = type metadata accessor for BalanceCoordinate();
          v15 = objc_allocWithZone(v84);
          *(v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue) = v48;
          *(v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric) = v61;
          v85 = (v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
          *v85 = v67;
          v85[1] = v69;
          v86 = (v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
          *v86 = v72;
          v86[1] = v78;
          *(v86 + 16) = v79;
          *(v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_userInfo) = v83;

          v87 = v83;
          v88 = sub_1C3CA2E48(v61);

          if (v79)
          {
            v8 = v156;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_1C3C46D00(0, *(v88 + 16) + 1, 1, v88);
            }

            v8 = v156;
            v90 = *(v88 + 16);
            v89 = *(v88 + 24);
            v91 = v89 >> 1;
            v92 = v90 + 1;
            if (v89 >> 1 <= v90)
            {
              v88 = sub_1C3C46D00((v89 > 1), v90 + 1, 1, v88);
              v89 = *(v88 + 24);
              v91 = v89 >> 1;
            }

            *(v88 + 16) = v92;
            *(v88 + 8 * v90 + 32) = v72;
            if (v91 < (v90 + 2))
            {
              v88 = sub_1C3C46D00((v89 > 1), v90 + 2, 1, v88);
            }

            *(v88 + 16) = v90 + 2;
            *(v88 + 8 * v92 + 32) = v78;
          }

          v93 = *(v88 + 16);
          v31 = v174;
          if (v93)
          {
            v94 = *(v88 + 32);
            v95 = v93 - 1;
            if (v95)
            {
              v98 = (v88 + 40);
              v99 = (v88 + 40);
              v100 = v95;
              v96 = *(v88 + 32);
              do
              {
                v101 = *v99++;
                v102 = v101;
                if (v101 < v96)
                {
                  v96 = v102;
                }

                --v100;
              }

              while (v100);
              do
              {
                v103 = *v98++;
                v104 = v103;
                if (v94 < v103)
                {
                  v94 = v104;
                }

                --v95;
              }

              while (v95);
            }

            else
            {
              v96 = *(v88 + 32);
            }

            if (v96 > v94)
            {
              goto LABEL_105;
            }

            v105 = (v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange);
            *v105 = v96;
            v105[1] = v94;
            *(v105 + 16) = 0;
          }

          else
          {

            v97 = v15 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange;
            *v97 = 0;
            *(v97 + 1) = 0;
            v97[16] = 1;
          }

          v178.receiver = v15;
          v178.super_class = v84;
          v106 = objc_msgSendSuper2(&v178, sel_init, v140, v141, v142);

          v107 = v106;
          MEMORY[0x1C692F8F0]();
          v30 = v161;
          if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C3D202C4();
          }

          sub_1C3D202F4();

          (*v150)(v163, v152);
          v162(v31, v19);
          v7 = v183;
          v15 = v160;
        }

        else
        {
          (*v176)(v31, v19);
        }
      }
    }

    v11 = v7 >> 62 ? sub_1C3D20964() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v149;
    v108 = v148;
    v109 = v148 >> 62;
    if (v148 >> 62)
    {
      break;
    }

    v110 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = (v110 + v11);
    if (__OFADD__(v110, v11))
    {
      goto LABEL_92;
    }

LABEL_68:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v109)
      {
        v111 = v108 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

LABEL_73:
      sub_1C3D20964();
      goto LABEL_74;
    }

    if (v109)
    {
      goto LABEL_73;
    }

LABEL_74:
    v148 = sub_1C3D20864();
    v111 = v148 & 0xFFFFFFFFFFFFFF8;
LABEL_75:
    v169 = v11;
    v112 = *(v111 + 16);
    v15 = ((*(v111 + 24) >> 1) - v112);
    v170 = v111;
    if (v7 >> 62)
    {
      v116 = sub_1C3D20964();
      if (v116)
      {
        v117 = v116;
        v118 = sub_1C3D20964();
        if (v15 < v118)
        {
          goto LABEL_112;
        }

        if (v117 < 1)
        {
LABEL_113:
          __break(1u);
LABEL_114:
          v29 = sub_1C3D20964();
          goto LABEL_5;
        }

        v167 = v118;
        v119 = v170 + 8 * v112 + 32;
        sub_1C3CA2CA0(0, &qword_1EC086C88, &unk_1EC086B40, &protocolRef_HKGraphSeriesBlockCoordinate, sub_1C3C77FEC);
        sub_1C3CA2CFC();
        for (j = 0; j != v117; ++j)
        {
          v121 = sub_1C3C90544(&v180, j, v7);
          v123 = *v122;
          swift_unknownObjectRetain();
          (v121)(&v180, 0);
          *(v119 + 8 * j) = v123;
        }

        v31 = v174;
        v10 = v149;
        v8 = v156;
        v115 = v167;
        goto LABEL_85;
      }
    }

    else
    {
      v113 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v113)
      {
        if (v15 < v113)
        {
          goto LABEL_111;
        }

        v114 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C3C77FEC(0, &unk_1EC086B40);
        v115 = v114;
        swift_arrayInitWithCopy();
LABEL_85:

        v15 = v160;
        v30 = v161;
        v7 = MEMORY[0x1E69E7CC0];
        if (v115 < v169)
        {
          goto LABEL_108;
        }

        if (v115 > 0)
        {
          v124 = *(v170 + 16);
          v34 = __OFADD__(v124, v115);
          v125 = v124 + v115;
          if (v34)
          {
            goto LABEL_109;
          }

          *(v170 + 16) = v125;
        }

        goto LABEL_8;
      }
    }

    v15 = v160;
    v30 = v161;
    v7 = MEMORY[0x1E69E7CC0];
    if (v169 > 0)
    {
      goto LABEL_108;
    }

LABEL_8:

    if (v10 == v146)
    {
      goto LABEL_99;
    }
  }

  v126 = sub_1C3D20964();
  v13 = (v126 + v11);
  if (!__OFADD__(v126, v11))
  {
    goto LABEL_68;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  sub_1C3D1ED64();
  v127 = sub_1C3D1ED84();
  v128 = sub_1C3D204F4();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v180 = v130;
    *v129 = 136446210;
    v131 = sub_1C3D20CD4();
    v7 = v10;
    v133 = sub_1C3C22C28(v131, v132, &v180);

    *(v129 + 4) = v133;
    _os_log_impl(&dword_1C3942000, v127, v128, "[%{public}s] Unable to create coordinates from unsupported chart points", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x1C69321D0](v130, -1, -1);
    MEMORY[0x1C69321D0](v129, -1, -1);

    (*(v11 + 8))(v13, v7);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  sub_1C3C77FEC(0, &unk_1EC086B40);
  v134 = sub_1C3D202A4();
  v135 = objc_opt_self();
  v180 = v140;
  v181 = v141;
  v182 = v142;
  v136 = [v135 coordinateListWithCoordinates:v134 blockPath:&v180];

  if (!v136)
  {
    __break(1u);
    goto LABEL_98;
  }
}

uint64_t sub_1C3C9F378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, char a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  if (!result)
  {
    return result;
  }

  type metadata accessor for BalanceCoordinate();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v37 = result;
  v38 = OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue;
  v39 = *(result + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue);
  swift_unknownObjectRetain();
  v65.origin.x = a6;
  v65.origin.y = a7;
  v65.size.width = a8;
  v65.size.height = a9;
  if (CGRectGetMinX(v65) - a10 <= v39)
  {
    v40 = *(v37 + v38);
    v66.origin.x = a6;
    v66.origin.y = a7;
    v66.size.width = a8;
    v66.size.height = a9;
    if (v40 <= CGRectGetMaxX(v66) + a10)
    {
      v41 = (v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
      if ((*(v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange + 16) & 1) == 0)
      {
        v42 = *v41;
        v61 = v41[1];
        v43 = *(v37 + v38) - a10 * 0.5;
        v44 = a10 * 0.5 + v61 - (*v41 - a10 * 0.5);
        v60 = objc_opt_self();
        v45 = v38;
        v46 = [v60 bezierPathWithRoundedRect:v43 cornerRadius:{v42 - a10 * 0.5, a10, v44, a10 * 0.5}];
        [a15 appendPath_];

        v38 = v45;
        v47 = [v60 bezierPathWithRoundedRect:*(v37 + v45) - a11 * 0.5 cornerRadius:{v42 - a11 * 0.5, a11, a11 * 0.5 + v61 - (v42 - a11 * 0.5)}];
        [a17 appendPath_];
      }

      v48 = v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange;
      if ((*(v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange + 16) & 1) == 0)
      {
        v50 = *v48;
        v49 = *(v48 + 8);
        if (*(a19 + 64))
        {
          if (a18)
          {
LABEL_13:
            if (vminv_u16(vmovn_s32(vuzp1q_s32(vcgeq_f64(*v48, vdupq_lane_s64(*(v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange), 0)), vcgeq_f64(vdupq_lane_s64(*(v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8), 0), *v48)))))
            {
              v51 = *(v37 + v38) - a10 * 0.5;
              v52 = objc_opt_self();
              v53 = [v52 bezierPathWithRoundedRect:v51 cornerRadius:{v50 - a10 * 0.5, a10, a10 * 0.5 + v49 - (v50 - a10 * 0.5), a10 * 0.5}];
              [a20 appendPath_];

              v54 = [v52 bezierPathWithRoundedRect:*(v37 + v38) - a12 * 0.5 cornerRadius:{v50 - a12 * 0.5, a12, a12 * 0.5 + v49 - (v50 - a12 * 0.5)}];
              [a21 appendPath_];
LABEL_23:

              return swift_unknownObjectRelease();
            }

LABEL_18:
            v57 = *(v37 + v38) - a10 * 0.5;
            v58 = objc_opt_self();
            v59 = [v58 bezierPathWithRoundedRect:v57 cornerRadius:{v50 - a10 * 0.5, a10, a10 * 0.5 + v49 - (v50 - a10 * 0.5), a10 * 0.5}];
            [a22 appendPath_];

            v54 = [v58 bezierPathWithRoundedRect:*(v37 + v38) - a12 * 0.5 cornerRadius:{v50 - a12 * 0.5, a12, a12 * 0.5 + v49 - (v50 - a12 * 0.5)}];
            [a23 appendPath_];
            goto LABEL_23;
          }
        }

        else
        {
          v55 = *(a19 + 16);
          v62[0] = *a19;
          v62[1] = v55;
          v56 = *(a19 + 48);
          v62[2] = *(a19 + 32);
          v62[3] = v56;
          v63[0] = a2;
          v63[1] = a3;
          v63[2] = a4;
          v63[3] = a5;
          if (HKGraphSeriesDataPointPathInRangeInclusive(v63, v62) & 1) != 0 && (a18)
          {
            if (*(v48 + 16))
            {
              goto LABEL_18;
            }

            goto LABEL_13;
          }

          if (*(v48 + 16))
          {
LABEL_21:
            v54 = [objc_opt_self() bezierPathWithRoundedRect:*(v37 + v38) - a10 * 0.5 cornerRadius:{v50 - a10 * 0.5, a10, a10 * 0.5 + v49 - (v50 - a10 * 0.5), a10 * 0.5}];
            [a25 appendPath_];
            goto LABEL_23;
          }
        }

        if (vminv_u16(vmovn_s32(vuzp1q_s32(vcgeq_f64(*v48, vdupq_lane_s64(*(v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange), 0)), vcgeq_f64(vdupq_lane_s64(*(v37 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8), 0), *v48)))))
        {
          v54 = [objc_opt_self() bezierPathWithRoundedRect:*(v37 + v38) - a10 * 0.5 cornerRadius:{v50 - a10 * 0.5, a10, a10 * 0.5 + v49 - (v50 - a10 * 0.5), a10 * 0.5}];
          [a24 appendPath_];
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1C3C9FA40(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v63 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_1C3D1E8C4();
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51[-v10];
  v12 = sub_1C3D1EDA4();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_1C3D1E1E4();
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51[-v18];
  v20 = *(v4 + OBJC_IVAR___HKBalanceDaySeries_sleepingMetrics);
  v21 = sub_1C3C9FFD8(a1, v20);
  if (v22)
  {
    sub_1C3D1ED64();
    v23 = *(v14 + 16);
    v23(v16, a2, v64);
    v56 = *(v61 + 16);
    v56(v11, a1, v7);
    v24 = sub_1C3D1ED84();
    v25 = sub_1C3D204F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v55 = a2;
      v53 = v24;
      v27 = v26;
      v54 = swift_slowAlloc();
      v65 = v54;
      *v27 = 136446722;
      v28 = sub_1C3D20CD4();
      v52 = v25;
      v30 = sub_1C3C22C28(v28, v29, &v65);
      ObjectType = v14 + 16;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      sub_1C3CA3AF4(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v32 = v23;
      v33 = v64;
      v34 = sub_1C3D20A14();
      v36 = v35;
      v37 = v33;
      v23 = v32;
      (*(v14 + 8))(v16, v37);
      v38 = sub_1C3C22C28(v34, v36, &v65);

      *(v27 + 14) = v38;
      *(v27 + 22) = 2082;
      v56(v58, v11, v7);
      v39 = sub_1C3D20134();
      v41 = v40;
      (*(v61 + 8))(v11, v7);
      v42 = sub_1C3C22C28(v39, v41, &v65);

      *(v27 + 24) = v42;
      v43 = v53;
      _os_log_impl(&dword_1C3942000, v53, v52, "[%{public}s] cannot determine position for date %{public}s metric %{public}s", v27, 0x20u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v44, -1, -1);
      a2 = v55;
      MEMORY[0x1C69321D0](v27, -1, -1);
    }

    else
    {

      (*(v61 + 8))(v11, v7);
      (*(v14 + 8))(v16, v64);
    }

    (*(v59 + 8))(v62, v60);
    v23(v63, a2, v64);
  }

  else
  {
    v45 = v21;
    v46 = objc_opt_self();
    v47 = *(v20 + 16);
    sub_1C3D1E2D4();
    v48 = sub_1C3D1E174();
    (*(v14 + 8))(v19, v64);
    v49 = sub_1C3D1E364();
    v50 = [v46 datePositionForCategoryIndex:v45 categoryCount:v47 startDate:v48 calendar:v49];

    sub_1C3D1E1A4();
  }
}

uint64_t sub_1C3C9FFD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1C3D1E8C4() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1C3CA3AF4(&unk_1EC086C98, MEMORY[0x1E69A2E68]);
  v7 = 0;
  while ((sub_1C3D20034() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1C3CA00F8()
{
  v1 = OBJC_IVAR___HKBalanceDaySeries_gregorianCalendar;
  v2 = sub_1C3D1E3C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id BalanceDaySeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceDaySeries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C3CA0224(uint64_t a1, uint64_t a2)
{
  sub_1C3D20B04();
  sub_1C3D20164();
  v4 = sub_1C3D20B34();

  return sub_1C3CA280C(a1, a2, v4);
}

unint64_t sub_1C3CA029C(uint64_t a1)
{
  v2 = sub_1C3D20AF4();

  return sub_1C3CA28C4(a1, v2);
}

unint64_t sub_1C3CA0330(uint64_t a1)
{
  sub_1C3D1E8C4();
  v2 = MEMORY[0x1E69A2E68];
  sub_1C3CA3AF4(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
  v3 = sub_1C3D1FF74();
  return sub_1C3CA2930(a1, v3, MEMORY[0x1E69A2E68], &unk_1EC086C98, v2, MEMORY[0x1E69A2E80]);
}

unint64_t sub_1C3CA0404(uint64_t a1)
{
  sub_1C3D1E974();
  v2 = MEMORY[0x1E69A2EF8];
  sub_1C3CA3AF4(&qword_1EC086CF8, MEMORY[0x1E69A2EF8]);
  v3 = sub_1C3D1FF74();
  return sub_1C3CA2930(a1, v3, MEMORY[0x1E69A2EF8], &qword_1EC086D00, v2, MEMORY[0x1E69A2F10]);
}

unint64_t sub_1C3CA0528(uint64_t a1)
{
  sub_1C3D20104();
  sub_1C3D20B04();
  sub_1C3D20164();
  v2 = sub_1C3D20B34();

  return sub_1C3CA2B9C(a1, v2);
}

unint64_t sub_1C3CA05B8(uint64_t a1)
{
  sub_1C3D1E6E4();
  v2 = MEMORY[0x1E69D36D8];
  sub_1C3CA3AF4(&qword_1EC086D10, MEMORY[0x1E69D36D8]);
  v3 = sub_1C3D1FF74();
  return sub_1C3CA2930(a1, v3, MEMORY[0x1E69D36D8], &qword_1EC086D18, v2, MEMORY[0x1E69D36E8]);
}

uint64_t sub_1C3CA068C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C3C766EC();
  v33 = a2;
  result = sub_1C3D20984();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1C3C233B8(v24, v34);
      }

      else
      {
        sub_1C3C233C8(v24, v34);
      }

      sub_1C3D20B04();
      sub_1C3D20164();
      result = sub_1C3D20B34();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1C3C233B8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1C3CA0938(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C3C767B8();
  result = sub_1C3D20984();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1C3D20AF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C3CA0B9C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1C3D1E8C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C3C76080();
  v42 = a2;
  result = sub_1C3D20984();
  v11 = result;
  if (*(v9 + 16))
  {
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v45 = v5;
    v46 = v8;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v44 = *(v41 + 72);
      v27 = v26 + v44 * v25;
      if (v42)
      {
        (*v43)(v46, v27, v45);
      }

      else
      {
        (*v40)(v46, v27, v45);
      }

      v28 = (*(v9 + 56) + 16 * v25);
      v30 = *v28;
      v29 = v28[1];
      sub_1C3CA3AF4(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
      result = sub_1C3D1FF74();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v20 = v46;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v20 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v43)(*(v11 + 48) + v44 * v19, v20, v45);
      v21 = (*(v11 + 56) + 16 * v19);
      *v21 = v30;
      v21[1] = v29;
      ++*(v11 + 16);
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C3CA0F60(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1C3D1E974();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C3CA398C();
  v40 = a2;
  result = sub_1C3D20984();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1C3CA3AF4(&qword_1EC086CF8, MEMORY[0x1E69A2EF8]);
      result = sub_1C3D1FF74();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C3CA1314(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C3C91880();
  result = sub_1C3D20984();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1C3D206A4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C3CA1570(uint64_t a1, int a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v9 = v5;
  v11 = sub_1C3D1E8C4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v16 = *v5;
  sub_1C3CA38BC(0, v15, a4, a5);
  v47 = a2;
  result = sub_1C3D20984();
  v18 = result;
  if (*(v16 + 16))
  {
    v50 = v14;
    v51 = v11;
    v43 = v5;
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v12 + 16);
    v45 = v16;
    v48 = (v12 + 32);
    v25 = result + 64;
    v46 = v12;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v16 + 48);
      v49 = *(v12 + 72);
      v32 = v31 + v49 * v30;
      if (v47)
      {
        (*v48)(v50, v32, v51);
        v33 = *(*(v16 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v50, v32, v51);
        v33 = *(*(v16 + 56) + 8 * v30);
      }

      sub_1C3CA3AF4(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
      result = sub_1C3D1FF74();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v12 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v12 = v46;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v49 * v26, v50, v51);
      *(*(v18 + 56) + 8 * v26) = v33;
      ++*(v18 + 16);
      v16 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v16 + 32);
    v9 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_1C3CA194C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1C3D1E6E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C3C76540();
  v40 = a2;
  result = sub_1C3D20984();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1C3CA3AF4(&qword_1EC086D10, MEMORY[0x1E69D36D8]);
      result = sub_1C3D1FF74();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C3CA1D00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C3C75F98();
  v35 = a2;
  result = sub_1C3D20984();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1C3D20B04();
      sub_1C3D20164();
      result = sub_1C3D20B34();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_1C3CA1F98(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C3CA0224(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C3CF8AF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C3CA068C(v16, a4 & 1);
    v11 = sub_1C3CA0224(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C3D20AA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1C3C233B8(a1, v22);
  }

  else
  {
    sub_1C3CA2628(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1C3CA2118(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1C3D1E8C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1C3CA0330(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v22 = *v5;
      if (v20)
      {
LABEL_8:
        v23 = (v22[7] + 16 * v16);
        *v23 = a3;
        v23[1] = a4;
        return result;
      }

      goto LABEL_11;
    }

    if (v21 >= result && (a2 & 1) == 0)
    {
      result = sub_1C3CF8DF8();
      goto LABEL_7;
    }

    sub_1C3CA0B9C(result, a2 & 1);
    result = sub_1C3CA0330(a1);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = result;
      v22 = *v5;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a1, v10);
      return sub_1C3CA2694(v16, v13, v22, a3, a4);
    }
  }

  result = sub_1C3D20AA4();
  __break(1u);
  return result;
}

uint64_t sub_1C3CA22C8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v8 = v7;
  v12 = sub_1C3D1E8C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1C3CA0330(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_7;
    }

    sub_1C3CA1570(v21, a3 & 1, v29, v30, v31);
    v26 = sub_1C3CA0330(a2);
    if ((v22 & 1) == (v27 & 1))
    {
      v18 = v26;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_1C3CA2754(v18, v15, a1, v24);
    }

LABEL_15:
    result = sub_1C3D20AA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v24[7] + 8 * v18) = a1;
}

uint64_t sub_1C3CA24B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C3CA0224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C3CA1D00(v16, a4 & 1);
      v11 = sub_1C3CA0224(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1C3D20AA4();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1C3CF9720();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

_OWORD *sub_1C3CA2628(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C3C233B8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C3CA2694(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a3[6];
  v11 = sub_1C3D1E8C4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a3[7] + 16 * a1);
  *v13 = a4;
  v13[1] = a5;
  v14 = a3[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v16;
  }

  return result;
}

uint64_t sub_1C3CA2754(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C3D1E8C4();
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

unint64_t sub_1C3CA280C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C3D20A54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C3CA28C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C3CA2930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1C3CA3AF4(v24, v25);
      v20 = sub_1C3D20034();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1C3CA2AD0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1C3C27CB4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1C3D206B4();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C3CA2B9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C3D20104();
      v8 = v7;
      if (v6 == sub_1C3D20104() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C3D20A54();

      if ((v11 & 1) == 0)
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

void sub_1C3CA2CA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C3D20304();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1C3CA2CFC()
{
  result = qword_1EC086C90;
  if (!qword_1EC086C90)
  {
    sub_1C3CA2CA0(255, &qword_1EC086C88, &unk_1EC086B40, &protocolRef_HKGraphSeriesBlockCoordinate, sub_1C3C77FEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086C90);
  }

  return result;
}

uint64_t sub_1C3CA2D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CA2DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CA2E48(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);

  v7 = 0;
  v8 = 0;
  v37 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0] + 32; ; i = (v35 + 1))
  {
    v35 = i;
    if (!v7)
    {
      break;
    }

LABEL_6:
    v12 = *(v7 + 16);
    if (v8 == v12)
    {
      break;
    }

    if (v8 >= v12)
    {
      goto LABEL_38;
    }

    v17 = *(v7 + 8 * v8 + 32);
    v18 = v37;
    if (!v37)
    {
      v19 = v10[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      v38 = v21;
      sub_1C3CA3AA4(0, &qword_1EC086D20, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      v24 = v23 - 32;
      if (v23 < 32)
      {
        v24 = v23 - 25;
      }

      v25 = v24 >> 3;
      v22[2] = v38;
      v22[3] = 2 * (v24 >> 3);
      v26 = (v22 + 4);
      v27 = v10[3] >> 1;
      if (v10[2])
      {
        v28 = v10 + 4;
        if (v22 != v10 || v26 >= v28 + 8 * v27)
        {
          v36 = v24 >> 3;
          v34 = v10[3] >> 1;
          memmove(v22 + 4, v28, 8 * v27);
          v27 = v34;
          v25 = v36;
          v26 = (v22 + 4);
        }

        v10[2] = 0;
      }

      v35 = (v26 + 8 * v27);
      v39 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

      v18 = v39;
      v10 = v22;
    }

    v29 = __OFSUB__(v18, 1);
    v30 = v18 - 1;
    if (v29)
    {
      goto LABEL_39;
    }

    v37 = v30;
    ++v8;
    *v35 = v17;
  }

  while (v5)
  {
    v13 = v9;
LABEL_14:
    v15 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v16 = *(*(a1 + 56) + ((v13 << 9) | (8 * v15)));

    v8 = 0;
    v7 = v16;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v14 = v9;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v13 >= ((63 - v3) >> 6))
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v14;
    if (v5)
    {
      v9 = v13;
      goto LABEL_14;
    }
  }

  sub_1C3CA38B4();

  v31 = v10[3];
  if (v31 < 2)
  {
    return v10;
  }

  v32 = v31 >> 1;
  v29 = __OFSUB__(v32, v37);
  v33 = v32 - v37;
  if (!v29)
  {
    v10[2] = v33;
    return v10;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1C3CA30EC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, __int128 *a7, uint64_t a8, void *a9)
{
  v54 = a7[1];
  v55 = *a7;
  v15 = *(a7 + 5);
  v53 = *(a7 + 4);
  v52 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v60 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v51 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v21 = [v9 allowsSelection];
  if ([a9 seriesDrawingDuringTiling])
  {
    v22 = 1;
    *v64 = 0u;
    *v66 = 0u;
    *v62 = 0u;
    *v57 = 0u;
  }

  else
  {
    v23 = *&v9[OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock];
    os_unfair_lock_lock((v23 + 84));
    *v64 = *(v23 + 32);
    *v66 = *(v23 + 16);
    *v57 = *(v23 + 64);
    *v62 = *(v23 + 48);
    v22 = *(v23 + 80);
    os_unfair_lock_unlock((v23 + 84));
  }

  v24 = sub_1C3CBB9D4(a2, a3, a4, a5);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  *(v25 + 32) = a4;
  *(v25 + 40) = a5;
  *(v25 + 48) = v24;
  *(v25 + 56) = v19;
  *(v25 + 64) = v9;
  *(v25 + 72) = v20;
  *(v25 + 80) = v24 * 0.7;
  *(v25 + 88) = v21;
  *(v25 + 96) = *v66;
  *(v25 + 112) = *v64;
  *(v25 + 128) = *v62;
  *(v25 + 144) = *v57;
  *(v25 + 160) = v22;
  *(v25 + 168) = v17;
  *(v25 + 176) = v18;
  *(v25 + 184) = v24 * 0.5;
  *(v25 + 192) = v16;
  *(v25 + 200) = v60;
  v50 = v21;
  *(v25 + 208) = v51;
  *(v25 + 216) = v52;
  v70 = sub_1C3CA3A28;
  v71 = v25;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v69 = sub_1C3C71C64;
  *(&v69 + 1) = &block_descriptor_13;
  v26 = _Block_copy(&aBlock);
  v67 = v19;
  v27 = v9;
  v58 = v20;
  v65 = v17;
  v63 = v18;
  v28 = v16;
  v29 = v60;
  v61 = v51;
  v30 = v52;

  v69 = v54;
  aBlock = v55;
  v70 = v53;
  v71 = v15;
  [a1 enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v26];
  _Block_release(v26);
  v31 = v22 & v50;
  if (v31)
  {
    v32 = sub_1C3CBB804();
  }

  else
  {
    v32 = sub_1C3CBB85C();
  }

  v33 = v32;
  if (![v61 isEmpty])
  {
    v34 = [v61 CGPath];
    [v33 renderPath:v34 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  if (v31)
  {
    v35 = sub_1C3CBB830();
  }

  else
  {
    v35 = sub_1C3CBB888();
  }

  v36 = v35;
  if (![v30 isEmpty])
  {
    v37 = [v30 CGPath];
    [v36 renderPath:v37 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  v38 = sub_1C3CBB804();
  if (([v65 isEmpty] & 1) == 0)
  {
    v39 = [v65 CGPath];
    [v38 renderPath:v39 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  v40 = sub_1C3CBB754();
  if (([v63 isEmpty] & 1) == 0)
  {
    v41 = [v63 CGPath];
    [v40 renderPath:v41 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  v42 = sub_1C3CBB830();
  if (([v28 isEmpty] & 1) == 0)
  {
    v43 = [v28 CGPath];
    [v42 renderPath:v43 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  v44 = *&v27[OBJC_IVAR___HKBalanceSeries____lazy_storage___innerFillStyle];
  if (([v29 isEmpty] & 1) == 0)
  {
    v45 = [v29 CGPath];
    [v44 renderPath:v45 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  v46 = sub_1C3CBB8B4();
  if (([v67 isEmpty] & 1) == 0)
  {
    v47 = [v67 CGPath];
    [v46 renderPath:v47 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }

  v48 = sub_1C3CBB8E0();
  if (([v58 isEmpty] & 1) == 0)
  {
    v49 = [v58 CGPath];
    [v48 renderPath:v49 context:a8 axisRect:a2 alpha:{a3, a4, a5, 1.0}];
  }
}

uint64_t sub_1C3CA3800()
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

void sub_1C3CA38BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1C3D1E8C4();
    sub_1C3CA3AA4(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1C3CA3AF4(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
    v7 = sub_1C3D209A4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C3CA398C()
{
  if (!qword_1EC086CF0)
  {
    sub_1C3D1E974();
    sub_1C3CA3AF4(&qword_1EC086CF8, MEMORY[0x1E69A2EF8]);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086CF0);
    }
  }
}

void sub_1C3CA3AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C3CA3AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CA3B40()
{
  v1[7] = v0;
  sub_1C3D20374();
  v1[8] = sub_1C3D20364();
  v3 = sub_1C3D20314();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C3CA3BD8, v3, v2);
}

uint64_t sub_1C3CA3BD8()
{
  v1 = [*(v0[7] + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_context) wrappedFlowManager];
  sub_1C3D20774();
  swift_unknownObjectRelease();
  type metadata accessor for ClinicalAuthorizationFlowManager();
  swift_dynamicCast();
  v0[11] = v0[6];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1C3CA3CCC;

  return sub_1C3C47A54();
}

uint64_t sub_1C3CA3CCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C3CA3E14, v5, v4);
}

uint64_t sub_1C3CA3E14()
{
  v6 = v0;

  v5 = sub_1C3CA798C(v1, sub_1C3CA7F58);
  sub_1C3CA672C(&v5);
  v2 = *(v0 + 56);

  *(v2 + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts) = v5;

  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_1C3CA3F08(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v2 title];
  sub_1C3D20104();

  v5 = [v3 title];
  sub_1C3D20104();

  sub_1C3C4999C();
  v6 = sub_1C3D20744();

  return v6 == -1;
}

void sub_1C3CA4054(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1C3D1E064();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    if (qword_1EC0850C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v10, qword_1EC08DCF8);
    (*(v6 + 16))(v8, a3, v5);
    v11 = a2;
    v12 = sub_1C3D1ED84();
    v13 = sub_1C3D204F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v14 = 136315650;
      v28 = type metadata accessor for ClinicalAccountsOverviewDataSourceAndDelegate();
      sub_1C3CA9198();
      v16 = sub_1C3D20134();
      v18 = sub_1C3C22C28(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_1C3CA9498(&qword_1EC086E28, MEMORY[0x1E6968FB0]);
      v19 = sub_1C3D20A14();
      v21 = v20;
      (*(v6 + 8))(v8, v5);
      v22 = sub_1C3C22C28(v19, v21, &v29);

      *(v14 + 14) = v22;
      *(v14 + 22) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v24;
      *v15 = v24;
      _os_log_impl(&dword_1C3942000, v12, v13, "%s failed to open %s: %@", v14, 0x20u);
      sub_1C3C3467C(v15);
      MEMORY[0x1C69321D0](v15, -1, -1);
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v25, -1, -1);
      MEMORY[0x1C69321D0](v14, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1C3CA4390(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C3D1FEF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1C3CA443C()
{
  v0 = sub_1C3D1E064();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC0850C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v4, qword_1EC08DCF8);
  v5 = sub_1C3D1ED84();
  v6 = sub_1C3D20514();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C3C22C28(0xD00000000000002DLL, 0x80000001C3D61CD0, &v11);
    _os_log_impl(&dword_1C3942000, v5, v6, "%s will open deep link to add an account", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1C69321D0](v8, -1, -1);
    MEMORY[0x1C69321D0](v7, -1, -1);
  }

  sub_1C3C87438(v3);
  sub_1C3CA8338(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C3CA4634(void *a1)
{
  v2 = sub_1C3D1E064();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C3D1E224();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC0850C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v7, qword_1EC08DCF8);
  v8 = a1;
  v9 = sub_1C3D1ED84();
  v10 = sub_1C3D20514();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v2;
    v12 = v11;
    v26 = swift_slowAlloc();
    v31 = v26;
    *v12 = 136315394;
    *(v12 + 4) = sub_1C3C22C28(0xD00000000000002DLL, 0x80000001C3D61CD0, &v31);
    *(v12 + 12) = 2080;
    v13 = [v8 identifier];
    sub_1C3D1E204();

    sub_1C3CA9498(&qword_1EC0869D0, MEMORY[0x1E69695A8]);
    v14 = sub_1C3D20A14();
    v15 = v4;
    v17 = v16;
    v18 = v29;
    (*(v29 + 8))(v6, v15);
    v19 = sub_1C3C22C28(v14, v17, &v31);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1C3942000, v9, v10, "%s will open deep link to view account %s", v12, 0x16u);
    v20 = v26;
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v20, -1, -1);
    v21 = v12;
    v2 = v27;
    MEMORY[0x1C69321D0](v21, -1, -1);
  }

  else
  {

    v15 = v4;
    v18 = v29;
  }

  v22 = [v8 identifier];
  sub_1C3D1E204();

  v23 = v28;
  sub_1C3C8753C(v28);
  (*(v18 + 8))(v6, v15);
  sub_1C3CA8338(v23);
  return (*(v30 + 8))(v23, v2);
}

void sub_1C3CA49FC(void *a1)
{
  v3 = OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts;
  v4 = *(v1 + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts);
  if (v4 >> 62)
  {
    if (sub_1C3D20964())
    {
LABEL_4:
      v5 = sub_1C3D1E574();
      v6 = *(v1 + v3);
      if (v6 >> 62)
      {
        if (v5 == sub_1C3D20964())
        {
          goto LABEL_6;
        }
      }

      else if (v5 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        sub_1C3CA443C();
        goto LABEL_17;
      }

      v7 = sub_1C3D1E574();
      v8 = *(v1 + v3);
      if (v8 >> 62)
      {
        if (v7 >= sub_1C3D20964())
        {
          goto LABEL_17;
        }
      }

      else if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = sub_1C3D1E574();
      v10 = *(v1 + v3);
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v10 + 8 * v9 + 32);
LABEL_16:
          sub_1C3CA4634(v11);

          goto LABEL_17;
        }

        __break(1u);
        return;
      }

      v12 = v9;

      v11 = MEMORY[0x1C692FEB0](v12, v10);

      goto LABEL_16;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (sub_1C3D1E574())
  {
    goto LABEL_4;
  }

LABEL_17:
  v13 = sub_1C3D1E544();
  [a1 deselectRowAtIndexPath:v13 animated:1];
}

void sub_1C3CA4E98(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1C3CA9244(0, &qword_1EC086E78, type metadata accessor for ClinicalAddAccountRow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60[-v7];
  v9 = *&v3[qword_1EC086D98];
  sub_1C3CA953C(a1, &v60[-v7]);
  v10 = type metadata accessor for ClinicalAddAccountRow();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_1C3D1F484();
  v11 = [v9 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v11 invalidateIntrinsicContentSize];

  v13 = [v9 parentViewController];
  if (v13 && (v14 = v13, sub_1C3C27CB4(0, &qword_1EC086340), v15 = a2, v16 = sub_1C3D206B4(), v14, v15, (v16 & 1) != 0))
  {
    v17 = 1;
  }

  else
  {
    [v9 willMoveToParentViewController_];
    v18 = [v9 view];
    if (!v18)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v19 = v18;
    [v18 removeFromSuperview];

    [v9 removeFromParentViewController];
    [a2 addChildViewController_];
    v17 = 0;
  }

  v20 = [v3 contentView];
  v21 = [v20 subviews];

  sub_1C3C27CB4(0, &qword_1EC080DE0);
  v22 = sub_1C3D202B4();
  v23 = [v9 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;

  v63 = v24;
  MEMORY[0x1EEE9AC00](v25);
  *&v60[-16] = &v63;
  v26 = sub_1C3CB929C(sub_1C3CA95A0, &v60[-32], v22);

  if (v26)
  {
    goto LABEL_16;
  }

  v27 = [v3 contentView];
  v28 = [v9 view];
  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = v28;
  [v27 addSubview_];

  v30 = [v9 view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  v32 = [v9 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v61 = v17;
  v62 = a2;
  v34 = [v32 leadingAnchor];

  v35 = [v3 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 leadingAnchor];
  v38 = [v34 constraintEqualToAnchor_];

  [v38 setActive_];
  v39 = [v9 view];
  if (!v39)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v3 contentView];
  v43 = [v42 layoutMarginsGuide];

  v44 = [v43 trailingAnchor];
  v45 = [v41 constraintEqualToAnchor_];

  [v45 setActive_];
  v46 = [v9 view];
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v3 contentView];
  v50 = [v49 layoutMarginsGuide];

  v51 = [v50 topAnchor];
  v52 = [v48 constraintEqualToAnchor_];

  [v52 setActive_];
  v53 = [v9 view];
  if (!v53)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = [v53 bottomAnchor];

  v56 = [v3 contentView];
  v57 = [v56 layoutMarginsGuide];

  v58 = [v57 bottomAnchor];
  v59 = [v55 constraintEqualToAnchor_];

  [v59 setActive_];
  a2 = v62;
  LOBYTE(v17) = v61;
LABEL_16:
  if ((v17 & 1) == 0)
  {
    [v9 didMoveToParentViewController_];
  }
}

void sub_1C3CA5578(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *&v2[qword_1EC086D98];
  sub_1C3CA95BC(a1, v57);
  sub_1C3D1F484();
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  [v6 invalidateIntrinsicContentSize];

  v8 = [v5 parentViewController];
  if (v8 && (v9 = v8, sub_1C3C27CB4(0, &qword_1EC086340), v10 = a2, v11 = sub_1C3D206B4(), v9, v10, (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    [v5 willMoveToParentViewController_];
    v13 = [v5 view];
    if (!v13)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v14 = v13;
    [v13 removeFromSuperview];

    [v5 removeFromParentViewController];
    [a2 addChildViewController_];
    v12 = 0;
  }

  v15 = [v3 contentView];
  v16 = [v15 subviews];

  sub_1C3C27CB4(0, &qword_1EC080DE0);
  v17 = sub_1C3D202B4();
  v18 = [v5 view];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;

  v57[0] = v19;
  MEMORY[0x1EEE9AC00](v20);
  v55[2] = v57;
  v21 = sub_1C3CB929C(sub_1C3CA974C, v55, v17);

  if (v21)
  {
    goto LABEL_16;
  }

  v22 = [v3 contentView];
  v23 = [v5 view];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  [v22 addSubview_];

  v25 = [v5 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v56 = v12;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  v27 = [v5 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v3 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  [v33 setActive_];
  v34 = [v5 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v3 contentView];
  v38 = [v37 layoutMarginsGuide];

  v39 = [v38 trailingAnchor];
  v40 = [v36 constraintEqualToAnchor_];

  [v40 setActive_];
  v41 = [v5 view];
  if (!v41)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v3 contentView];
  v45 = [v44 layoutMarginsGuide];

  v46 = [v45 topAnchor];
  v47 = [v43 constraintEqualToAnchor_];

  [v47 setActive_];
  v48 = [v5 view];
  if (!v48)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v49 = v48;
  v50 = [v48 bottomAnchor];

  v51 = [v3 contentView];
  v52 = [v51 layoutMarginsGuide];

  v53 = [v52 bottomAnchor];
  v54 = [v50 constraintEqualToAnchor_];

  [v54 setActive_];
  LOBYTE(v12) = v56;
LABEL_16:
  if ((v12 & 1) == 0)
  {
    [v5 didMoveToParentViewController_];
  }
}

id sub_1C3CA5E88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalAccountsOverviewDataSourceAndDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1C3CA5F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  ObjectType = swift_getObjectType();
  v8 = *v3;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v11 = sub_1C3D206E4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = qword_1EC086D98;
  v24 = *((v9 & v8) + 0x58);
  swift_getWitnessTable();
  sub_1C3D1F494();
  (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
  *&v4[v14] = sub_1C3D1F464();
  if (a3)
  {

    v15 = sub_1C3D200C4();
  }

  else
  {
    v15 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_initWithStyle_reuseIdentifier_, a1, v15, v22);

  v17 = *&v16[qword_1EC086D98];
  v18 = v16;
  result = [v17 view];
  if (result)
  {
    v20 = result;

    v21 = [objc_opt_self() clearColor];
    [v20 setBackgroundColor_];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1C3CA61C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v6 = sub_1C3D20104();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1C3CA5F84(a3, v6, v8);

  return v9;
}

id sub_1C3CA629C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1C3CA9244(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1C3D203A4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + qword_1EC086D98);
  sub_1C3D20374();
  v10 = v9;
  v11 = sub_1C3D20364();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = *((v4 & v3) + 0x58);
  v12[5] = v10;
  sub_1C3CD907C(0, 0, v7, &unk_1C3D61D78, v12);

  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t sub_1C3CA6448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C3D20374();
  *(v4 + 24) = sub_1C3D20364();
  v6 = sub_1C3D20314();

  return MEMORY[0x1EEE6DFA0](sub_1C3CA64E0, v6, v5);
}

id sub_1C3CA64E0()
{
  v1 = *(v0 + 16);
  [v1 willMoveToParentViewController_];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = *(v0 + 16);

    [v3 removeFromSuperview];

    [v4 removeFromParentViewController];
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3CA65D8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_1C3CA8EBC();
}

void *sub_1C3CA669C(uint64_t a1, uint64_t a2)
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

  sub_1C396C48C(0, &qword_1EC080D60);
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

uint64_t sub_1C3CA672C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C39755E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C3CA67A8(v6);
  return sub_1C3D208A4();
}

uint64_t sub_1C3CA67A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C3D20A04();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C3C27CB4(0, &qword_1EC085D50);
        v6 = sub_1C3D202E4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C3CA6A9C(v8, v9, a1, v4);
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
    return sub_1C3CA68BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C3CA68BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1C3D20374();
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
LABEL_5:
    v21 = v4;
    v9 = *(v6 + 8 * v4);
    v19 = v8;
    v20 = v7;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = [v11 title];
      sub_1C3D20104();

      v14 = [v12 title];
      sub_1C3D20104();

      sub_1C3C4999C();
      v15 = sub_1C3D20744();

      if (v15 != -1)
      {
LABEL_4:
        v4 = v21 + 1;
        v7 = v20 + 8;
        v8 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v16 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v16;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C3CA6A9C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_96;
  }

  v105 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v108 = v8;
    if (v8 + 1 >= v7)
    {
      v25 = v8 + 1;
    }

    else
    {
      v115 = v7;
      v5 = v8;
      v11 = *a3;
      v122 = *(*a3 + 8 * (v8 + 1));
      v120 = *(v11 + 8 * v8);
      v12 = v120;
      v13 = v122;
      v14 = v12;
      v118 = sub_1C3CA3F08(&v122, &v120);
      if (v6)
      {

        return;
      }

      v15 = v8 + 2;
      v117 = 8 * v8;
      v16 = (v11 + 8 * v8 + 16);
      v112 = v9;
      while (1)
      {
        v25 = v115;
        if (v115 == v15)
        {
          break;
        }

        v27 = *(v16 - 1);
        v26 = *v16;
        sub_1C3D20374();
        v28 = v26;
        v29 = v27;
        sub_1C3D20364();
        sub_1C3D20314();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v17 = [v28 title];
        v18 = sub_1C3D20104();
        v20 = v19;

        v122 = v18;
        v123 = v20;
        v21 = [v29 title];
        v5 = sub_1C3D20104();
        v23 = v22;

        v120 = v5;
        v121 = v23;
        sub_1C3C4999C();
        v24 = sub_1C3D20744();

        ++v15;
        ++v16;
        v9 = v112;
        if (((v118 ^ (v24 != -1)) & 1) == 0)
        {
          v25 = v15 - 1;
          break;
        }
      }

      v6 = 0;
      v10 = v108;
      v30 = v117;
      if (v118)
      {
        if (v25 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v25)
        {
          v31 = 8 * v25 - 8;
          v32 = v25;
          v33 = v108;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v35 = *(v34 + v30);
              *(v34 + v30) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = a3[1];
    if (v25 < v36)
    {
      if (__OFSUB__(v25, v10))
      {
        goto LABEL_123;
      }

      if (v25 - v10 < v105)
      {
        if (__OFADD__(v10, v105))
        {
          goto LABEL_124;
        }

        if (v10 + v105 >= v36)
        {
          v37 = a3[1];
        }

        else
        {
          v37 = v10 + v105;
        }

        if (v37 < v10)
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          v9 = sub_1C3CA7838(v9);
LABEL_96:
          v101 = v6;
          v124 = v9;
          v102 = *(v9 + 2);
          if (v102 >= 2)
          {
            while (*a3)
            {
              v103 = *&v9[16 * v102];
              v6 = *&v9[16 * v102 + 24];
              sub_1C3CA7308((*a3 + 8 * v103), (*a3 + 8 * *&v9[16 * v102 + 16]), (*a3 + 8 * v6), v5);
              if (v101)
              {
                goto LABEL_104;
              }

              if (v6 < v103)
              {
                goto LABEL_120;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1C3CA7838(v9);
              }

              if (v102 - 2 >= *(v9 + 2))
              {
                goto LABEL_121;
              }

              v104 = &v9[16 * v102];
              *v104 = v103;
              *(v104 + 1) = v6;
              v124 = v9;
              sub_1C3CA77AC(v102 - 1);
              v9 = v124;
              v102 = *(v124 + 2);
              if (v102 <= 1)
              {
                goto LABEL_104;
              }
            }

            goto LABEL_131;
          }

LABEL_104:

          return;
        }

        if (v25 != v37)
        {
          break;
        }
      }
    }

    v8 = v25;
    if (v25 < v10)
    {
      goto LABEL_122;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1C3C4622C(0, *(v9 + 2) + 1, 1, v9);
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v9 = sub_1C3C4622C((v38 > 1), v39 + 1, 1, v9);
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v108;
    *(v41 + 5) = v8;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v39)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_50:
          if (v46)
          {
            goto LABEL_111;
          }

          v59 = &v9[16 * v40];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_114;
          }

          v65 = &v9[16 * v5 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_118;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v69 = &v9[16 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_64:
        if (v64)
        {
          goto LABEL_113;
        }

        v72 = &v9[16 * v5];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_116;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_71:
        v80 = v5 - 1;
        if (v5 - 1 >= v40)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v5 + 40];
        sub_1C3CA7308((*a3 + 8 * v81), (*a3 + 8 * *&v9[16 * v5 + 32]), (*a3 + 8 * v82), v42);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v82 < v81)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C3CA7838(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_108;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        v124 = v9;
        sub_1C3CA77AC(v5);
        v9 = v124;
        v40 = *(v124 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v40 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_109;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_110;
      }

      v54 = &v9[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_112;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_115;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v5 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_94;
    }
  }

  v113 = v9;
  v106 = v6;
  v84 = *a3;
  sub_1C3D20374();
  v119 = v84;
  v5 = v84 + 8 * v25 - 8;
  v85 = v10 - v25;
  v109 = v37;
LABEL_82:
  v116 = v25;
  v86 = *(v119 + 8 * v25);
  v110 = v85;
  v111 = v5;
  while (1)
  {
    v87 = *v5;
    v88 = v86;
    v89 = v87;
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v90 = [v88 title];
    v91 = sub_1C3D20104();
    v93 = v92;

    v122 = v91;
    v123 = v93;
    v94 = [v89 title];
    v95 = sub_1C3D20104();
    v97 = v96;

    v120 = v95;
    v121 = v97;
    sub_1C3C4999C();
    v98 = sub_1C3D20744();

    if (v98 != -1)
    {
LABEL_81:
      v25 = v116 + 1;
      v5 = v111 + 8;
      v85 = v110 - 1;
      v8 = v109;
      if (v116 + 1 != v109)
      {
        goto LABEL_82;
      }

      v6 = v106;
      v9 = v113;
      if (v109 < v108)
      {
        goto LABEL_122;
      }

      goto LABEL_31;
    }

    if (!v119)
    {
      break;
    }

    v99 = *v5;
    v86 = *(v5 + 8);
    *v5 = v86;
    *(v5 + 8) = v99;
    v5 -= 8;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_81;
    }
  }

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
}

uint64_t sub_1C3CA7308(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v36 = __src;
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v42 = &v4[v13];
    if (v11 >= 8 && v6 > v36)
    {
      sub_1C3D20374();
      v37 = v4;
LABEL_29:
      v41 = v6;
      v25 = v6 - 1;
      --v5;
      v26 = v42;
      v39 = v25;
      do
      {
        v27 = *--v26;
        v28 = *v25;
        v29 = v27;
        v30 = v28;
        sub_1C3D20364();
        sub_1C3D20314();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v31 = [v29 title];
        sub_1C3D20104();

        v32 = [v30 title];
        sub_1C3D20104();

        sub_1C3C4999C();
        v33 = sub_1C3D20744();

        v34 = v5 + 1;
        if (v33 == -1)
        {
          v4 = v37;
          if (v34 != v41)
          {
            *v5 = *v39;
          }

          if (v42 <= v37 || (v6 = v39, v39 <= v36))
          {
            v6 = v39;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        v4 = v37;
        if (v34 != v42)
        {
          *v5 = *v26;
        }

        --v5;
        v42 = v26;
        v25 = v39;
      }

      while (v26 > v37);
      v42 = v26;
      v6 = v41;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = __src;
    v42 = &v4[v10];
    if (v8 >= 8 && v6 < a3)
    {
      sub_1C3D20374();
      while (1)
      {
        v40 = v6;
        v15 = *v6;
        v16 = v4;
        v17 = *v4;
        v18 = v15;
        v19 = v17;
        sub_1C3D20364();
        sub_1C3D20314();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v20 = [v18 title];
        sub_1C3D20104();

        v21 = [v19 title];
        sub_1C3D20104();

        sub_1C3C4999C();
        v22 = sub_1C3D20744();

        if (v22 != -1)
        {
          break;
        }

        v23 = v40;
        if (v14 != v40++)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v14;
        if (v4 < v42)
        {
          v6 = v40;
          if (v40 < a3)
          {
            continue;
          }
        }

        goto LABEL_41;
      }

      v23 = v4++;
      if (v14 == v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v14 = *v23;
      goto LABEL_17;
    }

LABEL_41:
    v6 = v14;
  }

LABEL_44:
  if (v6 != v4 || v6 >= (v4 + ((v42 - v4 + (v42 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v42 - v4));
  }

  return 1;
}

uint64_t sub_1C3CA77AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C3CA7838(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1C3CA784C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C3CA9244(0, &qword_1EC085C08, sub_1C3CA92A8, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1C3CA798C(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1C3D20964();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1C3CA669C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C3CA7A28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C3D20964();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C3D20964();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3CA9244(0, &qword_1EC086EC0, type metadata accessor for AudiogramLongitudinalChartData, MEMORY[0x1E69E62F8]);
          sub_1C3CA96E4(&qword_1EC086EC8, &qword_1EC086EC0, type metadata accessor for AudiogramLongitudinalChartData);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C3C90374(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AudiogramLongitudinalChartData();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CA7BDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C3D20964();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C3D20964();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3CA9244(0, &qword_1EC086EB0, sub_1C3C82884, MEMORY[0x1E69E62F8]);
          sub_1C3CA96E4(&qword_1EC086EB8, &qword_1EC086EB0, sub_1C3C82884);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C3C903F4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C3C82884();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CA7D90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C3D20964();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C3D20964();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3CA91DC(0, &qword_1EC086E98, &qword_1EC086340, 0x1E69DD258, MEMORY[0x1E69E62F8]);
          sub_1C3CA9680(&unk_1EC086EA0, &qword_1EC086E98, &qword_1EC086340, 0x1E69DD258);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C3C90374(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C3C27CB4(0, &qword_1EC086340);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CA7F58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C3D20964();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C3D20964();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3CA91DC(0, &qword_1EC085D48, &qword_1EC085D50, 0x1E696BFC0, MEMORY[0x1E69E62F8]);
          sub_1C3CA9680(&unk_1EC086E30, &qword_1EC085D48, &qword_1EC085D50, 0x1E696BFC0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C3C90374(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C3C27CB4(0, &qword_1EC085D50);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CA8120(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C3D20964();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C3D20964();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3CA91DC(0, &qword_1EC086E88, &qword_1EC086E80, off_1E81B21B8, MEMORY[0x1E69E62F8]);
          sub_1C3CA9680(&qword_1EC086E90, &qword_1EC086E88, &qword_1EC086E80, off_1E81B21B8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1C3C90374(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C3C27CB4(0, &qword_1EC086E80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C3CA8338(uint64_t a1)
{
  v2 = sub_1C3D1E064();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C3D1E024();
    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    aBlock[4] = sub_1C3CA9100;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C3CA4390;
    aBlock[3] = &block_descriptor_14;
    v10 = _Block_copy(aBlock);

    [v6 openURL:v7 configuration:0 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C3CA8520()
{
  v1 = v0;
  v2 = sub_1C3D1E224();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClinicalAddAccountRow();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D1EE34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts;
  v14 = *(v0 + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts);
  if (v14 >> 62)
  {
    if (sub_1C3D20964())
    {
      goto LABEL_4;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!sub_1C3D1E574())
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    MEMORY[0x1C692FBC0]();
    v28 = sub_1C3D200C4();
    v29 = HKHealthRecordsAPILocalizedString(v28);

    if (v29)
    {
      sub_1C3D20104();
    }

    sub_1C3D1EE24();
    v30 = objc_opt_self();
    v31 = [v30 secondaryLabelColor];
    v32 = sub_1C3D1EE14();
    sub_1C3D1EE04();
    v32(v72, 0);
    v72[3] = v9;
    v72[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v72);
    (*(v10 + 16))(boxed_opaque_existential_0, v12, v9);
    MEMORY[0x1C692FBB0](v72);
    [v27 setSelectionStyle_];
    v19 = v27;
    v34 = sub_1C3D202A4();
    v35 = HKUIJoinStringsForAutomationIdentifier(v34);

    [v19 setAccessibilityIdentifier_];
    v36 = [v19 traitCollection];
    v37 = [v36 userInterfaceIdiom];

    if (v37 != 6)
    {
      v38 = [v30 secondarySystemBackgroundColor];
      [v19 setBackgroundColor_];
    }

    (*(v10 + 8))(v12, v9);
    return v19;
  }

LABEL_4:
  v15 = sub_1C3D1E574();
  v16 = *(v0 + v13);
  if (v16 >> 62)
  {
    if (v15 == sub_1C3D20964())
    {
      goto LABEL_6;
    }
  }

  else if (v15 == *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v72[0] = 0x403E000000000000;
    sub_1C3C4C46C();
    sub_1C3D1F084();
    sub_1C3CA9404();
    v18 = [objc_allocWithZone(v17) initWithStyle:0 reuseIdentifier:0];
    [v18 setSelectionStyle_];
    v19 = v18;
    v20 = sub_1C3D202A4();
    v21 = HKUIJoinStringsForAutomationIdentifier(v20);

    [v19 setAccessibilityIdentifier_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      sub_1C3CA4E98(v8, Strong);
    }

    v24 = [v19 traitCollection];
    v25 = [v24 userInterfaceIdiom];

    if (v25 != 6)
    {
      v26 = [objc_opt_self() secondarySystemBackgroundColor];
      [v19 setBackgroundColor_];
    }

    sub_1C3CA94E0(v8);
    return v19;
  }

  v39 = sub_1C3D1E574();
  v40 = *(v0 + v13);
  if (!(v40 >> 62))
  {
    if (v39 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_31:
    v19 = [objc_allocWithZone(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    v65 = [v19 traitCollection];
    v66 = [v65 userInterfaceIdiom];

    if (v66 != 6)
    {
      v67 = [objc_opt_self() secondarySystemBackgroundColor];
      [v19 setBackgroundColor_];
    }

    return v19;
  }

  if (v39 >= sub_1C3D20964())
  {
    goto LABEL_31;
  }

LABEL_21:
  result = sub_1C3D1E574();
  v42 = *(v0 + v13);
  if ((v42 & 0xC000000000000001) != 0)
  {
    v68 = result;

    v69 = MEMORY[0x1C692FEB0](v68, v42);

    v43 = v69;
    goto LABEL_25;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(v42 + 8 * result + 32);
LABEL_25:
    v44 = *(v1 + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_context);
    v72[0] = v43;
    v72[1] = v44;
    v73 = 1;
    v45 = v43;
    v46 = [v44 wrappedFlowManager];
    sub_1C3D20774();
    swift_unknownObjectRelease();
    type metadata accessor for ClinicalAuthorizationFlowManager();
    swift_dynamicCast();
    v47 = v71;
    v48 = *&v71[OBJC_IVAR___HKClinicalAuthorizationFlowManager_healthRecordsStore];

    v49 = type metadata accessor for ClinicalAccountLogoLoader();
    v50 = swift_allocObject();
    v50[4] = 0x8000000000000000;
    sub_1C3D1E5E4();
    v50[2] = v48;
    v50[3] = v45;
    v72[5] = v49;
    v72[6] = &off_1F42FE4F0;
    v72[2] = v50;
    sub_1C3CA9300();
    v52 = [objc_allocWithZone(v51) initWithStyle:0 reuseIdentifier:0];
    [v52 setSelectionStyle_];
    [v52 setAccessoryType_];
    sub_1C396C48C(0, &qword_1EC081100);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C3D602D0;
    *(v53 + 32) = 0x746E756F636341;
    *(v53 + 40) = 0xE700000000000000;
    v19 = v52;
    v54 = [v45 identifier];

    sub_1C3D1E204();
    v55 = sub_1C3D1E1F4();
    v57 = v56;
    (*(v3 + 8))(v5, v2);
    *(v53 + 48) = v55;
    *(v53 + 56) = v57;
    *(v53 + 64) = 1819043139;
    *(v53 + 72) = 0xE400000000000000;
    v58 = sub_1C3D202A4();

    v59 = HKUIJoinStringsForAutomationIdentifier(v58);

    [v19 setAccessibilityIdentifier_];
    v60 = swift_unknownObjectWeakLoadStrong();
    if (v60)
    {
      v61 = v60;
      sub_1C3CA5578(v72, v60);
    }

    v62 = [v19 traitCollection];
    v63 = [v62 userInterfaceIdiom];

    if (v63 != 6)
    {
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      [v19 setBackgroundColor_];
    }

    sub_1C3CA93B0(v72);
    return v19;
  }

  __break(1u);
  return result;
}

void sub_1C3CA8EBC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = sub_1C3D206E4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  v8 = qword_1EC086D98;
  v9[1] = *((v3 & v2) + 0x58);
  swift_getWitnessTable();
  sub_1C3D1F494();
  (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
  *(v1 + v8) = sub_1C3D1F464();
  sub_1C3D20944();
  __break(1u);
}

uint64_t sub_1C3CA9040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3C42AC8;

  return sub_1C3CA6448(a1, v4, v5, v6);
}

void sub_1C3CA9100(uint64_t a1, void *a2)
{
  v5 = *(sub_1C3D1E064() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1C3CA4054(a1, a2, v6);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C3CA9198()
{
  result = qword_1EC086E20;
  if (!qword_1EC086E20)
  {
    type metadata accessor for ClinicalAccountsOverviewDataSourceAndDelegate();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC086E20);
  }

  return result;
}

void sub_1C3CA91DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1C3CA9244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3CA92A8()
{
  if (!qword_1EC086E40)
  {
    v0 = sub_1C3D20484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086E40);
    }
  }
}

void sub_1C3CA9300()
{
  if (!qword_1EC086E48)
  {
    sub_1C3CA935C();
    v0 = type metadata accessor for HostingTableViewCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086E48);
    }
  }
}

unint64_t sub_1C3CA935C()
{
  result = qword_1EC086E50;
  if (!qword_1EC086E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086E50);
  }

  return result;
}

void sub_1C3CA9404()
{
  if (!qword_1EC086E68)
  {
    type metadata accessor for ClinicalAddAccountRow();
    sub_1C3CA9498(&qword_1EC086E70, type metadata accessor for ClinicalAddAccountRow);
    v0 = type metadata accessor for HostingTableViewCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086E68);
    }
  }
}

uint64_t sub_1C3CA9498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CA94E0(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalAddAccountRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3CA953C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalAddAccountRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CA9680(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C3CA91DC(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3CA96E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C3CA9244(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OverlayConfiguration.attributes.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void OverlayConfiguration.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t OverlayConfiguration.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OverlayConfiguration() + 28);
  v4 = sub_1C3D1E5B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OverlayConfiguration()
{
  result = qword_1EC086ED0;
  if (!qword_1EC086ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlayConfiguration.init(attributes:frame:kind:indexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a1;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a8;
  *(a5 + 32) = a9;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  v11 = *(type metadata accessor for OverlayConfiguration() + 28);
  v12 = sub_1C3D1E5B4();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

void sub_1C3CA99C4()
{
  sub_1C3CA9A78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_1C3CA9AD0();
      if (v2 <= 0x3F)
      {
        sub_1C3D1E5B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C3CA9A78()
{
  if (!qword_1EC086EE0)
  {
    type metadata accessor for CalendarViewLayoutAttributes();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086EE0);
    }
  }
}

unint64_t sub_1C3CA9AD0()
{
  result = qword_1EC086EE8;
  if (!qword_1EC086EE8)
  {
    sub_1C3CA9B18();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC086EE8);
  }

  return result;
}

unint64_t sub_1C3CA9B18()
{
  result = qword_1EC086EF0;
  if (!qword_1EC086EF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC086EF0);
  }

  return result;
}

uint64_t View.hideCancellationButton()()
{
  sub_1C3CA9DEC();
  sub_1C3CA9E70();
  sub_1C3CA9ED4();
  swift_getOpaqueTypeConformance2();
  return sub_1C3D1FAA4();
}

uint64_t sub_1C3CA9C28()
{
  v0 = sub_1C3D1F594();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C3CA9E70();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1F574();
  sub_1C3D1F064();
  v6 = sub_1C3CA9ED4();
  MEMORY[0x1C692EC20](v5, v2, v6);
  (*(v3 + 8))(v5, v2);
}

void sub_1C3CA9DEC()
{
  if (!qword_1EC086EF8)
  {
    sub_1C3CA9E70();
    sub_1C3CA9ED4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC086EF8);
    }
  }
}

void sub_1C3CA9E70()
{
  if (!qword_1EC086F00)
  {
    v0 = sub_1C3D1F074();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086F00);
    }
  }
}

unint64_t sub_1C3CA9ED4()
{
  result = qword_1EC086F08;
  if (!qword_1EC086F08)
  {
    sub_1C3CA9E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086F08);
  }

  return result;
}

uint64_t sub_1C3CA9F2C@<X0>(uint64_t a1@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

unint64_t sub_1C3CA9FC0()
{
  v1 = OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes;
  if (*&v0[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes])
  {
    v2 = *&v0[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes];
  }

  else
  {
    v2 = sub_1C3CAA028(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

unint64_t sub_1C3CAA028(void *a1)
{
  sub_1C3CB04AC(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5DCD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = v3;
  v5 = [a1 majorFont];
  if (!v5)
  {
    v5 = [objc_opt_self() preferredFontForTextStyle_];
  }

  v6 = sub_1C3C27CB4(0, &qword_1EC080DF0);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 hk_chartLollipopValueColor];
  *(inited + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 80) = v10;
  v11 = sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  return v11;
}

id SleepScoreChartFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScoreChartFormatter.init()()
{
  *&v0[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes] = 0;
  *&v0[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___unitAttributes] = 0;
  v1 = OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext;
  v2 = sub_1C3D1E654();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SleepScoreChartFormatter();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for SleepScoreChartFormatter()
{
  result = qword_1EC086F38;
  if (!qword_1EC086F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SleepScoreChartFormatter.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes] = 0;
  *&v3[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___unitAttributes] = 0;
  sub_1C3CAF8F0(a1, &v3[OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext], type metadata accessor for SleepScoreDataSourceContext);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1C3CAF9C8(a1, type metadata accessor for SleepScoreDataSourceContext);
  return v4;
}

id SleepScoreChartFormatter.init(context:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___valueAttributes] = 0;
  *&v1[OBJC_IVAR___HKSleepScoreChartFormatter____lazy_storage___unitAttributes] = 0;
  sub_1C3CAF8F0(a1, &v1[OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext], type metadata accessor for SleepScoreDataSourceContext);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SleepScoreChartFormatter();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1C3CAF9C8(a1, type metadata accessor for SleepScoreDataSourceContext);
  return v3;
}

size_t sub_1C3CAA4E0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  sub_1C3CAAC78();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB04AC(0, &qword_1EC086F30, MEMORY[0x1E696B418], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v69 = type metadata accessor for SleepScoreChartData();
  v11 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = sub_1C3D1E6F4();
  v18 = a1;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  if (v21 >> 62)
  {
    v68 = v5;
    v64 = v19;
    v39 = v21;
    v40 = v22;
    v41 = sub_1C3D20964();
    v22 = v40;
    v42 = v41;
    v21 = v39;
    v19 = v64;
    v5 = v68;
    if (!v42)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v66 = v22;
  v68 = v5;
  v25 = sub_1C3C81F64(v21);
  result = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
    return result;
  }

  v65 = v7;
  v67 = v24;
  if (v25 >> 62)
  {
    v43 = v19;
    v44 = MEMORY[0x1E69E7CC0];
    v27 = sub_1C3D20964();
    result = v44;
    v19 = v43;
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_21:

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_21;
  }

LABEL_6:
  v64 = v19;
  v71 = result;
  result = sub_1C3C23E68(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
    return result;
  }

  v61 = v17;
  v62 = v10;
  v63 = v2;
  v28 = v71;
  if ((v25 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v27; ++i)
    {
      v30 = MEMORY[0x1C692FEB0](i, v25);
      v31 = OBJC_IVAR____TtC8HealthUI24SleepScoreCoordinateInfo_chartData;
      swift_beginAccess();
      sub_1C3CAF8F0(v30 + v31, v16, type metadata accessor for SleepScoreChartData);
      swift_unknownObjectRelease();
      v71 = v28;
      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        sub_1C3C23E68(v32 > 1, v33 + 1, 1);
        v28 = v71;
      }

      v28[2] = v33 + 1;
      sub_1C3CB038C(v16, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, type metadata accessor for SleepScoreChartData);
    }
  }

  else
  {
    v34 = (v25 + 32);
    do
    {
      v35 = *v34;
      v36 = OBJC_IVAR____TtC8HealthUI24SleepScoreCoordinateInfo_chartData;
      swift_beginAccess();
      sub_1C3CAF8F0(v35 + v36, v13, type metadata accessor for SleepScoreChartData);
      v71 = v28;
      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        sub_1C3C23E68(v37 > 1, v38 + 1, 1);
        v28 = v71;
      }

      v28[2] = v38 + 1;
      sub_1C3CB038C(v13, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v38, type metadata accessor for SleepScoreChartData);
      ++v34;
      --v27;
    }

    while (v27);
  }

  v10 = v62;
  v2 = v63;
  v17 = v61;
  v19 = v64;
LABEL_22:
  v45 = v65;
  v46 = v68;
  if (!v28[2])
  {

    return MEMORY[0x1E69E7CC0];
  }

  v47 = v66;
  (*(v19 + 16))(v66, v28 + *(v69 + 36) + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v17);
  (*(v19 + 32))(v67, v47, v17);
  sub_1C3CAAD98(v28, v10);
  v48 = OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext;
  v49 = *(v46 + 48);
  v50 = v70;
  *v45 = v70;
  sub_1C3CAF8F0(v2 + v48, v45 + v49, type metadata accessor for SleepScoreDataSourceContext);
  if (v50)
  {
    if (v50 == 1)
    {
      v51 = v19;
      v52 = v45;
      v53 = v2;
      sub_1C3CABD10(v28);
LABEL_32:
      v58 = v54;

      v57 = v58;
      sub_1C3CAF9C8(v52 + v49, type metadata accessor for SleepScoreDataSourceContext);
      goto LABEL_33;
    }

    sub_1C3CAF958(v10, &qword_1EC086F30, MEMORY[0x1E696B418]);
    (*(v19 + 8))(v67, v17);
    sub_1C3CAF9C8(v45, sub_1C3CAAC78);
    return MEMORY[0x1E69E7CC0];
  }

  v51 = v19;
  v55 = sub_1C3D1E654();
  if ((*(*(v55 - 8) + 48))(v45 + v49, 1, v55) != 1)
  {
    v52 = v45;
    v53 = v2;
    v54 = sub_1C3CACF5C(v28);
    goto LABEL_32;
  }

  v53 = v2;
  v56 = sub_1C3CAB3F4(v28);

  v57 = v56;
LABEL_33:
  v59 = v67;
  (*((*MEMORY[0x1E69E7D40] & *v53) + 0xD0))(v57, v10, v67);
  sub_1C3C27C60();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1C3D5EAE0;
  *(v60 + 32) = v57;

  sub_1C3CAF958(v10, &qword_1EC086F30, MEMORY[0x1E696B418]);
  (*(v51 + 8))(v59, v17);
  return v60;
}

void sub_1C3CAAC78()
{
  if (!qword_1EC086F28)
  {
    type metadata accessor for HKFormatterContext(255);
    type metadata accessor for SleepScoreDataSourceContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC086F28);
    }
  }
}

uint64_t sub_1C3CAAD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C3C29A0C();
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v48 - v7;
  v8 = sub_1C3D1FE54();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v48 - v11;
  v12 = type metadata accessor for SleepScoreChartData();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C29314();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v64 = *(a1 + 16);
  if (v64)
  {
    v49 = &v48 - v21;
    v50 = a2;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v24 = v20;
    sub_1C3CAF8F0(v23, v18, sub_1C3C29314);
    v48 = v24;
    v25 = *(v24 + 36);
    v63 = &v18[v25];
    v56 = v15;
    v57 = &v15[v25];
    v26 = *(v13 + 72);
    v58 = (v51 + 16);
    v54 = (v51 + 32);
    v55 = v26;
    v53 = (v51 + 8);
    do
    {
      v62 = v23;
      sub_1C3CAF8F0(v23, v15, type metadata accessor for SleepScoreChartData);
      sub_1C3CB05A4(&qword_1EC086290, MEMORY[0x1E696B418]);
      v27 = sub_1C3D1FFE4();
      v28 = *v58;
      if (v27)
      {
        v29 = v15;
      }

      else
      {
        v29 = v18;
      }

      v28(v66, v29, v8);
      v30 = v57;
      v31 = v63;
      if (sub_1C3D1FFF4())
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      v52 = v28;
      v28(v65, v32, v8);
      v33 = sub_1C3D20004();
      sub_1C3CAF9C8(v15, type metadata accessor for SleepScoreChartData);
      result = sub_1C3CAF9C8(v18, sub_1C3C29314);
      if ((v33 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v35 = *v54;
      v36 = v60;
      (*v54)(v60, v66, v8);
      v37 = v61;
      v35((v36 + *(v61 + 48)), v65, v8);
      v38 = v59;
      sub_1C3CAF8F0(v36, v59, sub_1C3C29A0C);
      v39 = *(v37 + 48);
      v35(v18, v38, v8);
      v40 = v18;
      v41 = *v53;
      v42 = v38 + v39;
      v43 = v64;
      (*v53)(v42, v8);
      v44 = v36;
      v15 = v56;
      sub_1C3CB038C(v44, v38, sub_1C3C29A0C);
      v35(v63, (v38 + *(v37 + 48)), v8);
      v41(v38, v8);
      v18 = v40;
      v23 = v62 + v55;
      v64 = v43 - 1;
    }

    while (v43 != 1);
    v45 = v49;
    sub_1C3CB038C(v40, v49, sub_1C3C29314);
    sub_1C3CB05A4(&unk_1EC0862A0, MEMORY[0x1E696B418]);
    if (sub_1C3D20034())
    {
      v46 = v50;
      v52(v50, v45, v8);
      sub_1C3CAF9C8(v45, sub_1C3C29314);
      return (*(v51 + 56))(v46, 0, 1, v8);
    }

    else
    {
      sub_1C3CAF9C8(v45, sub_1C3C29314);
      return (*(v51 + 56))(v50, 1, 1, v8);
    }
  }

  else
  {
    v47 = *(v51 + 56);

    return v47(a2, 1, 1, v8, v22);
  }
}

uint64_t sub_1C3CAB3F4(void *a1)
{
  v2 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1C3D1E624();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3D1E6F4();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C3D1E6E4();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB04AC(0, &qword_1EC0857C0, type metadata accessor for SleepScoreChartData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for SleepScoreChartData();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v26 = a1[2];
  v45 = v4;
  if (v26 == 1)
  {
    sub_1C3CAF8F0(a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), &v37 - v24, type metadata accessor for SleepScoreChartData);
    v28 = v25[v20[10]];
    sub_1C3CAF9C8(v25, type metadata accessor for SleepScoreChartData);
    if (v28)
    {
      v27 = 27;
    }

    else
    {
      v27 = 25;
    }
  }

  else
  {
    if (!v26)
    {
      __break(1u);
      goto LABEL_11;
    }

    v27 = 27;
  }

  v25 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  sub_1C3CABBA0(a1, v19);
  result = (*(v21 + 48))(v19, 1, v20);
  if (result != 1)
  {
    v30 = v19;
    v19 = v41;
    sub_1C3CB038C(v30, v41, type metadata accessor for SleepScoreChartData);
    v31 = *&v19[v20[5]];
    (*(v39 + 16))(v13, &v19[v20[9]], v40);
    sub_1C3D1E6B4();
    sub_1C3D1E6C4();
    (*(v37 + 8))(v16, v38);
    sub_1C3D1E614();
    (*(v42 + 8))(v10, v43);
    sub_1C3D20084();
    sub_1C3D20074();
    v46 = v31;
    sub_1C3D20054();
    sub_1C3D20074();
    sub_1C3D20064();

    sub_1C3D20074();
    sub_1C3D200A4();
    if (qword_1EC080DC0 == -1)
    {
LABEL_9:
      v32 = qword_1EC08DBD8;
      sub_1C3D1E284();
      sub_1C3D20124();
      sub_1C3CA9FC0();
      v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v34 = sub_1C3D200C4();

      type metadata accessor for Key(0);
      sub_1C3CB05A4(&qword_1EC080E30, type metadata accessor for Key);
      v35 = sub_1C3D1FEE4();

      v36 = [v33 initWithString:v34 attributes:v35];

      [v25 setAttributedString_];
      sub_1C3CAF9C8(v19, type metadata accessor for SleepScoreChartData);
      return v25;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CABB08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v4 = a1;

  sub_1C3CADCD4(&v4);
  if (v1 >> 1 < *(v4 + 2))
  {
    v2 = *&v4[8 * (v1 >> 1) + 32];

    return v2;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C3CABBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  if (v3)
  {
    v14 = a1;

    sub_1C3CADE08(&v14);
    v4 = v14;
    v5 = v3 >> 1;
    if (v5 >= v14[2])
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = type metadata accessor for SleepScoreChartData();
    v13 = *(v6 - 8);
    sub_1C3CAF8F0(v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, type metadata accessor for SleepScoreChartData);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for SleepScoreChartData();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

void sub_1C3CABD10(uint64_t a1)
{
  v2 = sub_1C3D1E624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB04AC(0, &qword_1EC085A20, MEMORY[0x1E69D36D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1C3D1E6E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v18 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
    sub_1C3CAC3A4(sub_1C3CAC09C, 0, sub_1C3CAC18C, 0, a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_1C3D1E6C4();
      sub_1C3D1E614();
      (*(v3 + 8))(v5, v2);
      sub_1C3CA9FC0();
      v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v14 = sub_1C3D200C4();

      type metadata accessor for Key(0);
      sub_1C3CB05A4(&qword_1EC080E30, type metadata accessor for Key);
      v15 = sub_1C3D1FEE4();

      v16 = [v13 initWithString:v14 attributes:v15];

      [v18 setAttributedString_];
      (*(v10 + 8))(v12, v9);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C3CAC09C(uint64_t a1)
{
  v2 = sub_1C3D1E6F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepScoreChartData();
  (*(v3 + 16))(v5, a1 + *(v6 + 36), v2);
  return sub_1C3D1E6B4();
}

void sub_1C3CAC18C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1C3D1E6E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v8;
  v11 = *(a1 + 16);
  if (v11)
  {
    v26 = v4;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v29 = v13;
    v30 = v12;
    (v13)(&v25 - v8, a1 + v14, v3, v9);
    if (v11 == 1)
    {
LABEL_3:
      (*(v26 + 32))(v25, v10, v3);
      return;
    }

    v15 = *(v26 + 72);
    v16 = (v26 + 8);
    v27 = (v26 + 32);
    v28 = v15;
    v17 = a1 + v15 + v14;
    v18 = 1;
    while (1)
    {
      v29(v6, v17, v3);
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v20 = v11;
      sub_1C3D1E6A4();
      v22 = v21;
      sub_1C3D1E6A4();
      v23 = *v16;
      if (v22 < v24)
      {
        v23(v10, v3);
        (*v27)(v10, v6, v3);
      }

      else
      {
        v23(v6, v3);
      }

      v11 = v20;
      ++v18;
      v17 += v28;
      if (v19 == v20)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C3CAC3A4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112[1] = a4;
  v113 = a3;
  v133 = a1;
  v134 = a2;
  v114 = a6;
  sub_1C3CB0320();
  v127 = v7;
  v121 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v126 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v125 = v112 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v124 = v112 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v123 = v112 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v129 = v112 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v130 = v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v120 = v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v131 = v112 - v22;
  v135 = sub_1C3D1E6E4();
  v23 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v25 = v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v112 - v27;
  sub_1C3CB04AC(0, &unk_1EC086F50, sub_1C3CB0320, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v115 = v112 - v30;
  v31 = sub_1C3C758B4(MEMORY[0x1E69E7CC0]);
  v32 = *(a5 + 16);
  v128 = v23;
  if (v32)
  {
    v33 = *(type metadata accessor for SleepScoreChartData() - 8);
    v132 = v23 + 16;
    v34 = (v23 + 8);
    v35 = a5 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v36 = *(v33 + 72);
    while (1)
    {
      v133(v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = v31;
      v38 = sub_1C3CA05B8(v28);
      v40 = *(v31 + 16);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_60;
      }

      v44 = v39;
      if (*(v31 + 24) < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v52 = v38;
      sub_1C3CF9484();
      v38 = v52;
      v31 = v136;
      if ((v44 & 1) == 0)
      {
LABEL_9:
        *(v31 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        v46 = v38;
        (*(v128 + 16))(*(v31 + 48) + *(v128 + 72) * v38, v28, v135);
        *(*(v31 + 56) + 8 * v46) = 0;
        v47 = *(v31 + 16);
        v42 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v42)
        {
          goto LABEL_68;
        }

        v38 = v46;
        *(v31 + 16) = v48;
      }

LABEL_11:
      v49 = *(v31 + 56);
      v50 = *(v49 + 8 * v38);
      v42 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v42)
      {
        goto LABEL_61;
      }

      *(v49 + 8 * v38) = v51;
      (*v34)(v28, v135);
      v35 += v36;
      if (!--v32)
      {
        goto LABEL_16;
      }
    }

    sub_1C3CA194C(v43, isUniquelyReferenced_nonNull_native);
    v31 = v136;
    v38 = sub_1C3CA05B8(v28);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_69;
    }

LABEL_8:
    if ((v44 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_16:
  v122 = v25;
  v53 = 1 << *(v31 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v31 + 64);
  if (v55)
  {
    v56 = 0;
    v57 = __clz(__rbit64(v55));
    v58 = (v55 - 1) & v55;
    v59 = (v53 + 63) >> 6;
    v60 = v129;
    v61 = v131;
LABEL_24:
    v66 = *(v31 + 48);
    v67 = *(v128 + 16);
    v133 = *(v128 + 72);
    v134 = v67;
    v68 = v120;
    v67(v120, v66 + v133 * v57, v135);
    *(v68 + *(v127 + 48)) = *(*(v31 + 56) + 8 * v57);
    sub_1C3CB038C(v68, v61, sub_1C3CB0320);

    if (v58)
    {
      goto LABEL_27;
    }

LABEL_28:
    while (1)
    {
      v69 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v69 >= v59)
      {

        v75 = v115;
        sub_1C3CB038C(v61, v115, sub_1C3CB0320);
        v76 = 0;
        v63 = v135;
        v64 = v128;
        goto LABEL_35;
      }

      v58 = *(v31 + 64 + 8 * v69);
      ++v56;
      if (v58)
      {
        while (1)
        {
          v70 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v71 = v70 | (v69 << 6);
          (v134)(v60, *(v31 + 48) + v71 * v133, v135);
          v72 = v127;
          *(v60 + *(v127 + 48)) = *(*(v31 + 56) + 8 * v71);
          v73 = v130;
          sub_1C3CB038C(v60, v130, sub_1C3CB0320);
          v74 = *(v72 + 48);
          v61 = v131;
          if (*(v131 + v74) >= *(v73 + v74))
          {
            sub_1C3CAF9C8(v73, sub_1C3CB0320);
            v56 = v69;
            if (!v58)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_1C3CAF9C8(v131, sub_1C3CB0320);
            sub_1C3CB038C(v73, v61, sub_1C3CB0320);
            v56 = v69;
            if (!v58)
            {
              goto LABEL_28;
            }
          }

LABEL_27:
          v69 = v56;
        }
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v62 = 0;
    v59 = (v53 + 63) >> 6;
    v63 = v135;
    v64 = v128;
    v60 = v129;
    v61 = v131;
    while (v59 - 1 != v62)
    {
      v56 = v62 + 1;
      v65 = *(v31 + 72 + 8 * v62);
      v55 -= 64;
      ++v62;
      if (v65)
      {
        v58 = (v65 - 1) & v65;
        v57 = __clz(__rbit64(v65)) - v55;
        goto LABEL_24;
      }
    }

    v76 = 1;
    v75 = v115;
LABEL_35:
    v77 = (*(v121 + 56))(v75, v76, 1, v127);
    MEMORY[0x1EEE9AC00](v77);
    v112[-2] = v75;
    sub_1C3CAFB2C(sub_1C3CB03F4, &v112[-4], v31);
    v79 = v78;

    v80 = *(v79 + 2);
    if (!v80)
    {
      (*(v64 + 56))(v114, 1, 1, v63);

      return sub_1C3CAF958(v75, &unk_1EC086F50, sub_1C3CB0320);
    }

    v136 = MEMORY[0x1E69E7CC0];
    sub_1C3C23E18(0, v80, 0);
    v81 = v136;
    v82 = v79 + 64;
    v83 = sub_1C3D207C4();
    v84 = 0;
    v134 = *(v79 + 9);
    v121 = v64 + 16;
    v116 = v79 + 72;
    v117 = v80;
    v118 = v79 + 64;
    v119 = v64 + 32;
    v120 = v79;
    while ((v83 & 0x8000000000000000) == 0 && v83 < 1 << v79[32])
    {
      if ((*&v82[8 * (v83 >> 6)] & (1 << v83)) == 0)
      {
        goto LABEL_63;
      }

      if (v134 != *(v79 + 9))
      {
        goto LABEL_64;
      }

      v130 = 1 << v83;
      v131 = v83 >> 6;
      v129 = v84;
      v87 = *(v79 + 6);
      v132 = *(v64 + 72);
      v133 = v81;
      v88 = *(v64 + 16);
      v89 = v123;
      v88(v123, v87 + v132 * v83, v63);
      v90 = *(*(v79 + 7) + 8 * v83);
      v91 = *(v64 + 32);
      v92 = v124;
      v91(v124, v89, v63);
      v93 = v127;
      *(v92 + *(v127 + 48)) = v90;
      v94 = v125;
      sub_1C3CAF8F0(v92, v125, sub_1C3CB0320);
      v95 = *(v93 + 48);
      v96 = *(v94 + v95);
      v97 = v126;
      v98 = v94;
      v63 = v135;
      v91(v126, v98, v135);
      *&v97[v95] = v96;
      v99 = v122;
      v88(v122, v97, v63);
      v100 = v97;
      v81 = v133;
      sub_1C3CAF9C8(v100, sub_1C3CB0320);
      sub_1C3CAF9C8(v92, sub_1C3CB0320);
      v136 = v81;
      v102 = *(v81 + 2);
      v101 = *(v81 + 3);
      if (v102 >= v101 >> 1)
      {
        sub_1C3C23E18(v101 > 1, v102 + 1, 1);
        v81 = v136;
      }

      *(v81 + 2) = v102 + 1;
      v64 = v128;
      v91(v81 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + v102 * v132, v99, v63);
      v79 = v120;
      v85 = 1 << v120[32];
      if (v83 >= v85)
      {
        goto LABEL_65;
      }

      v82 = v118;
      v103 = *&v118[8 * v131];
      if ((v103 & v130) == 0)
      {
        goto LABEL_66;
      }

      if (v134 != *(v120 + 9))
      {
        goto LABEL_67;
      }

      v104 = v103 & (-2 << (v83 & 0x3F));
      if (v104)
      {
        v85 = __clz(__rbit64(v104)) | v83 & 0x7FFFFFFFFFFFFFC0;
        v86 = v129;
      }

      else
      {
        v105 = v131 << 6;
        v106 = v131 + 1;
        v107 = &v116[8 * v131];
        while (v106 < (v85 + 63) >> 6)
        {
          v109 = *v107++;
          v108 = v109;
          v105 += 64;
          ++v106;
          if (v109)
          {
            sub_1C3C91918(v83, v134, 0);
            v85 = __clz(__rbit64(v108)) + v105;
            goto LABEL_54;
          }
        }

        sub_1C3C91918(v83, v134, 0);
LABEL_54:
        v86 = v129;
      }

      v84 = v86 + 1;
      v83 = v85;
      if (v84 == v117)
      {

        v110 = v114;
        v113(v81);

        (*(v64 + 56))(v110, 0, 1, v63);
        v75 = v115;
        return sub_1C3CAF958(v75, &unk_1EC086F50, sub_1C3CB0320);
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_1C3D20AA4();
  __break(1u);
  return result;
}

uint64_t sub_1C3CACF5C(uint64_t a1)
{
  v70 = a1;
  v2 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScoreChartData();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepScoreDataSourceContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  sub_1C3CB04AC(0, &unk_1EC086F60, MEMORY[0x1E69D36C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = sub_1C3D1E654();
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v68 = &v61 - v30;
  v80 = v1;
  v77 = OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext;
  v31 = v1 + OBJC_IVAR___HKSleepScoreChartFormatter_dataSourceContext;
  v33 = v32;
  sub_1C3CAF8F0(v31, v17, type metadata accessor for SleepScoreDataSourceContext);
  v34 = 1;
  v78 = *(v33 + 48);
  v79 = v33 + 48;
  if (v78(v17, 1, v24) != 1)
  {
    (*(v33 + 32))(v20, v17, v24);
    v34 = 0;
  }

  (*(v33 + 56))(v20, v34, 1, v24);
  sub_1C3CB0510(v20, v23);
  if (v78(v23, 1, v24) == 1)
  {
    goto LABEL_28;
  }

  v35 = v68;
  v74 = *(v33 + 32);
  v75 = v33 + 32;
  v74(v68, v23, v24);
  v36 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  v37 = v28;
  (*(v33 + 16))(v28, v35, v24);
  v72 = *(v33 + 88);
  v73 = v33 + 88;
  v38 = v72(v28, v24);
  v39 = MEMORY[0x1E69D36B8];
  v71 = *MEMORY[0x1E69D36C0];
  v67 = v33;
  if (v38 == v71)
  {
    v40 = 42;
    v41 = v70;
  }

  else
  {
    v41 = v70;
    if (v38 == *MEMORY[0x1E69D36B8])
    {
      v40 = 43;
    }

    else if (v38 == *MEMORY[0x1E69D36B0])
    {
      v40 = 44;
    }

    else
    {
      (*(v33 + 8))(v37, v24);
      v40 = 42;
    }
  }

  v65 = v4;
  v63 = v36;
  [v36 setDataType_];
  v42 = *(v41 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  if (v42)
  {
    v82 = MEMORY[0x1E69E7CC0];
    sub_1C3C23CBC(0, v42, 0);
    v43 = v82;
    v44 = v41 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v45 = *(v69 + 72);
    LODWORD(v70) = *v39;
    v62 = (v67 + 8);
    LODWORD(v69) = *MEMORY[0x1E69D36B0];
    do
    {
      sub_1C3CAF8F0(v44, v11, type metadata accessor for SleepScoreChartData);
      sub_1C3CAF8F0(v80 + v77, v14, type metadata accessor for SleepScoreDataSourceContext);
      if (v78(v14, 1, v24) == 1 || (v46 = v76, v74(v76, v14, v24), v47 = v72(v46, v24), v47 == v71) || v47 == v70 || v47 == v69)
      {
        swift_getKeyPath();
      }

      else
      {
        swift_getKeyPath();
        (*v62)(v76, v24);
      }

      swift_getAtKeyPath();

      sub_1C3CAF9C8(v11, type metadata accessor for SleepScoreChartData);
      v48 = v81;
      v82 = v43;
      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1C3C23CBC((v49 > 1), v50 + 1, 1);
        v43 = v82;
      }

      *(v43 + 16) = v50 + 1;
      *(v43 + 8 * v50 + 32) = v48;
      v44 += v45;
      --v42;
    }

    while (v42);
    v35 = v68;
  }

  v51 = sub_1C3CABB08(v43);
  v23 = v52;

  if (v23)
  {
    __break(1u);
LABEL_28:
    sub_1C3CAF958(v23, &unk_1EC086F60, MEMORY[0x1E69D36C8]);
    result = sub_1C3D20944();
    __break(1u);
    return result;
  }

  v53 = sub_1C3D1E644();
  sub_1C3D20084();
  sub_1C3D20074();
  v82 = v51;
  sub_1C3D20054();
  sub_1C3D20074();
  v82 = v53;
  sub_1C3D20054();
  sub_1C3D20074();
  sub_1C3D200A4();
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v54 = qword_1EC08DBD8;
  sub_1C3D1E284();
  sub_1C3D20124();
  sub_1C3CA9FC0();
  v55 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v56 = sub_1C3D200C4();

  type metadata accessor for Key(0);
  sub_1C3CB05A4(&qword_1EC080E30, type metadata accessor for Key);
  v57 = sub_1C3D1FEE4();

  v58 = [v55 initWithString:v56 attributes:v57];

  v59 = v63;
  [v63 setAttributedString_];

  (*(v67 + 8))(v35, v24);
  return v59;
}

id SleepScoreChartFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreChartFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C3CADA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  sub_1C3CB04AC(0, &unk_1EC086F50, sub_1C3CB0320, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  sub_1C3CB0320();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = sub_1C3D1E6E4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  *&v15[*(v9 + 48)] = a2;
  sub_1C3CB038C(v15, v12, sub_1C3CB0320);
  v18 = *&v12[*(v9 + 48)];
  sub_1C3CB0418(v24, v7);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1C3CAF958(v7, &unk_1EC086F50, sub_1C3CB0320);
    v19 = 0;
    (*(v17 + 8))(v12, v16);
  }

  else
  {
    v20 = *&v7[*(v9 + 48)];
    v21 = *(v17 + 8);
    v21(v7, v16);
    v19 = v18 == v20;
    v21(v12, v16);
  }

  return v19;
}

uint64_t sub_1C3CADCD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C3CA82FC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C3D20A04();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
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
      v7 = sub_1C3D202E4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C3CAE240(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1C3CADE08(void **a1)
{
  v2 = *(type metadata accessor for SleepScoreChartData() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C3CA8324(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1C3CADEB0(v5);
  *a1 = v3;
}

void sub_1C3CADEB0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C3D20A04();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SleepScoreChartData();
        v6 = sub_1C3D202E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SleepScoreChartData() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C3CAE78C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C3CADFDC(0, v2, 1, a1);
  }
}

void sub_1C3CADFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SleepScoreChartData();
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      sub_1C3CAF8F0(v21, v16, type metadata accessor for SleepScoreChartData);
      sub_1C3CAF8F0(v19, v12, type metadata accessor for SleepScoreChartData);
      v22 = *(v8 + 20);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22];
      sub_1C3CAF9C8(v12, type metadata accessor for SleepScoreChartData);
      sub_1C3CAF9C8(v16, type metadata accessor for SleepScoreChartData);
      v26 = v24 < v25;
      v8 = v23;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_1C3CB038C(v21, v38, type metadata accessor for SleepScoreChartData);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C3CB038C(v27, v19, type metadata accessor for SleepScoreChartData);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C3CAE240(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C3CA7838(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C3CAF0EC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_1C3C4622C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C3C4622C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C3CAF0EC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

void sub_1C3CAE78C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for SleepScoreChartData();
  v9 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *&v102[16 * a4];
          v105 = v102;
          v9 = *&v102[16 * a4 + 24];
          sub_1C3CAF2E0(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_1C3CA7838(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_1C3CA77AC(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v102 = sub_1C3CA7838(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      sub_1C3CAF8F0(v5, v124, type metadata accessor for SleepScoreChartData);
      v25 = v125;
      sub_1C3CAF8F0(v22 + v23 * v20, v125, type metadata accessor for SleepScoreChartData);
      v26 = *(v126 + 20);
      v27 = *(v24 + v26);
      v119 = *(v25 + v26);
      v120 = v27;
      sub_1C3CAF9C8(v25, type metadata accessor for SleepScoreChartData);
      sub_1C3CAF9C8(v24, type metadata accessor for SleepScoreChartData);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v120 < v119;
        v30 = v124;
        sub_1C3CAF8F0(v29, v124, type metadata accessor for SleepScoreChartData);
        v31 = v125;
        sub_1C3CAF8F0(v5, v125, type metadata accessor for SleepScoreChartData);
        v32 = *(v126 + 20);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32);
        sub_1C3CAF9C8(v31, type metadata accessor for SleepScoreChartData);
        sub_1C3CAF9C8(v30, type metadata accessor for SleepScoreChartData);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v33 >= v34)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_1C3CB038C(v40 + v39, v115, type metadata accessor for SleepScoreChartData);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C3CB038C(v115, v40 + v35, type metadata accessor for SleepScoreChartData);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    sub_1C3CAF8F0(v5, v124, type metadata accessor for SleepScoreChartData);
    v96 = v125;
    sub_1C3CAF8F0(v95, v125, type metadata accessor for SleepScoreChartData);
    v97 = *(v94 + 20);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_1C3CAF9C8(v96, type metadata accessor for SleepScoreChartData);
    sub_1C3CAF9C8(a4, type metadata accessor for SleepScoreChartData);
    if (v98 < v99)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_1C3C4622C(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_1C3C4622C((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_1C3CAF2E0(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1C3CA7838(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        sub_1C3CA77AC(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_1C3CB038C(v5, v123, type metadata accessor for SleepScoreChartData);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C3CB038C(v100, v95, type metadata accessor for SleepScoreChartData);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}