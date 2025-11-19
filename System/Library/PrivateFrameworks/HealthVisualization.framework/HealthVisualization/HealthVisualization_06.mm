uint64_t sub_1D14C1448(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *(a5 + 16);
    v7 = a5 + 32;
LABEL_5:
    v8 = *(v5 + 40 * a3);
    v9 = a3;
    while (1)
    {
      if (!v6)
      {
LABEL_4:
        if (++a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v10 = 0;
      v11 = v9 - 1;
      v12 = v5 + 40 * v9;
      v13 = v12 - 40;
      while (*(v7 + 8 * v10) != v8)
      {
        if (v6 == ++v10)
        {
          goto LABEL_4;
        }
      }

      v14 = 0;
      while (*(v7 + 8 * v14) != *(v12 - 40))
      {
        if (v6 == ++v14)
        {
          goto LABEL_16;
        }
      }

      if (v10 >= v14)
      {
        goto LABEL_4;
      }

LABEL_16:
      if (!v5)
      {
        break;
      }

      v15 = *(v12 + 24);
      v16 = *(v12 + 25);
      v17 = *(v12 + 32);
      v18 = *(v12 + 8);
      v19 = *(v12 - 24);
      *v12 = *v13;
      *(v12 + 16) = v19;
      *(v12 + 32) = *(v12 - 8);
      *v13 = v8;
      *(v12 - 32) = v18;
      *(v12 - 16) = v15;
      *(v12 - 15) = v16;
      v9 = v11;
      *(v13 + 32) = v17;
      if (v11 == result)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D14C1528(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D15A4B58();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1D15A40F8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1D14C0C9C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1D14C1448(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D14C1670(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D151E094(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1D14C1528(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t type metadata accessor for TimeBasedDistributionMaxBucketTextSupport()
{
  result = qword_1EC6307B0;
  if (!qword_1EC6307B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D14C17A4()
{
  result = sub_1D15A3268();
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

uint64_t sub_1D14C186C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D14C18C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D14C192C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14C1994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HealthKitDataTypeChartConfiguration.__allocating_init(sampleType:healthStore:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC19HealthVisualization35HealthKitDataTypeChartConfiguration_logger;
  v8 = sub_1D15A3268();
  (*(*(v8 - 8) + 32))(v6 + v7, a3, v8);
  return v6;
}

void *sub_1D14C1A84(char a1)
{
  v2 = sub_1D15A2848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return &unk_1F4D3A658;
  }

  sub_1D1453BA0(0, &qword_1EE05ACD0);
  sub_1D1453BA0(0, &qword_1EE05B458);
  v7 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC70]);
  v8 = sub_1D15A4598();

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    sub_1D15A2818();
    v9 = sub_1D15A2748();
    (*(v3 + 8))(v5, v2);
  }

  v19 = MEMORY[0x1E69E7CC0];
  v10 = 7;
  sub_1D14A7874(0, 7, 0);
  v11 = 0;
  v12 = 0;
  result = v19;
  while (!v12)
  {
    v13 = v11 + v9;
    if (__OFADD__(v11, v9))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_20;
    }

    v19 = result;
    v16 = result[2];
    v15 = result[3];
    if (v16 >= v15 >> 1)
    {
      sub_1D14A7874((v15 > 1), v16 + 1, 1);
      result = v19;
    }

    result[2] = v16 + 1;
    result[v16 + 4] = v14 % 7;
    v12 = v11 == 6;
    if (v11 == 6)
    {
      v11 = 0;
    }

    else if (__OFADD__(v11++, 1))
    {
      goto LABEL_21;
    }

    if (!--v10)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void *TimeBasedDistributionChartConfiguration.componentRangeLowerBoundOrder(flavor:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return &unk_1F4D3A7E0;
  }

  v4 = (*(a3 + 32))(a2, a3);
  v13 = MEMORY[0x1E69E7CC0];
  v5 = 7;
  sub_1D14A7874(0, 7, 0);
  v6 = 0;
  v7 = 0;
  result = v13;
  while (!v7)
  {
    v8 = v6 + v4;
    if (__OFADD__(v6, v4))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      break;
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_17;
    }

    v14 = result;
    v11 = result[2];
    v10 = result[3];
    if (v11 >= v10 >> 1)
    {
      sub_1D14A7874((v10 > 1), v11 + 1, 1);
      result = v14;
    }

    result[2] = v11 + 1;
    result[v11 + 4] = v9 % 7;
    v7 = v6 == 6;
    if (v6 == 6)
    {
      v6 = 0;
    }

    else if (__OFADD__(v6++, 1))
    {
      goto LABEL_18;
    }

    if (!--v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t HealthKitDataTypeChartConfiguration.init(sampleType:healthStore:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC19HealthVisualization35HealthKitDataTypeChartConfiguration_logger;
  v6 = sub_1D15A3268();
  (*(*(v6 - 8) + 32))(v3 + v5, a3, v6);
  return v3;
}

void HealthKitDataTypeChartConfiguration.accentColor.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = [v0[3] displayTypeController];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = v1[2];
  v6 = [v3 displayTypeForObjectType_];

  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = [v6 displayCategory];

  v8 = [v7 color];
  if (!v8)
  {

    v9 = sub_1D15A3248();
    v10 = sub_1D15A4328();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      v24 = v2;
      *v11 = 136446466;
      swift_getMetatypeMetadata();
      v13 = sub_1D15A3F68();
      v15 = sub_1D1479780(v13, v14, &v23);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = [v5 identifier];
      v17 = sub_1D15A3F38();
      v19 = v18;

      v20 = sub_1D1479780(v17, v19, &v23);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1D1446000, v9, v10, "[%{public}s] Unable to find display type for sample type with identifier %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v12, -1, -1);
      MEMORY[0x1D388BF00](v11, -1, -1);
    }

    v21 = [objc_opt_self() blueColor];

    v22 = v21;
  }
}

uint64_t HealthKitDataTypeChartConfiguration.minimumValueToBeUsedForMaximum.getter()
{
  sub_1D1453BA0(0, &qword_1EE05ACD0);
  sub_1D1453BA0(0, &qword_1EE05B458);
  v0 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC70]);
  v1 = sub_1D15A4598();

  if (v1)
  {
    return 0x3FB999999999999ALL;
  }

  else
  {
    return 0;
  }
}

uint64_t HealthKitDataTypeChartConfiguration.firstWeekdayComponent.getter()
{
  v0 = sub_1D15A2848();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1453BA0(0, &qword_1EE05ACD0);
  sub_1D1453BA0(0, &qword_1EE05B458);
  v4 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC70]);
  v5 = sub_1D15A4598();

  if (v5)
  {
    return 2;
  }

  sub_1D15A2818();
  v7 = sub_1D15A2748();
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t HealthKitDataTypeChartConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization35HealthKitDataTypeChartConfiguration_logger;
  v2 = sub_1D15A3268();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HealthKitDataTypeChartConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization35HealthKitDataTypeChartConfiguration_logger;
  v2 = sub_1D15A3268();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D14C2464()
{
  sub_1D1453BA0(0, &qword_1EE05ACD0);
  sub_1D1453BA0(0, &qword_1EE05B458);
  v0 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC70]);
  v1 = sub_1D15A4598();

  if (v1)
  {
    return 0x3FB999999999999ALL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D14C2514()
{
  v0 = sub_1D15A2848();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1453BA0(0, &qword_1EE05ACD0);
  sub_1D1453BA0(0, &qword_1EE05B458);
  v4 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC70]);
  v5 = sub_1D15A4598();

  if (v5)
  {
    return 2;
  }

  sub_1D15A2818();
  v7 = sub_1D15A2748();
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t type metadata accessor for HealthKitDataTypeChartConfiguration()
{
  result = qword_1EC6307D8;
  if (!qword_1EC6307D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D14C2748()
{
  result = sub_1D15A3268();
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

id sub_1D14C2814()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  result = [v0 setFormattingContext_];
  qword_1EC63D5F8 = v0;
  return result;
}

uint64_t TimeBasedDistributionChartTextSupportImpl.__allocating_init(healthStore:sampleType:unit:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_1D14C2FD8(a1, a2, a3);
  v7 = v6;

  return v7;
}

uint64_t TimeBasedDistributionChartTextSupportImpl.init(healthStore:sampleType:unit:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D14C2FD8(a1, a2, a3);
  v5 = v4;

  return v5;
}

Swift::String __swiftcall TimeBasedDistributionChartTextSupportImpl.barAnnotation(for:)(HealthVisualization::TimeBasedDistribution::DistributionValue a1)
{
  v2 = *&a1.value.is_nil;
  v3 = 0xD00000000000001BLL;
  v4 = sub_1D15A3268();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8))
  {
    v10 = v6;
    type metadata accessor for Localization();
    memset(v40, 0, sizeof(v40));
    swift_initStaticObject();
    v11 = sub_1D144E91C(0xD00000000000001BLL, 0x80000001D15BF5F0, v40, 0xD000000000000015, 0x80000001D15BF290);
    v13 = v12;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v3 = v11;
    }

    else
    {

      sub_1D15A3238();
      v31 = sub_1D15A3248();
      v32 = sub_1D15A42F8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_1D1479780(0xD00000000000001BLL, 0x80000001D15BF5F0, &v39);
        _os_log_impl(&dword_1D1446000, v31, v32, "Localization: no localization found for '%{public}s'", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1D388BF00](v34, -1, -1);
        MEMORY[0x1D388BF00](v33, -1, -1);
      }

      (*(v5 + 8))(v9, v10);
      v13 = 0x80000001D15BF5F0;
    }

    sub_1D144ED4C(v40);
  }

  else
  {
    v15 = *(v2 + 16);
    v16 = [*(v1 + 24) presentation];
    v17 = sub_1D15A29A8();
    v18 = [v16 adjustedValueForDaemonValue_];

    *&v40[0] = 0xD00000000000002BLL;
    *(&v40[0] + 1) = 0x80000001D15BCE20;
    MEMORY[0x1EEE9AC00](v19);
    *(&v38 - 2) = v40;
    if (sub_1D14C2E04(sub_1D14C30C0, (&v38 - 4), v15))
    {
      v20 = HKAFibBurdenClampedLowerBoundLocalizedString();
      v3 = sub_1D15A3F38();
      v13 = v21;
    }

    else
    {
      v22 = *(v1 + 40);
      [v18 doubleValue];
      v24 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v23];
      v25 = *(v1 + 32);
      v26 = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
      sub_1D1453BA0(0, &qword_1EE05ACD0);
      sub_1D1453BA0(0, &qword_1EE05B458);
      v27 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC70]);
      v28 = sub_1D15A4598();

      if (v28)
      {
        [v26 setHasSpaceBetweenValueAndUnit_];
      }

      v29 = [v24 localizedStringForType:v25 parameters:v26];

      v3 = sub_1D15A3F38();
      v13 = v30;
    }
  }

  v35 = v3;
  v36 = v13;
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

uint64_t TimeBasedDistributionChartTextSupportImpl.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D14C2E04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D14C2EB0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1D388AB50](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D15A4708();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1D14C2FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() sharedInstanceForHealthStore_];
  v8 = [v7 createHKUnitPreferenceController];

  v3[2] = v8;
  v9 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 displayTypeForObjectType_];

    if (v11)
    {
      v3[3] = v11;
      v3[4] = a2;
      v3[5] = a3;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D14C30C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D15A4BA8() & 1;
  }
}

uint64_t DiagramDataGroup.annotation.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DiagramDataGroup.supplementaryAnnotation.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall DiagramDataGroup.init(points:annotation:supplementaryAnnotation:)(HealthVisualization::DiagramDataGroup *__return_ptr retstr, Swift::OpaquePointer points, Swift::String_optional annotation, Swift::String_optional supplementaryAnnotation)
{
  retstr->points = points;
  retstr->annotation = annotation;
  retstr->supplementaryAnnotation = supplementaryAnnotation;
}

uint64_t sub_1D14C31F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14C5ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14C3220(uint64_t a1)
{
  v2 = sub_1D144DD3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14C325C(uint64_t a1)
{
  v2 = sub_1D144DD3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramDataGroup.encode(to:)(void *a1)
{
  sub_1D144D494(0, &qword_1EE05AC38, sub_1D144DD3C, &type metadata for DiagramDataGroup.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v13[2] = v1[2];
  v13[3] = v8;
  v13[0] = v1[4];
  v13[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144DD3C();

  sub_1D15A4CE8();
  v17 = v9;
  v16 = 0;
  sub_1D144D6F4(0, &qword_1EE05B5A8, type metadata accessor for CGPoint);
  sub_1D144DE54(&qword_1EE05AD80, &qword_1EE05ACE8);
  v11 = v13[4];
  sub_1D15A4B38();
  if (v11)
  {
  }

  else
  {

    v15 = 1;
    sub_1D15A4AA8();
    v14 = 2;
    sub_1D15A4AA8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramDataKey.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x636E657265666552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F43;
  }
}

uint64_t sub_1D14C3588()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14C363C()
{
  sub_1D15A3F88();
}

void sub_1D14C36DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001D15BCD70;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x636E657265666552;
    v4 = 0xED0000656E694C65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E65746E6F43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

__n128 DiagramData.dataModelSpace.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void __swiftcall DiagramData.init(dataModelSpace:dataGroups:)(HealthVisualization::DiagramData *__return_ptr retstr, __C::CGRect_optional *dataModelSpace, Swift::OpaquePointer dataGroups)
{
  size = dataModelSpace->value.size;
  retstr->dataModelSpace.value.origin = dataModelSpace->value.origin;
  retstr->dataModelSpace.value.size = size;
  retstr->dataModelSpace.is_nil = dataModelSpace->is_nil;
  retstr->dataGroups = dataGroups;
}

__n128 DiagramData.init(dataModelSpace:dataGroups:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3 & 1;
  *(a3 + 40) = a2;
  return result;
}

__C::CGRect __swiftcall CGRect.paddedIfZeroSize(_:)(Swift::Bool a1)
{
  if (v3 == 0.0 && v4 == 0.0 && a1)
  {
    v1 = v1 + -0.005;
    v2 = v2 + -0.005;
    v3 = 0.01;
    v4 = 0.01;
  }

  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void static DiagramData.computedBounds(points:startAtZero:)(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (a2)
    {
      v3 = (a1 + 32);
      v4 = 0;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v3 = MEMORY[0x1E695F050];
      v4 = *(MEMORY[0x1E695F050] + 8);
      v5 = *(MEMORY[0x1E695F050] + 16);
      v6 = *(MEMORY[0x1E695F050] + 24);
    }

    v7 = *v3;
    v8 = (a1 + 40);
    do
    {
      v9.origin.x = *(v8 - 1);
      v9.origin.y = *v8;
      v9.size.width = 0.0;
      v9.size.height = 0.0;
      *(&v4 - 1) = CGRectUnion(*(&v4 - 1), v9);
      v8 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D14C38A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F4D61746164 && a2 == 0xEE0065636170536CLL;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F724761746164 && a2 == 0xEA00000000007370)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D14C3994(uint64_t a1)
{
  v2 = sub_1D144D4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14C39D0(uint64_t a1)
{
  v2 = sub_1D144D4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramData.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D144D494(0, &qword_1EE05AC40, sub_1D144D4FC, &type metadata for DiagramData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(v2 + 32);
  v14 = *(v2 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144D4FC();
  sub_1D15A4CE8();
  v10 = *v2;
  v17 = v2[1];
  v16 = v10;
  v18 = v9;
  v19 = 0;
  type metadata accessor for CGRect(0);
  sub_1D144D660(&qword_1EE05ACF8, type metadata accessor for CGRect);
  v11 = v15;
  sub_1D15A4AE8();
  if (!v11)
  {
    *&v16 = v14;
    v19 = 1;
    sub_1D144D6F4(0, &qword_1EE05B5B8, sub_1D144D748);
    sub_1D14C5AD0();
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D14C3C88()
{
  if (!*(*(v0 + 40) + 16))
  {
    return 0;
  }

  sub_1D152AF9C(v1, &v4);

  if (!v4)
  {
    return 0;
  }

  if (*(v4 + 16))
  {
    v2 = *(v4 + 32);
  }

  else
  {
    v2 = 0;
  }

  sub_1D1459CF0(v4);
  return v2;
}

uint64_t sub_1D14C3D18()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (v3 < *(v1 + 16))
  {
    if (*(*(v1 + 32 + 8 * v3) + 16))
    {

      sub_1D1451D94(2u);
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_1D14C3DB0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      if (*(v4 + 16))
      {

        v5 = sub_1D1451D94(2u);
        if (v6)
        {
          v7 = *(*(v4 + 56) + 40 * v5 + 16);

          if (v7)
          {

            return;
          }
        }

        else
        {
        }
      }

      if (v2 == ++v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t DiagramFactory.__allocating_init(hbxViewControllerFactory:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D14C3EB8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 16);
  *&t1.a = *a1;
  *&t1.c = v8;
  LOBYTE(t1.tx) = v6;
  t1.ty = v7;
  sub_1D1450264(&t1, a2, v53);
  v9 = v54;
  v10 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v54;
  v19 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v20 = (*(v19 + 16))(v18, v19);
  v22 = v21;
  *a3 = 0;
  v56.origin.x = v11;
  v56.origin.y = v13;
  v56.size.width = v15;
  v56.size.height = v17;
  if (CGRectIsEmpty(v56))
  {
    v23 = xmmword_1D15A60F0;
    v24 = xmmword_1D15A64D0;
    v25 = 0uLL;
  }

  else
  {
    v26 = UIEdgeInsetsInsetRect_0(0.0, 0.0, a4, a5, v20, v22);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    CGAffineTransformMakeTranslation(&t1, -v11, -v13);
    tx = t1.tx;
    ty = t1.ty;
    v45 = *&t1.a;
    v44 = *&t1.c;
    v57.origin.x = v26;
    v57.origin.y = v28;
    v57.size.width = v30;
    rect = v30;
    v57.size.height = v32;
    Height = CGRectGetHeight(v57);
    CGAffineTransformMakeTranslation(&t1, 0.0, Height);
    CGAffineTransformTranslate(&t2, &t1, v26, v28);
    v42 = t2.ty;
    v43 = t2.tx;
    v40 = *&t2.c;
    v41 = *&t2.a;
    v58.origin.x = v26;
    v58.origin.y = v28;
    v58.size.width = v30;
    v58.size.height = v32;
    Width = CGRectGetWidth(v58);
    v59.origin.x = v11;
    v59.origin.y = v13;
    v59.size.width = v15;
    v59.size.height = v17;
    v35 = Width / CGRectGetWidth(v59);
    v60.origin.x = v26;
    v60.origin.y = v28;
    v60.size.width = rect;
    v60.size.height = v32;
    v36 = -CGRectGetHeight(v60);
    v61.origin.x = v11;
    v61.origin.y = v13;
    v61.size.width = v15;
    v61.size.height = v17;
    v37 = CGRectGetHeight(v61);
    *&t1.c = v40;
    *&t1.a = v41;
    t1.tx = v43;
    t1.ty = v42;
    CGAffineTransformScale(&t2, &t1, v35, v36 / v37);
    *&t1.c = v44;
    *&t1.a = v45;
    t1.tx = tx;
    t1.ty = ty;
    CGAffineTransformConcat(&v50, &t1, &t2);
    v24 = *&v50.a;
    v23 = *&v50.c;
    v25 = *&v50.tx;
  }

  *(a3 + 8) = v24;
  *(a3 + 24) = v23;
  *(a3 + 40) = v25;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1D14C41C4(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D148B73C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_1D14C5574(&v47, &v4[6 * v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = v4[2];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }

        if (v19 >= ((v2 + 64) >> 6))
        {
          v28 = 0;
          goto LABEL_44;
        }

        v18 = *(v14 + 8 * v19);
        ++v17;
        if (v18)
        {
          v42 = v13;
          goto LABEL_23;
        }
      }
    }

    v4[2] = v17;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_1D14C6110();
    *v1 = v4;
    return result;
  }

LABEL_16:
  v13 = v4[2];
  v14 = v48;
  v45 = v47;
  v2 = v49;
  v17 = v50;
  v18 = v51;
  v41 = v48;
  if (!v51)
  {
    goto LABEL_19;
  }

  v42 = v4[2];
  v19 = v50;
LABEL_23:
  v20 = (v18 - 1) & v18;
  v21 = __clz(__rbit64(v18)) | (v19 << 6);
  v43 = *(*(v45 + 48) + v21);
  v22 = (*(v45 + 56) + 40 * v21);
  v23 = *v22;
  v24 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v27 = v22[4];

  if (!v23)
  {
    v28 = v43;
LABEL_44:
    sub_1D14C6118(v28, 0);
    goto LABEL_13;
  }

  v40 = (v2 + 64) >> 6;
  v46 = v19;
  v29 = v42;
  v28 = v43;
  v30 = v24;
  while (1)
  {
    v31 = v4[3];
    v44 = v31 >> 1;
    v32 = v28;
    if ((v31 >> 1) < v29 + 1)
    {
      v4 = sub_1D148B73C((v31 > 1), v29 + 1, 1, v4);
      v44 = v4[3] >> 1;
    }

    if (v29 < v44)
    {
      break;
    }

LABEL_25:
    v4[2] = v29;
    v28 = v32;
    if (!v23)
    {
      goto LABEL_44;
    }
  }

  while (1)
  {

    result = sub_1D14C6118(v32, v23);
    v33 = &v4[6 * v29 + 4];
    *v33 = v32;
    *(v33 + 8) = v23;
    *(v33 + 16) = v30;
    *(v33 + 24) = v26;
    *(v33 + 32) = v25;
    *(v33 + 40) = v27;
    ++v29;
    if (!v20)
    {
      break;
    }

    v34 = v46;
LABEL_36:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = v36 | (v34 << 6);
    v32 = *(*(v45 + 48) + v37);
    v38 = (*(v45 + 56) + 40 * v37);
    v23 = *v38;
    v30 = v38[1];
    v26 = v38[2];
    v25 = v38[3];
    v27 = v38[4];

    if (v23)
    {
      v39 = v29 < v44;
    }

    else
    {
      v39 = 0;
    }

    if (!v39)
    {
      goto LABEL_25;
    }
  }

  v35 = v46;
  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v34 >= v40)
    {
      v28 = 0;
      v4[2] = v29;
      goto LABEL_44;
    }

    v20 = *(v41 + 8 * v34);
    ++v35;
    if (v20)
    {
      v46 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1D14C4578(uint64_t result)
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

  result = sub_1D148B9C4(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_1D14C4664(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D148BAEC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D14C5720(&v40, &v4[40 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = *(v4 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_44;
        }

        if (v19 >= ((v2 + 64) >> 6))
        {
          goto LABEL_42;
        }

        v18 = *(v14 + 8 * v19);
        ++v17;
        if (v18)
        {
          v36 = v13;
          goto LABEL_23;
        }
      }
    }

    *(v4 + 2) = v17;
  }

  if (result != v12)
  {
LABEL_13:
    result = sub_1D14C6110();
    *v1 = v4;
    return result;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v41;
  v38 = v40;
  v2 = v42;
  v17 = v43;
  v18 = v44;
  v35 = v41;
  if (!v44)
  {
    goto LABEL_19;
  }

  v36 = *(v4 + 2);
  v19 = v43;
LABEL_23:
  v20 = (v18 - 1) & v18;
  v21 = (*(v38 + 56) + 40 * (__clz(__rbit64(v18)) | (v19 << 6)));
  v22 = *v21;
  v23 = v21[1];
  v25 = v21[2];
  v24 = v21[3];
  v26 = v21[4];

  if (!v22)
  {
LABEL_42:
    sub_1D1459CF0(0);
    goto LABEL_13;
  }

  v39 = v19;
  v27 = v36;
  while (1)
  {
    v28 = *(v4 + 3);
    v37 = v28 >> 1;
    if ((v28 >> 1) < v27 + 1)
    {
      v4 = sub_1D148BAEC((v28 > 1), v27 + 1, 1, v4);
      v37 = *(v4 + 3) >> 1;
    }

    if (v27 < v37)
    {
      break;
    }

LABEL_25:
    *(v4 + 2) = v27;
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  while (1)
  {

    result = sub_1D1459CF0(v22);
    v29 = &v4[40 * v27 + 32];
    *v29 = v22;
    v29[1] = v23;
    v29[2] = v25;
    v29[3] = v24;
    v29[4] = v26;
    ++v27;
    if (!v20)
    {
      break;
    }

    v30 = v39;
LABEL_36:
    v32 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v33 = (*(v38 + 56) + 40 * (v32 | (v30 << 6)));
    v22 = *v33;
    v23 = v33[1];
    v25 = v33[2];
    v24 = v33[3];
    v26 = v33[4];

    if (v22)
    {
      v34 = v27 < v37;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_25;
    }
  }

  v31 = v39;
  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v30 >= ((v2 + 64) >> 6))
    {
      *(v4 + 2) = v27;
      goto LABEL_42;
    }

    v20 = *(v35 + 8 * v30);
    ++v31;
    if (v20)
    {
      v39 = v30;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_1D14C4A04(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D148C2B8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D144D748();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1D14C4AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D148C58C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_1D14C6054();
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1D14C4C40(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D15A4708();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D15A4708();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D14C516C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1D14C4D38(unint64_t result, uint64_t a2)
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
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_21:
    v14 = v11 | (v4 << 6);
    v15 = *(*(v3 + 48) + v14);
    v16 = v15 == 6;
    if (v15 == 6)
    {
      return v16;
    }

    v17 = *(v3 + 56) + 32 * v14;
    v18 = *v17;
    v19 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    result = sub_1D147FF58(v15);
    if ((v22 & 1) == 0)
    {
      return v16;
    }

    v23 = *(a2 + 56) + 32 * result;
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    if (*(v23 + 8))
    {
      if (v25 == v21)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0;
      }

      if (v9 != 1 || v24 != v20)
      {
        return v16;
      }
    }

    else
    {
      if (v19)
      {
        return v16;
      }

      v26 = *v23 == v18 && v25 == v21;
      if (!v26 || v24 != v20)
      {
        return v16;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v13 = *(v3 + 64 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D14C4EA8(uint64_t result, uint64_t a2)
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
    v35 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 40 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v34 = v14[3];
    v18 = v14[4];
    v33 = *v14 == 0;

    if (!v15)
    {
      return v33;
    }

    v19 = sub_1D1451D94(v13);
    if ((v20 & 1) == 0)
    {
      goto LABEL_43;
    }

    v21 = (*(a2 + 56) + 40 * v19);
    v22 = *v21;
    v23 = *(*v21 + 16);
    if (v23 != *(v15 + 16))
    {
      goto LABEL_43;
    }

    result = v21[1];
    v24 = v21[2];
    v25 = v21[3];
    v26 = v21[4];
    if (v23)
    {
      v27 = v22 == v15;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v30 = (v22 + 40);
      v31 = (v15 + 40);
      while (v23)
      {
        if (*(v30 - 1) != *(v31 - 1) || *v30 != *v31)
        {
          goto LABEL_43;
        }

        v30 += 2;
        v31 += 2;
        if (!--v23)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_49;
    }

LABEL_21:
    if (v24)
    {
      if (!v17 || (result != v16 || v24 != v17) && (v28 = v25, v29 = sub_1D15A4BA8(), v25 = v28, (v29 & 1) == 0))
      {
LABEL_43:

        return 0;
      }
    }

    else if (v17)
    {
      goto LABEL_43;
    }

    if (v26)
    {
      if (!v18)
      {
        goto LABEL_43;
      }

      if (v25 == v34 && v26 == v18)
      {
        goto LABEL_39;
      }

      v32 = sub_1D15A4BA8();

      result = v33;
      v7 = v35;
      if ((v32 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v18)
      {
        goto LABEL_43;
      }

LABEL_39:

      v7 = v35;
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
      v35 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1D14C516C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D15A4708();
LABEL_9:
  result = sub_1D15A47F8();
  *v1 = result;
  return result;
}

uint64_t sub_1D14C520C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D15A4708();
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
      result = sub_1D15A4708();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D14C5FFC(0, &qword_1EC630710, &qword_1EE059718);
          sub_1D14C60C0(&qword_1EC630808, &qword_1EC630710, &qword_1EE059718);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D154CACC(v13, i, a3);
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
        sub_1D1453BA0(0, &qword_1EE059718);
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

uint64_t sub_1D14C53C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D15A4708();
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
      result = sub_1D15A4708();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D14C5FFC(0, &qword_1EC6307F8, &qword_1EE05AD70);
          sub_1D14C60C0(&qword_1EC630800, &qword_1EC6307F8, &qword_1EE05AD70);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D154CB4C(v13, i, a3);
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
        sub_1D1453BA0(0, &qword_1EE05AD70);
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

void *sub_1D14C5574(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v11 = 0;
    a3 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v11;
    v5[4] = v9;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v25 = -1 << *(a4 + 32);
    v26 = a3;
    result = 0;
    v11 = 0;
    v12 = (63 - v7) >> 6;
    v13 = 1;
    while (v9)
    {
LABEL_14:
      v16 = __clz(__rbit64(v9)) | (v11 << 6);
      v17 = *(*(a4 + 48) + v16);
      v9 &= v9 - 1;
      v18 = *(a4 + 56) + 40 * v16;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 32);
      v22 = *(v18 + 16);
      *v10 = v17;
      *(v10 + 8) = v20;
      *(v10 + 16) = v19;
      *(v10 + 24) = v22;
      *(v10 + 40) = v21;
      if (v13 == v26)
      {

        v7 = v25;
        a3 = v26;
        goto LABEL_24;
      }

      v10 += 48;

      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v14 = v11;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v6 + 8 * v15);
      ++v14;
      if (v9)
      {
        v11 = v15;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v12 <= v11 + 1)
    {
      v24 = v11 + 1;
    }

    else
    {
      v24 = v12;
    }

    v11 = v24 - 1;
    a3 = result;
    v7 = v25;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D14C5720(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = *(a4 + 56) + 40 * (v15 | (v10 << 6));
      v18 = *(v17 + 8);
      v19 = *(v17 + 32);
      v20 = *(v17 + 16);
      *v9 = *v17;
      *(v9 + 8) = v18;
      *(v9 + 16) = v20;
      *(v9 + 32) = v19;
      if (v12 == v24)
      {

        a4 = v16;
        v6 = v23;
        a3 = v24;
        goto LABEL_24;
      }

      v9 += 40;

      result = v12;
      v21 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v22 = v10 + 1;
    }

    else
    {
      v22 = v11;
    }

    v10 = v22 - 1;
    a3 = result;
    v6 = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s19HealthVisualization11DiagramDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
LABEL_13:
      v10 = 0;
      return v10 & 1;
    }
  }

  else if ((*(a2 + 32) & 1) != 0 || !CGRectEqualToRect(*a1, *a2))
  {
    goto LABEL_13;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    goto LABEL_13;
  }

  if (!v4 || v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v5 = (v2 + 32);
    v6 = (v3 + 32);
    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;

      v10 = sub_1D14C4EA8(v7, v9);

      if ((v10 & 1) == 0)
      {
        break;
      }

      --v4;
    }

    while (v4);
  }

  return v10 & 1;
}

uint64_t _s19HealthVisualization16DiagramDataGroupV2eeoiySbAC_ACtFZ_0(float64x2_t **a1, float64x2_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1].f64[0];
  if (*&v4 != *&(*a2)[1].f64[0])
  {
    return 0;
  }

  result = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a2[1];
  v12 = a2[2];
  v13 = v4 == 0.0 || v2 == v3;
  v15 = a2[3];
  v14 = a2[4];
  if (v13)
  {
LABEL_10:
    if (v8)
    {
      if (!v12 || (result != v11 || v8 != v12) && (sub_1D15A4BA8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (v10)
    {
      if (v14 && (v9 == v15 && v10 == v14 || (sub_1D15A4BA8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  v16 = v2 + 2;
  v17 = v3 + 2;
  while (v4 != 0.0)
  {
    v18 = vmovn_s64(vceqq_f64(*v16, *v17));
    if ((v18.i32[0] & v18.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v16;
    ++v17;
    --*&v4;
    if (v4 == 0.0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D14C5AD0()
{
  result = qword_1EE05ADB0;
  if (!qword_1EE05ADB0)
  {
    sub_1D144D6F4(255, &qword_1EE05B5B8, sub_1D144D748);
    sub_1D144D858(&qword_1EE05ADD8, sub_1D14C5BA8, sub_1D14C5BFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05ADB0);
  }

  return result;
}

unint64_t sub_1D14C5BA8()
{
  result = qword_1EE05B2C8[0];
  if (!qword_1EE05B2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE05B2C8);
  }

  return result;
}

unint64_t sub_1D14C5BFC()
{
  result = qword_1EE05B200;
  if (!qword_1EE05B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B200);
  }

  return result;
}

uint64_t sub_1D14C5C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D14C5C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D14C5D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D14C5D48(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1D14C5E2C()
{
  result = qword_1EC6307E8;
  if (!qword_1EC6307E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6307E8);
  }

  return result;
}

unint64_t sub_1D14C5E84()
{
  result = qword_1EC6307F0;
  if (!qword_1EC6307F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6307F0);
  }

  return result;
}

uint64_t sub_1D14C5ED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15BF6D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1D14C5FFC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D1453BA0(255, a3);
    v4 = sub_1D15A4118();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D14C6054()
{
  if (!qword_1EE05ABB0)
  {
    sub_1D15A2BD8();
    sub_1D1487F34();
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ABB0);
    }
  }
}

uint64_t sub_1D14C60C0(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D14C5FFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D14C6118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D14C61CC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, void))
{
  sub_1D14547D8(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  sub_1D14547D8(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D15A23A8();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  v12 = sub_1D15A2848();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 1, 1, v12);
  v14 = sub_1D15A2898();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1D15A2378();
  sub_1D15A2818();
  v13(v10, 0, 1, v12);
  sub_1D15A2398();
  return a3(1, 0);
}

uint64_t sub_1D14C6524@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D15A23A8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t DateComponents.negated.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D14547D8(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - v3;
  sub_1D14547D8(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  result = sub_1D15A2338();
  v7 = result;
  v9 = v8;
  if ((v8 & 1) == 0)
  {
    v7 = -result;
    if (__OFSUB__(0, result))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  result = sub_1D15A2348();
  v10 = result;
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    v10 = -result;
    if (__OFSUB__(0, result))
    {
      goto LABEL_17;
    }
  }

  result = sub_1D15A22E8();
  v14 = result;
  if ((v13 & 1) == 0)
  {
    v14 = -result;
    if (__OFSUB__(0, result))
    {
      goto LABEL_18;
    }
  }

  v26 = v13;
  result = sub_1D15A2318();
  if ((v15 & 1) == 0)
  {
    v16 = __OFSUB__(0, result);
    result = -result;
    if (v16)
    {
      goto LABEL_19;
    }
  }

  v23 = v14;
  v24 = result;
  v25 = v12;
  result = sub_1D15A2328();
  if ((v17 & 1) == 0 && __OFSUB__(0, result))
  {
    goto LABEL_20;
  }

  v21[3] = v10;
  v22 = v9;
  result = sub_1D15A2358();
  if ((v18 & 1) == 0 && __OFSUB__(0, result))
  {
    goto LABEL_21;
  }

  v21[1] = v7;
  v21[2] = a1;
  result = sub_1D15A2368();
  if ((v19 & 1) != 0 || !__OFSUB__(0, result))
  {
    sub_1D15A2388();
    v20 = sub_1D15A2898();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    return sub_1D15A2378();
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::String __swiftcall DateComponents.stringWithNonLocalizedAbbreviatedFormat()()
{
  sub_1D15A2338();
  if (v0)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = sub_1D15A4B68();
    v49 = v2;
    MEMORY[0x1D388A330](121, 0xE100000000000000);
    v1 = sub_1D148C05C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_1D148C05C((v3 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 2) = v4 + 1;
    v5 = &v1[16 * v4];
    *(v5 + 4) = v42;
    *(v5 + 5) = v49;
  }

  sub_1D15A2348();
  if ((v6 & 1) == 0)
  {
    v43 = sub_1D15A4B68();
    v50 = v7;
    MEMORY[0x1D388A330](28525, 0xE200000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D148C05C(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_1D148C05C((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    v10 = &v1[16 * v9];
    *(v10 + 4) = v43;
    *(v10 + 5) = v50;
  }

  sub_1D15A22E8();
  if ((v11 & 1) == 0)
  {
    v44 = sub_1D15A4B68();
    v51 = v12;
    MEMORY[0x1D388A330](119, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D148C05C(0, *(v1 + 2) + 1, 1, v1);
    }

    v14 = *(v1 + 2);
    v13 = *(v1 + 3);
    if (v14 >= v13 >> 1)
    {
      v1 = sub_1D148C05C((v13 > 1), v14 + 1, 1, v1);
    }

    *(v1 + 2) = v14 + 1;
    v15 = &v1[16 * v14];
    *(v15 + 4) = v44;
    *(v15 + 5) = v51;
  }

  sub_1D15A2318();
  if ((v16 & 1) == 0)
  {
    v45 = sub_1D15A4B68();
    v52 = v17;
    MEMORY[0x1D388A330](100, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D148C05C(0, *(v1 + 2) + 1, 1, v1);
    }

    v19 = *(v1 + 2);
    v18 = *(v1 + 3);
    if (v19 >= v18 >> 1)
    {
      v1 = sub_1D148C05C((v18 > 1), v19 + 1, 1, v1);
    }

    *(v1 + 2) = v19 + 1;
    v20 = &v1[16 * v19];
    *(v20 + 4) = v45;
    *(v20 + 5) = v52;
  }

  sub_1D15A2328();
  if ((v21 & 1) == 0)
  {
    v46 = sub_1D15A4B68();
    v53 = v22;
    MEMORY[0x1D388A330](104, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D148C05C(0, *(v1 + 2) + 1, 1, v1);
    }

    v24 = *(v1 + 2);
    v23 = *(v1 + 3);
    if (v24 >= v23 >> 1)
    {
      v1 = sub_1D148C05C((v23 > 1), v24 + 1, 1, v1);
    }

    *(v1 + 2) = v24 + 1;
    v25 = &v1[16 * v24];
    *(v25 + 4) = v46;
    *(v25 + 5) = v53;
  }

  sub_1D15A2358();
  if ((v26 & 1) == 0)
  {
    v47 = sub_1D15A4B68();
    v54 = v27;
    MEMORY[0x1D388A330](109, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D148C05C(0, *(v1 + 2) + 1, 1, v1);
    }

    v29 = *(v1 + 2);
    v28 = *(v1 + 3);
    if (v29 >= v28 >> 1)
    {
      v1 = sub_1D148C05C((v28 > 1), v29 + 1, 1, v1);
    }

    *(v1 + 2) = v29 + 1;
    v30 = &v1[16 * v29];
    *(v30 + 4) = v47;
    *(v30 + 5) = v54;
  }

  sub_1D15A2368();
  if ((v31 & 1) == 0)
  {
    v48 = sub_1D15A4B68();
    v55 = v32;
    MEMORY[0x1D388A330](115, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D148C05C(0, *(v1 + 2) + 1, 1, v1);
    }

    v34 = *(v1 + 2);
    v33 = *(v1 + 3);
    if (v34 >= v33 >> 1)
    {
      v1 = sub_1D148C05C((v33 > 1), v34 + 1, 1, v1);
    }

    *(v1 + 2) = v34 + 1;
    v35 = &v1[16 * v34];
    *(v35 + 4) = v48;
    *(v35 + 5) = v55;
  }

  sub_1D14C6D98();
  sub_1D14C6DE8();
  v36 = sub_1D15A3E98();
  v38 = v37;

  v39 = v36;
  v40 = v38;
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

void sub_1D14C6D98()
{
  if (!qword_1EE05ADA8)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ADA8);
    }
  }
}

unint64_t sub_1D14C6DE8()
{
  result = qword_1EE056810;
  if (!qword_1EE056810)
  {
    sub_1D14C6D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056810);
  }

  return result;
}

uint64_t HighlightCalendarViewModel.init(weekViewModels:longWeekdayStrings:shortWeekdayStrings:showsSeparatorBetweenHeaderAndWeeks:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t HighlightCalendarDayViewModel.monthText.getter()
{
  v1 = *v0;

  return v1;
}

id HighlightCalendarDayViewModel.circleState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_1D14BB144(v2, v3, v4, v5);
}

void *HighlightCalendarDayViewModel.dayTextColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *HighlightCalendarDayViewModel.alternateDayTextColorWhenUnselected.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_1D14C6FC0()
{
  if (!qword_1EE05A670)
  {
    type metadata accessor for AXProjectionState(255);
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05A670);
    }
  }
}

id HighlightCalendarDayViewModel.NumberSize.font.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_1EE058BE8 != -1)
      {
        swift_once();
      }

      v1 = off_1EE058BF0;
      v2 = *(off_1EE058BF0 + 2);
      sub_1D1453BA0(0, &qword_1EE0596F8);
      v3 = sub_1D15A45B8();
      v4 = *(v2 + 16);
      MEMORY[0x1EEE9AC00](v3);
      os_unfair_lock_lock((v4 + 24));
      sub_1D14C8650((v4 + 16), &v20);
      os_unfair_lock_unlock((v4 + 24));

      result = v20;
      if (!v20)
      {
        v6 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:0x8000 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
        v7 = v1[2];
        v8 = sub_1D15A45B8();
        v9 = *(v7 + 16);
        MEMORY[0x1EEE9AC00](v8);
        os_unfair_lock_lock((v9 + 24));
        sub_1D14C8630((v9 + 16));
LABEL_15:
        os_unfair_lock_unlock((v9 + 24));

        return v6;
      }
    }

    else
    {
      if (qword_1EE058BE8 != -1)
      {
        swift_once();
      }

      v15 = off_1EE058BF0;
      v16 = *(off_1EE058BF0 + 2);
      sub_1D1453BA0(0, &qword_1EE0596F8);
      v17 = sub_1D15A45B8();
      v18 = *(v16 + 16);
      MEMORY[0x1EEE9AC00](v17);
      os_unfair_lock_lock((v18 + 24));
      sub_1D14C7E98((v18 + 16), &v20);
      os_unfair_lock_unlock((v18 + 24));

      result = v20;
      if (!v20)
      {
        v6 = [objc_opt_self() hk:*MEMORY[0x1E69DDD00] preferredFontForTextStyle:32770 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
        v19 = v15[2];
        v8 = sub_1D15A45B8();
        v9 = *(v19 + 16);
        MEMORY[0x1EEE9AC00](v8);
        os_unfair_lock_lock((v9 + 24));
        sub_1D14C7EE0((v9 + 16));
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (qword_1EE058BE8 != -1)
    {
      swift_once();
    }

    v10 = off_1EE058BF0;
    v11 = *(off_1EE058BF0 + 2);
    sub_1D1453BA0(0, &qword_1EE0596F8);
    v12 = sub_1D15A45B8();
    v13 = *(v11 + 16);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_1D14C8650((v13 + 16), &v20);
    os_unfair_lock_unlock((v13 + 24));

    result = v20;
    if (!v20)
    {
      v6 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:32770 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
      v14 = v10[2];
      v8 = sub_1D15A45B8();
      v9 = *(v14 + 16);
      MEMORY[0x1EEE9AC00](v8);
      os_unfair_lock_lock((v9 + 24));
      sub_1D14C8630((v9 + 16));
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t HighlightCalendarDayViewModel.NumberSize.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t HighlightCalendarDayViewModel.CircleSize.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

unint64_t HighlightCalendarDayViewModel.AXProbability.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1D14C7608@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D14C7644()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t sub_1D14C768C()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

unint64_t sub_1D14C76D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D14C7F18(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t HighlightCalendarDayViewModel.init(monthText:hideMonthText:circleState:accentColor:backgroundColor:dayTextColor:alternateDayTextColorWhenUnselected:dayNumberSize:circleSize:axProjectionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t a12)
{
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  v15 = *a10;
  v16 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = *a4;
  *(a9 + 40) = v13;
  *(a9 + 48) = v14;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = v15;
  *(a9 + 89) = v16;
  v17 = type metadata accessor for HighlightCalendarDayViewModel(0);
  return sub_1D14C8554(a12, a9 + *(v17 + 52), sub_1D14C6FC0);
}

id static HighlightCalendarDayViewModel.emptyDayViewModel()@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = *(type metadata accessor for HighlightCalendarDayViewModel(0) + 52);
  v5 = type metadata accessor for AXProjectionState(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  result = [v2 tertiaryLabelColor];
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 5;
  *(a1 + 56) = v3;
  *(a1 + 64) = result;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id sub_1D14C786C()
{
  v1 = *(v0 + 48);
  if (v1 > 2)
  {
    if (v1 - 3 < 2)
    {
      v2 = *(v0 + 64);
      goto LABEL_6;
    }

    v10 = [objc_opt_self() clearColor];

    return v10;
  }

  else
  {
    if (v1 - 1 < 2)
    {
      v2 = *(v0 + 56);
LABEL_6:

      return v2;
    }

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = [v4 isPaused];
    v8 = objc_opt_self();
    if (v7)
    {
      v9 = [v8 clearColor];
    }

    else
    {
      v9 = [v8 blackColor];
    }

    v11 = v9;
    sub_1D14BB18C(v4, v5, v6, 0);
    return v11;
  }
}

id sub_1D14C798C()
{
  v1 = type metadata accessor for HighlightCalendarDayViewModel(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = *(v0 + 48);
  if (v4 > 2)
  {
    if (v4 - 3 < 2)
    {
      sub_1D14C84EC(v0, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightCalendarDayViewModel);
      v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
      v6 = swift_allocObject();
      sub_1D14C8554(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for HighlightCalendarDayViewModel);
      v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      aBlock[4] = sub_1D14C85BC;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D145BE24;
      aBlock[3] = &block_descriptor_3;
      v8 = _Block_copy(aBlock);
      v9 = [v7 initWithDynamicProvider_];
      _Block_release(v8);

      return v9;
    }

    v12 = [objc_opt_self() clearColor];
    goto LABEL_11;
  }

  if (v4 - 1 >= 2)
  {
    result = sub_1D15A4908();
    __break(1u);
    return result;
  }

  v11 = *(v0 + 72);
  if (!v11)
  {
    v12 = [objc_opt_self() whiteColor];
LABEL_11:

    return v12;
  }

  return v11;
}

id sub_1D14C7C34(void *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3)
  {
    v4 = *(a2 + 80);
  }

  else
  {
    v5 = *(a2 + 72);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = [objc_opt_self() secondaryLabelColor];
    }

    v4 = v6;
  }

  sub_1D1453BA0(0, &qword_1EE059710);
  v7 = objc_opt_self();
  v8 = v3;
  v9 = [v7 secondaryLabelColor];
  v10 = sub_1D15A4598();

  if ((v10 & 1) == 0 || [a1 accessibilityContrast] != 1)
  {
    return v4;
  }

  v11 = [a1 userInterfaceStyle];
  v12 = &selRef_whiteColor;
  if (v11 != 2)
  {
    v12 = &selRef_blackColor;
  }

  v13 = [v7 *v12];

  return v13;
}

uint64_t AXProjectionState.init(axDate:axProbability:axProjectionKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D15A26A8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AXProjectionState(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

id sub_1D14C7E50@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [*a1 objectForKey_];
  *a3 = result;
  return result;
}

id sub_1D14C7E98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectForKey_];
  *a2 = result;
  return result;
}

unint64_t sub_1D14C7F18(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D14C7F2C()
{
  result = qword_1EC630810;
  if (!qword_1EC630810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630810);
  }

  return result;
}

unint64_t sub_1D14C7F84()
{
  result = qword_1EC630818;
  if (!qword_1EC630818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630818);
  }

  return result;
}

unint64_t sub_1D14C7FDC()
{
  result = qword_1EC630820;
  if (!qword_1EC630820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630820);
  }

  return result;
}

unint64_t sub_1D14C8034()
{
  result = qword_1EC630828;
  if (!qword_1EC630828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630828);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D14C809C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D14C80E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D14C8170()
{
  sub_1D1453BA0(319, &qword_1EE059710);
  if (v0 <= 0x3F)
  {
    sub_1D14C8258();
    if (v1 <= 0x3F)
    {
      sub_1D14C6FC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14C8258()
{
  if (!qword_1EE0564D0)
  {
    sub_1D1453BA0(255, &qword_1EE059710);
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0564D0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthVisualization29HighlightCalendarDayViewModelV11CircleStateO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D14C82DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D14C8324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D14C836C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_1D14C8410()
{
  sub_1D15A26A8();
  if (v0 <= 0x3F)
  {
    sub_1D14C849C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D14C849C()
{
  if (!qword_1EE059788)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059788);
    }
  }
}

uint64_t sub_1D14C84EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14C8554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D14C85BC(void *a1)
{
  v3 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D14C7C34(a1, v4);
}

void sub_1D14C867C()
{
  if (!qword_1EC630830)
  {
    sub_1D14C86D4();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630830);
    }
  }
}

unint64_t sub_1D14C86D4()
{
  result = qword_1EE056778;
  if (!qword_1EE056778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE056778);
  }

  return result;
}

void sub_1D14C87C4(double (*a1)(void), double (*a2)(double, double, double, double), double a3, double a4, double a5, double a6)
{
  v11 = a1();
  if (v11 > a2(a3, a4, a5, a6))
  {
    __break(1u);
  }
}

double CGRect.adjusted(by:verticalCoordinateRange:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  if ((a7 & 1) == 0)
  {
    if (*&a1 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = *&a1;
    }

    CGRectGetMaxX(*&a2);
    if ((a10 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetHeight(v18);
    return v15;
  }

  CGRectGetWidth(*&a2);
  v15 = a2;
  if (a10)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxY(v17);
  return v15;
}

uint64_t NSOperation.registerStateObservationSignposts(logHandle:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D15A31D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v2, &unk_1EC62FF88);
  swift_endAccess();
  if (v10)
  {
    sub_1D15A4658();
    swift_unknownObjectRelease();
    return sub_1D144ED4C(v63);
  }

  else
  {
    memset(v63, 0, sizeof(v63));
    sub_1D144ED4C(v63);
    sub_1D15A4338();
    sub_1D1487C24();
    v12 = swift_allocObject();
    v62 = v9;
    v13 = v12;
    *(v12 + 16) = xmmword_1D15AEBB0;
    v14 = v2;
    v15 = [v14 description];
    v16 = sub_1D15A3F38();
    v61 = v5;
    v18 = v17;

    v57 = v4;
    v19 = MEMORY[0x1E69E6158];
    v13[7] = MEMORY[0x1E69E6158];
    v20 = sub_1D1487C8C();
    v13[4] = v16;
    v13[5] = v18;
    v13[12] = v19;
    v13[13] = v20;
    v13[8] = v20;
    v13[9] = 0xD00000000000002DLL;
    v13[10] = 0x80000001D15BF860;
    sub_1D15A3198();

    v21 = v14;
    v58 = a1;
    v22 = v62;
    sub_1D15A31C8();
    *&v63[0] = swift_getObjectType();
    sub_1D14C8FA0();
    v23 = sub_1D15A3F68();
    v59 = v24;
    v60 = v23;
    *&v63[0] = v21;
    v55 = v21;
    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v61;
    v56 = *(v61 + 16);
    v27 = v22;
    v28 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v57;
    v56(v28, v27, v57);
    v30 = *(v26 + 80);
    v31 = (v30 + 32) & ~v30;
    v54 = v6 + 7;
    v32 = swift_allocObject();
    *(v32 + 16) = v25;
    v33 = v58;
    *(v32 + 24) = v58;
    v52 = *(v26 + 32);
    v52(v32 + v31, v28, v29);
    v34 = (v32 + ((v6 + 7 + v31) & 0xFFFFFFFFFFFFFFF8));
    v35 = v59;
    *v34 = v60;
    v34[1] = v35;
    v36 = v33;

    v58 = sub_1D15A24E8();

    v37 = v55;
    *&v63[0] = v55;
    swift_getKeyPath();
    v56(v28, v62, v29);
    v38 = (v30 + 24) & ~v30;
    v39 = (v54 + v38) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    v41 = v28;
    v42 = v29;
    v52(v40 + v38, v41, v29);
    v43 = (v40 + v39);
    v44 = v59;
    *v43 = v60;
    v43[1] = v44;
    v45 = v36;
    v46 = sub_1D15A24E8();

    *&v63[0] = v37;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = sub_1D15A24E8();

    swift_beginAccess();
    v48 = v58;
    objc_setAssociatedObject(v37, &unk_1EC62FF88, v48, 1);
    swift_endAccess();

    swift_beginAccess();
    v49 = v46;
    objc_setAssociatedObject(v37, &unk_1EC62FFA8, v49, 1);
    swift_endAccess();

    swift_beginAccess();
    v50 = v47;
    objc_setAssociatedObject(v37, &unk_1EC62FFC8, v50, 1);
    swift_endAccess();

    return (*(v61 + 8))(v62, v42);
  }
}

unint64_t sub_1D14C8F3C()
{
  result = qword_1EE05B530;
  if (!qword_1EE05B530)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE05B530);
  }

  return result;
}

unint64_t sub_1D14C8FA0()
{
  result = qword_1EE05AD68;
  if (!qword_1EE05AD68)
  {
    sub_1D14C8FE8();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EE05AD68);
  }

  return result;
}

unint64_t sub_1D14C8FE8()
{
  result = qword_1EE05AD70;
  if (!qword_1EE05AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05AD70);
  }

  return result;
}

uint64_t NSOperation.unregisterStateObservationSignposts(logHandle:)()
{
  sub_1D15A4338();
  sub_1D1487C24();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D15AEBB0;
  v2 = v0;
  v3 = [v2 description];
  v4 = sub_1D15A3F38();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D1487C8C();
  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  *(v1 + 64) = v8;
  *(v1 + 72) = 0xD00000000000002FLL;
  *(v1 + 80) = 0x80000001D15BF890;
  sub_1D15A3198();

  swift_beginAccess();
  sub_1D14C9884(&unk_1EC62FF88);
  swift_endAccess();
  swift_beginAccess();
  sub_1D14C9884(&unk_1EC62FFA8);
  swift_endAccess();
  swift_beginAccess();
  sub_1D14C9884(&unk_1EC62FFC8);
  return swift_endAccess();
}

void sub_1D14C91DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1D15A31D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = a6;

    v19 = *(v12 + 16);
    v19(v17, a5, v11);
    v19(v14, a5, v11);
    sub_1D14C9B2C(0, &qword_1EE05B400, MEMORY[0x1E69E6370], MEMORY[0x1E6968EA8]);
    v20 = a4;

    sub_1D15A24C8();
    v21 = v32;
    v22 = a7;
    if (v32 == 2 || (sub_1D15A24B8(), v23 = v32, v32 == 2))
    {
LABEL_4:
      v24 = *(v12 + 8);
      v24(v14, v11);

      v24(v17, v11);

      return;
    }

    if ((v21 & 1) == 0)
    {
      v28 = v31;
      if (v32)
      {
        sub_1D15A4478();
        sub_1D1487C24();
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D15ACDD0;
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = sub_1D1487C8C();
        *(v29 + 32) = v28;
        *(v29 + 40) = v22;

        sub_1D15A31A8();
      }

      goto LABEL_4;
    }

    v25 = *(v12 + 8);
    v25(v17, v11);
    v26 = v31;
    if ((v23 & 1) == 0)
    {
      sub_1D15A4468();
      sub_1D1487C24();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D15ACDD0;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1D1487C8C();
      *(v27 + 32) = v26;
      *(v27 + 40) = v22;

      sub_1D15A31A8();
    }

    v25(v14, v11);
  }
}

id sub_1D14C9570(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [*a1 isCancelled];
  if (result)
  {
    sub_1D15A4488();
    sub_1D1487C24();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D15ACDD0;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D1487C8C();
    *(v9 + 32) = a5;
    *(v9 + 40) = a6;

    sub_1D15A31A8();
  }

  return result;
}

void sub_1D14C9684(id *a1)
{
  if ([*a1 isFinished])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if (qword_1EE05B3C0 != -1)
      {
        swift_once();
      }

      sub_1D15A4338();
      sub_1D1487C24();
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D15AEBB0;
      v4 = v2;
      v5 = [v4 description];
      v6 = sub_1D15A3F38();
      v8 = v7;

      v9 = MEMORY[0x1E69E6158];
      *(v3 + 56) = MEMORY[0x1E69E6158];
      v10 = sub_1D1487C8C();
      *(v3 + 32) = v6;
      *(v3 + 40) = v8;
      *(v3 + 96) = v9;
      *(v3 + 104) = v10;
      *(v3 + 64) = v10;
      *(v3 + 72) = 0xD00000000000002FLL;
      *(v3 + 80) = 0x80000001D15BF890;
      sub_1D15A3198();

      swift_beginAccess();
      sub_1D14C9884(&unk_1EC62FF88);
      swift_endAccess();
      swift_beginAccess();
      sub_1D14C9884(&unk_1EC62FFA8);
      swift_endAccess();
      swift_beginAccess();
      sub_1D14C9884(&unk_1EC62FFC8);
      swift_endAccess();
    }
  }
}

void sub_1D14C9884(void *key)
{
  if (objc_getAssociatedObject(v1, key))
  {
    sub_1D15A4658();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1D15A2498();
    if (swift_dynamicCast())
    {
      sub_1D15A2488();
      objc_setAssociatedObject(v1, key, 0, 1);
    }
  }

  else
  {
    sub_1D144ED4C(v6);
  }
}

void sub_1D14C9958(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D15A31D8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1D14C91DC(a1, a2, v7, v8, v2 + v6, v10, v11);
}

id sub_1D14C9A18(id *a1, uint64_t a2)
{
  v5 = *(sub_1D15A31D8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1D14C9570(a1, a2, v7, v2 + v6, v9, v10);
}

void sub_1D14C9B2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ActivitySummarySnidgetView.ViewModel.__allocating_init(headerModel:currentValueViewModel:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D15A28E8();
  *(v4 + 16) = a1;
  sub_1D14D8C90(a2, v4 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
  return v4;
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.init(isMoveRingOnly:activitySummary:moveTitle:moveValue:exerciseTitle:exerciseValue:standTitle:standValue:hasEverHadAWatch:pausedRingsTitle:pausedRingsDetail:useFitnessUIRings:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  v15 = v14[7];
  v16 = sub_1D15A23F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(a9 + v15, 1, 1, v16);
  v19 = v14[9];
  v18(a9 + v19, 1, 1, v16);
  v20 = v14[11];
  v18(a9 + v20, 1, 1, v16);
  v24 = v14[12];
  v21 = v14[14];
  v18(a9 + v21, 1, 1, v16);
  *a9 = a1;
  *(a9 + 8) = a2;
  v22 = *(v17 + 32);
  v22(a9 + v14[6], a3, v16);
  sub_1D14D8F74(a4, a9 + v15, sub_1D14A0F04);
  v22(a9 + v14[8], a5, v16);
  sub_1D14D8F74(a6, a9 + v19, sub_1D14A0F04);
  v22(a9 + v14[10], a7, v16);
  sub_1D14D8F74(a8, a9 + v20, sub_1D14A0F04);
  *(a9 + v24) = a10;
  v22(a9 + v14[13], a11, v16);
  result = sub_1D14D8F74(a12, a9 + v21, sub_1D14A0F04);
  *(a9 + v14[15]) = a13;
  return result;
}

uint64_t sub_1D14C9E90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1D14C9F7C()
{
  swift_getKeyPath();
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  swift_beginAccess();
}

uint64_t sub_1D14CA034(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
    sub_1D15A28A8();
  }
}

uint64_t sub_1D14CA15C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*sub_1D14CA1C4(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D15A28D8();

  v4[7] = sub_1D14C9E40();
  return sub_1D14CA2FC;
}

uint64_t sub_1D14CA368@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  v4 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel;
  swift_beginAccess();
  return sub_1D14D8EAC(v3 + v4, a2, sub_1D1486328);
}

uint64_t sub_1D14CA444(uint64_t a1, uint64_t *a2)
{
  sub_1D1486328();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D14D8EAC(a1, v6, sub_1D1486328);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28A8();

  return sub_1D14D8F14(v6, sub_1D1486328);
}

uint64_t sub_1D14CA594@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  v3 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel;
  swift_beginAccess();
  return sub_1D14D8EAC(v5 + v3, a1, sub_1D1486328);
}

uint64_t sub_1D14CA670(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28A8();

  return sub_1D14D8F14(a1, sub_1D1486328);
}

uint64_t sub_1D14CA754(uint64_t a1, uint64_t a2)
{
  sub_1D1486328();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D8EAC(a2, v6, sub_1D1486328);
  v7 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel;
  swift_beginAccess();
  sub_1D14D8F74(v6, a1 + v7, sub_1D1486328);
  return swift_endAccess();
}

void (*sub_1D14CA838(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D15A28D8();

  v4[7] = sub_1D14CA308();
  return sub_1D14CA970;
}

void sub_1D14CA97C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D15A28C8();

  free(v1);
}

uint64_t ActivitySummarySnidgetView.ViewModel.init(headerModel:currentValueViewModel:)(uint64_t a1, uint64_t a2)
{
  sub_1D15A28E8();
  *(v2 + 16) = a1;
  sub_1D14D8C90(a2, v2 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
  return v2;
}

uint64_t sub_1D14CAB14()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x4D7265646165685FLL;
  }
}

uint64_t sub_1D14CAB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14D8584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14CABA8(uint64_t a1)
{
  v2 = sub_1D14CB0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14CABE4(uint64_t a1)
{
  v2 = sub_1D14CB0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySummarySnidgetView.ViewModel.deinit()
{

  sub_1D14D8F14(v0 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
  v1 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel___observationRegistrar;
  v2 = sub_1D15A28F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ActivitySummarySnidgetView.ViewModel.__deallocating_deinit()
{

  sub_1D14D8F14(v0 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
  v1 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel___observationRegistrar;
  v2 = sub_1D15A28F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D14CAD74(void *a1)
{
  v3 = v1;
  sub_1D1486328();
  v15 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v16 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D5D5C(0, &qword_1EE056338, sub_1D14CB0DC, &type metadata for ActivitySummarySnidgetView.ViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14CB0DC();
  sub_1D15A4CE8();
  swift_beginAccess();
  v17 = *(v3 + 16);
  v18 = 0;
  sub_1D15A2F28();
  sub_1D14D8B10(&qword_1EE059380, MEMORY[0x1E69A3708]);
  sub_1D15A4B38();
  if (!v2)
  {
    v12 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel;
    swift_beginAccess();
    v13 = v16;
    sub_1D14D8EAC(v3 + v12, v16, sub_1D1486328);
    v18 = 1;
    sub_1D14CB4DC(&qword_1EE0593A8);
    sub_1D15A4B38();
    sub_1D14D8F14(v13, sub_1D1486328);
    v18 = 2;
    sub_1D15A28F8();
    sub_1D14D8B10(&qword_1EE059490, MEMORY[0x1E69E81E0]);
    sub_1D15A4B38();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1D14CB0DC()
{
  result = qword_1EE05A0B8;
  if (!qword_1EE05A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A0B8);
  }

  return result;
}

uint64_t ActivitySummarySnidgetView.ViewModel.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D1486328();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D5D5C(0, &qword_1EE056410, sub_1D14CB0DC, &type metadata for ActivitySummarySnidgetView.ViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = *(v8 - 8);
  v18 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v19 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel___observationRegistrar;
  sub_1D15A28E8();
  v11 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D14CB0DC();
  sub_1D15A4CD8();
  if (v2)
  {
    v14 = sub_1D15A28F8();
    (*(*(v14 - 8) + 8))(v3 + v19, v14);
    type metadata accessor for ActivitySummarySnidgetView.ViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v17;
    sub_1D15A2F28();
    v22 = 0;
    sub_1D14D8B10(&qword_1EE059378, MEMORY[0x1E69A3708]);
    v13 = v18;
    sub_1D15A4A78();
    *(v3 + 16) = v23;
    v21 = 1;
    sub_1D14CB4DC(&qword_1EE0593A0);
    sub_1D15A4A78();
    (*(v12 + 8))(v10, v13);
    sub_1D14D8C90(v7, v3 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v3;
}

uint64_t sub_1D14CB4DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D1486328();
    sub_1D14D8B10(&qword_1EE05AA88, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
    sub_1D14D8B10(&qword_1EE05AA90, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D14CB6D0(uint64_t a1, uint64_t *a2)
{
  sub_1D14CB81C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D8EAC(a1, v6, sub_1D14CB81C);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  swift_beginAccess();
  sub_1D14D8F74(v6, v7 + v8, sub_1D14CB81C);
  return swift_endAccess();
}

uint64_t sub_1D14CB7B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  swift_beginAccess();
  return sub_1D14D8EAC(v1 + v3, a1, sub_1D14CB81C);
}

void sub_1D14CB850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D14CB8B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  swift_beginAccess();
  sub_1D14D8F74(a1, v1 + v3, sub_1D14CB81C);
  return swift_endAccess();
}

uint64_t ActivitySummarySnidgetView.ActionHandlerData.__allocating_init(relevantDateInterval:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  v4 = sub_1D15A2CA8();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  swift_beginAccess();
  sub_1D14D8F74(a1, v2 + v3, sub_1D14CB81C);
  swift_endAccess();
  return v2;
}

uint64_t ActivitySummarySnidgetView.ActionHandlerData.init(relevantDateInterval:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  v4 = sub_1D15A2CA8();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  swift_beginAccess();
  sub_1D14D8F74(a1, v1 + v3, sub_1D14CB81C);
  swift_endAccess();
  return v1;
}

uint64_t sub_1D14CBB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D15BFA90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D14CBBBC(uint64_t a1)
{
  v2 = sub_1D14CBF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14CBBF8(uint64_t a1)
{
  v2 = sub_1D14CBF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySummarySnidgetView.ActionHandlerData.__deallocating_deinit()
{
  sub_1D14D8F14(v0 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval, sub_1D14CB81C);

  return swift_deallocClassInstance();
}

uint64_t sub_1D14CBCE8(void *a1)
{
  v2 = v1;
  sub_1D14CB81C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D5D5C(0, &qword_1EE056330, sub_1D14CBF34, &type metadata for ActivitySummarySnidgetView.ActionHandlerData.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14CBF34();
  sub_1D15A4CE8();
  v12 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  swift_beginAccess();
  sub_1D14D8EAC(v2 + v12, v6, sub_1D14CB81C);
  sub_1D15A2CA8();
  sub_1D14D8B10(&qword_1EE059438, MEMORY[0x1E69A3D00]);
  sub_1D15A4AE8();
  sub_1D14D8F14(v6, sub_1D14CB81C);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1D14CBF34()
{
  result = qword_1EE059EE0;
  if (!qword_1EE059EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059EE0);
  }

  return result;
}

uint64_t sub_1D14CBFB4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t ActivitySummarySnidgetView.ActionHandlerData.init(from:)(void *a1)
{
  sub_1D14CB81C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D5D5C(0, &qword_1EE056408, sub_1D14CBF34, &type metadata for ActivitySummarySnidgetView.ActionHandlerData.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  v9 = sub_1D15A2CA8();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14CBF34();
  v10 = v19;
  sub_1D15A4CD8();
  if (v10)
  {
  }

  else
  {
    v19 = v8;
    v11 = v16;
    sub_1D14D8B10(&qword_1EE059430, MEMORY[0x1E69A3D00]);
    v12 = v17;
    v13 = v18;
    sub_1D15A4A28();
    (*(v11 + 8))(v7, v12);
    v14 = v19;
    swift_beginAccess();
    sub_1D14D8F74(v13, v1 + v14, sub_1D14CB81C);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1D14CC3E4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

void sub_1D14CC478()
{
  v104 = *v0;
  v1 = sub_1D15A3268();
  v119 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v110 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v93 - v4;
  v117 = sub_1D15A2FB8();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D15A2F78();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D15A2DC8();
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1D15A22A8();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14CB81C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14CB850(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v107 = &v93 - v13;
  sub_1D14CD398(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D15A30C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v93 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v93 - v28;
  sub_1D15A2FC8();
  v30 = v17;
  v31 = sub_1D15A30A8();
  v33 = v32;
  v34 = v29;
  v35 = *(v18 + 8);
  v35(v34, v30);
  if (v33 >> 60 == 15)
  {
    sub_1D15A3218();
    v36 = sub_1D15A3248();
    v37 = sub_1D15A4318();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D1446000, v36, v37, "ActivitySummarySnidgetView.ActionHandler: unable to read object type", v38, 2u);
      MEMORY[0x1D388BF00](v38, -1, -1);
    }

    (*(v119 + 8))(v5, v1);
  }

  else
  {
    v99 = v35;
    v100 = v30;
    sub_1D15A21B8();
    swift_allocObject();
    sub_1D15A21A8();
    type metadata accessor for ActivitySummarySnidgetView.ActionHandlerData(0);
    sub_1D14D8B10(&qword_1EE059EC8, type metadata accessor for ActivitySummarySnidgetView.ActionHandlerData);
    sub_1D15A2198();
    v93 = 0;
    v95 = v31;
    v96 = v33;
    v97 = v1;

    v98 = v120;
    sub_1D15A2FC8();
    sub_1D15A3098();
    v39 = v100;
    v40 = v99;
    v99(v26, v100);
    v41 = sub_1D15A2E88();

    v42 = [v41 profileIdentifier];

    v43 = v118;
    sub_1D15A2FC8();
    sub_1D15A3088();
    v40(v43, v39);
    v44 = sub_1D15A2E08();
    (*(*(v44 - 8) + 56))(v16, 0, 1, v44);
    v94 = MEMORY[0x1D38891C0](v42, v16);
    v45 = v94;

    sub_1D14D8F14(v16, sub_1D14CD398);
    v46 = 0;
    if (v45 <= 1)
    {
      v47 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
      v48 = v98;
      swift_beginAccess();
      v49 = v106;
      sub_1D14D8EAC(v48 + v47, v106, sub_1D14CB81C);
      v50 = sub_1D15A2CA8();
      v51 = 1;
      v52 = (*(*(v50 - 8) + 48))(v49, 1, v50);
      v53 = v107;
      if (!v52)
      {
        v54 = v101;
        sub_1D15A2C98();
        sub_1D15A2258();
        (*(v102 + 8))(v54, v103);
        v51 = 0;
      }

      sub_1D14D8F14(v49, sub_1D14CB81C);
      v55 = sub_1D15A26A8();
      (*(*(v55 - 8) + 56))(v53, v51, 1, v55);
      sub_1D15A2DF8();
      v120 = MEMORY[0x1E69E7CC0];
      sub_1D14D8B10(&qword_1EE0593D8, MEMORY[0x1E69A34D8]);
      sub_1D14D5878(0);
      sub_1D14D8B10(&qword_1EE056888, sub_1D14D5878);
      sub_1D15A4678();
      v46 = sub_1D15A2DE8();
      v56 = v46;
    }

    v57 = v112;
    sub_1D15A2F68();
    v58 = [objc_opt_self() activitySummaryType];
    sub_1D15A2FC8();
    sub_1D15A3098();
    v59 = v100;
    v60 = v99;
    v99(v26, v100);
    sub_1D15A2E78();

    v61 = v118;
    sub_1D15A2FC8();
    sub_1D15A3098();
    v60(v61, v59);
    sub_1D15A2E88();

    v62 = v46;
    v63 = v111;
    sub_1D15A2FC8();
    sub_1D15A3098();
    v64 = v63;
    v65 = v62;
    v60(v64, v59);
    sub_1D15A2E98();

    v66 = v113;
    v67 = v57;
    sub_1D15A2FA8();
    v68 = v58;
    v69 = v93;
    v70 = sub_1D15A2F58();
    v71 = v97;
    if (v69)
    {

      (*(v116 + 8))(v66, v117);
      (*(v114 + 8))(v67, v115);
      v72 = v110;
      sub_1D15A3238();
      v73 = v69;
      v74 = sub_1D15A3248();
      v75 = sub_1D15A4318();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v120 = v77;
        *v76 = 136315394;
        v78 = sub_1D15A4D18();
        v80 = sub_1D1479780(v78, v79, &v120);
        v118 = v65;
        v81 = v80;

        *(v76 + 4) = v81;
        *(v76 + 12) = 2080;
        ErrorValue = swift_getErrorValue();
        v83 = MEMORY[0x1EEE9AC00](ErrorValue);
        (*(v85 + 16))(&v93 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
        v86 = sub_1D15A3F68();
        v88 = sub_1D1479780(v86, v87, &v120);

        *(v76 + 14) = v88;
        _os_log_impl(&dword_1D1446000, v74, v75, "[%s]: Error creating activity detail vc: %s", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v77, -1, -1);
        MEMORY[0x1D388BF00](v76, -1, -1);

        sub_1D14D5864(v95, v96);
      }

      else
      {

        sub_1D14D5864(v95, v96);
      }

      (*(v119 + 8))(v72, v71);
    }

    else
    {
      v89 = v70;

      (*(v116 + 8))(v66, v117);
      (*(v114 + 8))(v67, v115);
      v90 = v105;
      sub_1D15A2FC8();
      v91 = sub_1D15A30B8();
      v60(v90, v59);
      v92 = [v91 navigationController];

      if (v92)
      {
        [v92 pushViewController:v89 animated:1];

        sub_1D14D5864(v95, v96);
      }

      else
      {

        sub_1D14D5864(v95, v96);
      }
    }
  }
}

uint64_t ActivitySummarySnidgetView.ActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = sub_1D15A30C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_1D15A2FD8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t ActivitySummarySnidgetView.ActionHandler.init(content:)(uint64_t a1)
{
  v2 = sub_1D15A30C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  v6 = sub_1D15A2FD8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t ActivitySummarySnidgetView.ActionHandler.__deallocating_deinit()
{
  _s19HealthVisualization26ActivitySummarySnidgetViewV13ActionHandlerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t ActivitySummarySnidgetView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A30C8();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for ActivitySummarySnidgetView(0);
  v6 = v5[7];
  sub_1D14CB850(0, &qword_1EE0593C8, type metadata accessor for ActivitySummarySnidgetView.ViewModel, MEMORY[0x1E69A3598]);
  v8 = v7;
  v9 = sub_1D15A2E48();
  v10 = (a2 + v5[5]);
  *v10 = v9;
  v10[1] = v11;
  sub_1D15A2E18();
  *(a2 + v5[6]) = v13;
  sub_1D15A2E28();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  *(a2 + v6) = v13;
  return result;
}

__n128 ActivitySummarySnidgetView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A39B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D5900(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D5B4C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_1D15A38E8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_1D14D7348(0, &qword_1EE056C28, sub_1D14D59D0);
  sub_1D14CDB48(v1, &v10[*(v16 + 44)]);
  v17 = &v10[*(v8 + 36)];
  *v17 = sub_1D14CE2AC;
  v17[1] = 0;
  sub_1D15A39A8();
  sub_1D14D5BD0();
  sub_1D15A3C08();
  (*(v4 + 8))(v6, v3);
  sub_1D14D8F14(v10, sub_1D14D5900);
  sub_1D15A29B8();
  sub_1D15A3D48();
  sub_1D15A3778();
  (*(v13 + 32))(a1, v15, v12);
  sub_1D14D8AA4(0, &qword_1EC630850, sub_1D14D5B4C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v19 = a1 + *(v18 + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_1D14CDB48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  sub_1D14CB850(0, &qword_1EE059398, sub_1D1486328, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v42 - v4;
  sub_1D1486328();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14CB850(0, &qword_1EE0593B8, sub_1D1486328, MEMORY[0x1E69A3598]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v42 - v8;
  sub_1D14D5AB8();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v42 - v12;
  v49 = sub_1D15A2F48();
  v56 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  sub_1D15A4148();
  v47 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for ActivitySummarySnidgetView(0);
  v18 = *(a1 + v17[6]);
  swift_getKeyPath();
  *&v62 = v18;
  sub_1D14D8B10(qword_1EE058338, type metadata accessor for ActivitySummarySnidgetView.ViewModel);
  sub_1D15A28B8();

  swift_beginAccess();

  v53 = v16;
  sub_1D15A2F38();
  sub_1D15A3D48();
  v19 = 1;
  sub_1D15A3778();
  v61 = 0;
  *&v60[55] = v65;
  *&v60[71] = v66;
  *&v60[87] = v67;
  *&v60[103] = v68;
  *&v60[7] = v62;
  *&v60[23] = v63;
  *&v60[39] = v64;
  v42 = *(a1 + v17[5]);
  swift_getKeyPath();
  v59 = v18;

  sub_1D15A28B8();

  v20 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel;
  swift_beginAccess();
  sub_1D14D8EAC(v18 + v20, v43, sub_1D1486328);
  v21 = *(a1 + v17[7]);
  if (v21)
  {
    swift_getKeyPath();
    v58 = v21;
    sub_1D15A28B8();

    v22 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel;
    swift_beginAccess();
    v23 = v21 + v22;
    v24 = v48;
    sub_1D14D8EAC(v23, v48, sub_1D1486328);
    v19 = 0;
  }

  else
  {
    v24 = v48;
  }

  (*(v45 + 56))(v24, v19, 1, v46);
  sub_1D15A2E38();
  type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  sub_1D14D8B10(qword_1EE05A9C0, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView);
  v25 = v55;
  sub_1D15A2F08();
  v26 = *(v56 + 16);
  v27 = v54;
  v28 = v49;
  v26(v54, v53, v49);
  v30 = v50;
  v29 = v51;
  v31 = *(v50 + 16);
  v31(v57, v25, v51);
  v32 = v52;
  v26(v52, v27, v28);
  sub_1D14D5A04();
  v34 = &v32[*(v33 + 48)];
  v35 = *&v60[80];
  *(v34 + 73) = *&v60[64];
  *(v34 + 89) = v35;
  *(v34 + 105) = *&v60[96];
  v36 = *&v60[16];
  *(v34 + 9) = *v60;
  *(v34 + 25) = v36;
  v37 = *&v60[48];
  *(v34 + 41) = *&v60[32];
  *v34 = 0x4037000000000000;
  v34[8] = 0;
  *(v34 + 15) = *&v60[111];
  *(v34 + 57) = v37;
  v38 = v57;
  v31(&v32[*(v33 + 64)], v57, v29);
  v39 = *(v30 + 8);
  v39(v55, v29);
  v40 = *(v56 + 8);
  v40(v53, v28);
  v39(v38, v29);
  v40(v54, v28);
}

uint64_t sub_1D14CE2AC()
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D15A3698();
}

uint64_t sub_1D14CE350()
{
  v1 = sub_1D15A3878();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_1D15A4328();
    v7 = sub_1D15A39E8();
    sub_1D15A3198();

    sub_1D15A3868();
    swift_getAtKeyPath();
    sub_1D14919A0(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1D14CE4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A3878();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14CB850(0, &qword_1EE0597B0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  sub_1D14D8B58(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D15A36F8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1D15A4328();
    v13 = sub_1D15A39E8();
    sub_1D15A3198();

    sub_1D15A3868();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D14CE6C8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D15A30C8();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = a2[7];
  sub_1D14CB850(0, &qword_1EE0593C8, type metadata accessor for ActivitySummarySnidgetView.ViewModel, MEMORY[0x1E69A3598]);
  v9 = v8;
  v10 = sub_1D15A2E48();
  v11 = (a3 + a2[5]);
  *v11 = v10;
  v11[1] = v12;
  sub_1D15A2E18();
  *(a3 + a2[6]) = v14;
  sub_1D15A2E28();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *(a3 + v7) = v14;
  return result;
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14D5C80(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  v8 = v7[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_1D14CB850(0, &qword_1EE0597B0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v9 = v7[8];
  v10 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a2 + v7[9];
  *v11 = 0x4030000000000000;
  *(v11 + 8) = 0;
  sub_1D14CB850(0, &qword_1EE0593C0, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel, MEMORY[0x1E69A3598]);
  v13 = v12;
  sub_1D15A2E18();
  sub_1D15A2E28();
  (*(*(v13 - 8) + 8))(a1, v13);
  return sub_1D14D8F74(v6, a2 + v9, sub_1D14D5C80);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.moveTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 24);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.moveTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 24);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.exerciseTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 32);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.exerciseTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 32);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.standTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 40);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.standTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 40);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.hasEverHadAWatch.setter(char a1)
{
  result = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.pausedRingsTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 52);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.pausedRingsTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 52);
  v4 = sub_1D15A23F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.useFitnessUIRings.setter(char a1)
{
  result = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_1D14CF4AC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000010;
    if (a1 != 9)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0x746954646E617473;
    v7 = 0x6C6156646E617473;
    if (a1 != 7)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x695265766F4D7369;
    v2 = 0x756C615665766F6DLL;
    if (a1 != 3)
    {
      v2 = 0x6573696372657865;
    }

    v3 = 0x7974697669746361;
    if (a1 != 1)
    {
      v3 = 0x6C74695465766F6DLL;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D14CF670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14D86B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14CF6A4(uint64_t a1)
{
  v2 = sub_1D14D5CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14CF6E0(uint64_t a1)
{
  v2 = sub_1D14D5CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  sub_1D14A0F04();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v111 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v111 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v111 - v16;
  v17 = sub_1D15A23F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v111 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v126 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v111 - v31;
  sub_1D14D5D5C(0, &qword_1EE056478, sub_1D14D5CB4, &type metadata for ActivitySnidgetCurrentValueVisualizationView.ViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v138 = v32;
  v135 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v111 - v33;
  v35 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 28);
  v134 = v18;
  v43 = *(v18 + 56);
  v42 = v18 + 56;
  v41 = v43;
  v144 = v40;
  (v43)(&v38[v40], 1, 1, v17, v36);
  v143 = v35[9];
  v43(&v38[v143], 1, 1, v17);
  v142 = v35[11];
  v43(&v38[v142], 1, 1, v17);
  v141 = v35[14];
  v145 = v38;
  v43(&v38[v141], 1, 1, v17);
  v44 = a1[3];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D14D5CB4();
  v45 = v139;
  sub_1D15A4CD8();
  if (v45)
  {
    v50 = v145;
    __swift_destroy_boxed_opaque_existential_1(v140);
    sub_1D14D8F14(&v50[v144], sub_1D14A0F04);
    sub_1D14D8F14(&v50[v143], sub_1D14A0F04);
    sub_1D14D8F14(&v50[v142], sub_1D14A0F04);
    return sub_1D14D8F14(&v50[v141], sub_1D14A0F04);
  }

  v46 = v136;
  v47 = v137;
  v119 = v42;
  v118 = v41;
  v120 = v35;
  v139 = v17;
  LOBYTE(v146) = 0;
  v48 = v138;
  v49 = sub_1D15A4A48();
  v52 = v145;
  *v145 = v49 & 1;
  LOBYTE(v146) = 2;
  v53 = sub_1D14D8B10(&qword_1EE0594D0, MEMORY[0x1E6968848]);
  v54 = v47;
  v55 = v139;
  sub_1D15A4A78();
  v56 = v54;
  v57 = v46;
  sub_1D15A23E8();
  v117 = 0;
  v58 = v134;
  v59 = *(v134 + 8);
  v116 = v134 + 8;
  v137 = v59;
  (v59)(v56, v55);
  v60 = v34;
  v61 = v55;
  v62 = *(v58 + 32);
  v62(&v52[v120[6]], v57, v55);
  LOBYTE(v146) = 3;
  v63 = v133;
  v64 = v117;
  sub_1D15A4A28();
  v117 = v64;
  if (v64)
  {
    (*(v135 + 8))(v60, v48);
LABEL_12:
    v72 = 0;
    v73 = 0;
LABEL_13:
    v74 = v142;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v140);
    v75 = 0;
    v76 = v139;
    v77 = v120;
    v50 = v145;
    goto LABEL_15;
  }

  v113 = v62;
  v115 = v53;
  v136 = v60;
  v112 = *(v58 + 48);
  v65 = v112(v63, 1, v55);
  v134 = v58 + 48;
  v114 = v58 + 32;
  if (v65 == 1)
  {
    sub_1D14D8F14(v63, sub_1D14A0F04);
    v66 = v132;
    v118(v132, 1, 1, v55);
  }

  else
  {
    v66 = v132;
    sub_1D15A23E8();
    (v137)(v63, v55);
    v118(v66, 0, 1, v55);
  }

  v67 = v145;
  sub_1D14D8F74(v66, &v145[v144], sub_1D14A0F04);
  LOBYTE(v146) = 4;
  v68 = v131;
  v69 = v138;
  v70 = v136;
  v71 = v117;
  sub_1D15A4A78();
  if (v71)
  {
    v117 = v71;
    (*(v135 + 8))(v70, v69);
    goto LABEL_12;
  }

  v79 = v129;
  sub_1D15A23E8();
  (v137)(v68, v61);
  v113(&v67[v120[8]], v79, v61);
  LOBYTE(v146) = 5;
  v80 = v130;
  sub_1D15A4A28();
  v117 = 0;
  if (v112(v80, 1, v61) == 1)
  {
    sub_1D14D8F14(v80, sub_1D14A0F04);
    v81 = 1;
    v82 = v128;
  }

  else
  {
    v82 = v128;
    sub_1D15A23E8();
    (v137)(v80, v61);
    v81 = 0;
  }

  v83 = v127;
  v84 = v118;
  v118(v82, v81, 1, v61);
  v85 = v61;
  v86 = v145;
  sub_1D14D8F74(v82, &v145[v143], sub_1D14A0F04);
  LOBYTE(v146) = 6;
  v87 = v138;
  v88 = v136;
  v89 = v117;
  sub_1D15A4A78();
  v90 = v126;
  v117 = v89;
  if (v89)
  {
    (*(v135 + 8))(v88, v87);
    v73 = 0;
    v72 = 1;
    goto LABEL_13;
  }

  sub_1D15A23E8();
  (v137)(v83, v85);
  v113(&v86[v120[10]], v90, v85);
  LOBYTE(v146) = 7;
  v91 = v125;
  v92 = v117;
  sub_1D15A4A28();
  v117 = v92;
  if (v92)
  {
    (*(v135 + 8))(v88, v87);
    v72 = 1;
    v73 = 1;
    goto LABEL_13;
  }

  v93 = v112(v91, 1, v85);
  v74 = v142;
  if (v93 == 1)
  {
    sub_1D14D8F14(v91, sub_1D14A0F04);
    v94 = 1;
    v95 = v124;
  }

  else
  {
    v95 = v124;
    sub_1D15A23E8();
    (v137)(v91, v85);
    v94 = 0;
  }

  v84(v95, v94, 1, v85);
  sub_1D14D8F74(v95, &v145[v74], sub_1D14A0F04);
  v148 = 1;
  sub_1D14D5D08();
  v96 = v138;
  v97 = v136;
  v98 = v117;
  sub_1D15A4A78();
  v117 = v98;
  if (v98)
  {
    (*(v135 + 8))(v97, v96);
LABEL_37:
    v72 = 1;
    v73 = 1;
    goto LABEL_14;
  }

  v99 = v146;
  v100 = v147;
  sub_1D1453BA0(0, &qword_1EE05B590);
  sub_1D1453BA0(0, &qword_1EE05B598);
  v101 = v117;
  v102 = sub_1D15A4408();
  v117 = v101;
  if (v101)
  {
    (*(v135 + 8))(v136, v96);
    sub_1D1498BF4(v99, v100);
    goto LABEL_37;
  }

  if (!v102)
  {
    v102 = [objc_allocWithZone(MEMORY[0x1E696BEC8]) init];
  }

  *(v145 + 1) = v102;
  LOBYTE(v146) = 8;
  v103 = v117;
  v104 = sub_1D15A49F8();
  v117 = v103;
  if (v103 || (v145[v120[12]] = v104, LOBYTE(v146) = 9, v105 = v117, sub_1D15A4A78(), (v117 = v105) != 0))
  {
    (*(v135 + 8))(v136, v138);
    sub_1D1498BF4(v99, v100);
    v75 = 0;
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1(v140);
    v50 = v145;

    v73 = 1;
    v72 = 1;
    v76 = v139;
    v77 = v120;
    v74 = v142;
LABEL_15:
    v78 = v137;
    (v137)(&v50[v77[6]], v76);
    sub_1D14D8F14(&v50[v144], sub_1D14A0F04);
    if (v72)
    {
      v78(&v50[v77[8]], v76);
      sub_1D14D8F14(&v50[v143], sub_1D14A0F04);
      if ((v73 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1D14D8F14(&v50[v143], sub_1D14A0F04);
      if (!v73)
      {
LABEL_17:
        sub_1D14D8F14(&v50[v74], sub_1D14A0F04);
        if (v75)
        {
LABEL_18:
          v78(&v50[v77[13]], v76);
        }

        return sub_1D14D8F14(&v50[v141], sub_1D14A0F04);
      }
    }

    v78(&v50[v77[10]], v76);
    sub_1D14D8F14(&v50[v74], sub_1D14A0F04);
    if ((v75 & 1) == 0)
    {
      return sub_1D14D8F14(&v50[v141], sub_1D14A0F04);
    }

    goto LABEL_18;
  }

  v113(&v145[v120[13]], v123, v139);
  LOBYTE(v146) = 10;
  v106 = v117;
  sub_1D15A4A28();
  v117 = v106;
  if (v106 || (sub_1D14D8F74(v122, &v145[v141], sub_1D14A0F04), LOBYTE(v146) = 11, v107 = v117, v108 = sub_1D15A4A48(), (v117 = v107) != 0))
  {
    (*(v135 + 8))(v136, v138);
    sub_1D1498BF4(v99, v100);
    v75 = 1;
    goto LABEL_43;
  }

  v109 = v108;
  (*(v135 + 8))(v136, v138);
  sub_1D1498BF4(v99, v100);
  v110 = v145;
  v145[v120[15]] = v109 & 1;
  sub_1D14D8EAC(v110, v121, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(v140);
  return sub_1D14D8F14(v110, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.ViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v20[2] = *MEMORY[0x1E69E9840];
  sub_1D14D5D5C(0, &qword_1EE0563E0, sub_1D14D5CB4, &type metadata for ActivitySnidgetCurrentValueVisualizationView.ViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14D5CB4();
  sub_1D15A4CE8();
  LOBYTE(v20[0]) = 0;
  sub_1D15A4B08();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  LOBYTE(v20[0]) = 2;
  sub_1D15A23F8();
  sub_1D14D8B10(&qword_1EE0594D8, MEMORY[0x1E6968848]);
  sub_1D15A4B38();
  LOBYTE(v20[0]) = 3;
  sub_1D15A4AE8();
  LOBYTE(v20[0]) = 4;
  sub_1D15A4B38();
  LOBYTE(v20[0]) = 5;
  sub_1D15A4AE8();
  LOBYTE(v20[0]) = 6;
  sub_1D15A4B38();
  LOBYTE(v20[0]) = 7;
  sub_1D15A4AE8();
  v11 = objc_opt_self();
  v12 = *(v3 + 8);
  v20[0] = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:0 error:v20];
  v14 = v20[0];
  if (!v13)
  {
    v16 = v14;
    sub_1D15A24A8();

    swift_willThrow();
    return (*(v7 + 8))(v9, v6);
  }

  v17 = sub_1D15A2518();
  v18 = v15;

  v20[0] = v17;
  v20[1] = v18;
  v19 = 1;
  sub_1D14D5DC4();
  sub_1D15A4B38();
  LOBYTE(v20[0]) = 8;
  sub_1D15A4AB8();
  LOBYTE(v20[0]) = 9;
  sub_1D15A4B38();
  LOBYTE(v20[0]) = 10;
  sub_1D15A4AE8();
  LOBYTE(v20[0]) = 11;
  sub_1D15A4B08();
  (*(v7 + 8))(v9, v6);
  return sub_1D1498BF4(v17, v18);
}

void sub_1D14D0CF4(uint64_t a1@<X8>)
{
  sub_1D1453BA0(0, &qword_1EE05ACF0);
  v2 = sub_1D15A4538();
  [objc_opt_self() screenHeightSizeClassForCurrentDevice];
  v3 = sub_1D15A4538();
  [v3 ascender];
  [v2 lineHeight];
  [v2 ascender];
  [v2 capHeight];
  sub_1D15A3D08();
  v4 = sub_1D15A3C28();
  v5 = sub_1D15A3A18();
  sub_1D14D6250();
  v7 = a1 + *(v6 + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  sub_1D15A3D48();
  sub_1D15A36C8();
  sub_1D14D6214(0);
  v9 = (a1 + *(v8 + 36));
  *v9 = v30;
  v9[1] = v31;
  v9[2] = v32;
  LOBYTE(v4) = sub_1D15A3A28();
  sub_1D15A3638();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1D14D61D8(0);
  v19 = a1 + *(v18 + 36);
  *v19 = v4;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  LOBYTE(v4) = sub_1D15A3A08();
  sub_1D15A3638();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_1D14D619C(0);
  v29 = a1 + *(v28 + 36);
  *v29 = v4;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
}

uint64_t sub_1D14D0F38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D14D5C80(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D14A0F04();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A23F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  v15 = v1 + *(v14 + 28);
  v16 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  (*(v11 + 16))(v13, v15 + *(v16 + 24), v10);
  sub_1D14D8EAC(v15 + *(v16 + 28), v9, sub_1D14A0F04);
  sub_1D14D1284();
  v18 = v17;
  sub_1D14D8EAC(v2 + *(v14 + 32), v6, sub_1D14D5C80);
  v19 = (*(*(v16 - 8) + 48))(v6, 1, v16);
  if (v19 == 1)
  {
    sub_1D14D8F14(v6, sub_1D14D5C80);
    v20 = 0;
  }

  else
  {
    v21 = v6[1];
    sub_1D14D8F14(v6, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
    sub_1D14D1284();
    v20 = v22;
  }

  v23 = v19 == 1;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v24 = type metadata accessor for ActivitySummarySnidgetValueView();
  v25 = v24[7];
  (*(v11 + 56))(a1 + v25, 1, 1, v10);
  v26 = a1 + v24[9];
  v27 = (a1 + v24[10]);
  *v27 = 0xD000000000000017;
  v27[1] = 0x80000001D15BFC00;
  *(a1 + 17) = 0;
  (*(v11 + 32))(a1 + v24[6], v13, v10);
  result = sub_1D14D8F74(v9, a1 + v25, sub_1D14A0F04);
  *(a1 + v24[8]) = v18;
  *v26 = v20;
  *(v26 + 8) = v23;
  return result;
}

void sub_1D14D1284()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 activityMoveMode];
  if (v7 == 2)
  {
    v8 = [v1 appleMoveTime];
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = [v1 activeEnergyBurned];
LABEL_5:
    v9 = v8;
    [v9 _value];

    return;
  }

  sub_1D15A3238();
  v10 = v1;
  v11 = sub_1D15A3248();
  v12 = sub_1D15A4318();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136315394;
    v14 = sub_1D15A4D18();
    v16 = sub_1D1479780(v14, v15, &v22);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    [v10 activityMoveMode];
    v17 = sub_1D15A4458();
    v19 = sub_1D1479780(v17, v18, &v22);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1D1446000, v11, v12, "[%s]: Unhandled move mode for animation: %s", v13, 0x16u);
    v20 = v21;
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v20, -1, -1);
    MEMORY[0x1D388BF00](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D14D1504@<X0>(uint64_t a1@<X8>)
{
  sub_1D14D5C80(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D14A0F04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A23F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  v14 = v1 + *(v13 + 28);
  v15 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  (*(v10 + 16))(v12, v14 + *(v15 + 32), v9);
  sub_1D14D8EAC(v14 + *(v15 + 36), v8, sub_1D14A0F04);
  v16 = [*(v14 + 8) appleExerciseTime];
  [v16 _value];
  v18 = v17;

  sub_1D14D8EAC(v1 + *(v13 + 32), v5, sub_1D14D5C80);
  v19 = (*(*(v15 - 8) + 48))(v5, 1, v15);
  if (v19 == 1)
  {
    sub_1D14D8F14(v5, sub_1D14D5C80);
    v20 = 0;
  }

  else
  {
    v21 = v5[1];
    sub_1D14D8F14(v5, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
    v22 = [v21 appleExerciseTime];

    [v22 _value];
    v20 = v23;
  }

  v24 = v19 == 1;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v25 = type metadata accessor for ActivitySummarySnidgetValueView();
  v26 = v25[7];
  (*(v10 + 56))(a1 + v26, 1, 1, v9);
  v27 = a1 + v25[9];
  v28 = (a1 + v25[10]);
  *v28 = 0xD000000000000017;
  v28[1] = 0x80000001D15BFC00;
  *(a1 + 17) = 1;
  (*(v10 + 32))(a1 + v25[6], v12, v9);
  result = sub_1D14D8F74(v8, a1 + v26, sub_1D14A0F04);
  *(a1 + v25[8]) = v18;
  *v27 = v20;
  *(v27 + 8) = v24;
  return result;
}

uint64_t sub_1D14D18A0@<X0>(uint64_t a1@<X8>)
{
  sub_1D14D5C80(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D14A0F04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A23F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  v14 = v1 + *(v13 + 28);
  v15 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  (*(v10 + 16))(v12, v14 + *(v15 + 40), v9);
  sub_1D14D8EAC(v14 + *(v15 + 44), v8, sub_1D14A0F04);
  v16 = [*(v14 + 8) appleStandHours];
  [v16 _value];
  v18 = v17;

  sub_1D14D8EAC(v1 + *(v13 + 32), v5, sub_1D14D5C80);
  v19 = (*(*(v15 - 8) + 48))(v5, 1, v15);
  if (v19 == 1)
  {
    sub_1D14D8F14(v5, sub_1D14D5C80);
    v20 = 0;
  }

  else
  {
    v21 = v5[1];
    sub_1D14D8F14(v5, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel);
    v22 = [v21 appleStandHours];

    [v22 _value];
    v20 = v23;
  }

  v24 = v19 == 1;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v25 = type metadata accessor for ActivitySummarySnidgetValueView();
  v26 = v25[7];
  (*(v10 + 56))(a1 + v26, 1, 1, v9);
  v27 = a1 + v25[9];
  v28 = (a1 + v25[10]);
  *v28 = 0xD000000000000017;
  v28[1] = 0x80000001D15BFC00;
  *(a1 + 17) = 2;
  (*(v10 + 32))(a1 + v25[6], v12, v9);
  result = sub_1D14D8F74(v8, a1 + v26, sub_1D14A0F04);
  *(a1 + v25[8]) = v18;
  *v27 = v20;
  *(v27 + 8) = v24;
  return result;
}

uint64_t sub_1D14D1C3C()
{
  sub_1D14D8AA4(0, &qword_1EE056B20, sub_1D14D6320, &type metadata for ActivityRingSwiftUICircleView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  sub_1D14D6320();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D15A36F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 28);
  if (*(v11 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0) + 60)) == 1)
  {
    sub_1D14CE4B4(v10);
    sub_1D15A36E8();
    (*(v8 + 8))(v10, v7);
    *v6 = sub_1D15A3D48();
    v6[1] = v12;
    sub_1D14D7348(0, &qword_1EC630888, sub_1D14D63B4);
    sub_1D14D1FC8(v0, (v6 + *(v13 + 44)));
    sub_1D14D8EAC(v6, v3, sub_1D14D6320);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE0569E8, sub_1D14D6320);
    sub_1D14AB3F4();
    sub_1D15A3998();
    return sub_1D14D8F14(v6, sub_1D14D6320);
  }

  else
  {
    v15 = *(v11 + 8);
    *v3 = swift_getKeyPath();
    *(v3 + 1) = 0;
    v3[16] = 0;
    *(v3 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE0569E8, sub_1D14D6320);
    sub_1D14AB3F4();
    v16 = v15;
    return sub_1D15A3998();
  }
}

uint64_t sub_1D14D1FC8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a1;
  v27 = sub_1D15A2D98();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D15A2D88();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D14D64FC(0);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1D15A4148();
  v28 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_1D15A3C68();
  sub_1D15A3D48();
  sub_1D15A36C8();
  *&v29[6] = *&v35[11];
  *&v29[22] = *&v35[19];
  *&v29[38] = *&v35[27];
  v15 = *(v26 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 28) + 8);
  *v8 = v15;
  (*(v6 + 104))(v8, *MEMORY[0x1E699F0A8], v24);
  [v15 isPaused];
  (*(v3 + 104))(v5, *MEMORY[0x1E6989B08], v27);
  sub_1D15A2D78();
  sub_1D15A3D48();
  sub_1D15A36C8();
  v16 = &v14[*(v25 + 36)];
  v17 = *&v35[43];
  *v16 = *&v35[35];
  *(v16 + 1) = v17;
  *(v16 + 2) = *&v35[51];
  sub_1D14D8EAC(v14, v11, sub_1D14D64FC);
  v18 = v23;
  *&v30[0] = v23;
  WORD4(v30[0]) = 256;
  *(v30 + 10) = *v29;
  *(&v30[1] + 10) = *&v29[16];
  *(&v30[2] + 10) = *&v29[32];
  *(&v30[3] + 1) = *&v29[46];
  v19 = v30[1];
  *a2 = v30[0];
  a2[1] = v19;
  v20 = v30[3];
  a2[2] = v30[2];
  a2[3] = v20;
  sub_1D14D6658(0, &qword_1EE056BC8, sub_1D14D63F0, sub_1D14D64FC);
  sub_1D14D8EAC(v11, a2 + *(v21 + 48), sub_1D14D64FC);
  sub_1D14D8EAC(v30, &v31, sub_1D14D63F0);
  sub_1D14D8F14(v14, sub_1D14D64FC);
  sub_1D14D8F14(v11, sub_1D14D64FC);
  v31 = v18;
  v32 = 256;
  v33 = *v29;
  v34 = *&v29[16];
  *v35 = *&v29[32];
  *&v35[7] = *&v29[46];
  sub_1D14D8F14(&v31, sub_1D14D63F0);
}

uint64_t sub_1D14D2450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v73 = a2;
  sub_1D14D62E4(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v60 - v5;
  sub_1D14D60E4(0);
  v67 = v6;
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D619C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  sub_1D14D60B0(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v71 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for ActivitySummarySnidgetValueView();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v60 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v60 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v60 - v36;
  sub_1D15A4148();
  v69 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v68 = v37;
  v38 = v75;
  sub_1D14D0F38(v37);
  v39 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  if (*(v38 + *(v39 + 28)))
  {
    v40 = 1;
  }

  else
  {
    v61 = v17;
    sub_1D14D0CF4(v17);
    sub_1D14D1504(v34);
    sub_1D14D0CF4(v14);
    sub_1D14D18A0(v31);
    v41 = v17;
    v42 = v66;
    sub_1D14D8EAC(v41, v66, sub_1D14D619C);
    sub_1D14D8EAC(v34, v28, type metadata accessor for ActivitySummarySnidgetValueView);
    v62 = v39;
    v43 = v64;
    sub_1D14D8EAC(v14, v64, sub_1D14D619C);
    sub_1D14D8EAC(v31, v25, type metadata accessor for ActivitySummarySnidgetValueView);
    v44 = v42;
    v45 = v65;
    sub_1D14D8EAC(v44, v65, sub_1D14D619C);
    sub_1D14D6118();
    v63 = v22;
    v47 = v46;
    sub_1D14D8EAC(v28, v45 + *(v46 + 48), type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D8EAC(v43, v45 + *(v47 + 64), sub_1D14D619C);
    sub_1D14D8EAC(v25, v45 + *(v47 + 80), type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D8F14(v31, type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D8F14(v14, sub_1D14D619C);
    sub_1D14D8F14(v34, type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D8F14(v61, sub_1D14D619C);
    sub_1D14D8F14(v25, type metadata accessor for ActivitySummarySnidgetValueView);
    v48 = v43;
    v39 = v62;
    v38 = v75;
    sub_1D14D8F14(v48, sub_1D14D619C);
    sub_1D14D8F14(v28, type metadata accessor for ActivitySummarySnidgetValueView);
    v22 = v63;
    sub_1D14D8F14(v66, sub_1D14D619C);
    sub_1D14D8C90(v45, v22, sub_1D14D60E4);
    v40 = 0;
  }

  (*(v70 + 56))(v22, v40, 1, v67);
  v49 = (v38 + *(v39 + 36));
  v75 = *v49;
  LODWORD(v70) = *(v49 + 8);
  v50 = v72;
  sub_1D14D1C3C();
  v51 = v68;
  sub_1D14D8EAC(v68, v34, type metadata accessor for ActivitySummarySnidgetValueView);
  v52 = v71;
  sub_1D14D8EAC(v22, v71, sub_1D14D60B0);
  v53 = v34;
  v54 = v74;
  sub_1D14D8EAC(v50, v74, sub_1D14D62E4);
  v55 = v73;
  sub_1D14D8EAC(v53, v73, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D6020();
  v57 = v56;
  sub_1D14D8EAC(v52, v55 + *(v56 + 48), sub_1D14D60B0);
  v58 = v55 + *(v57 + 64);
  *v58 = v75;
  *(v58 + 8) = v70;
  sub_1D14D8EAC(v54, v55 + *(v57 + 80), sub_1D14D62E4);
  sub_1D14D8F14(v50, sub_1D14D62E4);
  sub_1D14D8F14(v22, sub_1D14D60B0);
  sub_1D14D8F14(v51, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v54, sub_1D14D62E4);
  sub_1D14D8F14(v52, sub_1D14D60B0);
  sub_1D14D8F14(v53, type metadata accessor for ActivitySummarySnidgetValueView);
}

uint64_t sub_1D14D2B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1D14D661C(0);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D6810();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  sub_1D14D66D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  sub_1D14D8E28(0, &qword_1EE056B18, sub_1D14D65E0, sub_1D14D661C, MEMORY[0x1E697F948]);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v45 - v16;
  sub_1D14D65E0(0);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D62E4(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  v26 = type metadata accessor for ActivitySummarySnidgetValueView();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  sub_1D14D8E28(0, &qword_1EE056AE8, sub_1D14D65E0, sub_1D14D661C, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v50 = &v45 - v33;
  sub_1D15A4148();
  v49 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 28)) == 1)
  {
    sub_1D14D0F38(v31);
    sub_1D14D1C3C();
    sub_1D14D8EAC(v31, v28, type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D8EAC(v25, v22, sub_1D14D62E4);
    sub_1D14D8EAC(v28, v19, type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D6658(0, &qword_1EE057F28, type metadata accessor for ActivitySummarySnidgetValueView, sub_1D14D62E4);
    sub_1D14D8EAC(v22, &v19[*(v34 + 48)], sub_1D14D62E4);
    sub_1D14D8F14(v22, sub_1D14D62E4);
    sub_1D14D8F14(v28, type metadata accessor for ActivitySummarySnidgetValueView);
    sub_1D14D8EAC(v19, v52, sub_1D14D65E0);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE0569A8, sub_1D14D65E0);
    sub_1D14D8B10(&qword_1EE056918, sub_1D14D661C);
    v35 = v50;
    sub_1D15A3998();
    sub_1D14D8F14(v19, sub_1D14D65E0);
    sub_1D14D8F14(v25, sub_1D14D62E4);
    v36 = v31;
    v37 = type metadata accessor for ActivitySummarySnidgetValueView;
  }

  else
  {
    *v14 = sub_1D15A3888();
    *(v14 + 1) = 0;
    v14[16] = 0;
    sub_1D14D7348(0, &qword_1EE056C40, sub_1D14D6768);
    sub_1D14D33E4(&v14[*(v38 + 44)]);
    *v9 = sub_1D15A3888();
    *(v9 + 1) = 0;
    v9[16] = 0;
    sub_1D14D7348(0, &qword_1EE056C38, sub_1D14D68A4);
    sub_1D14D39F0(a1, &v9[*(v39 + 44)]);
    v40 = v45;
    sub_1D14D8EAC(v14, v45, sub_1D14D66D4);
    v41 = v46;
    sub_1D14D8EAC(v9, v46, sub_1D14D6810);
    v42 = v47;
    sub_1D14D8EAC(v40, v47, sub_1D14D66D4);
    sub_1D14D6658(0, &qword_1EE056A68, sub_1D14D66D4, sub_1D14D6810);
    sub_1D14D8EAC(v41, v42 + *(v43 + 48), sub_1D14D6810);
    sub_1D14D8F14(v41, sub_1D14D6810);
    sub_1D14D8F14(v40, sub_1D14D66D4);
    sub_1D14D8EAC(v42, v52, sub_1D14D661C);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE0569A8, sub_1D14D65E0);
    sub_1D14D8B10(&qword_1EE056918, sub_1D14D661C);
    v35 = v50;
    sub_1D15A3998();
    sub_1D14D8F14(v42, sub_1D14D661C);
    sub_1D14D8F14(v9, sub_1D14D6810);
    v36 = v14;
    v37 = sub_1D14D66D4;
  }

  sub_1D14D8F14(v36, v37);
  sub_1D14D8DA4(v35, v54, &qword_1EE056AE8, sub_1D14D65E0, sub_1D14D661C);
}

uint64_t sub_1D14D33E4@<X0>(uint64_t a1@<X8>)
{
  sub_1D14D619C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = type metadata accessor for ActivitySummarySnidgetValueView();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v23 - v18;
  sub_1D15A4148();
  v23[1] = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D14D0F38(v19);
  sub_1D14D0CF4(v7);
  sub_1D14D1504(v16);
  sub_1D14D8EAC(v19, v13, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v7, v4, sub_1D14D619C);
  sub_1D14D8EAC(v16, v10, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v13, a1, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D679C();
  v21 = v20;
  sub_1D14D8EAC(v4, a1 + *(v20 + 48), sub_1D14D619C);
  sub_1D14D8EAC(v10, a1 + *(v21 + 64), type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v16, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v7, sub_1D14D619C);
  sub_1D14D8F14(v19, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v10, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v4, sub_1D14D619C);
  sub_1D14D8F14(v13, type metadata accessor for ActivitySummarySnidgetValueView);
}

uint64_t sub_1D14D36C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14D6810();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = type metadata accessor for ActivitySummarySnidgetValueView();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  sub_1D15A4148();
  v26[1] = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D14D0F38(v21);
  sub_1D14D1504(v18);
  *v9 = sub_1D15A3888();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_1D14D7348(0, &qword_1EE056C38, sub_1D14D68A4);
  sub_1D14D39F0(a1, &v9[*(v22 + 44)]);
  sub_1D14D8EAC(v21, v15, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v18, v12, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v9, v6, sub_1D14D6810);
  sub_1D14D8EAC(v15, a2, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D6BD4();
  v24 = v23;
  sub_1D14D8EAC(v12, a2 + *(v23 + 48), type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v6, a2 + *(v24 + 64), sub_1D14D6810);
  sub_1D14D8F14(v9, sub_1D14D6810);
  sub_1D14D8F14(v18, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v21, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v6, sub_1D14D6810);
  sub_1D14D8F14(v12, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v15, type metadata accessor for ActivitySummarySnidgetValueView);
}

uint64_t sub_1D14D39F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14D62E4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ActivitySummarySnidgetValueView();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D14D18A0(v15);
  v16 = (a1 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 36));
  v17 = *v16;
  v18 = *(v16 + 8);
  sub_1D14D1C3C();
  sub_1D14D8EAC(v15, v12, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v9, v6, sub_1D14D62E4);
  sub_1D14D8EAC(v12, a2, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D6F6C(0, &qword_1EE057F20, type metadata accessor for ActivitySummarySnidgetValueView);
  v20 = a2 + *(v19 + 48);
  *v20 = v17;
  *(v20 + 8) = v18;
  sub_1D14D8EAC(v6, a2 + *(v19 + 64), sub_1D14D62E4);
  sub_1D14D8F14(v9, sub_1D14D62E4);
  sub_1D14D8F14(v15, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v6, sub_1D14D62E4);
  sub_1D14D8F14(v12, type metadata accessor for ActivitySummarySnidgetValueView);
}

uint64_t sub_1D14D3C8C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_1D14D62E4(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ActivitySummarySnidgetValueView();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  sub_1D15A4148();
  v36 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = v23;
  sub_1D14D0F38(v23);
  sub_1D14D1504(v20);
  sub_1D14D18A0(v17);
  sub_1D14D1C3C();
  sub_1D14D8EAC(v23, v14, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v20, v11, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v17, v8, type metadata accessor for ActivitySummarySnidgetValueView);
  v24 = v35;
  sub_1D14D8EAC(v5, v35, sub_1D14D62E4);
  v25 = v14;
  v33 = v14;
  v26 = v11;
  v27 = v8;
  v28 = v37;
  sub_1D14D8EAC(v25, v37, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D6D10();
  v30 = v29;
  sub_1D14D8EAC(v26, v28 + *(v29 + 48), type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v27, v28 + *(v30 + 64), type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8EAC(v24, v28 + *(v30 + 80), sub_1D14D62E4);
  sub_1D14D8F14(v5, sub_1D14D62E4);
  sub_1D14D8F14(v17, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v20, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v34, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v24, sub_1D14D62E4);
  sub_1D14D8F14(v27, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v26, type metadata accessor for ActivitySummarySnidgetValueView);
  sub_1D14D8F14(v33, type metadata accessor for ActivitySummarySnidgetValueView);
}

uint64_t sub_1D14D401C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  sub_1D14A0F04();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D7210(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = v63 - v8;
  v9 = sub_1D15A23F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v63 - v13;
  sub_1D14D7128();
  v73 = v15;
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = v63 - v18;
  sub_1D15A4148();
  v74 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0);
  v67 = a1 + *(v19 + 28);
  v20 = v67;
  v68 = v19;
  v21 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  v22 = v20 + *(v21 + 52);
  v65 = *(v10 + 16);
  v65(v14, v22, v9);
  v23 = sub_1D15A3B18();
  v25 = v24;
  v64 = v14;
  v83 = v23;
  v84 = v24;
  v72 = v9;
  v70 = v10;
  v27 = v26 & 1;
  v85 = v26 & 1;
  v86 = v28;
  v87 = 256;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1D15A47D8();
  v29 = sub_1D14CE350();
  v31 = v30;

  v81 = v29;
  v82 = v31;
  MEMORY[0x1D388A330](0xD000000000000019, 0x80000001D15BFBC0);
  v79 = a1;
  sub_1D14D71BC(0, &qword_1EE056BC0, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
  v33 = v32;
  v34 = sub_1D14D8BEC();
  v63[2] = v33;
  v63[1] = v34;
  sub_1D15A3BD8();

  v35 = v27;
  v36 = v70;
  v37 = v72;
  sub_1D1491688(v23, v25, v35);

  v38 = v69;
  sub_1D14D8EAC(v67 + *(v21 + 56), v69, sub_1D14A0F04);
  if ((*(v36 + 48))(v38, 1, v37) == 1)
  {
    sub_1D14D8F14(v38, sub_1D14A0F04);
    v39 = 1;
    v41 = v75;
    v40 = v76;
  }

  else
  {
    v42 = v66;
    (*(v36 + 32))(v66, v38, v37);
    v65(v64, v42, v37);
    v43 = sub_1D15A3B18();
    v45 = v44;
    v83 = v43;
    v84 = v44;
    v47 = v46 & 1;
    v85 = v46 & 1;
    v86 = v48;
    v87 = 256;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1D15A47D8();
    v49 = sub_1D14CE350();
    v51 = v50;

    v81 = v49;
    v82 = v51;
    MEMORY[0x1D388A330](0xD00000000000001BLL, 0x80000001D15BFBE0);
    v41 = v75;
    sub_1D15A3BD8();

    sub_1D1491688(v43, v45, v47);

    (*(v36 + 8))(v42, v37);
    v40 = v76;
    sub_1D14D8C90(v41, v76, sub_1D14D7128);
    v39 = 0;
  }

  v52 = v79;
  (*(v71 + 56))(v40, v39, 1, v73);
  v53 = (v52 + *(v68 + 36));
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = v80;
  sub_1D14D8EAC(v80, v41, sub_1D14D7128);
  v57 = v77;
  sub_1D14D8EAC(v40, v77, sub_1D14D7210);
  v58 = v78;
  sub_1D14D8EAC(v41, v78, sub_1D14D7128);
  sub_1D14D70B0();
  v60 = v59;
  sub_1D14D8EAC(v57, v58 + *(v59 + 48), sub_1D14D7210);
  v61 = v58 + *(v60 + 64);
  *v61 = v54;
  *(v61 + 8) = v55;
  sub_1D14D8F14(v40, sub_1D14D7210);
  sub_1D14D8F14(v56, sub_1D14D7128);
  sub_1D14D8F14(v57, sub_1D14D7210);
  sub_1D14D8F14(v41, sub_1D14D7128);
}

uint64_t ActivitySnidgetCurrentValueVisualizationView.body.getter()
{
  sub_1D14D5E18();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D8E28(0, &qword_1EE056B28, sub_1D14D6EB0, sub_1D14D5E18, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  sub_1D14D6EB0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 28) + 8) isPaused])
  {
    *v9 = sub_1D15A38A8();
    *(v9 + 1) = 0;
    v9[16] = 1;
    sub_1D14D7348(0, &qword_1EC630858, sub_1D14D6F44);
    sub_1D14D4AD4(v0, &v9[*(v10 + 44)]);
    sub_1D14D8EAC(v9, v6, sub_1D14D6EB0);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE056A40, sub_1D14D6EB0);
    sub_1D14D8B10(&qword_1EE056C50, sub_1D14D5E18);
    sub_1D15A3998();
    v11 = sub_1D14D6EB0;
    v12 = v9;
  }

  else
  {
    *v3 = sub_1D15A39F8();
    sub_1D14D7244();
    sub_1D14D4DB8(v0, &v3[*(v13 + 44)]);
    sub_1D14D8EAC(v3, v6, sub_1D14D5E18);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE056A40, sub_1D14D6EB0);
    sub_1D14D8B10(&qword_1EE056C50, sub_1D14D5E18);
    sub_1D15A3998();
    v11 = sub_1D14D5E18;
    v12 = v3;
  }

  return sub_1D14D8F14(v12, v11);
}

uint64_t sub_1D14D4AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14D62E4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  sub_1D14D6FE8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_1D15A38E8();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_1D14D7348(0, &qword_1EC630880, sub_1D14D707C);
  sub_1D14D401C(a1, &v15[*(v16 + 44)]);
  v17 = a1 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 36);
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_1D14D1C3C();
  sub_1D14D8EAC(v15, v12, sub_1D14D6FE8);
  sub_1D14D8EAC(v9, v6, sub_1D14D62E4);
  sub_1D14D8EAC(v12, a2, sub_1D14D6FE8);
  sub_1D14D6F6C(0, &qword_1EE056A00, sub_1D14D6FE8);
  v21 = a2 + *(v20 + 48);
  *v21 = v18;
  *(v21 + 8) = v19;
  sub_1D14D8EAC(v6, a2 + *(v20 + 64), sub_1D14D62E4);
  sub_1D14D8F14(v9, sub_1D14D62E4);
  sub_1D14D8F14(v15, sub_1D14D6FE8);
  sub_1D14D8F14(v6, sub_1D14D62E4);
  sub_1D14D8F14(v12, sub_1D14D6FE8);
}

uint64_t sub_1D14D4DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1D14D6A44(0);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D6C48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  sub_1D14D6B0C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  sub_1D14D8E28(0, &qword_1EE056B10, sub_1D14D5EC0, sub_1D14D6A44, MEMORY[0x1E697F948]);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - v16;
  sub_1D14D5EC0(0);
  v64 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14D6538();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  sub_1D14D5F58();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v54 - v30;
  sub_1D14D8E28(0, &qword_1EE056AD8, sub_1D14D5EC0, sub_1D14D6A44, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v63 = &v54 - v33;
  sub_1D15A4148();
  v62 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = *(a1 + *(type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(0) + 28));
  *v31 = sub_1D15A3888();
  *(v31 + 1) = 0;
  v31[16] = 0;
  sub_1D14D7348(0, &qword_1EE056C30, sub_1D14D5FEC);
  sub_1D14D2450(a1, &v31[*(v35 + 44)]);
  *v25 = sub_1D15A38E8();
  *(v25 + 1) = 0x4030000000000000;
  v25[16] = 0;
  sub_1D14D8CF8();
  sub_1D14D2B58(a1, &v25[*(v36 + 44)]);
  if (v34 == 1)
  {
    sub_1D14D8EAC(v31, v28, sub_1D14D5F58);
    sub_1D14D8EAC(v25, v22, sub_1D14D6538);
    sub_1D14D8EAC(v28, v19, sub_1D14D5F58);
    sub_1D14D6658(0, &qword_1EE056A48, sub_1D14D5F58, sub_1D14D6538);
    sub_1D14D8EAC(v22, &v19[*(v37 + 48)], sub_1D14D6538);
    sub_1D14D8F14(v22, sub_1D14D6538);
    sub_1D14D8F14(v28, sub_1D14D5F58);
    sub_1D14D8EAC(v19, v65, sub_1D14D5EC0);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE0568F8, sub_1D14D5EC0);
    sub_1D14D8B10(&qword_1EE056908, sub_1D14D6A44);
    v38 = v31;
    v39 = v63;
    sub_1D15A3998();
    sub_1D14D8F14(v19, sub_1D14D5EC0);
    v40 = v25;
  }

  else
  {
    *v14 = sub_1D15A38E8();
    *(v14 + 1) = 0x4030000000000000;
    v14[16] = 0;
    sub_1D14D7348(0, &qword_1EE056C18, sub_1D14D6BA0);
    v42 = &v14[*(v41 + 44)];
    v57 = v14;
    sub_1D14D36C4(a1, v42);
    *v9 = sub_1D15A38E8();
    *(v9 + 1) = 0x4030000000000000;
    v9[16] = 0;
    sub_1D14D7348(0, &qword_1EE056C20, sub_1D14D6CDC);
    v44 = &v9[*(v43 + 44)];
    v45 = v25;
    v55 = v25;
    v46 = v9;
    sub_1D14D3C8C(v44);
    v47 = v28;
    sub_1D14D8EAC(v31, v28, sub_1D14D5F58);
    sub_1D14D8EAC(v45, v22, sub_1D14D6538);
    v48 = v58;
    sub_1D14D8EAC(v14, v58, sub_1D14D6B0C);
    v56 = v31;
    v49 = v59;
    sub_1D14D8EAC(v46, v59, sub_1D14D6C48);
    v50 = v60;
    sub_1D14D8EAC(v47, v60, sub_1D14D5F58);
    sub_1D14D6A78();
    v52 = v51;
    sub_1D14D8EAC(v22, v50 + *(v51 + 48), sub_1D14D6538);
    sub_1D14D8EAC(v48, v50 + *(v52 + 64), sub_1D14D6B0C);
    sub_1D14D8EAC(v49, v50 + *(v52 + 80), sub_1D14D6C48);
    sub_1D14D8F14(v49, sub_1D14D6C48);
    sub_1D14D8F14(v48, sub_1D14D6B0C);
    sub_1D14D8F14(v22, sub_1D14D6538);
    sub_1D14D8F14(v47, sub_1D14D5F58);
    sub_1D14D8EAC(v50, v65, sub_1D14D6A44);
    swift_storeEnumTagMultiPayload();
    sub_1D14D8B10(&qword_1EE0568F8, sub_1D14D5EC0);
    sub_1D14D8B10(&qword_1EE056908, sub_1D14D6A44);
    v39 = v63;
    sub_1D15A3998();
    sub_1D14D8F14(v50, sub_1D14D6A44);
    sub_1D14D8F14(v46, sub_1D14D6C48);
    sub_1D14D8F14(v57, sub_1D14D6B0C);
    v40 = v55;
    v38 = v56;
  }

  sub_1D14D8F14(v40, sub_1D14D6538);
  sub_1D14D8F14(v38, sub_1D14D5F58);
  sub_1D14D8DA4(v39, v67, &qword_1EE056AD8, sub_1D14D5EC0, sub_1D14D6A44);
}

uint64_t sub_1D14D577C(uint64_t a1)
{
  v2 = sub_1D15A36F8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D15A3808();
}

uint64_t sub_1D14D5864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D1498BF4(a1, a2);
  }

  return a1;
}

void sub_1D14D593C()
{
  if (!qword_1EE056A20)
  {
    sub_1D14D59D0(255);
    sub_1D14D8B10(&qword_1EE0569D8, sub_1D14D59D0);
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A20);
    }
  }
}

void sub_1D14D5A04()
{
  if (!qword_1EE059370)
  {
    sub_1D15A2F48();
    sub_1D14D71BC(255, &qword_1EE056BA0, MEMORY[0x1E6981840], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1D14D5AB8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE059370);
    }
  }
}

void sub_1D14D5AB8()
{
  if (!qword_1EE059388)
  {
    type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(255);
    sub_1D14D8B10(qword_1EE05A9C0, type metadata accessor for ActivitySnidgetCurrentValueVisualizationView);
    v0 = sub_1D15A2EF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059388);
    }
  }
}

void sub_1D14D5B4C()
{
  if (!qword_1EC630840)
  {
    sub_1D14D5900(255);
    sub_1D14D5BD0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630840);
    }
  }
}

unint64_t sub_1D14D5BD0()
{
  result = qword_1EC630848;
  if (!qword_1EC630848)
  {
    sub_1D14D5900(255);
    sub_1D14D8B10(&qword_1EE056A28, sub_1D14D593C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630848);
  }

  return result;
}

unint64_t sub_1D14D5CB4()
{
  result = qword_1EE05AAA8;
  if (!qword_1EE05AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AAA8);
  }

  return result;
}

unint64_t sub_1D14D5D08()
{
  result = qword_1EE05B808;
  if (!qword_1EE05B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B808);
  }

  return result;
}

void sub_1D14D5D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D14D5DC4()
{
  result = qword_1EE0594C0;
  if (!qword_1EE0594C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0594C0);
  }

  return result;
}

void sub_1D14D5E18()
{
  if (!qword_1EE056C48)
  {
    sub_1D14D8E28(255, &qword_1EE056AD8, sub_1D14D5EC0, sub_1D14D6A44, MEMORY[0x1E697F960]);
    sub_1D14D6D90();
    v0 = sub_1D15A36B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056C48);
    }
  }
}

void sub_1D14D5EFC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D14D6658(255, a3, a4, a5);
    v6 = sub_1D15A3D88();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D14D5F58()
{
  if (!qword_1EE056A58)
  {
    sub_1D14D5FEC(255);
    sub_1D14D8B10(&qword_1EE056988, sub_1D14D5FEC);
    v0 = sub_1D15A3CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A58);
    }
  }
}

void sub_1D14D6020()
{
  if (!qword_1EE057F38[0])
  {
    type metadata accessor for ActivitySummarySnidgetValueView();
    sub_1D14D60B0(255);
    sub_1D14D62E4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, qword_1EE057F38);
    }
  }
}

void sub_1D14D6118()
{
  if (!qword_1EE056B40)
  {
    sub_1D14D619C(255);
    type metadata accessor for ActivitySummarySnidgetValueView();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE056B40);
    }
  }
}

void sub_1D14D6250()
{
  if (!qword_1EE056B98)
  {
    sub_1D15A3D18();
    sub_1D14D71BC(255, &qword_1EE056AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E697FDA8]);
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056B98);
    }
  }
}

void sub_1D14D6320()
{
  if (!qword_1EE0569E0)
  {
    sub_1D14D63B4(255);
    sub_1D14D8B10(&qword_1EE056968, sub_1D14D63B4);
    v0 = sub_1D15A3CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0569E0);
    }
  }
}

void sub_1D14D642C()
{
  if (!qword_1EE056C80)
  {
    sub_1D14D64A8();
    v0 = sub_1D15A3648();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056C80);
    }
  }
}

unint64_t sub_1D14D64A8()
{
  result = qword_1EE056A78;
  if (!qword_1EE056A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056A78);
  }

  return result;
}

void sub_1D14D6538()
{
  if (!qword_1EE056A30)
  {
    sub_1D14D8E28(255, &qword_1EE056AE8, sub_1D14D65E0, sub_1D14D661C, MEMORY[0x1E697F960]);
    sub_1D14D6924();
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A30);
    }
  }
}

void sub_1D14D6658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1D14D66D4()
{
  if (!qword_1EE056A70)
  {
    sub_1D14D6768(255);
    sub_1D14D8B10(&qword_1EE0569B8, sub_1D14D6768);
    v0 = sub_1D15A3CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A70);
    }
  }
}

void sub_1D14D679C()
{
  if (!qword_1EE057F30)
  {
    type metadata accessor for ActivitySummarySnidgetValueView();
    sub_1D14D619C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE057F30);
    }
  }
}

void sub_1D14D6810()
{
  if (!qword_1EE056A60)
  {
    sub_1D14D68A4(255);
    sub_1D14D8B10(&qword_1EE056998, sub_1D14D68A4);
    v0 = sub_1D15A3CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A60);
    }
  }
}

void sub_1D14D68CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D14D6F6C(255, a3, a4);
    v5 = sub_1D15A3D88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D14D6924()
{
  result = qword_1EE056AF0;
  if (!qword_1EE056AF0)
  {
    sub_1D14D8E28(255, &qword_1EE056AE8, sub_1D14D65E0, sub_1D14D661C, MEMORY[0x1E697F960]);
    sub_1D14D8B10(&qword_1EE0569A8, sub_1D14D65E0);
    sub_1D14D8B10(&qword_1EE056918, sub_1D14D661C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056AF0);
  }

  return result;
}

void sub_1D14D6A78()
{
  if (!qword_1EE056A50)
  {
    sub_1D14D5F58();
    sub_1D14D6538();
    sub_1D14D6B0C();
    sub_1D14D6C48();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE056A50);
    }
  }
}

void sub_1D14D6B0C()
{
  if (!qword_1EE056A10)
  {
    sub_1D14D6BA0(255);
    sub_1D14D8B10(&qword_1EE056978, sub_1D14D6BA0);
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A10);
    }
  }
}

void sub_1D14D6BD4()
{
  if (!qword_1EE057F10)
  {
    type metadata accessor for ActivitySummarySnidgetValueView();
    sub_1D14D6810();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE057F10);
    }
  }
}

void sub_1D14D6C48()
{
  if (!qword_1EE056A18)
  {
    sub_1D14D6CDC(255);
    sub_1D14D8B10(&qword_1EE0569C8, sub_1D14D6CDC);
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A18);
    }
  }
}

void sub_1D14D6D10()
{
  if (!qword_1EE057F18)
  {
    type metadata accessor for ActivitySummarySnidgetValueView();
    sub_1D14D62E4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE057F18);
    }
  }
}

unint64_t sub_1D14D6D90()
{
  result = qword_1EE056AE0;
  if (!qword_1EE056AE0)
  {
    sub_1D14D8E28(255, &qword_1EE056AD8, sub_1D14D5EC0, sub_1D14D6A44, MEMORY[0x1E697F960]);
    sub_1D14D8B10(&qword_1EE0568F8, sub_1D14D5EC0);
    sub_1D14D8B10(&qword_1EE056908, sub_1D14D6A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056AE0);
  }

  return result;
}

void sub_1D14D6EB0()
{
  if (!qword_1EE056A38)
  {
    sub_1D14D6F44(255);
    sub_1D14D8B10(&qword_1EE0568E8, sub_1D14D6F44);
    v0 = sub_1D15A3CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A38);
    }
  }
}

void sub_1D14D6F6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D14D62E4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1D14D6FE8()
{
  if (!qword_1EE056A08)
  {
    sub_1D14D707C(255);
    sub_1D14D8B10(&qword_1EE056958, sub_1D14D707C);
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056A08);
    }
  }
}

void sub_1D14D70B0()
{
  if (!qword_1EE056B70)
  {
    sub_1D14D7128();
    sub_1D14D7210(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE056B70);
    }
  }
}

void sub_1D14D7128()
{
  if (!qword_1EE056B80)
  {
    sub_1D14D71BC(255, &qword_1EE056BC0, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1D15A39D8();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056B80);
    }
  }
}

void sub_1D14D71BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1D14D7244()
{
  if (!qword_1EE056C00)
  {
    sub_1D14D8E28(255, &qword_1EE056AD8, sub_1D14D5EC0, sub_1D14D6A44, MEMORY[0x1E697F960]);
    sub_1D14D72F4();
    v0 = sub_1D15A36D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056C00);
    }
  }
}

unint64_t sub_1D14D72F4()
{
  result = qword_1EE056B30;
  if (!qword_1EE056B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056B30);
  }

  return result;
}

void sub_1D14D7348(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A36D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D14D76BC()
{
  sub_1D14D58AC(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivitySummarySnidgetView.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_1D14CB850(319, qword_1EE059F20, type metadata accessor for ActivitySummarySnidgetView.ViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14D7798()
{
  sub_1D1486328();
  if (v0 <= 0x3F)
  {
    sub_1D15A28F8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D14D79E8()
{
  sub_1D14CB81C(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D14D7C38()
{
  sub_1D14D7EA0(319, &qword_1EE0597A0, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D14CB850(319, &qword_1EE0597A8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_1D14D5C80(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D14D7D78()
{
  sub_1D1453BA0(319, &qword_1EE05B598);
  if (v0 <= 0x3F)
  {
    sub_1D15A23F8();
    if (v1 <= 0x3F)
    {
      sub_1D14A0F04();
      if (v2 <= 0x3F)
      {
        sub_1D14D7EA0(319, &qword_1EE059758, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D14D7EA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D14D7EF0()
{
  result = qword_1EC630860;
  if (!qword_1EC630860)
  {
    sub_1D14D8AA4(255, &qword_1EC630850, sub_1D14D5B4C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1D14D5900(255);
    sub_1D14D5BD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630860);
  }

  return result;
}

unint64_t sub_1D14D7FD8()
{
  result = qword_1EE056B08;
  if (!qword_1EE056B08)
  {
    sub_1D14D8E28(255, &qword_1EE056B00, sub_1D14D6EB0, sub_1D14D5E18, MEMORY[0x1E697F960]);
    sub_1D14D8B10(&qword_1EE056A40, sub_1D14D6EB0);
    sub_1D14D8B10(&qword_1EE056C50, sub_1D14D5E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056B08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySnidgetCurrentValueVisualizationView.ViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySnidgetCurrentValueVisualizationView.ViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D14D8270()
{
  result = qword_1EC630868;
  if (!qword_1EC630868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630868);
  }

  return result;
}

unint64_t sub_1D14D82C8()
{
  result = qword_1EC630870;
  if (!qword_1EC630870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630870);
  }

  return result;
}

unint64_t sub_1D14D8320()
{
  result = qword_1EC630878;
  if (!qword_1EC630878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630878);
  }

  return result;
}

unint64_t sub_1D14D8378()
{
  result = qword_1EE05AA98;
  if (!qword_1EE05AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AA98);
  }

  return result;
}

unint64_t sub_1D14D83D0()
{
  result = qword_1EE05AAA0;
  if (!qword_1EE05AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AAA0);
  }

  return result;
}

unint64_t sub_1D14D8428()
{
  result = qword_1EE059ED0;
  if (!qword_1EE059ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059ED0);
  }

  return result;
}

unint64_t sub_1D14D8480()
{
  result = qword_1EE059ED8;
  if (!qword_1EE059ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059ED8);
  }

  return result;
}

unint64_t sub_1D14D84D8()
{
  result = qword_1EE05A0A8;
  if (!qword_1EE05A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A0A8);
  }

  return result;
}

unint64_t sub_1D14D8530()
{
  result = qword_1EE05A0B0;
  if (!qword_1EE05A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A0B0);
  }

  return result;
}

uint64_t sub_1D14D8584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D7265646165685FLL && a2 == 0xEC0000006C65646FLL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D15BFA00 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D15BFA20 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D14D86B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x695265766F4D7369 && a2 == 0xEE00796C6E4F676ELL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEF7972616D6D7553 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C74695465766F6DLL && a2 == 0xE900000000000065 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756C615665766F6DLL && a2 == 0xE900000000000065 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xED0000656C746954 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xED000065756C6156 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746954646E617473 && a2 == 0xEA0000000000656CLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6156646E617473 && a2 == 0xEA00000000006575 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BFB00 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BFB20 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15BFB40 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15BFB60 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void sub_1D14D8AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D14D8B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D14D8B58(uint64_t a1, uint64_t a2)
{
  sub_1D14CB850(0, &qword_1EE0597B0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D14D8BEC()
{
  result = qword_1EC630890;
  if (!qword_1EC630890)
  {
    sub_1D14D71BC(255, &qword_1EE056BC0, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630890);
  }

  return result;
}

uint64_t sub_1D14D8C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D14D8CF8()
{
  if (!qword_1EE056C08)
  {
    sub_1D14D8E28(255, &qword_1EE056AE8, sub_1D14D65E0, sub_1D14D661C, MEMORY[0x1E697F960]);
    v0 = sub_1D15A36D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056C08);
    }
  }
}

uint64_t sub_1D14D8DA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1D14D8E28(0, a3, a4, a5, MEMORY[0x1E697F960]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D14D8E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D14D8EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14D8F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14D8F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id HKActivitySummary.createMoveTitleText(_:titleFont:)(uint64_t a1, void *a2)
{
  v4 = 0xD00000000000001CLL;
  v5 = sub_1D15A3268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1479D10(a1, v22);
  type metadata accessor for Localization();
  swift_initStaticObject();
  v9 = sub_1D144E91C(0xD00000000000001CLL, 0x80000001D15BDEB0, v22, 0, 0);
  v11 = v10;
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v4 = v9;
  }

  else
  {

    sub_1D15A3238();
    v13 = sub_1D15A3248();
    v14 = sub_1D15A42F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1D1479780(0xD00000000000001CLL, 0x80000001D15BDEB0, &v21);
      _os_log_impl(&dword_1D1446000, v13, v14, "Localization: no localization found for '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D388BF00](v16, -1, -1);
      MEMORY[0x1D388BF00](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v11 = 0x80000001D15BDEB0;
  }

  sub_1D144ED4C(v22);
  v17 = [objc_opt_self() hk_activityMoveGoalLineColor];
  v18 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v4, v11, a2, v17);

  return v18;
}

void HKActivitySummary.createCaloriesText(_:valueFont:unitFont:hbxViewControllerFactory:)(id a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v98 = a2;
  v101 = a1;
  v100 = sub_1D15A3268();
  v8 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v10 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v94 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v94 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = v94 - v19;
  v21 = [v5 activityMoveMode];
  if (v21 == 2)
  {
    v33 = [v5 appleMoveTime];
    v34 = [objc_opt_self() minuteUnit];
    [v33 doubleValueForUnit_];
    v36 = v35;

    if (qword_1EE05AD38 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE05AD40;
    v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v39 = [v37 stringFromNumber_];

    if (v39)
    {
      *&v99 = v8;
      v97 = sub_1D15A3F38();
      v28 = v40;

      sub_1D1479D10(v101, v103);
      type metadata accessor for Localization();
      swift_initStaticObject();

      v41 = sub_1D144E91C(0xD000000000000021, 0x80000001D15BFC20, v103, 0, 0);
      v32 = v42;
      v43 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v30 = v41;
        v8 = v99;
      }

      else
      {

        sub_1D15A3238();
        v50 = sub_1D15A3248();
        v51 = sub_1D15A42F8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v96 = v28;
          v53 = v52;
          v54 = swift_slowAlloc();
          v102[0] = v54;
          *v53 = 136446210;
          v30 = 0xD000000000000021;
          *(v53 + 4) = sub_1D1479780(0xD000000000000021, 0x80000001D15BFC20, v102);
          _os_log_impl(&dword_1D1446000, v50, v51, "Localization: no localization found for '%{public}s'", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x1D388BF00](v54, -1, -1);
          v55 = v53;
          v28 = v96;
          MEMORY[0x1D388BF00](v55, -1, -1);

          v8 = v99;
          (*(v99 + 8))(v20, v100);
        }

        else
        {

          v56 = v99;
          (*(v99 + 8))(v20, v100);
          v30 = 0xD000000000000021;
          v8 = v56;
        }

        v32 = 0x80000001D15BFC20;
      }

      v95 = a3;
      sub_1D144ED4C(v103);

      v26 = v97;
LABEL_23:
      sub_1D14DBEE4(0, &qword_1EE05ABE0, sub_1D14DBE88);
      inited = swift_initStackObject();
      v99 = xmmword_1D15AEBB0;
      *(inited + 16) = xmmword_1D15AEBB0;
      *(inited + 32) = 0x45554C4156;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v26;
      v97 = v26;
      *(inited + 56) = v28;
      *(inited + 64) = 1414090325;
      *(inited + 72) = 0xE400000000000000;
      *(inited + 80) = v30;
      v94[0] = v32;
      *(inited + 88) = v32;
      v58 = sub_1D159BCCC(inited);
      swift_setDeallocating();
      sub_1D14DBE88();
      swift_arrayDestroy();
      sub_1D1479D10(v101, v103);
      type metadata accessor for Localization();
      swift_initStaticObject();
      v59 = sub_1D144E91C(0xD00000000000001DLL, 0x80000001D15BFC50, v103, 0, 0);
      v61 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v61 = v59 & 0xFFFFFFFFFFFFLL;
      }

      v96 = v28;
      v94[1] = v30;
      if (v61)
      {
        v101 = sub_1D144F0D0(v59, v60, v58);
      }

      else
      {

        sub_1D15A3238();
        v62 = sub_1D15A3248();
        v63 = sub_1D15A42F8();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = v8;
          v66 = swift_slowAlloc();
          v102[0] = v66;
          *v64 = 136446210;
          *(v64 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15BFC50, v102);
          _os_log_impl(&dword_1D1446000, v62, v63, "Localization: no localization found for '%{public}s'", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          MEMORY[0x1D388BF00](v66, -1, -1);
          MEMORY[0x1D388BF00](v64, -1, -1);

          (*(v65 + 8))(v10, v100);
        }

        else
        {

          (*(v8 + 8))(v10, v100);
        }

        v101 = 0xD00000000000001DLL;
      }

      sub_1D144ED4C(v103);
      sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
      v67 = swift_initStackObject();
      v68 = *MEMORY[0x1E69DB648];
      *(v67 + 32) = *MEMORY[0x1E69DB648];
      v69 = MEMORY[0x1E69DB650];
      *(v67 + 16) = v99;
      v70 = *v69;
      v71 = v98;
      *(v67 + 40) = v98;
      *(v67 + 48) = v70;
      v72 = objc_opt_self();
      v73 = v68;
      v74 = v70;
      v75 = v73;
      v76 = v74;
      v77 = v71;
      *(v67 + 56) = [v72 labelColor];
      v78 = sub_1D159BBE0(v67);
      swift_setDeallocating();
      sub_1D14DBF38();
      swift_arrayDestroy();
      v79 = swift_initStackObject();
      *(v79 + 16) = v99;
      *(v79 + 32) = v75;
      v80 = v95;
      *(v79 + 40) = v95;
      *(v79 + 48) = v76;
      v81 = v80;
      *(v79 + 56) = [v72 secondaryLabelColor];
      v100 = sub_1D159BBE0(v79);
      swift_setDeallocating();
      swift_arrayDestroy();
      v82 = sub_1D15A3EF8();
      v83 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v84 = sub_1D15A3EF8();

      v85 = [v83 initWithString_];

      v86 = sub_1D15A3EF8();

      v87 = [v82 rangeOfString_];
      v89 = v88;

      v90 = sub_1D15A3EF8();

      v101 = [v82 rangeOfString_];
      *&v99 = v91;

      sub_1D14DBA5C(v78);

      type metadata accessor for Key(0);
      sub_1D14587E0();
      v92 = sub_1D15A3E48();

      [v85 addAttributes:v92 range:{v87, v89}];

      sub_1D14DBA5C(v100);

      v93 = sub_1D15A3E48();

      [v85 addAttributes:v93 range:{v101, v99}];

      return;
    }

    sub_1D15A3218();
    v47 = sub_1D15A3248();
    v48 = sub_1D15A4318();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D1446000, v47, v48, "Snippets: Unable to format apple move time text for Activity Summary.", v49, 2u);
      MEMORY[0x1D388BF00](v49, -1, -1);
    }

    (*(v8 + 8))(v16, v100);
  }

  else
  {
    if (v21 == 1)
    {
      sub_1D1453BA0(0, &qword_1EE05B458);
      v22 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC38]);
      v23 = [a4 preferredUnitForType_];

      v24 = [v5 activeEnergyBurned];
      v25 = HKLocalizedStringWithEnergy();

      if (!v25)
      {
        __break(1u);
        return;
      }

      v95 = a3;
      v26 = sub_1D15A3F38();
      v28 = v27;

      v29 = [a4 localizedDisplayNameForUnit_];
      v30 = sub_1D15A3F38();
      v32 = v31;

      goto LABEL_23;
    }

    sub_1D15A3218();
    v44 = sub_1D15A3248();
    v45 = sub_1D15A4318();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D1446000, v44, v45, "Snippets: Unsupported activity move mode.", v46, 2u);
      MEMORY[0x1D388BF00](v46, -1, -1);
    }

    (*(v8 + 8))(v13, v100);
  }
}

id HKActivitySummary.createExerciseTitleText(_:titleFont:)(uint64_t a1, void *a2)
{
  v4 = 0xD000000000000020;
  v5 = sub_1D15A3268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1479D10(a1, v22);
  type metadata accessor for Localization();
  swift_initStaticObject();
  v9 = sub_1D144E91C(0xD000000000000020, 0x80000001D15BDED0, v22, 0, 0);
  v11 = v10;
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v4 = v9;
  }

  else
  {

    sub_1D15A3238();
    v13 = sub_1D15A3248();
    v14 = sub_1D15A42F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1D1479780(0xD000000000000020, 0x80000001D15BDED0, &v21);
      _os_log_impl(&dword_1D1446000, v13, v14, "Localization: no localization found for '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D388BF00](v16, -1, -1);
      MEMORY[0x1D388BF00](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v11 = 0x80000001D15BDED0;
  }

  sub_1D144ED4C(v22);
  v17 = [objc_opt_self() hk_activityExerciseGoalLineColor];
  v18 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v4, v11, a2, v17);

  return v18;
}

id HKActivitySummary.createExerciseText(_:valueFont:unitFont:)(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v87 = a3;
  v89 = a1;
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v80 - v15;
  v17 = [v4 appleExerciseTime];
  v18 = [objc_opt_self() minuteUnit];
  [v17 doubleValueForUnit_];
  v20 = v19;

  if (qword_1EE05AD38 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE05AD40;
  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v23 = [v21 stringFromNumber_];

  if (v23)
  {
    v80 = v12;
    v81 = v7;
    v82 = v6;
    v83 = sub_1D15A3F38();
    v84 = v24;
    sub_1D1479D10(v89, v91);
    type metadata accessor for Localization();
    swift_initStaticObject();
    v25 = sub_1D144E91C(0xD00000000000001ELL, 0x80000001D15BFC70, v91, 0, 0);
    v27 = v26;
    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v86 = v23;
    if (v28)
    {
      v29 = v25;
    }

    else
    {

      sub_1D15A3238();
      v34 = sub_1D15A3248();
      v35 = sub_1D15A42F8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = a2;
        v38 = swift_slowAlloc();
        v90[0] = v38;
        *v36 = 136446210;
        v29 = 0xD00000000000001ELL;
        *(v36 + 4) = sub_1D1479780(0xD00000000000001ELL, 0x80000001D15BFC70, v90);
        _os_log_impl(&dword_1D1446000, v34, v35, "Localization: no localization found for '%{public}s'", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v39 = v38;
        a2 = v37;
        MEMORY[0x1D388BF00](v39, -1, -1);
        MEMORY[0x1D388BF00](v36, -1, -1);

        (*(v81 + 8))(v16, v82);
      }

      else
      {

        (*(v81 + 8))(v16, v82);
        v29 = 0xD00000000000001ELL;
      }

      v27 = 0x80000001D15BFC70;
    }

    sub_1D144ED4C(v91);
    sub_1D14DBEE4(0, &qword_1EE05ABE0, sub_1D14DBE88);
    inited = swift_initStackObject();
    v88 = xmmword_1D15AEBB0;
    *(inited + 16) = xmmword_1D15AEBB0;
    *(inited + 32) = 0x45554C4156;
    v41 = v83;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v41;
    *(inited + 56) = v84;
    *(inited + 64) = 1414090325;
    *(inited + 72) = 0xE400000000000000;
    *(inited + 80) = v29;
    *(inited + 88) = v27;
    v84 = v27;

    v42 = sub_1D159BCCC(inited);
    swift_setDeallocating();
    sub_1D14DBE88();
    swift_arrayDestroy();
    sub_1D1479D10(v89, v91);
    v43 = sub_1D144E91C(0xD00000000000001DLL, 0x80000001D15BFC50, v91, 0, 0);
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v43 & 0xFFFFFFFFFFFFLL;
    }

    v85 = v29;
    if (v45)
    {
      sub_1D144F0D0(v43, v44, v42);
    }

    else
    {

      v46 = v80;
      sub_1D15A3238();
      v47 = sub_1D15A3248();
      v48 = sub_1D15A42F8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v90[0] = v50;
        *v49 = 136446210;
        *(v49 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15BFC50, v90);
        _os_log_impl(&dword_1D1446000, v47, v48, "Localization: no localization found for '%{public}s'", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x1D388BF00](v50, -1, -1);
        MEMORY[0x1D388BF00](v49, -1, -1);
      }

      (*(v81 + 8))(v46, v82);
    }

    sub_1D144ED4C(v91);
    sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
    v51 = swift_initStackObject();
    v52 = *MEMORY[0x1E69DB648];
    *(v51 + 32) = *MEMORY[0x1E69DB648];
    v53 = MEMORY[0x1E69DB650];
    *(v51 + 16) = v88;
    v54 = *v53;
    *(v51 + 40) = a2;
    *(v51 + 48) = v54;
    v55 = objc_opt_self();
    v56 = v52;
    v57 = v54;
    v58 = v56;
    v59 = a2;
    v60 = v58;
    v61 = v57;
    v62 = v59;
    *(v51 + 56) = [v55 labelColor];
    v63 = sub_1D159BBE0(v51);
    swift_setDeallocating();
    sub_1D14DBF38();
    swift_arrayDestroy();
    v64 = swift_initStackObject();
    *(v64 + 16) = v88;
    *(v64 + 32) = v60;
    v65 = v87;
    *(v64 + 40) = v87;
    *(v64 + 48) = v61;
    v66 = v65;
    *(v64 + 56) = [v55 secondaryLabelColor];
    v89 = sub_1D159BBE0(v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    v67 = sub_1D15A3EF8();
    v68 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v69 = sub_1D15A3EF8();

    v33 = [v68 initWithString_];

    v70 = v86;
    v71 = [v67 rangeOfString_];
    v73 = v72;

    v74 = sub_1D15A3EF8();

    v75 = [v67 rangeOfString_];
    v87 = v76;
    *&v88 = v75;

    sub_1D14DBA5C(v63);

    type metadata accessor for Key(0);
    sub_1D14587E0();
    v77 = sub_1D15A3E48();

    [v33 addAttributes:v77 range:{v71, v73}];

    sub_1D14DBA5C(v89);

    v78 = sub_1D15A3E48();

    [v33 addAttributes:v78 range:{v88, v87}];
  }

  else
  {
    sub_1D15A3218();
    v30 = sub_1D15A3248();
    v31 = sub_1D15A4318();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D1446000, v30, v31, "Snippets: Unable to format exercise text for Activity Summary.", v32, 2u);
      MEMORY[0x1D388BF00](v32, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v33;
}

void HKActivitySummary.createStandHoursText(_:valueFont:unitFont:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v79 = a1;
  v7 = sub_1D15A3268();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v72 - v13;
  v15 = [v4 appleStandHours];
  v16 = [objc_opt_self() countUnit];
  [v15 doubleValueForUnit_];
  v18 = v17;

  if (qword_1EE05AD38 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE05AD40;
  v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v21 = [v19 stringFromNumber_];

  if (v21)
  {
    v72 = v7;
    v73 = v8;
    v77 = a2;
    v78 = a3;
    v22 = sub_1D15A3F38();
    v24 = v23;
    v25 = sub_1D15A3EF8();
    v26 = HKUILocalizedString();

    if (v26)
    {
      v75 = v26;
      v27 = sub_1D15A3F38();
      v29 = v28;
      sub_1D14DBEE4(0, &qword_1EE05ABE0, sub_1D14DBE88);
      inited = swift_initStackObject();
      v80 = xmmword_1D15AEBB0;
      *(inited + 16) = xmmword_1D15AEBB0;
      *(inited + 32) = 0x45554C4156;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v22;
      *(inited + 56) = v24;
      *(inited + 64) = 1414090325;
      *(inited + 72) = 0xE400000000000000;
      *(inited + 80) = v27;
      *(inited + 88) = v29;
      v31 = sub_1D159BCCC(inited);
      swift_setDeallocating();
      sub_1D14DBE88();
      swift_arrayDestroy();
      sub_1D1479D10(v79, v82);
      type metadata accessor for Localization();
      swift_initStaticObject();
      v32 = sub_1D144E91C(0xD00000000000001DLL, 0x80000001D15BFC50, v82, 0, 0);
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      v76 = v21;
      if (v34)
      {
        v79 = sub_1D144F0D0(v32, v33, v31);
        v74 = v35;
      }

      else
      {

        sub_1D15A3238();
        v39 = sub_1D15A3248();
        v40 = sub_1D15A42F8();
        v41 = os_log_type_enabled(v39, v40);
        v74 = 0x80000001D15BFC50;
        if (v41)
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v81[0] = v43;
          *v42 = 136446210;
          *(v42 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15BFC50, v81);
          _os_log_impl(&dword_1D1446000, v39, v40, "Localization: no localization found for '%{public}s'", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1D388BF00](v43, -1, -1);
          MEMORY[0x1D388BF00](v42, -1, -1);
        }

        (*(v73 + 8))(v14, v72);

        v79 = 0xD00000000000001DLL;
      }

      sub_1D144ED4C(v82);
      sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
      v44 = swift_initStackObject();
      v45 = *MEMORY[0x1E69DB648];
      *(v44 + 32) = *MEMORY[0x1E69DB648];
      v46 = MEMORY[0x1E69DB650];
      *(v44 + 16) = v80;
      v47 = *v46;
      v48 = v77;
      *(v44 + 40) = v77;
      *(v44 + 48) = v47;
      v49 = objc_opt_self();
      v50 = v45;
      v51 = v47;
      v52 = v50;
      v53 = v51;
      v54 = v48;
      *(v44 + 56) = [v49 labelColor];
      v55 = sub_1D159BBE0(v44);
      swift_setDeallocating();
      sub_1D14DBF38();
      swift_arrayDestroy();
      v56 = swift_initStackObject();
      *(v56 + 16) = v80;
      *(v56 + 32) = v52;
      v57 = v78;
      *(v56 + 40) = v78;
      *(v56 + 48) = v53;
      v58 = v57;
      *(v56 + 56) = [v49 secondaryLabelColor];
      *&v80 = sub_1D159BBE0(v56);
      swift_setDeallocating();
      swift_arrayDestroy();
      v59 = sub_1D15A3EF8();
      v60 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v61 = sub_1D15A3EF8();

      v62 = [v60 initWithString_];

      v63 = v76;
      v64 = [v59 rangeOfString_];
      v66 = v65;

      v67 = v75;
      v68 = [v59 rangeOfString_];
      v78 = v69;
      v79 = v68;

      sub_1D14DBA5C(v55);

      type metadata accessor for Key(0);
      sub_1D14587E0();
      v70 = sub_1D15A3E48();

      [v62 addAttributes:v70 range:{v64, v66}];

      sub_1D14DBA5C(v80);

      v71 = sub_1D15A3E48();

      [v62 addAttributes:v71 range:{v79, v78}];
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    sub_1D15A3218();
    v36 = sub_1D15A3248();
    v37 = sub_1D15A4318();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D1446000, v36, v37, "Snippets: Unable to format stand hours text for Activity Summary.", v38, 2u);
      MEMORY[0x1D388BF00](v38, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}