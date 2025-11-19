uint64_t sub_1D110E414(uint64_t a1, void *a2)
{
  sub_1D11161C4(0, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = sub_1D138D57C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  v20[1] = *a2;
  sub_1D110F4B0(v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1D138D46C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1D109AC18(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  sub_1D110F4B0(v6);
  if (v16(v6, 1, v9) == 1)
  {
    sub_1D138D46C();
    if (v16(v6, 1, v9) != 1)
    {
      sub_1D109AC18(v6);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v6, v9);
  }

  v17 = sub_1D138D4FC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v15, v9);
  return v17 & 1;
}

uint64_t *MedicalRecordChartableSeriesCollector.__allocating_init(chartDefining:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1D1115C44(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id MedicalRecordChartabilityDeterminer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordChartabilityDeterminer();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t *MedicalRecordChartableSeriesCollector.init(chartDefining:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1D1115164(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

void sub_1D110E8B4(void *a1)
{
  v2 = v1;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 32))(v8, v9);
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    v12 = v11;
    MEMORY[0x1D3885D90]();
    if (*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    swift_endAccess();
    v13 = *(v2 + 56);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v24 = a1[3];
      v25 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v24);
      v26 = (*(v25 + 24))(v24, v25);
      v13 = HKMedicalRecordCategoryType.categoryColors()(v26);
    }

    v27 = *(v2 + 56);
    *(v2 + 56) = v13;
  }

  else
  {
    sub_1D138F04C();
    sub_1D1072E70(a1, v31);
    v15 = sub_1D138F0AC();
    v16 = sub_1D13907DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136446210;
      sub_1D1072E70(v31, v29);
      sub_1D1072E70(v29, v28);
      sub_1D1080EA4(0, &qword_1EC60AEA0);
      sub_1D13916AC();
      v19 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v20 = sub_1D13901EC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v23 = sub_1D11DF718(v20, v22, &v30);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_1D101F000, v15, v16, "There are no chartable coded quantities in record %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1D38882F0](v18, -1, -1);
      MEMORY[0x1D38882F0](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }

    (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1D110EC18()
{
  swift_beginAccess();

  v1 = sub_1D110B900(v0);

  return v1;
}

uint64_t sub_1D110EC7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 quantities];
  sub_1D106F934(0, &qword_1EC6096C8);
  v5 = sub_1D139045C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *a2 = v13;
    return result;
  }

  v6 = sub_1D13910DC();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D13912DC();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = a2;
    v15 = v2;
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3886B70](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 quantity];
      v12 = [v11 _unit];

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    while (v6 != v8);

    v13 = v16;
    a2 = v14;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1D110EE34(uint64_t a1)
{
  swift_beginAccess();
  v16 = v1;
  v3 = *(v1 + 64);
  v18[0] = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3886B70](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v20 = v7;
      sub_1D110F078(&v20, a1, &v19);

      if (v19)
      {
        MEMORY[0x1D3885D90]();
        if (*((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v6 = v18[0];
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if (v6 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_18;
    }

LABEL_23:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_18:
  sub_1D1072E70(v16 + 16, v18);
  v10 = *(v16 + 56);
  v11 = type metadata accessor for MedicalRecordChartableSeries();
  v12 = objc_allocWithZone(v11);
  sub_1D1072E70(v18, &v12[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartDefining]);
  *&v12[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets] = v6;
  *&v12[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_preferredColors] = v10;
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = v10;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v14;
}

id sub_1D110F078@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v35[0] = 0;
  v11 = [v10 chartableCodedQuantitySetConvertedToUnit:a2 error:v35];
  v12 = v35[0];
  if (v11)
  {
    *a3 = v11;
    return v12;
  }

  else
  {
    v14 = v35[0];
    v15 = sub_1D138D2BC();

    swift_willThrow();
    sub_1D138F04C();
    v16 = v10;
    v17 = v15;
    v18 = sub_1D138F0AC();
    v19 = sub_1D13907DC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v19;
      v21 = v20;
      v22 = swift_slowAlloc();
      v31 = v22;
      v33 = swift_slowAlloc();
      v34 = v15;
      v35[0] = v33;
      *v21 = 138543618;
      *(v21 + 4) = v16;
      *v22 = v16;
      *(v21 + 12) = 2082;
      v23 = v16;
      v24 = v15;
      sub_1D1080EA4(0, &qword_1EE06B690);
      v25 = sub_1D13901EC();
      v27 = a3;
      v28 = sub_1D11DF718(v25, v26, v35);

      *(v21 + 14) = v28;
      a3 = v27;
      _os_log_impl(&dword_1D101F000, v18, v32, "Unable to convert chartable coded quantity set %{public}@: %{public}s", v21, 0x16u);
      v29 = v31;
      sub_1D10B8240(v31);
      MEMORY[0x1D38882F0](v29, -1, -1);
      v30 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1D38882F0](v30, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);
    }

    else
    {
    }

    result = (*(v7 + 8))(v9, v6);
    *a3 = 0;
  }

  return result;
}

id MedicalRecordChartableSeries.__allocating_init(chartDefining:chartableQuantities:unit:preferredColors:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  sub_1D1072E70(a1, &v9[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartDefining]);
  *&v9[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets] = a2;
  *&v9[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_preferredColors] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v10 = a4;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t MedicalRecordChartableSeriesCollector.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t MedicalRecordChartableSeriesCollector.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D110F4B0@<X0>(uint64_t a1@<X8>)
{

  v11 = sub_1D1113328(v2, sub_1D12A2F80, sub_1D1114424);
  sub_1D110FDA8(&v11, sub_1D1247E34, sub_1D110FF3C);
  v3 = v11;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_4;
    }

LABEL_9:

    v7 = 1;
    goto LABEL_10;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3886B70](0, v3);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 date];

  sub_1D138D52C();
  v7 = 0;
LABEL_10:
  v8 = sub_1D138D57C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

id MedicalRecordChartableSeries.init(chartDefining:chartableQuantities:unit:preferredColors:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D1072E70(a1, &v4[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartDefining]);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets] = a2;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_preferredColors] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MedicalRecordChartableSeries();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

void *sub_1D110F6FC(void *a1, void *a2)
{
  sub_1D1072E70(v2 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartDefining, v15);
  v5 = [a1 dataTransformer];
  v6 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_preferredColors);
  v7 = type metadata accessor for MedicalRecordChartDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
  v9 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = 0;
  sub_1D11162B4(v15, &v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining], sub_1D1115B88);
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = v5;
  *&v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = a2;
  swift_beginAccess();
  *&v8[v9] = v6;
  v8[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = 1;
  v14.receiver = v8;
  v14.super_class = v7;
  v10 = a2;
  v11 = v6;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_1D111631C(v15, sub_1D1115B88);
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x168))(*(v2 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets));
  return v12;
}

uint64_t sub_1D110F8F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
  v8 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3886B70](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (HKChartableCodedQuantitySet.hasOutOfRangeQuantities.getter())
      {
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
      }

      else
      {
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D110FA30()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
  v19 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = 0;
    v17 = v1 & 0xFFFFFFFFFFFFFF8;
    v18 = v1 & 0xC000000000000001;
    v14 = v1;
    v15 = v2;
    v16 = (v1 + 32);
LABEL_6:
    if (v18)
    {
      v4 = MEMORY[0x1D3886B70](v3, v14);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        goto LABEL_27;
      }

      v4 = *&v16[8 * v3];
    }

    v5 = v4;
    if (!__OFADD__(v3++, 1))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v2 = sub_1D13910DC();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v7 = [v4 quantities];
  sub_1D106F934(0, &qword_1EC6096C8);
  v8 = sub_1D139045C();

  if (v8 >> 62)
  {
    v9 = sub_1D13910DC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    if (v9 == v10)
    {

      goto LABEL_5;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D3886B70](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v1 = [v11 hasRange];

    ++v10;
  }

  while ((v1 & 1) != 0);

  sub_1D13912AC();
  v1 = *(v19 + 16);
  sub_1D13912EC();
  sub_1D13912FC();
  sub_1D13912BC();
LABEL_5:
  if (v3 != v15)
  {
    goto LABEL_6;
  }

  return v19;
}

id MedicalRecordChartableSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D110FD14(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D110FDA8(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void *))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  a3(v10);
  return sub_1D13912BC();
}

void sub_1D110FE3C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
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
        type metadata accessor for MedicalRecordChartableSeries();
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D1110954(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D1110050(0, v2, 1, a1);
  }
}

void sub_1D110FF3C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
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
        sub_1D106F934(0, &qword_1EC60D440);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D1111B10(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D1110734(0, v2, 1, a1);
  }
}

void sub_1D1110050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  sub_1D11161C4(0, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - v13;
  v15 = sub_1D138D57C();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v66 - v19;
  v67 = a2;
  if (a3 == a2)
  {
    return;
  }

  v20 = *a4;
  v80 = (v18 + 56);
  v77 = (v18 + 32);
  v78 = v15;
  v71 = (v18 + 48);
  v72 = (v18 + 8);
  v73 = v14;
  v75 = v20;
  v21 = v20 + 8 * a3 - 8;
  v22 = (a1 - a3);
LABEL_6:
  v69 = v21;
  v70 = a3;
  v23 = *(v75 + 8 * a3);
  v68 = v22;
  while (1)
  {
    v24 = *v21;
    v25 = *&v23[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets];
    if (v25 >> 62)
    {
      v35 = sub_1D13910DC();
      if (v35)
      {
        v36 = v35;
        v26 = sub_1D12A2F80(v35, 0);
        v37 = v23;
        v38 = v24;

        sub_1D1114424(v26 + 32, v36, v25);
        v40 = v39;

        if (v40 != v36)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v64 = v23;
        v65 = v24;
        v26 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v26 = v25 & 0xFFFFFFFFFFFFFF8;
      v27 = v23;
      v28 = v24;
    }

    v82 = v26;
    sub_1D110FDA8(&v82, sub_1D1247E34, sub_1D110FF3C);
    if (v5)
    {
      goto LABEL_52;
    }

    v29 = v82;

    if (*(v82 + 16))
    {
      goto LABEL_13;
    }

LABEL_21:

    v34 = *v80;
    v41 = v73;
    (*v80)(v73, 1, 1, v15);
    sub_1D138D46C();
    if ((*v71)(v41, 1, v15) != 1)
    {
      sub_1D109AC18(v41);
    }

LABEL_23:
    v42 = *&v24[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets];
    if (v42 >> 62)
    {
      v79 = *&v24[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets];
      v52 = sub_1D13910DC();
      if (v52)
      {
        v53 = v52;
        v43 = sub_1D12A2F80(v52, 0);
        v54 = v79;

        sub_1D1114424(v43 + 32, v53, v54);
        v79 = v55;

        if (v79 != v53)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v43 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v82 = v43;
    sub_1D110FDA8(&v82, sub_1D1247E34, sub_1D110FF3C);
    v44 = v82;
    if (v82 < 0 || (v82 & 0x4000000000000000) != 0)
    {
      v56 = sub_1D13910DC();
      v79 = 0;
      if (!v56)
      {
LABEL_36:
        v5 = v22;
        v48 = v24;

        v57 = v76;
        v34(v76, 1, 1, v15);
        v51 = v74;
        sub_1D138D46C();
        if ((*v71)(v57, 1, v15) != 1)
        {
          sub_1D109AC18(v76);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v45 = *(v82 + 16);
      v79 = 0;
      if (!v45)
      {
        goto LABEL_36;
      }
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      v5 = v22;
      v46 = MEMORY[0x1D3886B70](0, v44);
    }

    else
    {
      if (!*(v44 + 16))
      {
        goto LABEL_48;
      }

      v5 = v22;
      v46 = *(v44 + 32);
    }

    v47 = v46;

    v48 = v24;
    v49 = [v47 date];

    v50 = v76;
    sub_1D138D52C();

    v15 = v78;
    v34(v50, 0, 1, v78);
    v51 = v74;
    (*v77)(v74, v50, v15);
LABEL_38:
    v58 = v81;
    v59 = sub_1D138D4FC();
    v60 = v51;
    v61 = *v72;
    (*v72)(v60, v15);
    v61(v58, v15);

    if ((v59 & 1) == 0)
    {
      v15 = v78;
      v5 = v79;
LABEL_5:
      a3 = v70 + 1;
      v21 = v69 + 8;
      v22 = v68 - 1;
      if (v70 + 1 == v67)
      {
        return;
      }

      goto LABEL_6;
    }

    if (!v75)
    {
      goto LABEL_49;
    }

    v62 = *v21;
    v23 = *(v21 + 8);
    *v21 = v23;
    *(v21 + 8) = v62;
    v21 -= 8;
    v63 = __CFADD__(v5, 1);
    v22 = v5 + 1;
    v15 = v78;
    v5 = v79;
    if (v63)
    {
      goto LABEL_5;
    }
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_21;
  }

LABEL_13:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1D3886B70](0, v29);
    goto LABEL_16;
  }

  if (*(v29 + 16))
  {
    v30 = *(v29 + 32);
LABEL_16:
    v31 = v30;

    v32 = [v31 date];

    v33 = v73;
    sub_1D138D52C();

    v34 = *v80;
    (*v80)(v33, 0, 1, v15);
    (*v77)(v81, v33, v15);
    goto LABEL_23;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:

  __break(1u);
}

void sub_1D1110734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1D138D57C();
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 date];
      sub_1D138D52C();

      v22 = [v20 date];
      v23 = v34;
      sub_1D138D52C();

      LOBYTE(v22) = sub_1D138D4FC();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D1110954(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v179 = a1;
  sub_1D11161C4(0, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v196 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v177 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v188 = &v177 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v177 - v16;
  v18 = sub_1D138D57C();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v200 = &v177 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v186 = &v177 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v189 = a3;
  v190 = &v177 - v26;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_158:
    v30 = *v179;
    if (!*v179)
    {
      goto LABEL_205;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_160;
  }

  v192 = v25;
  v193 = v13;
  v184 = v17;
  v28 = 0;
  v201 = (v24 + 56);
  v197 = (v24 + 32);
  v191 = (v24 + 48);
  v195 = (v24 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v185 = a4;
LABEL_4:
  v30 = v28 + 1;
  v181 = v28;
  if (v28 + 1 >= v27)
  {
    goto LABEL_54;
  }

  v194 = v27;
  v178 = v29;
  v31 = *a3;
  v32 = *(*a3 + 8 * v30);
  v202 = *(*a3 + 8 * v28);
  v33 = v202;
  v203[0] = v32;
  v34 = v32;
  v35 = v33;
  v4 = v5;
  LODWORD(v198) = sub_1D110E414(v203, &v202);
  if (v5)
  {

    return;
  }

  v36 = v28;

  v37 = (v28 + 2);
  v187 = 8 * v36;
  a3 = &v31[8 * v36 + 16];
  while (1)
  {
    v30 = v194;
    if (v194 == v37)
    {
      break;
    }

    v29 = *(a3 - 8);
    v47 = *a3;
    v48 = *(*a3 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
    if (v48 >> 62)
    {
      v58 = sub_1D13910DC();
      if (v58)
      {
        v5 = v58;
        v30 = sub_1D12A2F80(v58, 0);
        v59 = v47;
        v60 = v29;

        sub_1D1114424(v30 + 32, v5, v48);
        v62 = v61;

        if (v62 != v5)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v72 = v47;
        v73 = v29;
        v30 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v30 = v48 & 0xFFFFFFFFFFFFFF8;
      v49 = v47;
      v50 = v29;
    }

    v203[0] = v30;
    v4 = 0;
    sub_1D110FDA8(v203, sub_1D1247E34, sub_1D110FF3C);
    v5 = 0;
    v51 = v203[0];
    if (v203[0] < 0 || (v203[0] & 0x4000000000000000) != 0)
    {
      v63 = sub_1D13910DC();
      v199 = v47;
      if (!v63)
      {
LABEL_24:

        v57 = *v201;
        v64 = v184;
        (*v201)(v184, 1, 1, v18);
        sub_1D138D46C();
        if ((*v191)(v64, 1, v18) != 1)
        {
          sub_1D109AC18(v64);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v52 = *(v203[0] + 16);
      v199 = v47;
      if (!v52)
      {
        goto LABEL_24;
      }
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x1D3886B70](0, v51);
    }

    else
    {
      if (!*(v51 + 16))
      {
        goto LABEL_175;
      }

      v53 = *(v51 + 32);
    }

    v54 = v53;

    v55 = [v54 date];

    v56 = v184;
    sub_1D138D52C();

    v57 = *v201;
    (*v201)(v56, 0, 1, v18);
    (*v197)(v190, v56, v18);
LABEL_26:
    v65 = *(v29 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
    if (v65 >> 62)
    {
      v183 = *(v29 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
      v67 = sub_1D13910DC();
      if (v67)
      {
        v68 = v67;
        v30 = sub_1D12A2F80(v67, 0);
        v4 = v183;

        sub_1D1114424(v30 + 32, v68, v4);
        v70 = v69;

        if (v70 != v68)
        {
          goto LABEL_203;
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v30 = v65 & 0xFFFFFFFFFFFFFF8;
    }

    v203[0] = v30;
    v4 = 0;
    sub_1D110FDA8(v203, sub_1D1247E34, sub_1D110FF3C);
    v66 = v203[0];
    if (v203[0] < 0 || (v203[0] & 0x4000000000000000) != 0)
    {
      if (sub_1D13910DC())
      {
LABEL_31:
        if ((v66 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1D3886B70](0, v66);
        }

        else
        {
          if (!*(v66 + 16))
          {
            goto LABEL_176;
          }

          v38 = *(v66 + 32);
        }

        v39 = v38;

        v40 = [v39 date];

        v41 = v188;
        sub_1D138D52C();

        v57(v41, 0, 1, v18);
        v42 = v186;
        (*v197)(v186, v41, v18);
        goto LABEL_9;
      }
    }

    else if (*(v203[0] + 16))
    {
      goto LABEL_31;
    }

    v71 = v188;
    v57(v188, 1, 1, v18);
    v42 = v186;
    sub_1D138D46C();
    if ((*v191)(v71, 1, v18) != 1)
    {
      sub_1D109AC18(v188);
    }

LABEL_9:
    v43 = v190;
    v44 = sub_1D138D4FC();
    v45 = v42;
    v5 = v195;
    v46 = *v195;
    (*v195)(v45, v18);
    v46(v43, v18);

    ++v37;
    a3 += 8;
    a4 = v185;
    if ((v198 ^ v44))
    {
      v30 = (v37 - 1);
      break;
    }
  }

  a3 = v189;
  v29 = v178;
  if ((v198 & 1) == 0)
  {
    goto LABEL_53;
  }

  v74 = v181;
  if (v30 < v181)
  {
    goto LABEL_194;
  }

  if (v181 >= v30)
  {
LABEL_53:
    v5 = 0;
    goto LABEL_54;
  }

  v75 = 8 * v30 - 8;
  v76 = v30;
  v5 = 0;
  v77 = v187;
  do
  {
    if (v74 != --v76)
    {
      v79 = *a3;
      if (!*a3)
      {
        goto LABEL_200;
      }

      v78 = *&v79[v77];
      *&v79[v77] = *&v79[v75];
      *&v79[v75] = v78;
    }

    ++v74;
    v75 -= 8;
    v77 += 8;
  }

  while (v74 < v76);
LABEL_54:
  v80 = *(a3 + 8);
  if (v30 >= v80)
  {
    goto LABEL_106;
  }

  if (__OFSUB__(v30, v181))
  {
    goto LABEL_191;
  }

  if (v30 - v181 >= a4)
  {
    goto LABEL_106;
  }

  if (__OFADD__(v181, a4))
  {
    goto LABEL_192;
  }

  if (v181 + a4 < v80)
  {
    v80 = v181 + a4;
  }

  if (v80 < v181)
  {
    goto LABEL_193;
  }

  if (v30 == v80)
  {
    goto LABEL_106;
  }

  v180 = v80;
  v178 = v29;
  v194 = *a3;
  a3 = &v194[8 * v30 - 8];
  v81 = v181 - v30;
LABEL_65:
  v187 = v30;
  v82 = *&v194[8 * v30];
  v182 = v81;
  v83 = v81;
  v183 = a3;
  while (2)
  {
    v29 = *a3;
    v84 = *&v82[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets];
    if (v84 >> 62)
    {
      v93 = sub_1D13910DC();
      if (v93)
      {
        v94 = v93;
        v85 = sub_1D12A2F80(v93, 0);
        v95 = v82;
        v96 = v29;

        sub_1D1114424(v85 + 32, v94, v84);
        v98 = v97;

        if (v98 != v94)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v122 = v82;
        v123 = v29;
        v85 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v85 = v84 & 0xFFFFFFFFFFFFFF8;
      v86 = v82;
      v87 = v29;
    }

    v203[0] = v85;
    v4 = v5;
    sub_1D110FDA8(v203, sub_1D1247E34, sub_1D110FF3C);
    v30 = v5;
    if (v5)
    {
      i = v5;
      goto LABEL_207;
    }

    v5 = v203[0];
    if ((v203[0] & 0x8000000000000000) == 0 && (v203[0] & 0x4000000000000000) == 0)
    {
      v88 = *(v203[0] + 16);
      v199 = v82;
      if (v88)
      {
        goto LABEL_72;
      }

LABEL_80:

      v92 = *v201;
      v100 = v193;
      (*v201)(v193, 1, 1, v18);
      sub_1D138D46C();
      if ((*v191)(v100, 1, v18) != 1)
      {
        sub_1D109AC18(v100);
      }

LABEL_82:
      v101 = *(v29 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
      if (v101 >> 62)
      {
        v198 = *(v29 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartableSeries_chartableQuantitySets);
        v113 = sub_1D13910DC();
        if (v113)
        {
          v5 = v113;
          v102 = sub_1D12A2F80(v113, 0);
          v4 = v198;

          sub_1D1114424(v102 + 32, v5, v4);
          v115 = v114;

          if (v115 != v5)
          {
            goto LABEL_198;
          }
        }

        else
        {
          v102 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v102 = v101 & 0xFFFFFFFFFFFFFF8;
      }

      v203[0] = v102;
      v4 = 0;
      sub_1D110FDA8(v203, sub_1D1247E34, sub_1D110FF3C);
      v103 = v203[0];
      if (v203[0] < 0 || (v203[0] & 0x4000000000000000) != 0)
      {
        v116 = sub_1D13910DC();
        v198 = 0;
        if (!v116)
        {
          goto LABEL_95;
        }

LABEL_87:
        if ((v103 & 0xC000000000000001) != 0)
        {
          v105 = v29;
          v106 = MEMORY[0x1D3886B70](0, v103);
        }

        else
        {
          if (!*(v103 + 16))
          {
            goto LABEL_171;
          }

          v105 = v29;
          v106 = *(v103 + 32);
        }

        v107 = v106;

        v108 = v83;
        v109 = [v107 date];

        v110 = v196;
        sub_1D138D52C();

        v92(v110, 0, 1, v18);
        v111 = v192;
        (*v197)(v192, v110, v18);
        v112 = v18;
      }

      else
      {
        v104 = *(v203[0] + 16);
        v198 = 0;
        if (v104)
        {
          goto LABEL_87;
        }

LABEL_95:
        v105 = v29;
        v108 = v83;

        v117 = v196;
        v92(v196, 1, 1, v18);
        v111 = v192;
        sub_1D138D46C();
        v112 = v18;
        if ((*v191)(v117, 1, v18) != 1)
        {
          sub_1D109AC18(v196);
        }
      }

      v118 = v200;
      v119 = sub_1D138D4FC();
      v120 = *v195;
      (*v195)(v111, v112);
      v120(v118, v112);

      v18 = v112;
      if (v119)
      {
        v5 = v198;
        if (!v194)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          for (i = v4; ; i = v5)
          {
LABEL_207:

            __break(1u);
          }
        }

        v121 = *a3;
        v82 = *(a3 + 8);
        *a3 = v82;
        *(a3 + 8) = v121;
        a3 -= 8;
        v83 = v108 + 1;
        if (v108 == -1)
        {
          goto LABEL_64;
        }

        continue;
      }

      v5 = v198;
LABEL_64:
      v30 = v187 + 1;
      a3 = v183 + 8;
      v81 = v182 - 1;
      if (v187 + 1 != v180)
      {
        goto LABEL_65;
      }

      v30 = v180;
      a4 = v185;
      v29 = v178;
LABEL_106:
      if (v30 < v181)
      {
        goto LABEL_190;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v187 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1D10F7610(0, *(v29 + 16) + 1, 1, v29);
      }

      v126 = *(v29 + 16);
      v125 = *(v29 + 24);
      v30 = v126 + 1;
      if (v126 >= v125 >> 1)
      {
        v29 = sub_1D10F7610((v125 > 1), v126 + 1, 1, v29);
      }

      *(v29 + 16) = v30;
      v127 = v29 + 16 * v126;
      v128 = v187;
      *(v127 + 32) = v181;
      *(v127 + 40) = v128;
      if (!*v179)
      {
        goto LABEL_204;
      }

      if (!v126)
      {
LABEL_3:
        a3 = v189;
        v27 = v189[1];
        v28 = v187;
        if (v187 >= v27)
        {
          goto LABEL_158;
        }

        goto LABEL_4;
      }

      a3 = *v179;
      while (2)
      {
        v129 = v30 - 1;
        if (v30 >= 4)
        {
          v134 = v29 + 32 + 16 * v30;
          v135 = *(v134 - 64);
          v136 = *(v134 - 56);
          v140 = __OFSUB__(v136, v135);
          v137 = v136 - v135;
          if (v140)
          {
            goto LABEL_177;
          }

          v139 = *(v134 - 48);
          v138 = *(v134 - 40);
          v140 = __OFSUB__(v138, v139);
          v132 = v138 - v139;
          v133 = v140;
          if (v140)
          {
            goto LABEL_178;
          }

          v141 = (v29 + 16 * v30);
          v143 = *v141;
          v142 = v141[1];
          v140 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v140)
          {
            goto LABEL_180;
          }

          v140 = __OFADD__(v132, v144);
          v145 = v132 + v144;
          if (v140)
          {
            goto LABEL_183;
          }

          if (v145 >= v137)
          {
            v163 = (v29 + 32 + 16 * v129);
            v165 = *v163;
            v164 = v163[1];
            v140 = __OFSUB__(v164, v165);
            v166 = v164 - v165;
            if (v140)
            {
              goto LABEL_187;
            }

            if (v132 < v166)
            {
              v129 = v30 - 2;
            }
          }

          else
          {
LABEL_127:
            if (v133)
            {
              goto LABEL_179;
            }

            v146 = (v29 + 16 * v30);
            v148 = *v146;
            v147 = v146[1];
            v149 = __OFSUB__(v147, v148);
            v150 = v147 - v148;
            v151 = v149;
            if (v149)
            {
              goto LABEL_182;
            }

            v152 = (v29 + 32 + 16 * v129);
            v154 = *v152;
            v153 = v152[1];
            v140 = __OFSUB__(v153, v154);
            v155 = v153 - v154;
            if (v140)
            {
              goto LABEL_185;
            }

            if (__OFADD__(v150, v155))
            {
              goto LABEL_186;
            }

            if (v150 + v155 < v132)
            {
              goto LABEL_141;
            }

            if (v132 < v155)
            {
              v129 = v30 - 2;
            }
          }
        }

        else
        {
          if (v30 == 3)
          {
            v130 = *(v29 + 32);
            v131 = *(v29 + 40);
            v140 = __OFSUB__(v131, v130);
            v132 = v131 - v130;
            v133 = v140;
            goto LABEL_127;
          }

          v156 = (v29 + 16 * v30);
          v158 = *v156;
          v157 = v156[1];
          v140 = __OFSUB__(v157, v158);
          v150 = v157 - v158;
          v151 = v140;
LABEL_141:
          if (v151)
          {
            goto LABEL_181;
          }

          v159 = v29 + 16 * v129;
          v161 = *(v159 + 32);
          v160 = *(v159 + 40);
          v140 = __OFSUB__(v160, v161);
          v162 = v160 - v161;
          if (v140)
          {
            goto LABEL_184;
          }

          if (v162 < v150)
          {
            goto LABEL_3;
          }
        }

        v167 = v129 - 1;
        if (v129 - 1 >= v30)
        {
          goto LABEL_172;
        }

        if (!*v189)
        {
          goto LABEL_199;
        }

        v168 = v29;
        v30 = *(v29 + 32 + 16 * v167);
        v169 = *(v29 + 32 + 16 * v129);
        v29 = *(v29 + 32 + 16 * v129 + 8);
        v4 = v5;
        sub_1D1112380((*v189 + 8 * v30), (*v189 + 8 * v169), (*v189 + 8 * v29), a3);
        if (v5)
        {
          goto LABEL_168;
        }

        if (v29 < v30)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = sub_1D1245848(v168);
        }

        if (v167 >= *(v168 + 2))
        {
          goto LABEL_174;
        }

        v170 = &v168[16 * v167];
        *(v170 + 4) = v30;
        *(v170 + 5) = v29;
        v204 = v168;
        sub_1D12457BC(v129);
        v29 = v204;
        v30 = *(v204 + 16);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  v99 = sub_1D13910DC();
  v199 = v82;
  if (!v99)
  {
    goto LABEL_80;
  }

LABEL_72:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v89 = MEMORY[0x1D3886B70](0, v5);
    goto LABEL_75;
  }

  if (*(v5 + 16))
  {
    v89 = *(v5 + 32);
LABEL_75:
    v90 = v89;

    v5 = [v90 date];

    v91 = v193;
    sub_1D138D52C();

    v92 = *v201;
    (*v201)(v91, 0, 1, v18);
    (*v197)(v200, v91, v18);
    goto LABEL_82;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  v29 = sub_1D1245848(v29);
LABEL_160:
  v204 = v29;
  v171 = *(v29 + 16);
  if (v171 >= 2)
  {
    do
    {
      v172 = *a3;
      if (!*a3)
      {
        goto LABEL_201;
      }

      v173 = v29;
      v29 = v171 - 1;
      a3 = *&v173[16 * v171];
      v174 = *&v173[16 * v171 + 24];
      v4 = v5;
      sub_1D1112380(&v172[a3], &v172[*&v173[16 * v171 + 16]], &v172[v174], v30);
      if (v5)
      {
        break;
      }

      if (v174 < a3)
      {
        goto LABEL_188;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v173 = sub_1D1245848(v173);
      }

      if (v171 - 2 >= *(v173 + 2))
      {
        goto LABEL_189;
      }

      v175 = &v173[16 * v171];
      *v175 = a3;
      v175[1] = v174;
      v204 = v173;
      sub_1D12457BC(v29);
      v29 = v204;
      v171 = *(v204 + 16);
      a3 = v189;
    }

    while (v171 > 1);
  }

LABEL_168:
}

void sub_1D1111B10(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_1D138D57C();
  v9 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1D1245848(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1D1112B1C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1D1245848(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_1D12457BC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 date];
      v24 = v123;
      sub_1D138D52C();

      v25 = [v22 date];
      v26 = v124;
      sub_1D138D52C();

      LODWORD(v121) = sub_1D138D4FC();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 date];
        v34 = v123;
        sub_1D138D52C();

        v35 = [v32 date];
        v36 = v124;
        sub_1D138D52C();

        LODWORD(v35) = sub_1D138D4FC() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1D10F7610(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1D10F7610((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1D1112B1C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D1245848(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1D12457BC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 date];
    v53 = v123;
    sub_1D138D52C();

    v54 = [v51 date];
    v55 = v124;
    sub_1D138D52C();

    LOBYTE(v54) = sub_1D138D4FC();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1D1112380(void **a1, char *a2, char *a3, void **a4)
{
  sub_1D11161C4(0, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v78 = &v73 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v77 = (&v73 - v15);
  v16 = sub_1D138D57C();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v81 = &v73 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v76 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v73 - v24;
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  v85 = a4;
  if (v26 < v27 >> 3)
  {
    v29 = a4;
    if (a4 != a1 || &a1[v26] <= a4)
    {
      v30 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v30;
      v29 = v85;
    }

    v86 = &v29[v26];
    if (a2 - a1 < 8 || (v31 = a2, a2 >= a3))
    {
      v50 = a1;
      goto LABEL_55;
    }

    v32 = (v23 + 48);
    v83 = (v23 + 32);
    v33 = (v23 + 8);
    while (1)
    {
      v84 = a1;
      v85 = v29;
      v79 = v31;
      v34 = *v29;
      v35 = *v31;
      v36 = v34;
      v37 = v77;
      sub_1D110F4B0(v77);
      v38 = *v32;
      if ((*v32)(v37, 1, v16) == 1)
      {
        sub_1D138D46C();
        v39 = v38(v37, 1, v16);
        v40 = v82;
        if (v39 != 1)
        {
          v41 = v82;
          sub_1D109AC18(v77);
          v40 = v41;
        }
      }

      else
      {
        (*v83)(v80, v37, v16);
        v40 = v82;
      }

      sub_1D110F4B0(v40);
      v42 = v82;
      if (v38(v82, 1, v16) == 1)
      {
        v43 = v76;
        sub_1D138D46C();
        if (v38(v42, 1, v16) != 1)
        {
          sub_1D109AC18(v42);
        }
      }

      else
      {
        v43 = v76;
        (*v83)(v76, v42, v16);
      }

      v44 = v80;
      v45 = sub_1D138D4FC();
      v46 = v43;
      v47 = *v33;
      (*v33)(v46, v16);
      v47(v44, v16);

      if ((v45 & 1) == 0)
      {
        break;
      }

      v48 = v79;
      v31 = v79 + 1;
      v49 = v84;
      v29 = v85;
      if (v84 != v79)
      {
        goto LABEL_24;
      }

LABEL_25:
      a1 = v49 + 1;
      if (v29 >= v86 || v31 >= a3)
      {
        v50 = a1;
        goto LABEL_55;
      }
    }

    v49 = v84;
    v48 = v85;
    v29 = v85 + 1;
    v31 = v79;
    if (v84 == v85)
    {
      goto LABEL_25;
    }

LABEL_24:
    *v49 = *v48;
    goto LABEL_25;
  }

  v84 = a1;
  v29 = a4;
  v80 = v22;
  if (a4 != a2 || &a2[8 * v28] <= a4)
  {
    v51 = v23;
    memmove(a4, a2, 8 * v28);
    v23 = v51;
    v29 = v85;
  }

  v86 = &v29[v28];
  if (a3 - a2 < 8)
  {
    v50 = a2;
    goto LABEL_55;
  }

  v50 = a2;
  if (a2 > v84)
  {
    v52 = (v23 + 48);
    v74 = (v23 + 8);
    v75 = (v23 + 32);
    v76 = (v23 + 48);
    do
    {
      v79 = v50;
      v53 = v50 - 1;
      a3 -= 8;
      v54 = v86;
      v77 = v50 - 1;
      while (1)
      {
        v55 = *--v54;
        v56 = *v53;
        v57 = v55;
        v58 = v56;
        v59 = v78;
        sub_1D110F4B0(v78);
        v60 = v59;
        v61 = *v52;
        if ((*v52)(v60, 1, v16) == 1)
        {
          sub_1D138D46C();
          v62 = v61(v60, 1, v16);
          v63 = v83;
          if (v62 != 1)
          {
            v64 = v83;
            sub_1D109AC18(v78);
            v63 = v64;
          }
        }

        else
        {
          (*v75)(v81, v60, v16);
          v63 = v83;
        }

        v82 = v58;
        sub_1D110F4B0(v63);
        v65 = v83;
        if (v61(v83, 1, v16) == 1)
        {
          v66 = v80;
          sub_1D138D46C();
          if (v61(v65, 1, v16) != 1)
          {
            sub_1D109AC18(v65);
          }
        }

        else
        {
          v66 = v80;
          (*v75)(v80, v65, v16);
        }

        v67 = v81;
        v68 = sub_1D138D4FC();
        v69 = *v74;
        (*v74)(v66, v16);
        v69(v67, v16);

        v70 = (a3 + 8);
        if (v68)
        {
          break;
        }

        v29 = v85;
        v52 = v76;
        v53 = v77;
        if (v70 != v86)
        {
          *a3 = *v54;
        }

        a3 -= 8;
        v86 = v54;
        if (v54 <= v29)
        {
          v86 = v54;
          v50 = v79;
          goto LABEL_55;
        }
      }

      v29 = v85;
      v52 = v76;
      v71 = v77;
      if (v70 != v79)
      {
        *a3 = *v77;
      }

      if (v86 <= v29)
      {
        break;
      }

      v50 = v71;
    }

    while (v71 > v84);
    v50 = v71;
  }

LABEL_55:
  if (v50 != v29 || v50 >= (v29 + ((v86 - v29 + (v86 - v29 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v50, v29, 8 * (v86 - v29));
  }

  return 1;
}

uint64_t sub_1D1112B1C(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1D138D57C();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 date];
        v41 = v54;
        sub_1D138D52C();

        v42 = [v39 date];
        v43 = v55;
        sub_1D138D52C();

        LOBYTE(v42) = sub_1D138D4FC();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 date];
        v21 = v54;
        sub_1D138D52C();

        v22 = [v19 date];
        v23 = v55;
        sub_1D138D52C();

        LOBYTE(v22) = sub_1D138D4FC();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t (*sub_1D1112FB8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3886B70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D1116EAC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D1113038(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3886B70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D1116EA8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D11130B8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3886B70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D1113138;
  }

  __break(1u);
  return result;
}

void (*sub_1D1113140(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3886B70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D11131C0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1113328(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D13910DC();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D11133CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B158, &qword_1EC609690, 0x1E696ACD8, MEMORY[0x1E69E62F8]);
          sub_1D1116C64();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC609690);
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

uint64_t sub_1D1113574(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D11161C4(0, &qword_1EC60B000, 255, type metadata accessor for ClinicalSharingSelectableDatatypesDataSource, MEMORY[0x1E69E62F8]);
          sub_1D1116228();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1113038(v13, i, a3);
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
        type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
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

uint64_t sub_1D1113714(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC609E90, &qword_1EE06B0E0, 0x1E696C250, MEMORY[0x1E69E62F8]);
          sub_1D1116508();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EE06B0E0);
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

uint64_t sub_1D11138BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60AD10, &qword_1EC609BE8, off_1E83DAD48, MEMORY[0x1E69E62F8]);
          sub_1D1116610();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC609BE8);
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

uint64_t sub_1D1113A64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B118, &qword_1EC60B110, 0x1E696C278, MEMORY[0x1E69E62F8]);
          sub_1D1116A28();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC60B110);
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

uint64_t sub_1D1113C0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D11161C4(0, &qword_1EC60B070, 255, _s12SizedSectionCMa, MEMORY[0x1E69E62F8]);
          sub_1D1116694();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1113038(v13, i, a3);
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
        _s12SizedSectionCMa();
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

uint64_t sub_1D1113DAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D11161C4(0, &qword_1EC60B080, 255, _s11SizedRecordCMa, MEMORY[0x1E69E62F8]);
          sub_1D1116720();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1113038(v13, i, a3);
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
        _s11SizedRecordCMa();
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

uint64_t sub_1D1113F4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D11161C4(0, &qword_1EC60B090, 255, _s15SizedValueGroupCMa, MEMORY[0x1E69E62F8]);
          sub_1D11167AC();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1113038(v13, i, a3);
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
        _s15SizedValueGroupCMa();
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

uint64_t sub_1D11140EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D11161C4(0, &qword_1EC60B0B8, 255, type metadata accessor for InternalStateSection, MEMORY[0x1E69E62F8]);
          sub_1D1116838();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D11130B8(v13, i, a3);
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
        type metadata accessor for InternalStateSection();
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

uint64_t sub_1D111428C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v16 = a2;
    result = sub_1D13910DC();
    a2 = v16;
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D11161C4(0, &qword_1EC60B168, v8, type metadata accessor for MedicalRecordChartableSeries, MEMORY[0x1E69E62F8]);
          sub_1D1116CE8(v9, v10, v11);
          for (i = 0; i != v6; ++i)
          {
            v13 = sub_1D1113140(v17, i, a3);
            v15 = *v14;
            (v13)(v17, 0);
            *(v4 + 8 * i) = v15;
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
        type metadata accessor for MedicalRecordChartableSeries();
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

uint64_t sub_1D1114424(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B138, &qword_1EC60D440, 0x1E696BFB0, MEMORY[0x1E69E62F8]);
          sub_1D1116B5C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC60D440);
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

uint64_t sub_1D11145CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B0C8, &unk_1EC60CF10, 0x1E69DCC78, MEMORY[0x1E69E62F8]);
          sub_1D11168C4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &unk_1EC60CF10);
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

uint64_t sub_1D1114774(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B148, &qword_1EC60AAF0, 0x1E696C530, MEMORY[0x1E69E62F8]);
          sub_1D1116BE0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC60AAF0);
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

uint64_t sub_1D111491C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B100, &unk_1EC6099E0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
          sub_1D11169A4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &unk_1EC6099E0);
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

uint64_t sub_1D1114AC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60A9F8, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E69E62F8]);
          sub_1D111658C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC609A00);
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

uint64_t sub_1D1114C6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
          sub_1D1116484();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC60B040);
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

uint64_t sub_1D1114E14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B030, &qword_1EC60B028, 0x1E696C448, MEMORY[0x1E69E62F8]);
          sub_1D1116400();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC60B028);
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

uint64_t sub_1D1114FBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D13910DC();
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
      result = sub_1D13910DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1115AFC(0, &qword_1EC60B018, &qword_1EC60B010, 0x1E696C440, MEMORY[0x1E69E62F8]);
          sub_1D111637C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1112FB8(v13, i, a3);
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
        sub_1D106F934(0, &qword_1EC60B010);
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

uint64_t *sub_1D1115164(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = MEMORY[0x1E69E7CC0];
  a2[7] = 0;
  a2[8] = v8;
  return a2;
}

uint64_t sub_1D11151E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t sub_1D1115288(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v42 = a2;
  v43 = a3;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - v14;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v45 = MEMORY[0x1E69E7CC0];
    result = sub_1D13912DC();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v41 = a1 & 0xC000000000000001;
    v35 = (v9 + 2);
    v36 = (v9 + 4);
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = (v9 + 1);
    v31[1] = v5;
    v32 = (v9 + 5);
    v5 = v15;
    v37 = i;
    v38 = a1;
    while (!__OFADD__(v18, 1))
    {
      v44 = v18 + 1;
      if (v41)
      {
        v19 = MEMORY[0x1D3886B70](v18, a1);
      }

      else
      {
        if (v18 >= *(v33 + 16))
        {
          goto LABEL_20;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v9 = sub_1D110F6FC(v42, v43);
      v21 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange;
      swift_beginAccess();
      v22 = [*(v9 + v21) maxValue];
      if (v22)
      {
        v23 = v22;
        v24 = v39;
        sub_1D138D52C();

        (*v36)(v5, v24, v8);
        v25 = v5;
        v26 = v8;
        v27 = v40;
        (*v35)(v40, a4, v26);
        LOBYTE(v23) = sub_1D138D4FC();
        v28 = a4;
        v29 = *v34;
        v30 = v27;
        v8 = v26;
        (*v34)(v30, v26);
        if (v23)
        {
          (*v32)(v28, v25, v26);
        }

        else
        {
          v29(v25, v26);
        }

        a4 = v28;
        v5 = v25;
        i = v37;
        a1 = v38;
      }

      sub_1D13912AC();
      v15 = *(v45 + 16);
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      ++v18;
      if (v44 == i)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return result;
}

uint64_t sub_1D11155E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a1 + 32;
    do
    {
      sub_1D1072E70(v7, &v42);
      v2 = v44;
      v8 = v45;
      __swift_project_boxed_opaque_existential_1Tm(&v42, v44);
      if ((*(v8 + 8))(v2, v8))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      }

      else
      {
        sub_1D102CC18(&v42, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D10FDD2C(0, *(v6 + 16) + 1, 1);
          v6 = v41[0];
        }

        v2 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v2 >= v10 >> 1)
        {
          sub_1D10FDD2C((v10 > 1), v2 + 1, 1);
        }

        v11 = v49;
        v12 = v50;
        v13 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
        MEMORY[0x1EEE9AC00](v13);
        v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v15);
        sub_1D11151E0(v2, v15, v41, v11, v12, sub_1D1116EB0);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        v6 = v41[0];
      }

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  v17 = *(v6 + 16);
  if (v17 < a2)
  {

    sub_1D1115BF0();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 1;
    swift_willThrow();
    return v2;
  }

  if (!v17)
  {

    v34 = MEMORY[0x1E69E7CC8];
    v35 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v35)
    {
      goto LABEL_21;
    }

LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

  v38[0] = v6;
  v38[1] = v3;
  v19 = v6 + 32;
  v51 = MEMORY[0x1E69E7CC8];
  do
  {
    v39 = v19;
    v40 = v17;
    sub_1D1072E70(v19, v48);
    v23 = v49;
    v24 = v50;
    __swift_project_boxed_opaque_existential_1Tm(v48, v49);
    (*(v24 + 16))(&v42, v23, v24);
    v25 = v42;
    v26 = v43;
    v27 = v44;
    v28 = v45;
    v29 = v46;
    v30 = v47;
    v31 = sub_1D1116DF4();

    v38[2] = v31;
    sub_1D139116C();
    v32 = v51;
    if (*(v51 + 16) && (sub_1D129E400(v41), v32 = v51, (v33 & 1) != 0))
    {

      sub_1D1116E48(v41);
    }

    else
    {
      sub_1D1116E48(v41);
      type metadata accessor for MedicalRecordChartableSeriesCollector();
      v20 = swift_allocObject();
      v20[5] = &type metadata for TransientConceptForChart;
      v20[6] = &protocol witness table for TransientConceptForChart;
      v21 = swift_allocObject();
      v20[2] = v21;
      *(v21 + 16) = v25;
      *(v21 + 32) = v26;
      *(v21 + 40) = v27;
      *(v21 + 48) = v28;
      *(v21 + 56) = v29;
      *(v21 + 57) = v30;
      v20[7] = 0;
      v20[8] = MEMORY[0x1E69E7CC0];
      v42 = v25;
      LOBYTE(v43) = v26;
      v44 = v27;
      v45 = v28;
      v46 = v29;
      v47 = v30;
      swift_retain_n();

      sub_1D139116C();
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v42 = v32;
      sub_1D11DAD84(v20, v41, v22);
      sub_1D1116E48(v41);
      v51 = v42;
    }

    sub_1D110E8B4(v48);

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v19 = v39 + 40;
    v17 = v40 - 1;
  }

  while (v40 != 1);

  v34 = v51;
  v35 = *(v51 + 16);
  if (!v35)
  {
    goto LABEL_24;
  }

LABEL_21:
  v2 = sub_1D12A2F80(v35, 0);
  v36 = sub_1D12A1A40(&v42, (v2 + 32), v35, v34);

  result = sub_1D102CC30();
  if (v36 == v35)
  {

    return v2;
  }

  __break(1u);
  return result;
}

void sub_1D1115AFC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1115B88()
{
  if (!qword_1EC60E4C0)
  {
    sub_1D1080EA4(255, &qword_1EC60D3F0);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E4C0);
    }
  }
}

unint64_t sub_1D1115BF0()
{
  result = qword_1EC60AFD0;
  if (!qword_1EC60AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AFD0);
  }

  return result;
}

uint64_t *sub_1D1115C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordChartableSeriesCollector();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  v12 = MEMORY[0x1E69E7CC0];
  v10[7] = 0;
  v10[8] = v12;
  return v10;
}

void sub_1D1115D80()
{
  sub_1D11161C4(319, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MedicalRecordChartabilityDeterminer.determineChartability(for:records:completion:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x50))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
}

unint64_t sub_1D1116170()
{
  result = qword_1EC60AFE8;
  if (!qword_1EC60AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AFE8);
  }

  return result;
}

void sub_1D11161C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1116228()
{
  result = qword_1EC60B008;
  if (!qword_1EC60B008)
  {
    sub_1D11161C4(255, &qword_1EC60B000, 255, type metadata accessor for ClinicalSharingSelectableDatatypesDataSource, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B008);
  }

  return result;
}

uint64_t sub_1D11162B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D111631C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D111637C()
{
  result = qword_1EC60B020;
  if (!qword_1EC60B020)
  {
    sub_1D1115AFC(255, &qword_1EC60B018, &qword_1EC60B010, 0x1E696C440, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B020);
  }

  return result;
}

unint64_t sub_1D1116400()
{
  result = qword_1EC60B038;
  if (!qword_1EC60B038)
  {
    sub_1D1115AFC(255, &qword_1EC60B030, &qword_1EC60B028, 0x1E696C448, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B038);
  }

  return result;
}

unint64_t sub_1D1116484()
{
  result = qword_1EC60B050;
  if (!qword_1EC60B050)
  {
    sub_1D1115AFC(255, &qword_1EC60B048, &qword_1EC60B040, 0x1E696C308, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B050);
  }

  return result;
}

unint64_t sub_1D1116508()
{
  result = qword_1EC60B058;
  if (!qword_1EC60B058)
  {
    sub_1D1115AFC(255, &qword_1EC609E90, &qword_1EE06B0E0, 0x1E696C250, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B058);
  }

  return result;
}

unint64_t sub_1D111658C()
{
  result = qword_1EC60B060;
  if (!qword_1EC60B060)
  {
    sub_1D1115AFC(255, &qword_1EC60A9F8, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B060);
  }

  return result;
}

unint64_t sub_1D1116610()
{
  result = qword_1EC60B068;
  if (!qword_1EC60B068)
  {
    sub_1D1115AFC(255, &qword_1EC60AD10, &qword_1EC609BE8, off_1E83DAD48, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B068);
  }

  return result;
}

unint64_t sub_1D1116694()
{
  result = qword_1EC60B078;
  if (!qword_1EC60B078)
  {
    sub_1D11161C4(255, &qword_1EC60B070, 255, _s12SizedSectionCMa, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B078);
  }

  return result;
}

unint64_t sub_1D1116720()
{
  result = qword_1EC60B088;
  if (!qword_1EC60B088)
  {
    sub_1D11161C4(255, &qword_1EC60B080, 255, _s11SizedRecordCMa, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B088);
  }

  return result;
}

unint64_t sub_1D11167AC()
{
  result = qword_1EC60B098;
  if (!qword_1EC60B098)
  {
    sub_1D11161C4(255, &qword_1EC60B090, 255, _s15SizedValueGroupCMa, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B098);
  }

  return result;
}

unint64_t sub_1D1116838()
{
  result = qword_1EC60B0C0;
  if (!qword_1EC60B0C0)
  {
    sub_1D11161C4(255, &qword_1EC60B0B8, 255, type metadata accessor for InternalStateSection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B0C0);
  }

  return result;
}

unint64_t sub_1D11168C4()
{
  result = qword_1EC60B0D0;
  if (!qword_1EC60B0D0)
  {
    sub_1D1115AFC(255, &qword_1EC60B0C8, &unk_1EC60CF10, 0x1E69DCC78, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B0D0);
  }

  return result;
}

uint64_t sub_1D111695C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D11169A4()
{
  result = qword_1EC60B108;
  if (!qword_1EC60B108)
  {
    sub_1D1115AFC(255, &qword_1EC60B100, &unk_1EC6099E0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B108);
  }

  return result;
}

unint64_t sub_1D1116A28()
{
  result = qword_1EC60B120;
  if (!qword_1EC60B120)
  {
    sub_1D1115AFC(255, &qword_1EC60B118, &qword_1EC60B110, 0x1E696C278, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B120);
  }

  return result;
}

unint64_t sub_1D1116B08()
{
  result = qword_1EC60B130;
  if (!qword_1EC60B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B130);
  }

  return result;
}

unint64_t sub_1D1116B5C()
{
  result = qword_1EC60B140;
  if (!qword_1EC60B140)
  {
    sub_1D1115AFC(255, &qword_1EC60B138, &qword_1EC60D440, 0x1E696BFB0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B140);
  }

  return result;
}

unint64_t sub_1D1116BE0()
{
  result = qword_1EC60B150;
  if (!qword_1EC60B150)
  {
    sub_1D1115AFC(255, &qword_1EC60B148, &qword_1EC60AAF0, 0x1E696C530, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B150);
  }

  return result;
}

unint64_t sub_1D1116C64()
{
  result = qword_1EC60B160;
  if (!qword_1EC60B160)
  {
    sub_1D1115AFC(255, &qword_1EC60B158, &qword_1EC609690, 0x1E696ACD8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B160);
  }

  return result;
}

unint64_t sub_1D1116CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC60B170;
  if (!qword_1EC60B170)
  {
    sub_1D11161C4(255, &qword_1EC60B168, a3, type metadata accessor for MedicalRecordChartableSeries, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B170);
  }

  return result;
}

unint64_t sub_1D1116D70()
{
  result = qword_1EC60B180;
  if (!qword_1EC60B180)
  {
    sub_1D1115AFC(255, &qword_1EC60B178, &unk_1EC6096D0, 0x1E696C510, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B180);
  }

  return result;
}

unint64_t sub_1D1116DF4()
{
  result = qword_1EC60B188;
  if (!qword_1EC60B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B188);
  }

  return result;
}

uint64_t UnboundedCache.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1D139003C();
  type metadata accessor for Box();
  swift_getTupleTypeMetadata2();
  v8 = sub_1D13904CC();
  v9 = sub_1D1117BA0(v8, a1, a2, a3);

  v13 = v9;
  *a4 = Box.__allocating_init(value:)(&v13);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v10;

  sub_1D1096838(sub_1D1117E8C, v11, a4 + 1);
  sub_1D1096860(sub_1D1117E8C, v11, a4 + 5);
}

uint64_t sub_1D1117010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a4;
    Box.write<A>(with:)(sub_1D1118148, v8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  }

  return result;
}

uint64_t UnboundedCache.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D1117EAC(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_1D1390F3C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1D11171F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D1390F3C();
  v8 = *(v7 - 8);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = &v15 - v10;
  MEMORY[0x1EEE9AC00](v9);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
  (*(v8 + 16))(v11, a3, v7);
  sub_1D139003C();
  return sub_1D139005C();
}

void (*UnboundedCache.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xC0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[15] = v3;
  v7[7] = a3;
  v7[16] = *(a3 + 24);
  v9 = sub_1D1390F3C();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[19] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[19] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[20] = v12;
  v13 = *(a3 + 16);
  v8[21] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v8[22] = v14;
  if (v6)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v8[23] = v16;
  (*(v15 + 16))();
  UnboundedCache.subscript.getter();
  return sub_1D111753C;
}

void sub_1D111753C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[22];
    v3 = v2[23];
    v5 = v2[20];
    v6 = v2[21];
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[17];
    v18 = v2[16];
    v10 = v2[7];
    (*(v8 + 16))(v7, v5, v9);
    v2[2] = v6;
    v2[3] = v18;
    v2[4] = *(v10 + 32);
    v2[5] = v3;
    v2[6] = v7;
    Box.write<A>(with:)(sub_1D11180F8, v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    v12 = v2[22];
    v3 = v2[23];
    v5 = v2[20];
    v13 = v2[21];
    v14 = v2[18];
    v7 = v2[19];
    v15 = v2[16];
    v16 = v2[17];
    v17 = v2[7];
    v2[10] = v13;
    v2[11] = v15;
    v2[12] = *(v17 + 32);
    v2[13] = v3;
    v2[14] = v5;
    Box.write<A>(with:)(sub_1D11180F8, (v2 + 8), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    (*(v12 + 8))(v3, v13);
    (*(v14 + 8))(v5, v16);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t UnboundedCache.removeValue(forKey:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = sub_1D1390F3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = a2[2];
  v12 = v4;
  v13 = a2[4];
  v14 = a1;
  Box.write<A>(with:)(sub_1D1117F10, v10, v5, &v10[-v7]);
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall UnboundedCache.removeAll()()
{
  v1[1] = *(v0 + 16);
  v2 = *(v0 + 32);
  Box.write<A>(with:)(sub_1D1117F60, v1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
}

uint64_t sub_1D1117880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D1117EAC(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_1D1390F3C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_1D111792C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = UnboundedCache.subscript.modify(v6, a2, a3);
  return sub_1D10B0564;
}

unint64_t sub_1D11179BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D139006C();

  return sub_1D1117A18(a1, v6, a2, a3);
}

unint64_t sub_1D1117A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1D139011C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1D1117BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1D139050C())
  {
    sub_1D139145C();
    v13 = sub_1D139144C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D139050C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1D13904EC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D139120C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D11179BC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1D1117EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *(a3 + 16);
  v5 = *(a3 + 32);
  v6 = a2;
  v7 = a1;
  return Box.write<A>(with:)(sub_1D11180F8, v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
}

uint64_t sub_1D1117FDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1118048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D1118090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D11181F8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UDCListCollectionViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D11182B4(void *a1)
{
  v1 = a1;
  sub_1D11181F8();
}

uint64_t sub_1D11182FC(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for UDCListCollectionViewController();
  result = objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  v5 = qword_1EC60B198;
  if (*(v2 + qword_1EC60B198) == 1 && *(v2 + qword_1EC60B190) == 2)
  {
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    result = sub_1D1222B5C(0, 0);
    v5 = qword_1EC60B198;
  }

  *(v2 + v5) = 0;
  return result;
}

void sub_1D1118408(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D11182FC(a3);
}

void sub_1D111845C(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for UDCListCollectionViewController();
  objc_msgSendSuper2(&v10, sel_viewIsAppearing_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 clearColor];
    [v4 setBackgroundColor_];

    v7 = [v1 collectionView];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 clearColor];
      [v8 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D11185B4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D111845C(a3);
}

void sub_1D1118608(char a1, char a2)
{
  v27.receiver = v2;
  v27.super_class = type metadata accessor for UDCListCollectionViewController();
  objc_msgSendSuper2(&v27, sel_setEditing_animated_, a1 & 1, a2 & 1);
  v5 = [v2 collectionView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5;
  [v5 setEditing_];

  v7 = [v2 collectionView];
  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7;
  [v7 setAllowsSelection_];

  v9 = [v2 collectionView];
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v9;
  [v9 setAllowsMultipleSelection_];

  v11 = [v2 collectionView];
  if (!v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v11;
  [v11 setAllowsMultipleSelectionDuringEditing_];

  v13 = [v2 collectionView];
  if (!v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = v13;
  v15 = [v13 preparedCells];

  if (!v15)
  {
LABEL_28:
    __break(1u);
    return;
  }

  sub_1D108B188();
  v16 = sub_1D139045C();

  if (v16 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v17 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1D3886B70](v17, v16);
      }

      else
      {
        if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(v16 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v25 = v18;
      sub_1D1080EA4(0, &qword_1EC60B220);
      v21 = v19;
      if (swift_dynamicCast())
      {
        sub_1D102CC18(v23, v26);
        __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
        sub_1D138E38C();

        __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }

      else
      {

        v24 = 0;
        memset(v23, 0, sizeof(v23));
        sub_1D1119098(v23, &qword_1EC60B228, &qword_1EC60B220);
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
}

void sub_1D111896C(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_1D1118608(a3, a4);
}

void sub_1D11189C8(void *a1)
{
  v2 = sub_1D138D7DC();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_1D138D7DC();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_1D108B188();
    sub_1D1080EA4(0, &unk_1EC60F6C0);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_1D102CC18(v6, v9);
      __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
      sub_1D138E41C();

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_1D1119098(v6, &qword_1EC609C60, &unk_1EC60F6C0);
    }
  }
}

uint64_t sub_1D1118B20(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  sub_1D11189C8(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D1118C1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1D1118F2C(v11);

  return (*(v8 + 8))(v10, v7);
}

void sub_1D1118DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1D1119068();
}

id sub_1D1118E2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UDCListCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1118EC0()
{
  *(v0 + qword_1EC60B198) = 1;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1118F2C(void *a1)
{
  v2 = sub_1D138D7DC();
  v3 = [a1 cellForItemAtIndexPath_];

  if (v3)
  {
    v7 = v3;
    sub_1D108B188();
    sub_1D1080EA4(0, &qword_1EC60B220);
    v4 = v3;
    if (swift_dynamicCast())
    {
      sub_1D102CC18(v5, v8);
      __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
      [a1 isEditing];
      sub_1D138E38C();

      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {

      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_1D1119098(v5, &qword_1EC60B228, &qword_1EC60B220);
    }
  }
}

uint64_t sub_1D1119098(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D10DC698(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_1D111910C(SEL *a1)
{
  v3 = [v1 quantities];
  sub_1D10F5C10();
  v4 = sub_1D139045C();

  if (v4 >> 62)
  {
LABEL_15:
    v5 = sub_1D13910DC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D3886B70](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 *a1];

    v6 = v7 + 1;
  }

  while ((v10 & 1) != 0);

  return v5 != v7;
}

uint64_t type metadata accessor for RecordAttachmentsDataSource()
{
  result = qword_1EC60B250;
  if (!qword_1EC60B250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11192D0(void *a1, void *a2, void *a3)
{
  v6 = (v3 + qword_1EC60B248);
  *v6 = 0;
  v6[1] = 0;
  *(v3 + qword_1EC60B230) = a1;
  *(v3 + qword_1EC60B238) = a2;
  *(v3 + qword_1EC60B240) = a3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = sub_1D138EA8C();
  v11 = *(v10 + qword_1EC60B230);
  v12 = *(v10 + qword_1EC60B238);
  v13 = *(v10 + qword_1EC60B240);
  v17[4] = sub_1D111A40C;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D111A05C;
  v17[3] = &block_descriptor_16;
  v14 = _Block_copy(v17);
  swift_retain_n();
  v15 = v11;

  [v15 fetchAttachmentItemsWithHealthRecordsStore:v12 conceptStore:v13 completion:v14];
  _Block_release(v14);

  return v10;
}

uint64_t sub_1D1119470()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_1D1119544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v43 = a3;
  v42 = a2;
  v56 = sub_1D138D5EC();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138E52C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = *(a1 + 16);
  if (v54)
  {
    v13 = 0;
    v53 = a1 + 32;
    v48 = (v5 + 8);
    v47 = (v8 + 16);
    v46 = v8 + 8;
    v45 = v8 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v52 = v7;
    v51 = v8;
    v50 = v10;
    v49 = &v42 - v12;
    while (1)
    {
      v15 = *(v53 + 8 * v13);
      v16 = v15 >> 62 ? sub_1D13910DC() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v57 = v14;
      v58 = v13;

      if (v16)
      {
        break;
      }

      v19 = MEMORY[0x1E69E7CC0];
LABEL_21:

      sub_1D110A5C8(v19);

      v32 = v55;
      sub_1D138D5DC();
      sub_1D138D59C();
      (*v48)(v32, v56);
      v33 = v49;
      sub_1D138E50C();
      v34 = v50;
      v35 = v52;
      (*v47)(v50, v33, v52);
      v14 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D10F8858(0, v14[2] + 1, 1, v14);
      }

      v36 = v51;
      v37 = v58;
      v39 = v14[2];
      v38 = v14[3];
      if (v39 >= v38 >> 1)
      {
        v14 = sub_1D10F8858(v38 > 1, v39 + 1, 1, v14);
      }

      v13 = v37 + 1;
      (*(v36 + 8))(v33, v35);
      v14[2] = v39 + 1;
      (*(v36 + 32))(v14 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v39, v34, v35);
      if (v13 == v54)
      {
        goto LABEL_28;
      }
    }

    v18 = 0;
    v60 = v15 & 0xFFFFFFFFFFFFFF8;
    v61 = v15 & 0xC000000000000001;
    v19 = MEMORY[0x1E69E7CC0];
    v59 = v16;
    while (1)
    {
      if (v61)
      {
        result = MEMORY[0x1D3886B70](v18, v15);
      }

      else
      {
        if (v18 >= *(v60 + 16))
        {
          goto LABEL_30;
        }

        result = *(v15 + 8 * v18 + 32);
      }

      v20 = result;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v66 = result;
      sub_1D1119B38(&v66, &v62);

      if (v63)
      {
        sub_1D102CC18(&v62, v65);
        sub_1D102CC18(v65, &v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1D10F857C(0, v19[2] + 1, 1, v19);
          v67 = v19;
        }

        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          v19 = sub_1D10F857C((v23 > 1), v24 + 1, 1, v19);
          v67 = v19;
        }

        v25 = v63;
        v26 = v64;
        v27 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v63);
        v28 = MEMORY[0x1EEE9AC00](v27);
        v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v31 + 16))(v30, v28);
        sub_1D125DA54(v24, v30, &v67, v25, v26);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v62);
        v16 = v59;
      }

      else
      {
        result = sub_1D10A72B8(&v62);
      }

      ++v18;
      if (v21 == v16)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_28:
    v40 = (v44 + qword_1EC60B248);
    v41 = v43;
    *v40 = v42;
    v40[1] = v41;

    sub_1D138E58C();
  }

  return result;
}

id sub_1D1119B38@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D1086E1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  *(v4 + 32) = sub_1D139016C();
  *(v4 + 40) = v5;
  result = [v3 title];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = result;
  v8 = [result removeSpecialCharactersAndWhiteSpaces];

  v9 = sub_1D139016C();
  v11 = v10;

  MEMORY[0x1D3885C10](1819043139, 0xE400000000000000);

  *(v4 + 48) = v9;
  *(v4 + 56) = v11;
  v12 = sub_1D139044C();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    v14 = sub_1D139016C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v3 displayItemType];
  if (v17 != 17)
  {
    if (v17 != 15)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    result = [v3 title];
    if (result)
    {
      v18 = result;
      v19 = sub_1D139016C();
      v21 = v20;

      v22 = [v3 subtitle];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1D139016C();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v46 = type metadata accessor for TitleSubtitleDetailItem(0);
      v47 = swift_allocObject();
      sub_1D138D5DC();
      v47[2] = v19;
      v47[3] = v21;
      v48 = MEMORY[0x1E69E7CC0];
      v47[4] = v24;
      v47[5] = v26;
      v47[6] = 0;
      v47[7] = v48;
      v47[8] = v14;
      v47[9] = v16;
      *(a2 + 24) = v46;
      result = sub_1D111A4DC(&qword_1EC60A700, type metadata accessor for TitleSubtitleDetailItem);
      *(a2 + 32) = result;
      *a2 = v47;
      return result;
    }

    goto LABEL_24;
  }

  v27 = [v3 showSpinner];
  result = [v3 title];
  v28 = result;
  if (v27)
  {
    if (result)
    {
      v29 = sub_1D139016C();
      v31 = v30;

      result = [v3 attributedSubtitle];
      if (result)
      {
        v32 = result;
        v33 = [result string];

        v34 = sub_1D139016C();
        v36 = v35;

        v37 = type metadata accessor for TitleSubtitleDetailItemWithSpinner(0);
        v38 = swift_allocObject();
        sub_1D138D5DC();
        v38[2] = v29;
        v38[3] = v31;
        v38[4] = v34;
        v38[5] = v36;
        v38[6] = v14;
        v38[7] = v16;
        *(a2 + 24) = v37;
        result = sub_1D111A4DC(&qword_1EC60B260, type metadata accessor for TitleSubtitleDetailItemWithSpinner);
        *(a2 + 32) = result;
        *a2 = v38;
        return result;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v53 = sub_1D139016C();
  v40 = v39;

  v41 = [v3 subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1D139016C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v49 = [v3 attributedSubtitle];
  v50 = type metadata accessor for TitleSubtitleDetailItem(0);
  v51 = swift_allocObject();
  sub_1D138D5DC();
  v51[2] = v53;
  v51[3] = v40;
  v52 = MEMORY[0x1E69E7CC0];
  v51[4] = v43;
  v51[5] = v45;
  v51[6] = v49;
  v51[7] = v52;
  v51[8] = v14;
  v51[9] = v16;
  *(a2 + 24) = v50;
  result = sub_1D111A4DC(&qword_1EC60A700, type metadata accessor for TitleSubtitleDetailItem);
  *(a2 + 32) = result;
  *a2 = v51;
  return result;
}

uint64_t sub_1D111A05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_1D111A478(0, &qword_1EC60AD10, sub_1D111A42C, MEMORY[0x1E69E62F8]);
  v5 = sub_1D139045C();
  if (a3)
  {
    v6 = sub_1D139016C();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v4(v5, v6, a3);
}

uint64_t sub_1D111A138()
{
}

uint64_t sub_1D111A19C()
{
  v0 = sub_1D138EABC();
  v1 = *(v0 + qword_1EC60B230);

  return swift_deallocClassInstance();
}

uint64_t sub_1D111A238@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (!*(v1 + qword_1EC60B248 + 8))
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
  }

  sub_1D138F36C();
  v4 = sub_1D138DE3C();
  swift_allocObject();
  v5 = sub_1D138DE1C();
  a1[3] = v4;
  result = sub_1D111A4DC(&qword_1EC60B610, MEMORY[0x1E69A34C8]);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D111A42C()
{
  result = qword_1EC609BE8;
  if (!qword_1EC609BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609BE8);
  }

  return result;
}

void sub_1D111A478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D111A4DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D111A548()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(*v0 + 16) identifier];
  sub_1D138D5CC();

  v6 = sub_1D138D59C();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v10[0] = 0xD000000000000011;
  v10[1] = 0x80000001D13BCB60;
  MEMORY[0x1D3885C10](v6, v8);

  return v10[0];
}

uint64_t sub_1D111A688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D111A804()
{
  v1 = sub_1D138F3FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v5, v28);
  if (!v29)
  {
    return sub_1D10A72B8(v28);
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountReconnectItem();
  result = swift_dynamicCast();
  if (result)
  {
    v22[1] = v27;
    v7 = [*(v27 + 16) state];
    v22[2] = v0;
    MEMORY[0x1D38864F0]();
    v23 = v7;
    if (v7 == 6)
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v9 = qword_1EE06BB10;
      v8 = *algn_1EE06BB18;
      v10 = qword_1EE06BB20;
    }

    else
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v9 = qword_1EE06BB10;
      v8 = *algn_1EE06BB18;
      v10 = qword_1EE06BB20;
    }

    v24 = v10;
    v25 = v8;
    v26 = v9;
    sub_1D138D1CC();
    sub_1D138F3BC();
    v11 = objc_opt_self();
    v12 = *MEMORY[0x1E69DDD80];
    v13 = *MEMORY[0x1E69DB978];
    result = [v11 _preferredFontForTextStyle_weight_];
    if (!result)
    {
      __break(1u);
      goto LABEL_22;
    }

    v14 = sub_1D138F2FC();
    sub_1D138F2CC();
    v14(v28, 0);
    v15 = objc_opt_self();
    v16 = [v15 labelColor];
    v17 = sub_1D138F2FC();
    sub_1D138F2DC();
    v17(v28, 0);
    if (v23 == 6)
    {
      if (qword_1EE06AD00 == -1)
      {
LABEL_16:
        sub_1D138D1CC();
        sub_1D138F29C();
        result = [v11 _preferredFontForTextStyle_weight_];
        if (result)
        {
          v18 = sub_1D138F34C();
          sub_1D138F2CC();
          v18(v28, 0);
          v19 = [v15 systemBlueColor];
          v20 = sub_1D138F34C();
          sub_1D138F2DC();
          v20(v28, 0);
          v29 = v1;
          v30 = MEMORY[0x1E69DC110];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
          (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
          MEMORY[0x1D3886480](v28);

          return (*(v2 + 8))(v4, v1);
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    else if (qword_1EE06AD00 == -1)
    {
      goto LABEL_16;
    }

    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1D111ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D13905AC();
  v6[5] = sub_1D139059C();
  v8 = sub_1D139055C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D111AD90, v8, v7);
}

uint64_t sub_1D111AD90()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D111AE34;
  v3 = v0[4];

  return ClinicalAccountManager.startRelogin(to:from:)(v1, v3);
}

uint64_t sub_1D111AE34()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D111AF54, v3, v2);
}

uint64_t sub_1D111AF54()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D111AFB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineAccountReconnectItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D111B01C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D111B074(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D111A804();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D111B0E0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D111B144;
}

uint64_t sub_1D111B144(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D111A804();
  }

  return result;
}

void sub_1D111B230(void *a1)
{
  sub_1D10EF534(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI45MedicalRecordTimelineAccountReconnectItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v21);
  if (v21[3])
  {
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineAccountReconnectItem();
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v20;
      if (qword_1EE06AF70 != -1)
      {
        v7 = swift_once();
      }

      v20 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
      MEMORY[0x1EEE9AC00](v7);
      *(&v19 - 2) = v9;
      sub_1D138D96C();
      sub_1D106F934(0, &qword_1EE06B6B0);
      sub_1D111B57C(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50]);

      sub_1D138ED0C();

      v10 = v21[0];
      type metadata accessor for ClinicalAccountManager();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E7CD0];
      v11[5] = 0;
      v11[6] = 0;
      v11[4] = v12;
      v11[2] = v10;
      v13 = v10;
      v11[3] = [v13 clinicalAccountStore];
      v14 = sub_1D13905DC();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      sub_1D13905AC();

      v15 = a1;
      v16 = sub_1D139059C();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v11;
      v17[5] = v8;
      v17[6] = v15;
      sub_1D107877C(0, 0, v5, &unk_1D13A1F30, v17);
    }
  }

  else
  {
    sub_1D10A72B8(v21);
  }
}

uint64_t sub_1D111B57C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D111B5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D108077C;

  return sub_1D111ACF4(a1, v4, v5, v6, v7, v8);
}

void __swiftcall UILabel.init(font:numberOfLines:textColor:)(UILabel *__return_ptr retstr, UIFont_optional font, Swift::Int numberOfLines, UIColor textColor)
{
  v5 = *&font.is_nil;
  isa = font.value.super.isa;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v7 setFont_];
  [v7 setNumberOfLines_];
  v8 = numberOfLines;
  [v7 setTextColor_];
}

BOOL UILabel.isEmpty.getter()
{
  v1 = [v0 text];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

uint64_t type metadata accessor for UDCOlderOtherLabsDataSource()
{
  result = qword_1EC60B280;
  if (!qword_1EC60B280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D111B874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UDCOlderOtherLabsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D111B8B4()
{
  v1 = sub_1D138DFEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138DFCC();
  v5 = sub_1D138DFBC();
  if (v0)
  {
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    [v5 setContentInsets_];
  }

  return v5;
}

id sub_1D111B9E4(unsigned __int8 *a1, char *a2, void *a3, void *a4, uint64_t a5)
{
  v46 = a5;
  v48 = a3;
  sub_1D111C004(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v45 - v9;
  v11 = *a1;
  v12 = *a2;
  sub_1D138DB9C();
  v45[0] = MEMORY[0x1D38834C0]();
  v13 = sub_1D106F934(0, &qword_1EE06B790);
  v14 = MEMORY[0x1E69E6F90];
  sub_1D111C004(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139E710;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D1089930();
  strcpy((v15 + 32), "pluginPackage");
  *(v15 + 46) = -4864;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = 0xD000000000000025;
  *(v15 + 80) = 0x80000001D13BCBC0;
  v45[1] = v13;
  v50[4] = sub_1D139076C();
  sub_1D111C004(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v14);
  v18 = sub_1D138D97C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v47 = xmmword_1D139E700;
  *(v21 + 16) = xmmword_1D139E700;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x1E69A3BB0], v18);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      sub_1D138DA9C();
    }

    else
    {
      sub_1D138DABC();
    }
  }

  else if (v11)
  {
    sub_1D138DA8C();
  }

  else
  {
    sub_1D138DAAC();
  }

  v22 = v48;
  v23 = sub_1D138CFBC();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v24 = swift_allocObject();
  *(v24 + 16) = v47;
  *(v24 + 32) = a4;
  v25 = a4;
  v26 = sub_1D138DB4C();

  sub_1D111C068(v10);
  v50[5] = v26;
  LOBYTE(v49) = v12;
  v27 = _s14HealthPlatform8FeedItemC0A9RecordsUIE035predicateForPinnedUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0O0OSg_AA06SourceQ0OtFZ_0();
  v28 = objc_opt_self();
  v29 = [v28 notPredicateWithSubpredicate_];

  v50[6] = v29;
  v50[7] = v22;
  v49 = MEMORY[0x1E69E7CC0];
  result = v22;
  v31 = 0;
LABEL_9:
  if (v31 <= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v31;
  }

  while (1)
  {
    if (v31 == 4)
    {
      sub_1D111C0F4();
      swift_arrayDestroy();
      v35 = sub_1D139044C();

      v36 = [v28 andPredicateWithSubpredicates_];

      v37 = v45[0];
      [v45[0] setPredicate_];

      sub_1D10A5C9C(0, &qword_1EE06A4C0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1D139E810;
      v39 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v40 = sub_1D139012C();
      v41 = [v39 initWithKey:v40 ascending:1 selector:sel_localizedStandardCompare_];

      *(v38 + 32) = v41;
      sub_1D106F934(0, &qword_1EE06B578);
      v42 = sub_1D139044C();

      [v37 setSortDescriptors_];

      v43 = objc_allocWithZone(MEMORY[0x1E695D600]);
      [v43 initWithFetchRequest:v37 managedObjectContext:v46 sectionNameKeyPath:0 cacheName:0];
      v44 = sub_1D138EB1C();

      return v44;
    }

    if (v32 == v31)
    {
      break;
    }

    v33 = v50[v31++ + 4];
    if (v33)
    {
      v34 = v33;
      MEMORY[0x1D3885D90]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D111C004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D111C068(uint64_t a1)
{
  sub_1D111C004(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D111C0F4()
{
  if (!qword_1EE06B788)
  {
    sub_1D106F934(255, &qword_1EE06B790);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B788);
    }
  }
}

id SingleValueChartConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D111C1C4()
{
  result = qword_1EC60B2A0;
  if (!qword_1EC60B2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B2A0);
  }

  return result;
}

uint64_t sub_1D111C250()
{
  type metadata accessor for SingleValueDataTransformer();

  return swift_allocObject();
}

id SingleValueChartConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleValueChartConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SingleValueChartConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleValueChartConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClinicalSharingOnboardingSelectedDataTypesDataSource()
{
  result = qword_1EC60B2B0;
  if (!qword_1EC60B2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D111C4A0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v4 = v1 + 64;
    result = sub_1D139104C();
    v5 = result;
    v6 = 0;
    v27 = *(v1 + 36);
    v25 = v1 + 72;
    v26 = v2;
    v28 = v1 + 64;
    v29 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_19;
      }

      v30 = v6;
      v10 = (*(v1 + 48) + 32 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v15 = *(*(v1 + 56) + 8 * v5);
      v16 = v14;

      v17 = v13;
      sub_1D111CE6C(v11, v12, v13, v14, v15);

      sub_1D13912AC();
      sub_1D13912EC();
      v1 = v29;
      sub_1D13912FC();
      result = sub_1D13912BC();
      v7 = 1 << *(v29 + 32);
      if (v5 >= v7)
      {
        goto LABEL_20;
      }

      v4 = v28;
      v18 = *(v28 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v27 != *(v29 + 36))
      {
        goto LABEL_22;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v26;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v8 = v26;
        v22 = (v25 + 8 * v9);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v7 = __clz(__rbit64(v23)) + v20;
            break;
          }
        }
      }

      v6 = v30 + 1;
      v5 = v7;
      if (v30 + 1 == v8)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D111C6E8(void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = *v2;
  v7 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedInstanceForHealthStore_];
  v12 = sub_1D109BD80(MEMORY[0x1E69E7CC0]);
  v20 = v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(a2 + 16))
    {
      sub_1D111EC40(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v10);
      sub_1D111C9F0(v10, v11, &v20, v6);
      ++v14;
      sub_1D111ECA4(v10);
      if (v13 == v14)
      {
        v15 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v15 = v12;
LABEL_7:

  v16 = sub_1D111C4A0(v15);
  *(v2 + qword_1EC60B2A8) = v16;
  swift_bridgeObjectRetain_n();
  v19 = sub_1D11131C8(v16);
  sub_1D111D580(&v19);

  sub_1D110A1B8(v19);

  v5 = sub_1D138E88C();
  v2 = *&v5[qword_1EC60B2A8];
  if (v2 >> 62)
  {
LABEL_14:
    if (!sub_1D13910DC())
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    return v5;
  }

LABEL_9:
  if ((v2 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1D3886B70](0, v2);

    goto LABEL_12;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_12:
    type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
    sub_1D138E1DC();

    return v5;
  }

  __break(1u);

  sub_1D111ECA4(v10);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D111C9F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v52 = a4;
  v8 = sub_1D138F0BC();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v50 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  sub_1D111EC40(a1, &v49 - v18);
  v19[48] = 0;
  if (!a2 || (v20 = sub_1D12F9F44(a1 + *(v11 + 48)), v21 == 1))
  {
    sub_1D138F06C();
    sub_1D111EC40(a1, v14);
    v24 = sub_1D138F0AC();
    v25 = sub_1D139081C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v57 = v27;
      *v26 = 136315394;
      v28 = sub_1D139184C();
      v30 = sub_1D11DF718(v28, v29, &v57);
      v51 = v4;
      v31 = v30;

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = *(v14 + 8);
      v55 = *(v14 + 7);
      v56 = v32;
      sub_1D111ED58();

      v33 = sub_1D13901EC();
      v35 = v34;
      sub_1D111ECA4(v14);
      v36 = sub_1D11DF718(v33, v35, &v57);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_1D101F000, v24, v25, "[%s] Could not get display configuration for identifier: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v27, -1, -1);
      MEMORY[0x1D38882F0](v26, -1, -1);
    }

    else
    {

      sub_1D111ECA4(v14);
    }

    (*(v53 + 8))(v10, v54);
    return sub_1D111ECA4(v19);
  }

  v38 = v21;
  v39 = *a3;
  v40 = *(*a3 + 16);
  v51 = v4;
  v49 = v20;
  if (!v40)
  {
    v41 = v22;
    v42 = v23;
    goto LABEL_11;
  }

  v41 = v22;
  v42 = v23;
  v43 = sub_1D129E12C(v20, v21, v22, v23);
  if ((v44 & 1) == 0)
  {
LABEL_11:
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v45 = *(*(v39 + 56) + 8 * v43);

LABEL_12:
  sub_1D111EC40(v19, v17);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1D10F7738(0, v45[2] + 1, 1, v45);
  }

  v47 = v45[2];
  v46 = v45[3];
  if (v47 >= v46 >> 1)
  {
    v45 = sub_1D10F7738(v46 > 1, v47 + 1, 1, v45);
  }

  v45[2] = v47 + 1;
  sub_1D10F0DFC(v17, v45 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *a3;
  *a3 = 0x8000000000000000;
  sub_1D11DA750(v45, v49, v38, v41, v42, isUniquelyReferenced_nonNull_native);

  *a3 = v55;
  return sub_1D111ECA4(v19);
}

uint64_t sub_1D111CE6C(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v30 = sub_1D138D5EC();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
  v15 = swift_allocObject();
  *(v15 + qword_1EC60B2C0) = 0;
  *(v15 + qword_1EC60B2C8) = 0;
  v16 = qword_1EC60B2E8;
  *(v15 + qword_1EC60B300) = 0;
  v17 = (v15 + qword_1EC60B2D0);
  *v17 = v13;
  v17[1] = v14;
  *(v15 + qword_1EC60B2D8) = a3;
  *(v15 + qword_1EC60B2E0) = a4;
  *(v15 + v16) = a5;
  *(v15 + qword_1EC60B2F8) = 0;
  *(v15 + qword_1EC60B2F0) = 0;
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  v18 = a4;

  v19 = a3;
  sub_1D13911EC();

  strcpy(v31, "MutableArray<");
  HIWORD(v31[1]) = -4864;
  sub_1D138D5DC();
  v20 = sub_1D138D59C();
  v22 = v21;
  v23 = *(v10 + 8);
  v24 = v30;
  v23(v12, v30);
  MEMORY[0x1D3885C10](v20, v22);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1D138E56C();
  v31[0] = v25;

  v27 = sub_1D110ACE4(a5);
  sub_1D1122388(v27);
  sub_1D111ED00();
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110A5C8(v31[0]);

  sub_1D138D5DC();
  sub_1D138D59C();
  v23(v12, v24);
  sub_1D138E50C();
  sub_1D138E58C();

  return v26;
}

uint64_t sub_1D111D1D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + qword_1EC60B2D0);
  v4 = *v3;
  v5 = v3[1];
  v6 = objc_opt_self();
  v7 = [v6 categoryWithID_];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 displayName];

    v10 = sub_1D139016C();
    v12 = v11;

    if (v4 == v10 && v5 == v12)
    {
      goto LABEL_26;
    }

    v14 = sub_1D139162C();

    if (v14)
    {
      return 1;
    }
  }

  v15 = (v2 + qword_1EC60B2D0);
  v17 = *v15;
  v16 = v15[1];

  v18 = [v6 categoryWithID_];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 displayName];

    v21 = sub_1D139016C();
    v23 = v22;

    if (v17 != v21 || v16 != v23)
    {
      v25 = sub_1D139162C();

      if (v25)
      {
        return 1;
      }

      goto LABEL_15;
    }

LABEL_26:

    return 1;
  }

LABEL_15:
  v27 = *v15;
  v28 = v15[1];
  v29 = [v6 categoryWithID_];
  if (!v29)
  {
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 displayName];

  v32 = sub_1D139016C();
  v34 = v33;

  if (v27 == v32 && v28 == v34)
  {
    goto LABEL_27;
  }

  v36 = sub_1D139162C();

  if ((v36 & 1) == 0)
  {
LABEL_21:
    v37 = *v3;
    v38 = v3[1];
    v39 = [v6 categoryWithID_];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 displayName];

      v42 = sub_1D139016C();
      v44 = v43;

      if (v37 == v42 && v38 == v44)
      {
LABEL_27:

        return 0;
      }

      v45 = sub_1D139162C();

      if (v45)
      {
        return 0;
      }
    }

    if (*v3 != *v15 || v3[1] != v15[1])
    {
      return sub_1D139162C() & 1;
    }
  }

  return 0;
}

uint64_t sub_1D111D528()
{
  sub_1D138E87C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D111D580(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D111D5FC(v6);
  return sub_1D13912BC();
}

uint64_t sub_1D111D5FC(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D13915BC();
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
        type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D111DB10(v8, v9, a1, v4);
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
    return sub_1D111D700(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D111D700(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    v62 = objc_opt_self();
    v60 = v6;
    v7 = (v6 + 8 * v4 - 8);
    v8 = v5 - v4;
LABEL_6:
    v58 = v7;
    v59 = v4;
    v9 = *(v60 + 8 * v4);
    v57 = v8;
    v10 = v8;
    while (1)
    {
      v11 = *v7;
      v12 = (v9 + qword_1EC60B2D0);
      v13 = *(v9 + qword_1EC60B2D0);
      v14 = *(v9 + qword_1EC60B2D0 + 8);

      v15 = [v62 categoryWithID_];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 displayName];

        v18 = sub_1D139016C();
        v20 = v19;

        if (v13 == v18 && v14 == v20)
        {

LABEL_39:

          goto LABEL_40;
        }

        v22 = sub_1D139162C();

        if (v22)
        {
          goto LABEL_19;
        }
      }

      v24 = *(v11 + qword_1EC60B2D0);
      v23 = *(v11 + qword_1EC60B2D0 + 8);
      v61 = (v11 + qword_1EC60B2D0);

      v25 = [v62 categoryWithID_];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 displayName];

        v28 = sub_1D139016C();
        v30 = v29;

        if (v24 == v28 && v23 == v30)
        {

          goto LABEL_39;
        }

        v32 = sub_1D139162C();

        if (v32)
        {
LABEL_19:

          goto LABEL_40;
        }
      }

      else
      {
      }

      v33 = *v61;
      v34 = v61[1];
      v35 = [v62 categoryWithID_];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 displayName];

        v38 = sub_1D139016C();
        v40 = v39;

        if (v33 == v38 && v34 == v40)
        {
LABEL_44:

LABEL_5:
          v4 = v59 + 1;
          v7 = v58 + 1;
          v8 = v57 - 1;
          if (v59 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v42 = sub_1D139162C();

        if (v42)
        {
          goto LABEL_4;
        }
      }

      v43 = *v12;
      v44 = v12[1];
      v45 = [v62 categoryWithID_];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 displayName];

        v48 = sub_1D139016C();
        v50 = v49;

        if (v43 == v48 && v44 == v50)
        {
          goto LABEL_44;
        }

        v51 = sub_1D139162C();

        if (v51)
        {
          goto LABEL_4;
        }
      }

      if (*v12 == *v61 && v12[1] == v61[1])
      {
LABEL_4:

        goto LABEL_5;
      }

      v53 = sub_1D139162C();

      if ((v53 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_40:
      if (!v60)
      {
        __break(1u);
        return result;
      }

      v54 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v54;
      --v7;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D111DB10(uint64_t result, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v7 = v5;
  v154 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v11 = v9 + 1;
    v155 = v9;
    if (v9 + 1 >= v8)
    {
      goto LABEL_58;
    }

    v152 = v10;
    v4 = *a3;
    v6 = *(*a3 + 8 * v11);
    v173 = *(*a3 + 8 * v9);
    v174 = v6;

    v169 = sub_1D111D1D8(&v174, &v173);
    if (v7)
    {
    }

    v11 = v9 + 2;
    if (v9 + 2 >= v8)
    {
      goto LABEL_49;
    }

    v149 = 0;
    v12 = (v4 + 8 * v9 + 16);
    v164 = v8;
    while (1)
    {
      v14 = *(v12 - 1);
      v15 = (*v12 + qword_1EC60B2D0);
      v16 = *v15;
      v6 = v15[1];
      v17 = objc_opt_self();

      v18 = [v17 categoryWithID_];
      v171 = v17;
      if (v18)
      {
        v166 = v15;
        v19 = v14;
        v20 = v18;
        v4 = [v18 displayName];

        v21 = sub_1D139016C();
        v23 = v22;

        if (v16 == v21 && v6 == v23)
        {

          goto LABEL_9;
        }

        v4 = sub_1D139162C();

        v14 = v19;
        v15 = v166;
        v17 = v171;
        if (v4)
        {
          goto LABEL_23;
        }
      }

      v6 = *(v14 + qword_1EC60B2D0);
      v25 = *(v14 + qword_1EC60B2D0 + 8);
      v162 = v14 + qword_1EC60B2D0;

      v26 = [v17 categoryWithID_];
      v159 = v11;
      if (v26)
      {
        v4 = v26;
        v27 = [v26 displayName];

        v28 = sub_1D139016C();
        v30 = v29;

        if (v6 == v28 && v25 == v30)
        {

          v11 = v159;
LABEL_9:
          v13 = v164;
          if ((v169 & 1) == 0)
          {
            v7 = v149;
            v10 = v152;
            v9 = v155;
            goto LABEL_58;
          }

          goto LABEL_10;
        }

        v4 = sub_1D139162C();

        v11 = v159;
        v17 = v171;
        if (v4)
        {
LABEL_23:

          goto LABEL_9;
        }
      }

      else
      {
      }

      v6 = *v162;
      v32 = *(v162 + 8);
      v33 = [v17 categoryWithID_];
      if (v33)
      {
        v4 = v33;
        v34 = [v33 displayName];

        v35 = sub_1D139016C();
        v37 = v36;

        if (v6 == v35 && v32 == v37)
        {

          v11 = v159;
          goto LABEL_45;
        }

        v4 = sub_1D139162C();

        v11 = v159;
        v17 = v171;
        if (v4)
        {
          goto LABEL_44;
        }
      }

      v6 = *v15;
      v39 = v15[1];
      v40 = [v17 categoryWithID_];
      if (v40)
      {
        v167 = v15;
        v4 = v40;
        v41 = [v40 displayName];

        v42 = sub_1D139016C();
        v44 = v43;

        if (v6 == v42 && v39 == v44)
        {

          goto LABEL_45;
        }

        v4 = sub_1D139162C();

        v15 = v167;
        if (v4)
        {
          goto LABEL_44;
        }
      }

      if (*v15 == *v162 && v15[1] == *(v162 + 8))
      {
LABEL_44:

LABEL_45:
        v13 = v164;
        if (v169)
        {
          v7 = v149;
          v10 = v152;
          v9 = v155;
          goto LABEL_50;
        }

        goto LABEL_10;
      }

      v4 = sub_1D139162C();

      v13 = v164;
      if ((v169 ^ v4))
      {
        goto LABEL_48;
      }

LABEL_10:
      ++v11;
      ++v12;
      if (v13 == v11)
      {
        v11 = v13;
LABEL_48:
        v7 = v149;
        v9 = v155;
LABEL_49:
        v10 = v152;
        if (v169)
        {
LABEL_50:
          if (v11 >= v9)
          {
            if (v9 < v11)
            {
              v46 = 8 * v11 - 8;
              v47 = 8 * v9;
              v48 = v11;
              v49 = v9;
              while (1)
              {
                if (v49 != --v48)
                {
                  v50 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_201;
                  }

                  v51 = *(v50 + v47);
                  *(v50 + v47) = *(v50 + v46);
                  *(v50 + v46) = v51;
                }

                ++v49;
                v46 -= 8;
                v47 += 8;
                if (v49 >= v48)
                {
                  goto LABEL_58;
                }
              }
            }

            goto LABEL_58;
          }

LABEL_197:
          __break(1u);
LABEL_198:
          result = sub_1D1245848(v4);
          goto LABEL_166;
        }

LABEL_58:
        v52 = a3[1];
        if (v11 >= v52)
        {
          goto LABEL_110;
        }

        if (__OFSUB__(v11, v9))
        {
          goto LABEL_194;
        }

        if (v11 - v9 >= a4)
        {
          goto LABEL_110;
        }

        if (__OFADD__(v9, a4))
        {
          goto LABEL_195;
        }

        if (v9 + a4 >= v52)
        {
          v4 = a3[1];
        }

        else
        {
          v4 = v9 + a4;
        }

        if (v4 < v9)
        {
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        if (v11 == v4)
        {
          goto LABEL_110;
        }

        v153 = v10;
        v150 = v7;
        v53 = *a3;
        v172 = objc_opt_self();
        v165 = v53;
        v54 = v53 + 8 * v11 - 8;
        v55 = v9 - v11;
        v156 = v4;
        while (2)
        {
          v158 = v54;
          v160 = v11;
          v56 = *(v165 + 8 * v11);
          v157 = v55;
          v57 = v54;
LABEL_71:
          v170 = v55;
          v58 = *v57;
          v6 = *(v56 + qword_1EC60B2D0);
          v59 = *(v56 + qword_1EC60B2D0 + 8);
          v168 = v56 + qword_1EC60B2D0;

          v60 = [v172 categoryWithID_];
          if (!v60)
          {
            goto LABEL_78;
          }

          v61 = v60;
          v62 = [v60 displayName];

          v63 = sub_1D139016C();
          v65 = v64;

          if (v6 == v63 && v59 == v65)
          {
          }

          else
          {
            v67 = sub_1D139162C();

            if (v67)
            {
              goto LABEL_77;
            }

LABEL_78:
            v68 = (v58 + qword_1EC60B2D0);
            v6 = *(v58 + qword_1EC60B2D0);
            v69 = *(v58 + qword_1EC60B2D0 + 8);

            v70 = [v172 categoryWithID_];
            v163 = v68;
            if (!v70)
            {

              v77 = v168;
              goto LABEL_87;
            }

            v71 = v70;
            v72 = [v70 displayName];

            v73 = sub_1D139016C();
            v75 = v74;

            v76 = v6 == v73 && v69 == v75;
            v77 = v168;
            if (!v76)
            {
              v78 = sub_1D139162C();

              v68 = v163;
              if (v78)
              {
LABEL_77:

                goto LABEL_105;
              }

LABEL_87:
              v6 = *v68;
              v79 = v68[1];
              v80 = [v172 categoryWithID_];
              if (v80)
              {
                v81 = v80;
                v82 = [v80 displayName];

                v83 = sub_1D139016C();
                v85 = v84;

                if (v6 != v83 || v79 != v85)
                {
                  v87 = sub_1D139162C();

                  if (v87)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_93;
                }

LABEL_108:

LABEL_69:
                v11 = v160 + 1;
                v54 = v158 + 8;
                v4 = v156;
                v55 = v157 - 1;
                if (v160 + 1 != v156)
                {
                  continue;
                }

                v11 = v156;
                v7 = v150;
                v10 = v153;
                v9 = v155;
LABEL_110:
                if (v11 < v9)
                {
                  goto LABEL_193;
                }

                v99 = v10;
                result = swift_isUniquelyReferenced_nonNull_native();
                v6 = v7;
                if (result)
                {
                  v10 = v99;
                }

                else
                {
                  result = sub_1D10F7610(0, *(v99 + 16) + 1, 1, v99);
                  v10 = result;
                }

                v4 = *(v10 + 16);
                v100 = *(v10 + 24);
                v7 = v4 + 1;
                if (v4 >= v100 >> 1)
                {
                  result = sub_1D10F7610((v100 > 1), v4 + 1, 1, v10);
                  v10 = result;
                }

                *(v10 + 16) = v7;
                v101 = v10 + 16 * v4;
                *(v101 + 32) = v155;
                *(v101 + 40) = v11;
                v102 = *v154;
                if (!*v154)
                {
                  goto LABEL_203;
                }

                v9 = v11;
                if (v4)
                {
                  while (1)
                  {
                    v103 = v7 - 1;
                    if (v7 >= 4)
                    {
                      break;
                    }

                    if (v7 == 3)
                    {
                      v104 = *(v10 + 32);
                      v105 = *(v10 + 40);
                      v114 = __OFSUB__(v105, v104);
                      v106 = v105 - v104;
                      v107 = v114;
LABEL_130:
                      if (v107)
                      {
                        goto LABEL_182;
                      }

                      v120 = (v10 + 16 * v7);
                      v122 = *v120;
                      v121 = v120[1];
                      v123 = __OFSUB__(v121, v122);
                      v124 = v121 - v122;
                      v125 = v123;
                      if (v123)
                      {
                        goto LABEL_185;
                      }

                      v126 = (v10 + 32 + 16 * v103);
                      v128 = *v126;
                      v127 = v126[1];
                      v114 = __OFSUB__(v127, v128);
                      v129 = v127 - v128;
                      if (v114)
                      {
                        goto LABEL_188;
                      }

                      if (__OFADD__(v124, v129))
                      {
                        goto LABEL_189;
                      }

                      if (v124 + v129 >= v106)
                      {
                        if (v106 < v129)
                        {
                          v103 = v7 - 2;
                        }

                        goto LABEL_151;
                      }

                      goto LABEL_144;
                    }

                    v130 = (v10 + 16 * v7);
                    v132 = *v130;
                    v131 = v130[1];
                    v114 = __OFSUB__(v131, v132);
                    v124 = v131 - v132;
                    v125 = v114;
LABEL_144:
                    if (v125)
                    {
                      goto LABEL_184;
                    }

                    v133 = v10 + 16 * v103;
                    v135 = *(v133 + 32);
                    v134 = *(v133 + 40);
                    v114 = __OFSUB__(v134, v135);
                    v136 = v134 - v135;
                    if (v114)
                    {
                      goto LABEL_187;
                    }

                    if (v136 < v124)
                    {
                      goto LABEL_3;
                    }

LABEL_151:
                    v4 = v103 - 1;
                    if (v103 - 1 >= v7)
                    {
                      __break(1u);
LABEL_178:
                      __break(1u);
LABEL_179:
                      __break(1u);
LABEL_180:
                      __break(1u);
LABEL_181:
                      __break(1u);
LABEL_182:
                      __break(1u);
LABEL_183:
                      __break(1u);
LABEL_184:
                      __break(1u);
LABEL_185:
                      __break(1u);
LABEL_186:
                      __break(1u);
LABEL_187:
                      __break(1u);
LABEL_188:
                      __break(1u);
LABEL_189:
                      __break(1u);
LABEL_190:
                      __break(1u);
LABEL_191:
                      __break(1u);
LABEL_192:
                      __break(1u);
LABEL_193:
                      __break(1u);
LABEL_194:
                      __break(1u);
LABEL_195:
                      __break(1u);
                      goto LABEL_196;
                    }

                    if (!*a3)
                    {
                      goto LABEL_200;
                    }

                    v141 = v10;
                    v142 = *(v10 + 32 + 16 * v4);
                    v143 = *(v10 + 32 + 16 * v103 + 8);
                    sub_1D111E8A8((*a3 + 8 * v142), (*a3 + 8 * *(v10 + 32 + 16 * v103)), (*a3 + 8 * v143), v102);
                    v7 = v6;
                    if (v6)
                    {
                    }

                    if (v143 < v142)
                    {
                      goto LABEL_178;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v141 = sub_1D1245848(v141);
                    }

                    if (v4 >= *(v141 + 2))
                    {
                      goto LABEL_179;
                    }

                    v144 = &v141[16 * v4];
                    *(v144 + 4) = v142;
                    *(v144 + 5) = v143;
                    v175 = v141;
                    result = sub_1D12457BC(v103);
                    v10 = v175;
                    v7 = *(v175 + 16);
                    if (v7 <= 1)
                    {
                      goto LABEL_3;
                    }
                  }

                  v108 = v10 + 32 + 16 * v7;
                  v109 = *(v108 - 64);
                  v110 = *(v108 - 56);
                  v114 = __OFSUB__(v110, v109);
                  v111 = v110 - v109;
                  if (v114)
                  {
                    goto LABEL_180;
                  }

                  v113 = *(v108 - 48);
                  v112 = *(v108 - 40);
                  v114 = __OFSUB__(v112, v113);
                  v106 = v112 - v113;
                  v107 = v114;
                  if (v114)
                  {
                    goto LABEL_181;
                  }

                  v115 = (v10 + 16 * v7);
                  v117 = *v115;
                  v116 = v115[1];
                  v114 = __OFSUB__(v116, v117);
                  v118 = v116 - v117;
                  if (v114)
                  {
                    goto LABEL_183;
                  }

                  v114 = __OFADD__(v106, v118);
                  v119 = v106 + v118;
                  if (v114)
                  {
                    goto LABEL_186;
                  }

                  if (v119 >= v111)
                  {
                    v137 = (v10 + 32 + 16 * v103);
                    v139 = *v137;
                    v138 = v137[1];
                    v114 = __OFSUB__(v138, v139);
                    v140 = v138 - v139;
                    if (v114)
                    {
                      goto LABEL_190;
                    }

                    if (v106 < v140)
                    {
                      v103 = v7 - 2;
                    }

                    goto LABEL_151;
                  }

                  goto LABEL_130;
                }

LABEL_3:
                v8 = a3[1];
                v7 = v6;
                if (v9 >= v8)
                {
                  goto LABEL_163;
                }

                goto LABEL_4;
              }

LABEL_93:
              v6 = *v77;
              v88 = *(v77 + 8);
              v89 = [v172 categoryWithID_];
              if (v89)
              {
                v90 = v89;
                v91 = [v89 displayName];

                v92 = sub_1D139016C();
                v94 = v93;

                if (v6 == v92 && v88 == v94)
                {
                  goto LABEL_108;
                }

                v95 = sub_1D139162C();

                if (v95)
                {
                  goto LABEL_68;
                }
              }

              if (*v77 == *v163 && *(v77 + 8) == v163[1])
              {
LABEL_68:

                goto LABEL_69;
              }

              v97 = sub_1D139162C();

              if ((v97 & 1) == 0)
              {
                goto LABEL_69;
              }

LABEL_105:
              if (v165)
              {
                v98 = *v57;
                v56 = v57[1];
                *v57 = v56;
                v57[1] = v98;
                --v57;
                v55 = v170 + 1;
                if (v170 == -1)
                {
                  goto LABEL_69;
                }

                goto LABEL_71;
              }

              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
              return result;
            }
          }

          break;
        }

        goto LABEL_105;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_163:
  v6 = *v154;
  if (!*v154)
  {
    goto LABEL_204;
  }

  v4 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_198;
  }

  result = v4;
LABEL_166:
  v175 = result;
  v4 = *(result + 16);
  if (v4 >= 2)
  {
    while (*a3)
    {
      v145 = *(result + 16 * v4);
      v146 = result;
      v147 = *(result + 16 * (v4 - 1) + 40);
      sub_1D111E8A8((*a3 + 8 * v145), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v147), v6);
      if (v7)
      {
      }

      if (v147 < v145)
      {
        goto LABEL_191;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_1D1245848(v146);
      }

      if (v4 - 2 >= *(v146 + 2))
      {
        goto LABEL_192;
      }

      v148 = &v146[16 * v4];
      *v148 = v145;
      *(v148 + 1) = v147;
      v175 = v146;
      sub_1D12457BC(v4 - 1);
      result = v175;
      v4 = *(v175 + 16);
      if (v4 <= 1)
      {
      }
    }

    goto LABEL_202;
  }
}

uint64_t sub_1D111E8A8(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;

      v17 = sub_1D111D1D8(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;

    v29 = sub_1D111D1D8(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1D111EC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D111ECA4(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D111ED00()
{
  if (!qword_1EC60AA30)
  {
    sub_1D138E52C();
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AA30);
    }
  }
}

void sub_1D111ED58()
{
  if (!qword_1EE06A660)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A660);
    }
  }
}

uint64_t type metadata accessor for ClinicalSharingSelectableDatatypesDataSource()
{
  result = qword_1EC60B308;
  if (!qword_1EC60B308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1D111EE6C()
{
  v1 = qword_1EC60B300;
  if (*(v0 + qword_1EC60B300))
  {
    v2 = *(v0 + qword_1EC60B300);
  }

  else
  {
    v3 = *(v0 + qword_1EC60B2D0);
    v4 = *(v0 + qword_1EC60B2D0 + 8);
    if (*(v0 + qword_1EC60B2F0) == 1)
    {

      v5 = 0;
    }

    else
    {
      v6 = objc_opt_self();

      v5 = [v6 secondarySystemBackgroundColor];
    }

    type metadata accessor for ShowAllItem();
    swift_allocObject();

    v2 = sub_1D1121464(v3, v4, v5, sub_1D112145C, v0);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1D111EF98(void *a1, uint64_t a2)
{
  v2 = *(a2 + qword_1EC60B2F8);
  if (v2)
  {
    v4 = *(a2 + qword_1EC60B2D0);
    v5 = *(a2 + qword_1EC60B2D0 + 8);
    v6 = *(a2 + qword_1EC60B2E8);
    v8 = objc_allocWithZone(type metadata accessor for ClinicalSharingAllItemsOnboardingViewController(0));
    swift_retain_n();

    v9 = sub_1D11C3334(v4, v5, v6, v2, sub_1D1121698, a2);
    v10 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v10 setModalPresentationStyle_];
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_1D111F0F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138D5EC();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v22 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v28 = 0;
  v27 = MEMORY[0x1E69E7CD0];

  v10 = sub_1D1120DF4(v9, a1, &v27, &v28);

  v11 = v27;
  v12 = *(v27 + 16);
  if (v12)
  {
    v20[0] = a2;
    v20[1] = v3;
    v21 = v6;
    v8 = sub_1D129F8E4(v12, 0);
    v13 = *(type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8);
    v6 = sub_1D12A14F0(&v24, v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12, v11);
    v14 = v25;

    sub_1D102CC30();
    if (v6 != v12)
    {
      __break(1u);
LABEL_12:
      v14 = sub_1D10F857C(0, v14[2] + 1, 1, v14);
      goto LABEL_6;
    }

    v6 = v21;
  }

  sub_1D1335A40(v8, 1);

  v15 = sub_1D110ACE4(v10);

  sub_1D1122388(v15);
  if (!v28)
  {
    v14 = v29;
    goto LABEL_10;
  }

  v8 = sub_1D111EE6C();
  v14 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1D10F857C((v16 > 1), v17 + 1, 1, v14);
  }

  v25 = type metadata accessor for ShowAllItem();
  v26 = sub_1D1121650(&qword_1EC60B330, type metadata accessor for ShowAllItem);
  *&v24 = v8;
  v14[2] = v17 + 1;
  sub_1D102CC18(&v24, &v14[5 * v17 + 4]);
  v29 = v14;
LABEL_10:
  sub_1D11216A0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110A5C8(v14);

  v18 = v22;
  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v23 + 8))(v18, v6);
  sub_1D138E50C();
  sub_1D138E58C();
}

uint64_t sub_1D111F524(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11216A0(0, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v45 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v9 = *(v45 - 8);
  v10 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v38 = a2;
  v16 = *(*(a2 + qword_1EC60B2E8) + 16);

  v18 = MEMORY[0x1E69E7CC0];
  v43 = v16;
  if (v16)
  {
    v19 = 0;
    v42 = (v9 + 48);
    v39 = v9;
    v40 = a1;
    v20 = v9;
    while (v19 < *(v17 + 16))
    {
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = v17;
      v23 = v20[9];
      sub_1D111EC40(v17 + v21 + v23 * v19, v15);
      sub_1D111FAEC(v15, a1, v8);
      sub_1D111ECA4(v15);
      if ((*v42)(v8, 1, v45) == 1)
      {
        sub_1D1121704(v8, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      }

      else
      {
        v24 = v41;
        sub_1D10F0DFC(v8, v41);
        sub_1D10F0DFC(v24, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D10F7738(0, v18[2] + 1, 1, v18);
        }

        v26 = v18[2];
        v25 = v18[3];
        if (v26 >= v25 >> 1)
        {
          v18 = sub_1D10F7738(v25 > 1, v26 + 1, 1, v18);
        }

        v18[2] = v26 + 1;
        sub_1D10F0DFC(v44, v18 + v21 + v26 * v23);
        v20 = v39;
        a1 = v40;
      }

      ++v19;
      v17 = v22;
      if (v43 == v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v49 = MEMORY[0x1E69E7CC0];
    v27 = sub_1D110ACE4(v18);

    v28 = sub_1D1122388(v27);
    a1 = sub_1D111EE6C(v28);
    v20 = v49;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }
  }

  v20 = sub_1D10F857C(0, v20[2] + 1, 1, v20);
LABEL_13:
  v30 = v36;
  v29 = v37;
  v31 = v35;
  v33 = v20[2];
  v32 = v20[3];
  if (v33 >= v32 >> 1)
  {
    v20 = sub_1D10F857C((v32 > 1), v33 + 1, 1, v20);
  }

  v47 = type metadata accessor for ShowAllItem();
  v48 = sub_1D1121650(&qword_1EC60B330, type metadata accessor for ShowAllItem);
  *&v46 = a1;
  v20[2] = v33 + 1;
  sub_1D102CC18(&v46, &v20[5 * v33 + 4]);
  sub_1D11216A0(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110A5C8(v20);

  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v30 + 8))(v31, v29);
  sub_1D138E50C();
  sub_1D138E58C();
}

uint64_t sub_1D111FAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v66 = a3;
  v72 = sub_1D138ED5C();
  v70 = *(v72 - 8);
  v5 = MEMORY[0x1EEE9AC00](v72);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v71 = v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v64 = v61 - v10;
  v11 = sub_1D138F0BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = v61 - v20;
  sub_1D111EC40(a1, v61 - v20);
  v73 = v15;
  v21 = *(a1 + *(v15 + 52));
  if (v21)
  {
    v61[1] = v3;
    v22 = *(v21 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    v63 = v16;
    if (v22)
    {
      v61[0] = v7;
      v74 = MEMORY[0x1E69E7CC0];
      sub_1D10FDD9C(0, v22, 0);
      v24 = v74;
      v25 = v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v26 = *(v16 + 72);
      v27 = v70;
      v68 = (v70 + 16);
      v69 = v26;
      v67 = v70 + 32;
      v28 = v72;
      v29 = v64;
      do
      {
        sub_1D111EC40(v25, v19);
        (*v68)(v29, &v19[*(v73 + 48)], v28);
        sub_1D111ECA4(v19);
        v74 = v24;
        v31 = *(v24 + 2);
        v30 = *(v24 + 3);
        if (v31 >= v30 >> 1)
        {
          sub_1D10FDD9C(v30 > 1, v31 + 1, 1);
          v24 = v74;
        }

        *(v24 + 2) = v31 + 1;
        (*(v27 + 32))(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v31], v29, v28);
        v25 += v69;
        --v22;
      }

      while (v22);
      v23 = v24;
      v7 = v61[0];
      v16 = v63;
    }

    else
    {
      v28 = v72;
      v27 = v70;
    }

    v42 = *(v62 + 16);
    v43 = *(v42 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    v64 = v23;
    if (v43)
    {
      v74 = MEMORY[0x1E69E7CC0];

      sub_1D10FDD9C(0, v43, 0);
      v44 = v74;
      v45 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v62 = v42;
      v46 = v42 + v45;
      v47 = *(v16 + 72);
      v68 = (v27 + 16);
      v69 = v47;
      v67 = v27 + 32;
      v48 = v73;
      do
      {
        sub_1D111EC40(v46, v19);
        (*v68)(v7, &v19[*(v48 + 48)], v28);
        sub_1D111ECA4(v19);
        v74 = v44;
        v49 = v7;
        v51 = *(v44 + 2);
        v50 = *(v44 + 3);
        if (v51 >= v50 >> 1)
        {
          sub_1D10FDD9C(v50 > 1, v51 + 1, 1);
          v48 = v73;
          v44 = v74;
        }

        *(v44 + 2) = v51 + 1;
        v27 = v70;
        (*(v70 + 32))(&v44[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v51], v49, v28);
        v46 += v69;
        --v43;
        v7 = v49;
      }

      while (v43);

      v23 = v64;
    }

    else
    {
      v48 = v73;
    }

    v52 = *(v23 + 2);

    v70 = v52;
    if (v52)
    {
      v53 = 0;
      v54 = (v27 + 8);
      v69 = v27 + 16;
      while (v53 < *(v23 + 2))
      {
        v55 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v56 = *(v27 + 72);
        (*(v27 + 16))(v71, &v23[v55 + v56 * v53++], v72);
        v57 = &v44[v55];
        v58 = *(v44 + 2) + 1;
        while (--v58)
        {
          sub_1D1121650(&qword_1EC60A938, MEMORY[0x1E69A3910]);
          v57 += v56;
          if (sub_1D139011C())
          {
            (*v54)(v71, v72);

            swift_bridgeObjectRelease_n();
            v59 = v65;
            *(v65 + 49) = 1;
            v48 = v73;
            goto LABEL_28;
          }
        }

        result = (*v54)(v71, v72);
        v48 = v73;
        v23 = v64;
        if (v53 == v70)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_27:

      swift_bridgeObjectRelease_n();
      v59 = v65;
LABEL_28:
      v60 = v66;
      sub_1D10F0DFC(v59, v66);
      return (*(v63 + 56))(v60, 0, 1, v48);
    }
  }

  else
  {
    v32 = v12;
    sub_1D138F06C();
    v33 = sub_1D138F0AC();
    v34 = sub_1D139081C();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v66;
    if (v35)
    {
      v37 = v16;
      v38 = v66;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D101F000, v33, v34, "Returning from all items view with an item that does not have associated items. This should not happen.", v39, 2u);
      v40 = v39;
      v36 = v38;
      v16 = v37;
      MEMORY[0x1D38882F0](v40, -1, -1);
    }

    (*(v32 + 8))(v14, v11);
    sub_1D111ECA4(v65);
    return (*(v16 + 56))(v36, 1, 1, v73);
  }

  return result;
}