void HKBleedingAfterPregnancyStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v11 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463D90);
  v12 = MEMORY[0x253076390](v11);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25145AFD0;
  *(v13 + 32) = xmmword_25145B020;
  *(v13 + 48) = xmmword_25145B030;
  *(v13 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v10, type metadata accessor for HealthChartsContext);
  v14 = type metadata accessor for HealthChartsContext();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v10, 0, 1, v14);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v16 = swift_allocObject();
  *a2 = v16;
  outlined init with copy of HealthChartsUnit?(v10, v7, type metadata accessor for HealthChartsContext?);
  v17 = (*(v15 + 48))(v7, 1, v14);
  v18 = MEMORY[0x277D84F90];
  if (v17 == 1)
  {
    v19 = v12;

    outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v20 = *v7;
  v21 = *v7;
  v22 = v12;

  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext);
  if (!v20)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);

  v16[2] = v21;
  v16[3] = v13;
  v16[4] = v12;
  v16[5] = 0;
  v16[6] = v18;
}

unint64_t HKAppleSleepScoreStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v36 + 1) = v14;
  v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v13);
  v35 = xmmword_25145B1C0;
  v15 = FixedNumeric.debugDescription.getter();
  v17 = v16;
  outlined init with copy of FixedNumeric(&v35, v33);
  v18 = swift_allocObject();
  v19 = v33[1];
  *(v18 + 16) = v33[0];
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = v35;
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v8 + 40);
  *v22 = 1;
  *(v22 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 2) = v18;
  *(v22 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 4) = v20;
  *(v22 + 5) = v15;
  *(v22 + 6) = v17;
  v23 = [objc_opt_self() systemIndigoColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v24 = *(v3 + 72);
  v25 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v26 + v25, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v28 = v27;
  v29 = (a1 + *(v27 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  v29[3] = v30;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v29[4] = result;
  *v29 = 0xD000000000000011;
  v29[1] = 0x8000000251462760;
  *(a1 + *(v28 + 40)) = v26;
  return result;
}

void type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>()
{
  if (!lazy cache variable for type metadata for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>)
  {
    type metadata accessor for DateDomain(255);
    lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    v0 = type metadata accessor for ChartAttributes.AxisAttributes();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
    }
  }
}

uint64_t sub_2513DDBC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t partial apply for specialized closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  return specialized closure #1 in ScalarDomain.init<A>(_:)(a1);
}

{
  return specialized closure #1 in ScalarDomain.init<A>(_:)((v1 + 16), a1);
}

{
  v2 = *(*(type metadata accessor for AutomaticQuantity() - 8) + 80);
  return specialized closure #1 in ScalarDomain.init<A>(_:)(a1);
}

unint64_t lazy protocol witness table accessor for type NoDescription and conformance NoDescription()
{
  result = lazy protocol witness table cache variable for type NoDescription and conformance NoDescription;
  if (!lazy protocol witness table cache variable for type NoDescription and conformance NoDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDescription and conformance NoDescription);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoDescription and conformance NoDescription;
  if (!lazy protocol witness table cache variable for type NoDescription and conformance NoDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDescription and conformance NoDescription);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for DescriptionMessage<NoDescription>(255, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Double>(255, a2, MEMORY[0x277D839F8], MEMORY[0x277D83A20], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2513DDDE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
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

  v7 = *v1;
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
    v17 = v4 + v2;
  }

  else
  {
    v17 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
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
  v9 = (v3[3] >> 1) - v3[2];
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v11 = *(v10 - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v14 = v3[2];
  v15 = __OFADD__(v14, v2);
  v16 = v14 + v2;
  if (!v15)
  {
    v3[2] = v16;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    type metadata accessor for _ContiguousArrayStorage<Range<Int>>();
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit?>, type metadata accessor for HealthChartsUnit?, type metadata accessor for HealthChartsUnit?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit>, MEMORY[0x277D102B8], MEMORY[0x277D102B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.Aggregation>, MEMORY[0x277D10228], MEMORY[0x277D10228]);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t specialized closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t *a1@<X5>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AxisMarkPosition();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for AxisMarkPreset();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v8 = a1[1];
  type metadata accessor for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>();
  a2[3] = v10;
  a2[4] = lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>> and conformance AxisMarks<A>, type metadata accessor for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>);
  __swift_allocate_boxed_opaque_existential_1(a2);
  static AxisMarkPreset.inset.getter();
  static AxisMarkPreset.inset.getter();
  specialized CategoryLevels.axisMarkValues.getter(v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  type metadata accessor for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>();
  lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>();

  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t *a1@<X5>, uint64_t a2@<X8>)
{
  v3 = specialized CategoryLevels.axisMarkValues.getter(*a1);
  v4 = specialized Sequence<>.max()(v3);
  v6 = v5;

  v8 = v4;
  if (v6)
  {
    v8 = 1.0;
  }

  if (v8 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v8;
    *a2 = 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity()
{
  result = lazy protocol witness table cache variable for type RangeQuantity and conformance RangeQuantity;
  if (!lazy protocol witness table cache variable for type RangeQuantity and conformance RangeQuantity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeQuantity and conformance RangeQuantity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RangeQuantity and conformance RangeQuantity;
  if (!lazy protocol witness table cache variable for type RangeQuantity and conformance RangeQuantity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeQuantity and conformance RangeQuantity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for DescriptionMessage<NoDescription>(255, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>);
  }

  return result;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for FixedQuantity() - 8);
  v12 = (v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80)));

  return specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3 & 1, a4, v12, a5);
}

uint64_t objectdestroy_277Tm()
{
  v1 = (type metadata accessor for FixedQuantity() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2));
  v4 = v1[7];
  v5 = type metadata accessor for HealthChartsUnit();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in ScalarDomain.init<A>(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for FixedQuantity() - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  return specialized closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3 & 1, a4, a5, v12);
}

unint64_t lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider()
{
  result = lazy protocol witness table cache variable for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider;
  if (!lazy protocol witness table cache variable for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider);
  }

  return result;
}

uint64_t sub_2513DEB28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>()
{
  result = lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>;
  if (!lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>)
  {
    type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(255, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>);
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

uint64_t outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>()
{
  result = lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>;
  if (!lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>)
  {
    type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(255, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>);
  }

  return result;
}

uint64_t outlined destroy of HealthChartsQuantityDistributionDataProvider?(uint64_t a1)
{
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for HealthChartsQuantityDistributionDataProvider?, &type metadata for HealthChartsQuantityDistributionDataProvider, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider()
{
  result = lazy protocol witness table cache variable for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider;
  if (!lazy protocol witness table cache variable for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider);
  }

  return result;
}

uint64_t sub_2513DEE64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance <> HealthChartsDataShape<A>()
{
  result = lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateRangeData> and conformance <> HealthChartsDataShape<A>;
  if (!lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateRangeData> and conformance <> HealthChartsDataShape<A>)
  {
    type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(255, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDateRangeData> and conformance <> HealthChartsDataShape<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity()
{
  result = lazy protocol witness table cache variable for type AverageQuantity and conformance AverageQuantity;
  if (!lazy protocol witness table cache variable for type AverageQuantity and conformance AverageQuantity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AverageQuantity and conformance AverageQuantity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AverageQuantity and conformance AverageQuantity;
  if (!lazy protocol witness table cache variable for type AverageQuantity and conformance AverageQuantity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AverageQuantity and conformance AverageQuantity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for DescriptionMessage<NoDescription>(255, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>);
  }

  return result;
}

void type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for HealthChartsDataShape();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>()
{
  result = lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>;
  if (!lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>)
  {
    type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(255, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>);
  }

  return result;
}

uint64_t outlined destroy of HealthChartsUnit?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BloodPressureMessage and conformance BloodPressureMessage()
{
  result = lazy protocol witness table cache variable for type BloodPressureMessage and conformance BloodPressureMessage;
  if (!lazy protocol witness table cache variable for type BloodPressureMessage and conformance BloodPressureMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureMessage and conformance BloodPressureMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureMessage and conformance BloodPressureMessage;
  if (!lazy protocol witness table cache variable for type BloodPressureMessage and conformance BloodPressureMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureMessage and conformance BloodPressureMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<BloodPressureMessage> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<BloodPressureMessage> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<BloodPressureMessage> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for DescriptionMessage<NoDescription>(255, &lazy cache variable for type metadata for DescriptionMessage<BloodPressureMessage>, lazy protocol witness table accessor for type BloodPressureMessage and conformance BloodPressureMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<BloodPressureMessage> and conformance DescriptionMessage<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsBloodPressureDataProvider and conformance HealthChartsBloodPressureDataProvider()
{
  result = lazy protocol witness table cache variable for type HealthChartsBloodPressureDataProvider and conformance HealthChartsBloodPressureDataProvider;
  if (!lazy protocol witness table cache variable for type HealthChartsBloodPressureDataProvider and conformance HealthChartsBloodPressureDataProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsBloodPressureDataProvider and conformance HealthChartsBloodPressureDataProvider);
  }

  return result;
}

void type metadata accessor for HealthChartsQuantityDistributionDataProvider?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  type metadata accessor for _DictionaryStorage<Int, String>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *specialized static HKCategoryValueCervicalMucusQuality.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AFD0;
  *(inited + 32) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  *(inited + 104) = 4;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v15 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v16 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 112) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 120) = v17;
  *(inited + 128) = 5;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v18 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v19 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 136) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 144) = v20;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v21;
}

void *specialized static HKCategoryValueOvulationTestResult.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AFF0;
  *(inited + 32) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  *(inited + 104) = 4;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v15 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v16 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 112) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 120) = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v18;
}

void *specialized static HKCategoryValueVaginalBleeding.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AFD0;
  *(inited + 32) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  *(inited + 104) = 4;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v15 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v16 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 112) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 120) = v17;
  *(inited + 128) = 5;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v18 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v19 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 136) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 144) = v20;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v21;
}

void *specialized static HKCategoryValueSeverity.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AFD0;
  *(inited + 32) = 0;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  *(inited + 104) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v15 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v16 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 112) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 120) = v17;
  *(inited + 128) = 4;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v18 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v19 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 136) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 144) = v20;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v21;
}

void type metadata accessor for DescriptionMessage<NoDescription>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for DescriptionMessage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel()
{
  result = lazy protocol witness table cache variable for type CategoryLevel and conformance CategoryLevel;
  if (!lazy protocol witness table cache variable for type CategoryLevel and conformance CategoryLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryLevel and conformance CategoryLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CategoryLevel and conformance CategoryLevel;
  if (!lazy protocol witness table cache variable for type CategoryLevel and conformance CategoryLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryLevel and conformance CategoryLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for DescriptionMessage<NoDescription>(255, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>);
  }

  return result;
}

void type metadata accessor for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>()
{
  if (!lazy cache variable for type metadata for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>)
  {
    type metadata accessor for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    v0 = type metadata accessor for AxisMarks();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AxisMarks<BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>>);
    }
  }
}

void type metadata accessor for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>()
{
  if (!lazy cache variable for type metadata for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>)
  {
    type metadata accessor for <<opaque return type of AxisMark.font(_:)>>.0();
    type metadata accessor for AxisGridLine();
    v0 = type metadata accessor for BuilderTuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>);
    }
  }
}

void type metadata accessor for <<opaque return type of AxisMark.font(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of AxisMark.font(_:)>>.0)
  {
    type metadata accessor for ClosedRange<Double>(255, &lazy cache variable for type metadata for AxisValueLabel<Text>, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    lazy protocol witness table accessor for type AxisValueLabel<Text> and conformance AxisValueLabel<A>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of AxisMark.font(_:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AxisValueLabel<Text> and conformance AxisValueLabel<A>()
{
  result = lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>;
  if (!lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>)
  {
    type metadata accessor for ClosedRange<Double>(255, &lazy cache variable for type metadata for AxisValueLabel<Text>, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AxisValueLabel<Text> and conformance AxisValueLabel<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    type metadata accessor for BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}>();
    type metadata accessor for ClosedRange<Double>(255, &lazy cache variable for type metadata for AxisValueLabel<Text>, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    lazy protocol witness table accessor for type AxisValueLabel<Text> and conformance AxisValueLabel<A>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

void *specialized static HKCategoryValuePresence.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AB20;
  *(inited + 32) = 0;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v12;
}

void *specialized static HKCategoryValueAppetiteChanges.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AFF0;
  *(inited + 32) = 0;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v19 = objc_opt_self();
  v6 = [v19 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v7;
  *(inited + 56) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v8 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v9 = [v19 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v10;
  *(inited + 80) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v11 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v12 = [v19 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v13;
  *(inited + 104) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v14 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v15 = [v19 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 112) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 120) = v16;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v17;
}

double specialized static HKCategoryValueContraceptive.valueOrder.getter()
{
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25145B1D0;
  *(v0 + 32) = xmmword_25145B1E0;
  *&result = 2;
  *(v0 + 48) = xmmword_25145B030;
  *(v0 + 64) = xmmword_25145B1F0;
  *(v0 + 80) = 6;
  return result;
}

void *specialized static HKCategoryValueContraceptive.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145B1D0;
  *(inited + 32) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  *(inited + 104) = 4;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v15 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v16 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 112) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 120) = v17;
  *(inited + 128) = 5;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v18 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v19 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 136) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 144) = v20;
  *(inited + 152) = 6;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v21 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v22 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 160) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 168) = v23;
  *(inited + 176) = 7;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v24 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v25 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 184) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 192) = v26;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v27;
}

void *specialized static HKCategoryValuePregnancyTestResult.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AB30;
  *(inited + 32) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v15;
}

void *specialized static HKCategoryValueProgesteroneTestResult.valueLabelDictionary.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, String)>, type metadata accessor for (Int, String), MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AB30;
  *(inited + 32) = 1;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v5 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v6 = objc_opt_self();
  v7 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 40) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v9 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v10 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 64) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = v11;
  *(inited + 80) = 3;
  String.init<A>(_:)();
  String.LocalizationValue.init(_:)();
  v12 = MEMORY[0x253076160](0xD000000000000016, 0x8000000251462E30);
  v13 = [v6 bundleWithIdentifier_];

  static Locale.current.getter();
  *(inited + 88) = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = v14;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (Int, String)();
  swift_arrayDestroy();
  return v15;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (HealthChartsData.DescriptionKey, Double)();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>();
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of HealthChartsUnit?(v11, v7, type metadata accessor for (HealthChartsData.DescriptionKey, Double));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for HealthChartsData.DescriptionKey();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for ClosedRange<Double>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

void type metadata accessor for ClosedRange<Double>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for (Int, String)()
{
  if (!lazy cache variable for type metadata for (Int, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, String));
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, String>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, String>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, String>);
    }
  }
}

uint64_t type metadata accessor for HKQuantityType(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider()
{
  result = lazy protocol witness table cache variable for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider;
  if (!lazy protocol witness table cache variable for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider);
  }

  return result;
}

uint64_t sub_2513E25D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_630Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (HealthChartsData.DescriptionKey, Double)()
{
  if (!lazy cache variable for type metadata for (HealthChartsData.DescriptionKey, Double))
  {
    type metadata accessor for HealthChartsData.DescriptionKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HealthChartsData.DescriptionKey, Double));
    }
  }
}

void type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>)
  {
    type metadata accessor for HealthChartsData.DescriptionKey();
    lazy protocol witness table accessor for type DateDomain and conformance DateDomain(&lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D10288]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DateDomain and conformance DateDomain(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of HealthChartsUnit?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double CommonChartDescription.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17[0] = *v1;
  v17[1] = v3;
  v4 = v1[3];
  v17[2] = v1[2];
  v17[3] = v4;
  v5 = static HorizontalAlignment.leading.getter();
  v16 = 0;
  closure #1 in CommonChartDescription.body.getter(v17, &v11);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  outlined init with copy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(&v18, &v10);
  outlined destroy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(v22, &lazy cache variable for type metadata for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>, type metadata accessor for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?), MEMORY[0x277CE14B8]);
  *&v15[55] = v21;
  *&v15[39] = v20;
  *&v15[23] = v19;
  *&v15[7] = v18;
  v6 = *v15;
  *(a1 + 33) = *&v15[16];
  result = *&v15[32];
  v8 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v8;
  v9 = v16;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 80) = *&v15[63];
  *(a1 + 17) = v6;
  return result;
}

uint64_t closure #1 in CommonChartDescription.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 1);
  v13 = *(a1 + 2);
  v14 = v4;
  v6 = *a1;
  v5 = a1[1];
  v12 = *(a1 + 3);
  v7 = v13;
  v9 = *(&v12 + 1);
  v8 = v12;
  if (!*(&v12 + 1))
  {
    v8 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;

  outlined init with copy of String(&v14, v11);
  outlined init with copy of String?(&v13, v11);
  outlined init with copy of String?(&v12, v11);
}

uint64_t outlined init with copy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(0, &lazy cache variable for type metadata for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>, type metadata accessor for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?), MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)()
{
  if (!lazy cache variable for type metadata for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?))
  {
    type metadata accessor for CommonDescriptionDate?(255, &lazy cache variable for type metadata for CommonDescriptionDate?);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?));
    }
  }
}

double protocol witness for View.body.getter in conformance CommonChartDescription@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17[0] = *v1;
  v17[1] = v3;
  v4 = v1[3];
  v17[2] = v1[2];
  v17[3] = v4;
  v5 = static HorizontalAlignment.leading.getter();
  v16 = 0;
  closure #1 in CommonChartDescription.body.getter(v17, &v11);
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  outlined init with copy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(&v18, &v10);
  outlined destroy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(v22, &lazy cache variable for type metadata for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>, type metadata accessor for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?), MEMORY[0x277CE14B8]);
  *&v15[55] = v21;
  *&v15[39] = v20;
  *&v15[23] = v19;
  *&v15[7] = v18;
  v6 = *v15;
  *(a1 + 33) = *&v15[16];
  result = *&v15[32];
  v8 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v8;
  v9 = v16;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 80) = *&v15[63];
  *(a1 + 17) = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 CommonDescriptionValue.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = static VerticalAlignment.center.getter();
  closure #1 in CommonDescriptionValue.body.getter(v3, v4, v6, v5, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t closure #1 in CommonDescriptionValue.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v76 = a4;
  v69 = a3;
  v79 = a5;
  type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(0, &lazy cache variable for type metadata for Font.Design?, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v78 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v80 = a1;
  v81 = a2;
  v16 = lazy protocol witness table accessor for type String and conformance String();

  v67 = v16;
  v17 = Text.init<A>(_:)();
  v71 = v18;
  v72 = v17;
  LOBYTE(v16) = v19;
  v70 = v20;
  v21 = *MEMORY[0x277CE0A50];
  v66 = v12[13];
  v66(v15, v21, v11);
  v22 = *MEMORY[0x277CE09A0];
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  v65 = v22;
  v64 = v25;
  v25(v10, v22, v23);
  v63 = *(v24 + 56);
  v63(v10, 0, 1, v23);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(v10, &lazy cache variable for type metadata for Font.Design?, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v26 = v12[1];
  v68 = v11;
  v62 = v26;
  v60 = v12 + 1;
  v26(v15, v11);
  v27 = v16;
  v28 = v72;
  v61 = v15;
  v29 = v71;
  v30 = Text.font(_:)();
  v74 = v31;
  v75 = v30;
  v73 = v32;
  v77 = v33;

  outlined consume of Text.Storage(v28, v29, v27 & 1);

  if (v76)
  {
    v80 = v69;
    v81 = v76;

    v76 = Text.init<A>(_:)();
    v72 = v34;
    v36 = v35;
    v37 = v61;
    v38 = v68;
    v66(v61, *MEMORY[0x277CE0AC0], v68);
    v64(v10, v65, v23);
    v63(v10, 0, 1, v23);
    static Font.Weight.medium.getter();
    static Font.system(_:design:weight:)();
    outlined destroy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(v10, &lazy cache variable for type metadata for Font.Design?, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
    v62(v37, v38);
    v39 = v76;
    v40 = v72;
    v41 = Text.font(_:)();
    v43 = v42;
    v45 = v44;

    outlined consume of Text.Storage(v39, v40, v36 & 1);

    v80 = static Color.gray.getter();
    v46 = Text.foregroundStyle<A>(_:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    outlined consume of Text.Storage(v41, v43, v45 & 1);

    v53 = v50 & 1;
    outlined copy of Text.Storage(v46, v48, v50 & 1);
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v53 = 0;
    v52 = 0;
  }

  v54 = v73 & 1;
  v56 = v74;
  v55 = v75;
  outlined copy of Text.Storage(v75, v74, v73 & 1);
  v57 = v77;

  outlined copy of Text?(v46, v48, v53, v52);
  outlined consume of Text?(v46, v48, v53, v52);
  LOBYTE(v80) = v54;
  v58 = v79;
  *v79 = v55;
  v58[1] = v56;
  *(v58 + 16) = v54;
  v58[3] = v57;
  v58[4] = v46;
  v58[5] = v48;
  v58[6] = v53;
  v58[7] = v52;
  outlined consume of Text?(v46, v48, v53, v52);
  outlined consume of Text.Storage(v55, v56, v54);
}

__n128 protocol witness for View.body.getter in conformance CommonDescriptionValue@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = static VerticalAlignment.center.getter();
  closure #1 in CommonDescriptionValue.body.getter(v3, v4, v6, v5, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t CommonDescriptionTitle.body.getter@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = MEMORY[0x277CE09A8];
  v39 = a2;
  v37 = MEMORY[0x277D83D88];
  type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(0, &lazy cache variable for type metadata for Font.Design?, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = v2[1];
  v40 = v13;
  v41 = v14;
  lazy protocol witness table accessor for type String and conformance String();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v36 = v20;
  (*(v9 + 104))(v12, *a1, v8);
  v21 = *MEMORY[0x277CE09A0];
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(v7, &lazy cache variable for type metadata for Font.Design?, v38, v37);
  (*(v9 + 8))(v12, v8);
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v8) = v27;

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v40 = static Color.gray.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  LOBYTE(v17) = v31;
  v33 = v32;
  outlined consume of Text.Storage(v24, v26, v8 & 1);

  v35 = v39;
  *v39 = v28;
  v35[1] = v30;
  *(v35 + 16) = v17 & 1;
  v35[3] = v33;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonDescriptionViewModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for CommonDescriptionViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CommonDescriptionValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CommonDescriptionValue(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CommonDescriptionTitle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CommonDescriptionTitle(uint64_t result, int a2, int a3)
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

void type metadata accessor for VStack<TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>>)
  {
    type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(255, &lazy cache variable for type metadata for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>, type metadata accessor for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?), MEMORY[0x277CE14B8]);
    lazy protocol witness table accessor for type TupleView<(Text, Text?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>, type metadata accessor for (CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?));
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(Text, Text?)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>> and conformance VStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(Text, Text?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(Text, Text?)>>)
  {
    type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(255, &lazy cache variable for type metadata for TupleView<(Text, Text?)>, type metadata accessor for (Text, Text?), MEMORY[0x277CE14B8]);
    lazy protocol witness table accessor for type TupleView<(Text, Text?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Text, Text?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(Text, Text?)>, type metadata accessor for (Text, Text?));
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(Text, Text?)>>);
    }
  }
}

void type metadata accessor for TupleView<(CommonDescriptionTitle, CommonDescriptionValue, CommonDescriptionDate?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Text, Text?)()
{
  if (!lazy cache variable for type metadata for (Text, Text?))
  {
    type metadata accessor for CommonDescriptionDate?(255, &lazy cache variable for type metadata for Text?);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text, Text?));
    }
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CommonDescriptionDate?(0, &lazy cache variable for type metadata for String?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for CommonDescriptionDate?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsCategoryLevelDataProvider(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthChartsCategoryLevelDataProvider(uint64_t result, int a2, int a3)
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

uint64_t HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = v4[1];
  v31 = *v4;
  v32 = v14;
  v15 = *(v4 + 4);
  v33 = v15;
  v16 = v31;
  v34 = v14;
  v35 = v15;
  v27 = v14;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v7 + 16))(v9, a1, v6);
  v18 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v27;
  *(v20 + 56) = v15;
  (*(v7 + 32))(v20 + v18, v9, v6);
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  v23 = v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  *(v23 + 32) = v33;
  v24 = v32;
  *v23 = v31;
  *(v23 + 16) = v24;
  v25 = v16;
  outlined init with copy of HealthChartsSampleQueryConfiguration(&v34, v30);

  outlined init with copy of HealthChartsCategoryLevelDataProvider(&v31, v30);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:), v20);
}

uint64_t closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v20;
  *(v8 + 72) = v19;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  type metadata accessor for HealthChartsDataShape<DiscreteDateSpanData>();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v12 = type metadata accessor for HealthChartsData();
  *(v8 + 120) = v12;
  v13 = *(v12 - 8);
  *(v8 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  type metadata accessor for Result<HealthChartsData, Error>();
  *(v8 + 144) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:), 0, 0);
}

uint64_t closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  type metadata accessor for (HKSampleQuery, [HKSample]?)();
  *v5 = v0;
  v5[1] = closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000251464030, partial apply for closure #1 in HealthChartsSampleQueryExecutor.query(interval:), v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:);
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  if (*(v0 + 24))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    v20 = *(v0 + 80);
    v18 = *(v0 + 120);
    v19 = *(v0 + 72);
    static HealthChartsDataShape.dateSpan<>()();
    v9 = *(v8 + 8);
    HealthChartsDataShape<>.buildData(from:valueOrder:preferredUnit:)();

    (*(v7 + 8))(v5, v6);
    (*(v4 + 16))(v1, v3, v18);
    swift_storeEnumTagMultiPayload();
    v19(v1);
    outlined destroy of Result<HealthChartsData, Error>(v1);
    (*(v4 + 8))(v3, v18);
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 152);
    static HealthChartsData.empty.getter();
    swift_storeEnumTagMultiPayload();
    v11(v1);
    outlined destroy of Result<HealthChartsData, Error>(v1);
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[9];
  v5 = v0[10];

  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v6(v3);

  outlined destroy of Result<HealthChartsData, Error>(v3);
  v8 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2513E4CFC()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);

  v9 = *(v8 + 8);

  v10 = *(v8 + 32);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DateInterval() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v15 = v1[3];
  v16 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:);

  return closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:)(a1, v16, v15, v6, v7, v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for HealthChartsDataShape<DiscreteDateSpanData>()
{
  if (!lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateSpanData>)
  {
    type metadata accessor for DiscreteDateSpanData();
    v0 = type metadata accessor for HealthChartsDataShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateSpanData>);
    }
  }
}

void type metadata accessor for Result<HealthChartsData, Error>()
{
  if (!lazy cache variable for type metadata for Result<HealthChartsData, Error>)
  {
    type metadata accessor for HealthChartsData();
    type metadata accessor for Error();
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Result<HealthChartsData, Error>);
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void partial apply for closure #1 in HealthChartsSampleQueryExecutor.query(interval:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  closure #1 in HealthChartsSampleQueryExecutor.query(interval:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void type metadata accessor for (HKSampleQuery, [HKSample]?)()
{
  if (!lazy cache variable for type metadata for (HKSampleQuery, [HKSample]?))
  {
    type metadata accessor for HKQuantityType(255, &lazy cache variable for type metadata for HKSampleQuery, 0x277CCD8D0);
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for [HKSample]?, type metadata accessor for [HKSample]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HKSampleQuery, [HKSample]?));
    }
  }
}

void type metadata accessor for TaskPriority?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for [HKSample]()
{
  if (!lazy cache variable for type metadata for [HKSample])
  {
    type metadata accessor for HKQuantityType(255, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [HKSample]);
    }
  }
}

uint64_t outlined destroy of Result<HealthChartsData, Error>(uint64_t a1)
{
  type metadata accessor for Result<HealthChartsData, Error>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 static ScalarDomain.automaticNumeric<A>(default:boundaryRule:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(char a1@<W2>, uint64_t a2@<X8>)@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  (*(v9 + 16))(v13, v11);
  v27.n128_u64[1] = a3;
  *v28 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(v9 + 32))(boxed_opaque_existential_1, v13, a3);
  v17 = *a2;
  *&v28[24] = a2[1];
  *&v28[8] = v17;
  v28[40] = v14;
  v28[41] = v15;
  a5[4] = 0x6974616D6F747561;
  a5[5] = 0xE900000000000063;
  outlined init with copy of AutomaticNumeric(&v26, v24);
  v18 = swift_allocObject();
  v19 = v25[0];
  v18[3] = v24[2];
  v18[4] = v19;
  *(v18 + 74) = *(v25 + 10);
  v20 = v24[1];
  v18[1] = v24[0];
  v18[2] = v20;
  *a5 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  a5[1] = v18;
  v21 = swift_allocObject();
  v22 = *&v28[16];
  *(v21 + 48) = *v28;
  *(v21 + 64) = v22;
  *(v21 + 74) = *&v28[26];
  result = v27;
  *(v21 + 16) = v26;
  *(v21 + 32) = result;
  a5[2] = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  a5[3] = v21;
  return result;
}

__n128 AutomaticNumeric.init<A>(defaultRange:boundaryRule:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  result = *a2;
  *(a5 + 56) = *(a2 + 16);
  *(a5 + 40) = result;
  *(a5 + 72) = v9;
  *(a5 + 73) = v10;
  return result;
}

uint64_t AutomaticNumeric.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  type metadata accessor for HealthChartsUnit?(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  if (a1)
  {
    v12 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 24));
    result = IntervalChartValue.asClosedRange()();
    v15 = *(&v21[0] + 1);
    v14 = *&v21[0];
  }

  else
  {
    v16 = type metadata accessor for HealthChartsUnit();
    v17 = *(*(v16 - 8) + 56);
    v17(v11, 1, 1, v16);
    v17(v8, 1, 1, v16);
    v18 = *(v2 + 56);
    v21[0] = *(v2 + 40);
    v21[1] = v18;
    v22 = *(v2 + 72);
    specialized AxisDomain<>.computeAxisScale<A>(dataRange:axisUnit:dataUnit:boundaryRule:)(v11, v8, v21);
    v14 = v19;
    v15 = v20;
    outlined destroy of HealthChartsUnit?(v8);
    result = outlined destroy of HealthChartsUnit?(v11);
  }

  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *a2 = 0;
  return result;
}

uint64_t specialized AxisDomain<>.computeAxisScale<A>(dataRange:axisUnit:dataUnit:boundaryRule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  type metadata accessor for HealthChartsUnit?(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for HealthChartsUnit();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  ClosedRange<>.start.getter();
  v26 = v25;
  result = ClosedRange<>.end.getter();
  if (v26 > v28)
  {
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  v42 = v21;
  outlined init with copy of HealthChartsUnit?(a2, v16);
  v30 = v18[6];
  if (v30(v16, 1, v17) == 1)
  {
    v13 = v16;
  }

  else
  {
    v40 = v7;
    v41 = v9;
    v31 = v18[4];
    v31(v24, v16, v17);
    outlined init with copy of HealthChartsUnit?(v43, v13);
    if (v30(v13, 1, v17) != 1)
    {
      v32 = v42;
      v31(v42, v13, v17);
      if (*(a3 + 33))
      {
        v33 = v18[1];
        v33(v32, v17);
        return (v33)(v24, v17);
      }

      v8 = *(a3 + 24);
      LOBYTE(v9) = *(a3 + 32);
      LOBYTE(v7) = *(a3 + 16);
      v34 = *a3;
      v5 = *(a3 + 8);
      HealthChartsUnit.convert(_:to:)();
      v6 = v35;
      if ((v7 & 1) == 0)
      {
        HealthChartsUnit.convert(_:to:)();
        v5 = v36;
      }

      if ((v9 & 1) == 0)
      {
        HealthChartsUnit.convert(_:to:)();
        v8 = v37;
      }

      v38 = v18[1];
      v38(v32, v17);
      result = (v38)(v24, v17);
      goto LABEL_15;
    }

    (v18[1])(v24, v17);
    LOBYTE(v9) = v41;
    LOBYTE(v7) = v40;
  }

  result = outlined destroy of HealthChartsUnit?(v13);
  if (*(a3 + 33))
  {
    return result;
  }

LABEL_15:
  if (v29 - v26 < v6)
  {
    v39 = (v6 - (v29 - v26)) * 0.5;
    v5 = v26 - v39;
    v29 = v29 + v39;
    if (v26 - v39 <= v29)
    {
      return result;
    }

    __break(1u);
  }

  if ((v7 & 1) != 0 || v26 >= v5)
  {
    v5 = v26;
  }

  if ((v9 & 1) != 0 || v29 < v8)
  {
    v8 = v29;
  }

  if (v5 > v8)
  {
LABEL_27:
    __break(1u);
  }

  return result;
}

{
  v43 = a1;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  type metadata accessor for HealthChartsUnit?(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = (MEMORY[0x28223BE20])(v10 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for HealthChartsUnit();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = (MEMORY[0x28223BE20])(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  ClosedRange<>.start.getter();
  v26 = v25;
  result = ClosedRange<>.end.getter();
  if (v26 > v28)
  {
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  v42 = v22;
  outlined init with copy of HealthChartsUnit?(a2, v16);
  v30 = v18[6];
  if (v30(v16, 1, v17) == 1)
  {
    v14 = v16;
  }

  else
  {
    v40 = v7;
    v41 = v9;
    v31 = v18[4];
    v31(v24, v16, v17);
    outlined init with copy of HealthChartsUnit?(v43, v14);
    if (v30(v14, 1, v17) != 1)
    {
      v32 = v42;
      v31(v42, v14, v17);
      if (*(a3 + 33))
      {
        v33 = v18[1];
        v33(v32, v17);
        return (v33)(v24, v17);
      }

      v8 = *(a3 + 24);
      LOBYTE(v9) = *(a3 + 32);
      LOBYTE(v7) = *(a3 + 16);
      v34 = *a3;
      v5 = *(a3 + 8);
      HealthChartsUnit.convert(_:to:)();
      v6 = v35;
      if ((v7 & 1) == 0)
      {
        HealthChartsUnit.convert(_:to:)();
        v5 = v36;
      }

      if ((v9 & 1) == 0)
      {
        HealthChartsUnit.convert(_:to:)();
        v8 = v37;
      }

      v38 = v18[1];
      v38(v32, v17);
      result = (v38)(v24, v17);
      goto LABEL_15;
    }

    (v18[1])(v24, v17);
    LOBYTE(v9) = v41;
    LOBYTE(v7) = v40;
  }

  result = outlined destroy of HealthChartsUnit?(v14);
  if (*(a3 + 33))
  {
    return result;
  }

LABEL_15:
  if (v29 - v26 < v6)
  {
    v39 = (v6 - (v29 - v26)) * 0.5;
    v26 = v26 - v39;
    v29 = v29 + v39;
    if (v26 <= v29)
    {
      return result;
    }

    __break(1u);
  }

  if ((v7 & 1) == 0 && v26 < v5)
  {
    v26 = v5;
  }

  if ((v9 & 1) == 0 && v29 >= v8)
  {
    v29 = v8;
  }

  if (v26 > v29)
  {
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for AxisDomain.axisScale(seriesScale:seriesUnit:finestAggregation:) in conformance AutomaticNumeric@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  return AutomaticNumeric.axisScale(seriesScale:seriesUnit:finestAggregation:)(*(a1 + 16), a2);
}

uint64_t sub_2513E5F94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of HealthChartsUnit?(uint64_t a1)
{
  type metadata accessor for HealthChartsUnit?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AutomaticNumeric and conformance AutomaticNumeric()
{
  result = lazy protocol witness table cache variable for type AutomaticNumeric and conformance AutomaticNumeric;
  if (!lazy protocol witness table cache variable for type AutomaticNumeric and conformance AutomaticNumeric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNumeric and conformance AutomaticNumeric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomaticNumeric and conformance AutomaticNumeric;
  if (!lazy protocol witness table cache variable for type AutomaticNumeric and conformance AutomaticNumeric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNumeric and conformance AutomaticNumeric);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AutomaticNumeric(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AutomaticNumeric and conformance AutomaticNumeric();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomaticNumeric(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomaticNumeric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of HealthChartsUnit?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsUnit?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

HealthCharts::HealthChartsSampleQueryConfiguration __swiftcall HealthChartsSampleQueryConfiguration.init(sampleType:limit:sortDescriptors:)(HKSampleType sampleType, Swift::Int limit, Swift::OpaquePointer sortDescriptors)
{
  *v3 = sampleType;
  *(v3 + 8) = limit;
  *(v3 + 16) = sortDescriptors;
  result.sortDescriptors = sortDescriptors;
  result.limit = limit;
  result.sampleType = sampleType;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsSampleQueryConfiguration(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthChartsSampleQueryConfiguration(uint64_t result, int a2, int a3)
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

void closure #1 in HealthChartsSampleQueryExecutor.query(interval:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = objc_opt_self();
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = *(v6 + 8);
  v20(v9, v5);
  DateInterval.end.getter();
  v21 = Date._bridgeToObjectiveC()().super.isa;
  v20(v9, v5);
  v22 = [v18 predicateForSamplesWithStartDate:isa endDate:v21 options:0];

  v23 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
  v24 = v22;
  v25 = Array._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for closure #1 in closure #1 in HealthChartsSampleQueryExecutor.query(interval:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v26 = _Block_copy(aBlock);

  v27 = [v23 initWithSampleType:v29 predicate:v24 limit:v30 sortDescriptors:v25 resultsHandler:v26];

  _Block_release(v26);

  [v31 executeQuery_];
}

void type metadata accessor for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>)
  {
    type metadata accessor for (HKSampleQuery, [HKSample]?)();
    type metadata accessor for Error();
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>);
    }
  }
}

uint64_t closure #1 in closure #1 in HealthChartsSampleQueryExecutor.query(interval:)(void *a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    type metadata accessor for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    type metadata accessor for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>();
    v6 = a1;

    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_2513E67E0()
{
  type metadata accessor for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HealthChartsSampleQueryExecutor.query(interval:)(void *a1, int a2, void *a3)
{
  type metadata accessor for CheckedContinuation<(HKSampleQuery, [HKSample]?), Error>();
  v7 = *(*(v6 - 8) + 80);

  return closure #1 in closure #1 in HealthChartsSampleQueryExecutor.query(interval:)(a1, a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

int64_t specialized Sequence<>.max()(uint64_t a1)
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
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t closure #1 in CategoryLevels.axisContent(seriesScale:seriesUnit:finestAggregation:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a1;
  v71 = a3;
  type metadata accessor for (<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine)();
  v5 = *(v4 - 8);
  v70 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisGridLine();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v62 - v12;
  type metadata accessor for Font.Design?(0, &lazy cache variable for type metadata for Font.Design?, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v62 - v15;
  v64 = type metadata accessor for Font.TextStyle();
  v17 = *(v64 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v64);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AxisValueLabelOrientation();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for AxisValueLabelCollisionResolution();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  type metadata accessor for AxisValueLabel<Text>(0, &lazy cache variable for type metadata for AxisValueLabel<Text>, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v26 = v25;
  v63 = *(v25 - 8);
  v27 = *(v63 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  type metadata accessor for <<opaque return type of AxisMark.font(_:)>>.0();
  v65 = v30;
  v62 = *(v30 - 8);
  v31 = v62;
  v32 = *(v62 + 64);
  MEMORY[0x28223BE20](v30);
  v73 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v72 = &v62 - v35;
  v36 = AxisValue.index.getter();
  *&v76 = CategoryLevels.label(at:)(v36, v66, a2);
  *(&v76 + 1) = v37;
  static UnitPoint.topLeading.getter();
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  lazy protocol witness table accessor for type String and conformance String();
  AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v38 = v64;
  (*(v17 + 104))(v20, *MEMORY[0x277CE0AA0], v64);
  v39 = *MEMORY[0x277CE09A0];
  v40 = type metadata accessor for Font.Design();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v16, v39, v40);
  (*(v41 + 56))(v16, 0, 1, v40);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v16);
  (*(v17 + 8))(v20, v38);
  lazy protocol witness table accessor for type AxisValueLabel<Text> and conformance AxisValueLabel<A>();
  v42 = v72;
  AxisMark.font(_:)();

  (*(v63 + 8))(v29, v26);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v43 = v74;
  AxisGridLine.init(centered:stroke:)();
  v44 = *(v31 + 16);
  v45 = v73;
  v46 = v65;
  v44(v73, v42, v65);
  v47 = v67;
  v48 = *(v67 + 16);
  v49 = v75;
  v50 = v43;
  v51 = v68;
  v48(v75, v50, v68);
  v52 = v69;
  v53 = v45;
  v54 = v46;
  v44(v69, v53, v46);
  v55 = v70;
  v56 = *(v70 + 56);
  v48(&v52[v56], v49, v51);
  v57 = v62;
  v58 = v71;
  (*(v62 + 32))(v71, v52, v54);
  (*(v47 + 32))(v58 + *(v55 + 56), &v52[v56], v51);
  v59 = *(v47 + 8);
  v59(v74, v51);
  v60 = *(v57 + 8);
  v60(v72, v54);
  v59(v75, v51);
  return (v60)(v73, v54);
}

void type metadata accessor for (<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine)()
{
  if (!lazy cache variable for type metadata for (<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine))
  {
    type metadata accessor for <<opaque return type of AxisMark.font(_:)>>.0();
    type metadata accessor for AxisGridLine();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (<<opaque return type of AxisMark.font(_:)>>.0, AxisGridLine));
    }
  }
}

uint64_t CategoryLevels.label(at:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v3 & 0x8000000000000000) == 0 && v3 < *(a2 + 16) && *(a3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*(a2 + 8 * v3 + 32)), (v6))
  {
    v7 = (*(a3 + 56) + 16 * v5);
    v9 = *v7;
    v8 = v7[1];

    return v9;
  }

  else
  {
    return String.init<A>(_:)();
  }

  return result;
}

uint64_t outlined destroy of Font.Design?(uint64_t a1)
{
  type metadata accessor for Font.Design?(0, &lazy cache variable for type metadata for Font.Design?, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v7 = *(v5 + 2);
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9 = v7[2];
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v3 = v7;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
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
        type metadata accessor for HealthChartsData.Aggregation();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1, a2);
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 8 * a3 - 8;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 8 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 8;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = type metadata accessor for HealthChartsData.Aggregation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v39 - v15;
  v19 = MEMORY[0x28223BE20](v16);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v17;
    v20 = *v5;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        (v49)(v51, v26, v11, v19);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          v38(v29, v11);
          return;
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        v34(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        v35(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v89 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_91:
    v7 = *v89;
    if (*v89)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_93;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_15;
    }

    v14 = *a3;
    v15 = *(*a3 + 8 * v13);
    v16 = *(*a3 + 8 * v10);
    v91 = *(*a3 + 8 * v12);
    v92 = v15;
    result = a4(&v92, &v91);
    if (v6)
    {
    }

    v17 = v12;
    v18 = result;
    v19 = (v14 + 8 * v17 + 16);
    v86 = v17;
    v7 = v17;
    while (v9 - 2 != v7)
    {
      v20 = *v19;
      v91 = *(v19 - 1);
      v92 = v20;
      result = a4(&v92, &v91);
      ++v7;
      ++v19;
      if ((v18 ^ result))
      {
        v9 = v7 + 1;
        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        v12 = v86;
        if (v9 >= v86)
        {
          if (v86 <= v7)
          {
            v74 = v9 - 1;
            v75 = v86;
            do
            {
              if (v75 != v74)
              {
                v77 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v78 = *(v77 + 8 * v75);
                *(v77 + 8 * v75) = *(v77 + 8 * v74);
                *(v77 + 8 * v74) = v78;
              }
            }

            while (++v75 < v74--);
          }

          v13 = v9;
          goto LABEL_15;
        }

LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    v7 = v9 - 1;
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = v9;
    v12 = v86;
LABEL_15:
    v21 = a3[1];
    if (v13 >= v21)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_119;
    }

    if (v13 - v12 >= a6)
    {
      goto LABEL_132;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v12 + a6 >= v21)
    {
      v22 = a3[1];
    }

    else
    {
      v22 = v12 + a6;
    }

    if (v22 < v12)
    {
      goto LABEL_122;
    }

    if (v13 == v22)
    {
LABEL_132:
      if (v13 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v68 = v12;
      v69 = *a3;
      v7 = *a3 + 8 * v13 - 8;
      v88 = v68;
      v9 = v68 - v13;
      v83 = v22;
      do
      {
        v70 = *(v69 + 8 * v13);
        v71 = v9;
        v84 = v7;
        do
        {
          v92 = v70;
          v91 = *v7;
          result = a4(&v92, &v91);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v69)
          {
            goto LABEL_125;
          }

          v72 = *v7;
          v70 = *(v7 + 8);
          *v7 = v70;
          *(v7 + 8) = v72;
          v7 -= 8;
        }

        while (!__CFADD__(v71++, 1));
        ++v13;
        v7 = v84 + 8;
        --v9;
      }

      while (v13 != v83);
      v13 = v83;
      v12 = v88;
      if (v83 < v88)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v7 = *(v11 + 2);
    v23 = *(v11 + 3);
    v24 = v7 + 1;
    if (v7 >= v23 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v7 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v24;
    v25 = &v11[16 * v7];
    *(v25 + 4) = v12;
    *(v25 + 5) = v13;
    v26 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    v87 = v13;
    if (v7)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v87;
    if (v87 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v27 = v24 - 1;
    if (v24 >= 4)
    {
      v32 = &v11[16 * v24 + 32];
      v33 = *(v32 - 64);
      v34 = *(v32 - 56);
      v38 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      if (v38)
      {
        goto LABEL_105;
      }

      v37 = *(v32 - 48);
      v36 = *(v32 - 40);
      v38 = __OFSUB__(v36, v37);
      v30 = v36 - v37;
      v31 = v38;
      if (v38)
      {
        goto LABEL_106;
      }

      v39 = &v11[16 * v24];
      v41 = *v39;
      v40 = *(v39 + 1);
      v38 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v38)
      {
        goto LABEL_108;
      }

      v38 = __OFADD__(v30, v42);
      v43 = v30 + v42;
      if (v38)
      {
        goto LABEL_111;
      }

      if (v43 >= v35)
      {
        v61 = &v11[16 * v27 + 32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v38 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v38)
        {
          goto LABEL_117;
        }

        if (v30 < v64)
        {
          v27 = v24 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v24 == 3)
    {
      v28 = *(v11 + 4);
      v29 = *(v11 + 5);
      v38 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      v31 = v38;
LABEL_44:
      if (v31)
      {
        goto LABEL_107;
      }

      v44 = &v11[16 * v24];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      v49 = v47;
      if (v47)
      {
        goto LABEL_110;
      }

      v50 = &v11[16 * v27 + 32];
      v52 = *v50;
      v51 = *(v50 + 1);
      v38 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v38)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v48, v53))
      {
        goto LABEL_114;
      }

      if (v48 + v53 >= v30)
      {
        if (v30 < v53)
        {
          v27 = v24 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v54 = &v11[16 * v24];
    v56 = *v54;
    v55 = *(v54 + 1);
    v38 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    v49 = v38;
LABEL_58:
    if (v49)
    {
      goto LABEL_109;
    }

    v57 = &v11[16 * v27];
    v59 = *(v57 + 4);
    v58 = *(v57 + 5);
    v38 = __OFSUB__(v58, v59);
    v60 = v58 - v59;
    if (v38)
    {
      goto LABEL_112;
    }

    if (v60 < v48)
    {
      goto LABEL_3;
    }

LABEL_65:
    v9 = v27 - 1;
    if (v27 - 1 >= v24)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v65 = *&v11[16 * v9 + 32];
    v66 = *&v11[16 * v27 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v65), (*a3 + 8 * *&v11[16 * v27 + 32]), (*a3 + 8 * v66), v26, a4);
    if (v6)
    {
    }

    if (v66 < v65)
    {
      goto LABEL_103;
    }

    v7 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v9 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v67 = &v11[16 * v9];
    *(v67 + 4) = v65;
    *(v67 + 5) = v66;
    v93 = v11;
    result = specialized Array.remove(at:)(v27);
    v11 = v93;
    v24 = *(v93 + 2);
    if (v24 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
LABEL_93:
  v93 = v11;
  v79 = *(v11 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v11[16 * v79];
    v81 = *&v11[16 * v79 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v80), (*a3 + 8 * *&v11[16 * v79 + 16]), (*a3 + 8 * v81), v7, a4);
    if (v9)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v79 - 2 >= *(v11 + 2))
    {
      goto LABEL_116;
    }

    v82 = &v11[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v93 = v11;
    result = specialized Array.remove(at:)(v79 - 1);
    v11 = v93;
    v79 = *(v93 + 2);
    if (v79 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a1;
  v164 = type metadata accessor for HealthChartsData.Aggregation();
  v12 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v147 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v135 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v135 - v19;
  MEMORY[0x28223BE20](v21);
  v141 = &v135 - v22;
  MEMORY[0x28223BE20](v23);
  v30 = MEMORY[0x28223BE20](&v135 - v24);
  v162 = v27;
  v163 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = a4;
LABEL_104:
    a4 = *v143;
    if (*v143)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v142 = &v135 - v26;
  v140 = v25;
  v152 = v20;
  v148 = v29;
  v149 = v28;
  v138 = a6;
  v32 = 0;
  v160 = (v27 + 8);
  v161 = v27 + 16;
  v156 = (v27 + 32);
  v33 = MEMORY[0x277D84F90];
  v157 = a5;
  v34 = a4;
  v159 = a4;
  while (1)
  {
    v35 = v32;
    v144 = v33;
    if ((v32 + 1) < v31)
    {
      v145 = v32;
      v146 = v31;
      v36 = *v163;
      v37 = *(v162 + 72);
      a4 = *v163 + v37 * (v32 + 1);
      v38 = *(v162 + 16);
      v39 = v164;
      v38(v142, a4, v164, v30);
      v158 = v37;
      v139 = v36;
      v40 = &v36[v37 * v145];
      v41 = v140;
      v153 = v38;
      (v38)(v140, v40, v39);
      v42 = v142;
      LODWORD(v155) = v34(v142, v41);
      if (v7)
      {
        v134 = *v160;
        (*v160)(v41, v39);
        v134(v42, v39);
        goto LABEL_117;
      }

      v165 = 0;
      v43 = *v160;
      (*v160)(v41, v39);
      v151 = v43;
      (v43)(v42, v39);
      v137 = v146 - 1;
      v154 = v146 - 2;
      v44 = v145;
      a5 = v157;
      v45 = v158;
      v46 = &v139[v158 * (v145 + 2)];
      v47 = v141;
      while (v154 != v44)
      {
        v48 = v164;
        v49 = v153;
        (v153)(v47, v46, v164);
        v50 = a5;
        v51 = v152;
        (v49)(v152, a4, v48);
        v52 = v50;
        v53 = v165;
        v54 = v159(v47, v51);
        v165 = v53;
        if (v53)
        {
          v132 = v151;
          (v151)(v51, v48);
          v132(v47, v48);
LABEL_117:

          return;
        }

        v55 = v54;
        v56 = v151;
        (v151)(v51, v48);
        v56(v47, v48);
        ++v44;
        v45 = v158;
        v46 += v158;
        a4 += v158;
        a5 = v52;
        if ((v155 ^ v55))
        {
          v57 = v44 + 1;
          goto LABEL_12;
        }
      }

      v44 = v137;
      v57 = v146;
LABEL_12:
      v35 = v145;
      if (v155)
      {
        if (v57 < v145)
        {
          goto LABEL_141;
        }

        v33 = v164;
        if (v145 <= v44)
        {
          a4 = v45 * (v57 - 1);
          v58 = v57;
          v59 = v57 * v45;
          v146 = v58;
          v60 = v58;
          v61 = v145;
          v62 = v145 * v45;
          do
          {
            if (v61 != --v60)
            {
              v64 = *v163;
              if (!*v163)
              {
                goto LABEL_145;
              }

              v65 = *v156;
              (*v156)(v147, &v64[v62], v164);
              if (v62 < a4 || &v64[v62] >= &v64[v59])
              {
                v63 = v164;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v63 = v164;
                if (v62 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v65(&v64[a4], v147, v63);
              a5 = v157;
              v45 = v158;
              v33 = v63;
            }

            ++v61;
            a4 -= v45;
            v59 -= v45;
            v62 += v45;
          }

          while (v61 < v60);
          v7 = v165;
          v34 = v159;
          v35 = v145;
          v57 = v146;
        }

        else
        {
          v7 = v165;
          v34 = v159;
        }
      }

      else
      {
        v33 = v164;
        v7 = v165;
        v34 = v159;
      }
    }

    else
    {
      v57 = (v32 + 1);
      v33 = v164;
    }

    v66 = v163[1];
    if (v57 < v66)
    {
      if (__OFSUB__(v57, v35))
      {
        goto LABEL_137;
      }

      if (v57 - v35 < v138)
      {
        if (__OFADD__(v35, v138))
        {
          __break(1u);
        }

        else
        {
          v146 = v57;
          if (&v35[v138] >= v66)
          {
            v67 = v66;
          }

          else
          {
            v67 = &v35[v138];
          }

          if (v67 >= v35)
          {
            if (v146 == v67)
            {
              v57 = v146;
              goto LABEL_38;
            }

            v165 = v7;
            v114 = *v163;
            v115 = *(v162 + 72);
            v158 = *(v162 + 16);
            v116 = (v114 + v115 * (v146 - 1));
            v154 = -v115;
            v155 = v114;
            v145 = v35;
            v117 = &v35[-v146];
            v136 = v115;
            a4 = v114 + v146 * v115;
            v153 = v67;
            while (1)
            {
              v137 = a4;
              v139 = v117;
              v151 = v116;
              while (1)
              {
                v118 = v148;
                v119 = v158;
                (v158)(v148, a4, v33, v30);
                v120 = v149;
                v119(v149, v116, v33);
                v121 = v165;
                v122 = v159(v118, v120);
                v165 = v121;
                if (v121)
                {
                  v133 = *v160;
                  (*v160)(v120, v33);
                  v133(v118, v33);
                  goto LABEL_117;
                }

                v123 = v122;
                v124 = *v160;
                (*v160)(v120, v33);
                v124(v118, v33);
                if ((v123 & 1) == 0)
                {
                  break;
                }

                if (!v155)
                {
                  goto LABEL_143;
                }

                v125 = *v156;
                v126 = v150;
                v33 = v164;
                (*v156)(v150, a4, v164);
                swift_arrayInitWithTakeFrontToBack();
                v125(v116, v126, v33);
                v116 += v154;
                a4 += v154;
                v127 = __CFADD__(v117++, 1);
                a5 = v157;
                if (v127)
                {
                  goto LABEL_101;
                }
              }

              a5 = v157;
              v33 = v164;
LABEL_101:
              v116 = &v151[v136];
              v117 = v139 - 1;
              a4 = v137 + v136;
              v57 = v153;
              if (++v146 == v153)
              {
                v34 = v159;
                v7 = v165;
                v35 = v145;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v33 = v144;
    if (v57 < v35)
    {
      goto LABEL_136;
    }

    a4 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    }

    v69 = *(v33 + 2);
    v68 = *(v33 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v33);
    }

    *(v33 + 2) = v70;
    v71 = &v33[16 * v69];
    *(v71 + 4) = v35;
    *(v71 + 5) = v57;
    v153 = v57;
    v72 = *v143;
    if (!*v143)
    {
      goto LABEL_146;
    }

    if (v69)
    {
      break;
    }

    a5 = v157;
    v34 = a4;
LABEL_90:
    v31 = v163[1];
    v32 = v153;
    if (v153 >= v31)
    {
      goto LABEL_104;
    }
  }

  a5 = v157;
  v34 = a4;
  while (1)
  {
    a4 = v70 - 1;
    if (v70 >= 4)
    {
      v77 = &v33[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_123;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_124;
      }

      v84 = &v33[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_126;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_129;
      }

      if (v88 >= v80)
      {
        v106 = &v33[16 * a4 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_135;
        }

        if (v75 < v109)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v70 == 3)
    {
      v73 = *(v33 + 4);
      v74 = *(v33 + 5);
      v83 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      v76 = v83;
LABEL_59:
      if (v76)
      {
        goto LABEL_125;
      }

      v89 = &v33[16 * v70];
      v91 = *v89;
      v90 = *(v89 + 1);
      v92 = __OFSUB__(v90, v91);
      v93 = v90 - v91;
      v94 = v92;
      if (v92)
      {
        goto LABEL_128;
      }

      v95 = &v33[16 * a4 + 32];
      v97 = *v95;
      v96 = *(v95 + 1);
      v83 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v83)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v93, v98))
      {
        goto LABEL_132;
      }

      if (v93 + v98 >= v75)
      {
        if (v75 < v98)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v99 = &v33[16 * v70];
    v101 = *v99;
    v100 = *(v99 + 1);
    v83 = __OFSUB__(v100, v101);
    v93 = v100 - v101;
    v94 = v83;
LABEL_73:
    if (v94)
    {
      goto LABEL_127;
    }

    v102 = &v33[16 * a4];
    v104 = *(v102 + 4);
    v103 = *(v102 + 5);
    v83 = __OFSUB__(v103, v104);
    v105 = v103 - v104;
    if (v83)
    {
      goto LABEL_130;
    }

    if (v105 < v93)
    {
      goto LABEL_90;
    }

LABEL_80:
    v110 = a4 - 1;
    if (a4 - 1 >= v70)
    {
      break;
    }

    if (!*v163)
    {
      goto LABEL_142;
    }

    v111 = *&v33[16 * v110 + 32];
    v112 = *&v33[16 * a4 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v163 + *(v162 + 72) * v111, *v163 + *(v162 + 72) * *&v33[16 * a4 + 32], *v163 + *(v162 + 72) * v112, v72, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v112 < v111)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
    }

    if (v110 >= *(v33 + 2))
    {
      goto LABEL_122;
    }

    v113 = &v33[16 * v110];
    *(v113 + 4) = v111;
    *(v113 + 5) = v112;
    v166 = v33;
    specialized Array.remove(at:)(a4);
    v33 = v166;
    v70 = *(v166 + 2);
    if (v70 <= 1)
    {
      goto LABEL_90;
    }
  }

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
  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
LABEL_106:
  v166 = v33;
  v128 = *(v33 + 2);
  if (v128 < 2)
  {
    goto LABEL_117;
  }

  while (*v163)
  {
    v129 = *&v33[16 * v128];
    v130 = *&v33[16 * v128 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v163 + *(v162 + 72) * v129, *v163 + *(v162 + 72) * *&v33[16 * v128 + 16], *v163 + *(v162 + 72) * v130, a4, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v130 < v129)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
    }

    if (v128 - 2 >= *(v33 + 2))
    {
      goto LABEL_134;
    }

    v131 = &v33[16 * v128];
    *v131 = v129;
    *(v131 + 1) = v130;
    v166 = v33;
    specialized Array.remove(at:)(v128 - 1);
    v33 = v166;
    v128 = *(v166 + 2);
    if (v128 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 >= v14 >> 3)
  {
    if (a4 != __src || &__src[8 * v15] <= a4)
    {
      memmove(a4, __src, 8 * v15);
    }

    v16 = (v6 + 8 * v15);
    if (v13 >= 8 && v8 > v9)
    {
      v20 = -v6;
      while (1)
      {
        v32 = v8;
        v8 -= 8;
        v21 = &v16[v20];
        v7 -= 8;
        v22 = v16;
        while (1)
        {
          v23 = *(v22 - 1);
          v22 -= 8;
          v35 = v23;
          v34 = *v8;
          v24 = a5(&v35, &v34);
          if (v5)
          {
            if (v21 >= 0)
            {
              v29 = v21;
            }

            else
            {
              v29 = v21 + 7;
            }

            v28 = v32;
            if (v32 >= v6 && v32 < v6 + (v29 & 0xFFFFFFFFFFFFFFF8) && v32 == v6)
            {
              return 1;
            }

            v27 = 8 * (v29 >> 3);
            goto LABEL_58;
          }

          v25 = v7 + 8;
          if (v24)
          {
            break;
          }

          if (v25 != v16)
          {
            *v7 = *v22;
          }

          v21 -= 8;
          v7 -= 8;
          v16 = v22;
          if (v22 <= v6)
          {
            v16 = v22;
            v8 = v32;
            goto LABEL_52;
          }
        }

        if (v25 != v32)
        {
          *v7 = *v8;
        }

        if (v16 > v6)
        {
          v20 = -v6;
          if (v8 > v9)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_52:
    v30 = &v16[-v6 + 7];
    if (&v16[-v6] >= 0)
    {
      v30 = &v16[-v6];
    }

    if (v8 >= v6 && v8 < v6 + (v30 & 0xFFFFFFFFFFFFFFF8) && v8 == v6)
    {
      return 1;
    }

    v27 = 8 * (v30 >> 3);
    v28 = v8;
LABEL_58:
    memmove(v28, v6, v27);
    return 1;
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v16 = (v6 + 8 * v12);
  if (v10 < 8 || v8 >= v7)
  {
LABEL_20:
    v8 = v9;
    goto LABEL_52;
  }

  while (1)
  {
    v35 = *v8;
    v34 = *v6;
    v17 = a5(&v35, &v34);
    if (v5)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v18 = v6;
      v19 = v9 == v6;
      v6 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v9 = *v18;
      goto LABEL_18;
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 8;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_18:
    v9 += 8;
    if (v6 >= v16 || v8 >= v7)
    {
      goto LABEL_20;
    }
  }

  v26 = &v16[-v6 + 7];
  if (&v16[-v6] >= 0)
  {
    v26 = &v16[-v6];
  }

  if (v9 < v6 || v9 >= v6 + (v26 & 0xFFFFFFFFFFFFFFF8) || v9 != v6)
  {
    v27 = 8 * (v26 >> 3);
    v28 = v9;
    goto LABEL_58;
  }

  return 1;
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = type metadata accessor for HealthChartsData.Aggregation();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v27;
      v83 = a4 + v27;
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = v58 + v80;
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = a4 + v80;
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = v65 + v64;
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v85, &v84, &v83);
      return;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || v29 + v30 <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = a4 + v30;
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = a4 + v30;
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = v36 + v74;
              v43 = *v70;
              (*v70)(v38, v36 + v74, v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HealthChartsData.Aggregation();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    type metadata accessor for _ContiguousArrayStorage<Int>();
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
    v10 = MEMORY[0x277D84F90];
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PointMark>, MEMORY[0x277CBB470], MEMORY[0x277CBB470]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<RectangleMark>, MEMORY[0x277CBB300], MEMORY[0x277CBB300]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(DateInterval, ClosedRange<Double>)>, type metadata accessor for (DateInterval, ClosedRange<Double>), type metadata accessor for (DateInterval, ClosedRange<Double>));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DistributionMarkViewModel<DateInterval, ClosedRange<Double>>>, type metadata accessor for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CategoryLevelMarkViewModel>, type metadata accessor for CategoryLevelMarkViewModel, type metadata accessor for CategoryLevelMarkViewModel);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DistributionMarkViewModel<Date, ClosedRange<Double>>>, type metadata accessor for DistributionMarkViewModel<Date, ClosedRange<Double>>, type metadata accessor for DistributionMarkViewModel<Date, ClosedRange<Double>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>>, type metadata accessor for DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<LineMark>, MEMORY[0x277CBB440], MEMORY[0x277CBB440]);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  type metadata accessor for Font.Design?(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t specialized CategoryLevels.axisMarkValues.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
  }

  v3 = 32;
  do
  {
    if (!v2)
    {
      v24 = &outlined read-only object #0 of CategoryLevels.axisMarkValues.getter;

      specialized Array.append<A>(contentsOf:)(v12);

LABEL_20:
      specialized MutableCollection<>.sort(by:)(implicit closure #1 in CategoryLevels.axisMarkValues.getter, 0);

      return v24;
    }

    v4 = *(a1 + v3);
    v3 += 8;
    --v2;
  }

  while (v4);
  type metadata accessor for _ContiguousArrayStorage<Int>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25145AB10;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = v7 - 1;
    if (v7 != 1)
    {
      if (v7 >= 5)
      {
        v10 = v9 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v13 = vdupq_n_s64(v8);
        v14 = (a1 + 56);
        v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
        v16 = v13;
        do
        {
          v13 = vbslq_s8(vcgtq_s64(v13, v14[-1]), v13, v14[-1]);
          v16 = vbslq_s8(vcgtq_s64(v16, *v14), v16, *v14);
          v14 += 2;
          v15 -= 4;
        }

        while (v15);
        v17 = vbslq_s8(vcgtq_s64(v13, v16), v13, v16);
        v18 = vextq_s8(v17, v17, 8uLL).u64[0];
        v8 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
        if (v9 != (v9 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v10 = 1;
LABEL_14:
        v19 = v7 - v10;
        v20 = (a1 + 8 * v10 + 32);
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v8 <= v22)
          {
            v8 = v21;
          }

          --v19;
        }

        while (v19);
      }
    }

    if (!__OFADD__(v8, 1))
    {
      *(inited + 32) = v8 + 1;
      v24 = a1;
      v23 = inited;

      specialized Array.append<A>(contentsOf:)(v23);

      goto LABEL_20;
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Int>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Int>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>);
    }
  }
}

void type metadata accessor for DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>)
  {
    type metadata accessor for AxisValueLabel<Text>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for DistributionMarkViewModel();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DistributionMarkViewModel<ClosedRange<Double>, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for AxisValueLabel<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for AxisValueLabel<Text>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

void type metadata accessor for DistributionMarkViewModel<Date, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for DistributionMarkViewModel<Date, ClosedRange<Double>>)
  {
    type metadata accessor for Date();
    type metadata accessor for AxisValueLabel<Text>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for DistributionMarkViewModel();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DistributionMarkViewModel<Date, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>)
  {
    type metadata accessor for DateInterval();
    type metadata accessor for AxisValueLabel<Text>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for DistributionMarkViewModel();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for Font.Design?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (DateInterval, ClosedRange<Double>)()
{
  if (!lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>))
  {
    type metadata accessor for DateInterval();
    type metadata accessor for AxisValueLabel<Text>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>));
    }
  }
}

uint64_t DotSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DotSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v7 = *(a1 + 16);
  v8 = *(*(a1 + 32) + 8);
  v5 = type metadata accessor for HealthChartsData.SeriesData();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t DotSeries.init(marks:seriesData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  UUID.init()();
  v10 = type metadata accessor for DotSeries();
  *(a5 + v10[15]) = a1;
  v11 = v10[13];
  v14 = *(a4 + 8);
  v12 = type metadata accessor for HealthChartsData.SeriesData();
  (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  return outlined init with take of DotSeriesAttributes?(a3, a5 + v10[14]);
}

uint64_t DotSeries.body.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = MEMORY[0x277CBB470];
  specialized _copySequenceToContiguousArray<A>(_:)(*(v1 + *(v5 + 60)), &lazy cache variable for type metadata for (offset: Int, element: PointMark), MEMORY[0x277CBB470], MEMORY[0x277CBB470], &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: PointMark)>);
  v13[1] = v7;
  swift_getKeyPath();
  (*(v3 + 16))(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 32);
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = v10;
  (*(v3 + 32))(v9 + v8, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in DotSeries.body.getter;
  *(v11 + 24) = v9;
  type metadata accessor for [(offset: Int, element: PointMark)](0, &lazy cache variable for type metadata for [(offset: Int, element: PointMark)], &lazy cache variable for type metadata for (offset: Int, element: PointMark), v6, MEMORY[0x277D83940]);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, MEMORY[0x277CBB470], MEMORY[0x277CBB378]);
  lazy protocol witness table accessor for type [(offset: Int, element: PointMark)] and conformance [A]();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark> and conformance <> BuilderConditional<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in DotSeries.body.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for DotSeries();
  specialized ChartContent.apply(_:)(a1 + *(v4 + 56), a2);
}

uint64_t specialized ChartContent.apply(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
  v33[0] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v33 - v16;
  v18 = type metadata accessor for DotSeriesAttributes(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DotSeriesAttributes?(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of DotSeriesAttributes?(v17, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes);
    v23 = type metadata accessor for PointMark();
    (*(*(v23 - 8) + 16))(a2, v2, v23);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, MEMORY[0x277CBB470], MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with take of DotSeriesAttributes(v17, v22, type metadata accessor for DotSeriesAttributes);
  v25 = *v22;
  if (!v22[16])
  {
    v27 = one-time initialization token for bundle;
    v28 = *(v22 + 1);

    if (v27 != -1)
    {
      swift_once();
    }

    v29 = static HealthChartsBundle.bundle;
    v30 = Color.init(_:bundle:)();
    goto LABEL_12;
  }

  if (v22[16] != 1)
  {
    if (*v22 == 0)
    {
      v30 = static Color.primary.getter();
    }

    else
    {
      v31 = [objc_opt_self() tintColor];
      v30 = Color.init(uiColor:)();
    }

LABEL_12:
    v25 = v30;
    goto LABEL_13;
  }

  v26 = *v22;

LABEL_13:
  v32 = v33[0];
  v33[1] = v25;
  type metadata accessor for PointMark();
  ChartContent.foregroundStyle<A>(_:)();

  specialized ChartContent.symbol(_:)(&v22[*(v18 + 20)], v13);
  (*(v6 + 8))(v9, v32);
  outlined init with take of BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>(v13, a2, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, MEMORY[0x277CBB470], MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  return outlined destroy of DotSeriesAttributes(v22);
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 == 255)
  {
    v18 = type metadata accessor for RectangleMark();
    (*(*(v18 - 8) + 16))(a2, v2, v18);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB300], MEMORY[0x277CBB370]);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v20 = *(a1 + 40);
    v27 = *(a1 + 48);
    v25 = v20;
    if (v7)
    {
      if (v7 == 1)
      {
        outlined init with copy of BarSeriesAttributes?(a1, v26);
        outlined copy of AttributeColor(v5, v6, 1);
      }

      else
      {
        if (v5 | v6)
        {
          v22 = [objc_opt_self() tintColor];
          v23 = Color.init(uiColor:)();
        }

        else
        {
          v23 = static Color.primary.getter();
        }

        v5 = v23;
      }
    }

    else
    {
      outlined init with copy of BarSeriesAttributes?(a1, v26);
      outlined init with copy of BarSeriesAttributes?(a1, v26);
      outlined copy of AttributeColor(v5, v6, 0);
      if (one-time initialization token for bundle != -1)
      {
        swift_once();
      }

      v21 = static HealthChartsBundle.bundle;
      v5 = Color.init(_:bundle:)();
      outlined destroy of BarSeriesAttributes?(a1);
    }

    v26[0] = v5;
    type metadata accessor for RectangleMark();
    ChartContent.foregroundStyle<A>(_:)();

    specialized ChartContent.endStyle(_:)(v25, v27, v17);
    outlined destroy of BarSeriesAttributes?(a1);
    (*(v10 + 8))(v13, v9);
    sub_2514059B4(v17, a2);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB300], MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }
}

{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB378]);
  v51 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v45 - v10;
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
  v13 = *(v12 - 8);
  v52 = v12;
  v53 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.lineStyle(_:)>>.0();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = *(v54 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.interpolationMethod(_:)>>.0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v26 = *(a1 + 32);
  if (v26 == 2)
  {
    type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>();
    (*(*(v27 - 8) + 16))(a2, v2, v27);
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>.Storage, type metadata accessor for <<opaque return type of ChartContent.interpolationMethod(_:)>>.0, type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>, MEMORY[0x277CBB370]);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v29 = *(a1 + 24);
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v49 = v23;
    v50 = a2;
    v48 = v25;
    v47 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v30;
    v45[3] = v31;
    if (v7)
    {
      if (v7 == 1)
      {
        outlined init with copy of LineSeriesAttributes?(a1, v60);
        outlined copy of AttributeColor(v6, v5, 1);
        specialized ChartContent.lineMarkStyle(_:foregroundColor:)(v26 & 1, v11);

        outlined copy of AttributeColor(v6, v5, 1);
      }

      else
      {
        if (v6 | v5)
        {
          v34 = [objc_opt_self() tintColor];
          Color.init(uiColor:)();
        }

        else
        {
          static Color.primary.getter();
        }

        specialized ChartContent.lineMarkStyle(_:foregroundColor:)(v26 & 1, v11);

        if (v6 | v5)
        {
          v35 = [objc_opt_self() 0x2796B8378];
          v36 = Color.init(uiColor:)();
        }

        else
        {
          v36 = static Color.primary.getter();
        }

        v6 = v36;
      }
    }

    else
    {
      outlined init with copy of LineSeriesAttributes?(a1, v60);
      outlined init with copy of LineSeriesAttributes?(a1, v60);
      outlined copy of AttributeColor(v6, v5, 0);
      if (one-time initialization token for bundle != -1)
      {
        swift_once();
      }

      v32 = static HealthChartsBundle.bundle;
      Color.init(_:bundle:)();
      outlined destroy of LineSeriesAttributes?(a1);
      specialized ChartContent.lineMarkStyle(_:foregroundColor:)(v26 & 1, v11);

      outlined init with copy of LineSeriesAttributes?(a1, v60);
      outlined copy of AttributeColor(v6, v5, 0);
      if (one-time initialization token for bundle != -1)
      {
        swift_once();
      }

      v33 = static HealthChartsBundle.bundle;
      v6 = Color.init(_:bundle:)();
      outlined destroy of LineSeriesAttributes?(a1);
    }

    v60[0] = v6;
    v37 = lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>();
    v38 = MEMORY[0x277CE0F78];
    v39 = MEMORY[0x277CE0F60];
    v40 = v51;
    ChartContent.foregroundStyle<A>(_:)();

    sub_251458620(v11);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v56 = v40;
    v57 = v38;
    v58 = v37;
    v59 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v52;
    ChartContent.lineStyle(_:)();
    outlined destroy of StrokeStyle(v60);
    (*(v53 + 8))(v16, v42);
    v56 = v42;
    v57 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v47;
    v44 = v55;
    ChartContent.interpolationMethod(_:)();
    outlined destroy of LineSeriesAttributes?(a1);
    (*(v54 + 8))(v20, v44);
    (*(v48 + 32))(v50, v43, v49);
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>.Storage, type metadata accessor for <<opaque return type of ChartContent.interpolationMethod(_:)>>.0, type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>, MEMORY[0x277CBB370]);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t DotSeries.init<>(seriesData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v33 = a2;
  v29 = a1;
  v34 = type metadata accessor for DotSeriesAttributes;
  v35 = a6;
  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v28 - v11;
  v12 = *(a5 + 8);
  v30 = a5;
  v41 = a3;
  v42 = MEMORY[0x277D839F8];
  v13 = MEMORY[0x277D10358];
  v43 = v12;
  v44 = MEMORY[0x277D10358];
  v14 = type metadata accessor for HealthChartsData.SeriesData();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v40 = HealthChartsData.SeriesData.points.getter();
  v41 = a3;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v42 = MEMORY[0x277D839F8];
  v43 = v12;
  v44 = v13;
  type metadata accessor for HealthChartsData.SeriesPoint();
  v19 = type metadata accessor for Array();
  v20 = type metadata accessor for PointMark();
  WitnessTable = swift_getWitnessTable();
  v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DotSeries.init<>(seriesData:attributes:), v36, v19, v20, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);

  v24 = v29;
  (*(v15 + 16))(v18, v29, v14);
  v25 = v32;
  v26 = v33;
  outlined init with copy of DotSeriesAttributes?(v33, v32);
  DotSeries.init(marks:seriesData:attributes:)(v23, v18, v25, v30, v35);
  outlined destroy of DotSeriesAttributes?(v26, &lazy cache variable for type metadata for DotSeriesAttributes?, v34);
  return (*(v15 + 8))(v24, v14);
}

uint64_t closure #1 in DotSeries.init<>(seriesData:attributes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20[3] = a4;
  v20[0] = a3;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v20[2] = v20 - v8;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[5] = a2;
  v14 = type metadata accessor for PlottableValue();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  type metadata accessor for MainActor();
  v20[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = 29560;
  v22 = 0xE200000000000000;
  v25 = String.init<A>(_:)();
  v26 = v16;
  v17 = *(v20[0] + 8);
  v21 = a1;
  v22 = MEMORY[0x277D839F8];
  v23 = v17;
  v24 = MEMORY[0x277D10358];
  type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  (*(v9 + 8))(v13, a1);

  v21 = 29561;
  v22 = 0xE200000000000000;
  v21 = String.init<A>(_:)();
  v22 = v18;
  HealthChartsData.SeriesPoint.y.getter();
  v27 = v25;
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A, B>(x:y:)();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0E013RectangleMarkVs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = type metadata accessor for RectangleMark();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v24;
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>();
  v13 = *(v12 - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v20 = v6 + 32;
  v19 = *(v13 + 72);
  while (1)
  {
    v22(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v11;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      v11 = v24;
    }

    *(v11 + 16) = v16 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9, v21);
    v14 += v19;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0dE025DistributionMarkViewModelVyAmNGs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v28 = a7;
  v29 = a1;
  v10 = v7;
  v30 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v17 = &v25 - v16;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
    return v19;
  }

  v31 = MEMORY[0x277D84F90];
  v26 = a5;
  (a5)(0, v18, 0, v15);
  v19 = v31;
  v20 = *(a6(0) - 8);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = *(v20 + 72);
  while (1)
  {
    v29(v21);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v31 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      v26(v22 > 1, v23 + 1, 1);
      v19 = v31;
    }

    *(v19 + 16) = v23 + 1;
    outlined init with take of DotSeriesAttributes(v17, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v28);
    v21 += v27;
    if (!--v18)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v25);
  v13 = &v22 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v28 = MEMORY[0x277D84F90];
  v22 = a5;
  (a5)(0, v14, 0, v11);
  v15 = v28;
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
  v17 = *(v16 - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = v9 + 32;
  v23 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v7)
    {
      break;
    }

    v7 = 0;
    v28 = v15;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      v22(v19 > 1, v20 + 1, 1);
      v15 = v28;
    }

    *(v15 + 16) = v20 + 1;
    (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v13, v25);
    v18 += v23;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DotSeries.init<>(seriesData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>, MEMORY[0x277D101A8]);
  v7 = v6;
  v8 = HealthChartsData.SeriesData.points.getter();
  v14[2] = a1;
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5Tm(partial apply for closure #1 in DotSeries.init<>(seriesData:attributes:), v14, v8, MEMORY[0x277CBB470], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  type metadata accessor for DotSeries<Date>();
  v11 = v10;
  v12 = *(v7 - 8);
  (*(v12 + 16))(a3 + *(v10 + 52), a1, v7);
  outlined init with copy of DotSeriesAttributes?(a2, a3 + *(v11 + 56));
  UUID.init()();
  outlined destroy of DotSeriesAttributes?(a2, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes);
  *(a3 + *(v11 + 60)) = v9;
  return (*(v12 + 8))(a1, v7);
}

uint64_t closure #1 in DotSeries.init<>(seriesData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v45 = a2;
  v54 = a1;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v43 - v5;
  v6 = MEMORY[0x277D83D88];
  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v43 - v9;
  v53 = type metadata accessor for Date();
  v51 = *(v53 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HealthChartsData.Aggregation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0], v6);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v43 - v19;
  v21 = type metadata accessor for Calendar.Component();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>(0, &lazy cache variable for type metadata for PlottableValue<Date>, MEMORY[0x277CC9578], MEMORY[0x277CBB1E8], MEMORY[0x277CBB340]);
  v52 = v26;
  v50 = *(v26 - 8);
  v27 = *(v50 + 64);
  MEMORY[0x28223BE20](v26);
  v47 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v48 = &v43 - v30;
  type metadata accessor for MainActor();
  v46 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>, MEMORY[0x277D101A8]);
  HealthChartsData.SeriesData.aggregation.getter();
  HealthChartsData.Aggregation.intervalCalendarComponent()();
  (*(v13 + 8))(v16, v12);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of DotSeriesAttributes?(v20, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
    v58 = 29560;
    v59 = 0xE200000000000000;
    v58 = String.init<A>(_:)();
    v59 = v31;
    type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
    v32 = v49;
    HealthChartsData.SeriesPoint.x.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v33 = v48;
    v34 = v53;
    static PlottableValue.value<A>(_:_:)();
    (*(v51 + 8))(v32, v34);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v58 = 29560;
    v59 = 0xE200000000000000;
    v58 = String.init<A>(_:)();
    v59 = v35;
    type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
    v36 = v49;
    HealthChartsData.SeriesPoint.x.getter();
    v37 = type metadata accessor for Calendar();
    v38 = v44;
    (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
    lazy protocol witness table accessor for type String and conformance String();
    v33 = v48;
    static PlottableValue.value<A>(_:_:unit:calendar:)();
    outlined destroy of DotSeriesAttributes?(v38, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8]);
    (*(v51 + 8))(v36, v53);

    (*(v22 + 8))(v25, v21);
  }

  v39 = v50;
  v40 = v52;
  (*(v50 + 16))(v47, v33, v52);
  v58 = 29561;
  v59 = 0xE200000000000000;
  v58 = String.init<A>(_:)();
  v59 = v41;
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.y.getter();
  v57 = v60;
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A, B>(x:y:)();
  (*(v39 + 8))(v33, v40);
}

uint64_t specialized ChartContent.symbol(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BasicChartSymbolShape();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0();
  v20 = v19;
  v36 = *(v19 - 8);
  v21 = *(v36 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DotSeriesAttributes.Symbol(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of CategoryLevelMarkViewModel(a1, v27, type metadata accessor for DotSeriesAttributes.Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v30 = *v27;
      v31 = v27[1];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v36 - 2) = v32;
      *(&v36 - 1) = v31;
      type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
      v33 = type metadata accessor for PointMark();

      v43 = v33;
      v44 = MEMORY[0x277CE0F78];
      v45 = MEMORY[0x277CBB468];
      v46 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      v34 = v37;
      ChartContent.symbol<A>(symbol:)();

      (*(v40 + 32))(v42, v34, v41);
      goto LABEL_7;
    }

    v29 = *v27;
    *(&v36 - 1) = MEMORY[0x28223BE20](EnumCaseMultiPayload);
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>, type metadata accessor for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v43 = type metadata accessor for PointMark();
    v44 = MEMORY[0x277CE0F78];
    v45 = MEMORY[0x277CBB468];
    v46 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    ChartContent.symbol<A>(symbol:)();
    (*(v36 + 32))(v18, v23, v20);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>.Storage, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB370]);
  }

  else
  {
    (*(v11 + 32))(v14, v27, v10);
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    v43 = type metadata accessor for PointMark();
    v44 = MEMORY[0x277CE0F78];
    v45 = MEMORY[0x277CBB468];
    v46 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8]);
    ChartContent.symbol<A>(_:)();
    (*(v11 + 8))(v14, v10);
    (*(v38 + 32))(v18, v9, v39);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>.Storage, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB370]);
  }

  swift_storeEnumTagMultiPayload();
  outlined init with take of BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>(v18, v42, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>);
LABEL_7:
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>.Storage, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, MEMORY[0x277CBB370]);
  return swift_storeEnumTagMultiPayload();
}

double closure #1 in ChartContent.symbol(_:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = static Alignment.center.getter();
  v5 = v4;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = 256;
  *(a1 + 48) = v2;
  *(a1 + 56) = 256;
  *(a1 + 64) = v3;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  result = *&v9;
  *(a1 + 112) = v9;
  return result;
}

uint64_t sub_2513ED2D8()
{
  v15 = *(v0 + 32);
  v16 = *(v0 + 16);
  v1 = type metadata accessor for DotSeries();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[13];
  v17 = *(v15 + 8);
  v6 = type metadata accessor for HealthChartsData.SeriesData();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v3 + v1[14];
  v8 = type metadata accessor for DotSeriesAttributes(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    outlined consume of AttributeColor(*v7, *(v7 + 8), *(v7 + 16));
    v11 = v7 + *(v8 + 20);
    type metadata accessor for DotSeriesAttributes.Symbol(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *(v11 + 8);
    }

    else if (!EnumCaseMultiPayload)
    {
      v13 = type metadata accessor for BasicChartSymbolShape();
      (*(*(v13 - 8) + 8))(v11, v13);
    }
  }

  v9 = *(v3 + v1[15]);

  return swift_deallocObject();
}

uint64_t outlined consume of AttributeColor(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in DotSeries.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v4 = *(type metadata accessor for DotSeries() - 8);
  v5 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return closure #1 in DotSeries.body.getter(v5, a1);
}

uint64_t sub_2513ED608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed PointMark) -> (@out BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>)(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  type metadata accessor for (offset: Int, element: PointMark)(0, &lazy cache variable for type metadata for (offset: Int, element: PointMark), MEMORY[0x277CBB470]);
  return v4(v5, &a1[*(v6 + 48)]);
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>, type metadata accessor for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0)
  {
    type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>();
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, type metadata accessor for _ShapeView<Circle, Color>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    lazy protocol witness table accessor for type ForEach<[(offset: Int, element: LineMark)], Int, LineMark> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0)
  {
    type metadata accessor for PointMark();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0)
  {
    type metadata accessor for RectangleMark();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0);
    }
  }
}

void type metadata accessor for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>()
{
  if (!lazy cache variable for type metadata for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>)
  {
    type metadata accessor for _ShapeView<Circle, Color>();
    lazy protocol witness table accessor for type Circle and conformance Circle();
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Circle, Color>);
    v0 = type metadata accessor for StrokeShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>);
    }
  }
}

void type metadata accessor for _ShapeView<Circle, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Circle, Color>)
  {
    lazy protocol witness table accessor for type Circle and conformance Circle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Circle, Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>, type metadata accessor for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>> and conformance StrokeShapeView<A, B, C>, type metadata accessor for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for BasicChartSymbolShape();
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(_:)>>.0)
  {
    type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>();
    type metadata accessor for BasicChartSymbolShape();
    lazy protocol witness table accessor for type ForEach<[(offset: Int, element: LineMark)], Int, LineMark> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.symbol<A>(_:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark>, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, MEMORY[0x277CBB470], MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>, PointMark> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>(255);
    lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>();
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>(255);
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>, type metadata accessor for StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BasicChartSymbolShape();
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.interpolationMethod(_:)>>.0, ForEach<[(offset: Int, element: LineMark)], Int, LineMark>>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, type metadata accessor for <<opaque return type of ChartContent.symbol<A>(_:)>>.0, MEMORY[0x277CBB378]);
    type metadata accessor for ForEach<[(offset: Int, element: LineMark)], Int, LineMark>();
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, type metadata accessor for _ShapeView<Circle, Color>, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    lazy protocol witness table accessor for type ForEach<[(offset: Int, element: LineMark)], Int, LineMark> and conformance <> ForEach<A, B, C>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BasicChartSymbolShape();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for Calendar.Component?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of DotSeriesAttributes?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DotSeries<Date>()
{
  if (!lazy cache variable for type metadata for DotSeries<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v0 = type metadata accessor for DotSeries();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DotSeries<Date>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for DotSeries<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for ChartContent.Body : ChartContent in DotSeries<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void type metadata completion function for DotSeries(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(*(a1 + 32) + 8);
    type metadata accessor for HealthChartsData.SeriesData();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Calendar.Component?(319, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for Calendar.Component?(319, &lazy cache variable for type metadata for [PointMark], MEMORY[0x277CBB470], MEMORY[0x277D83940]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2513EE61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  v16 = *(a3 + 16);
  v17 = *(*(a3 + 32) + 8);
  v10 = type metadata accessor for HealthChartsData.SeriesData();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = *(a3 + 52);
    return (*(v12 + 48))(a1 + v13, a2, v11);
  }

  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = *(a3 + 56);
    return (*(v12 + 48))(a1 + v13, a2, v11);
  }

  v15 = *(a1 + *(a3 + 60));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_2513EE7F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) != a3)
  {
    v16 = *(a4 + 16);
    v17 = *(*(a4 + 32) + 8);
    v11 = type metadata accessor for HealthChartsData.SeriesData();
    if (*(*(v11 - 8) + 84) == a3)
    {
      v12 = v11;
      v13 = *(v11 - 8);
      v14 = *(a4 + 52);
    }

    else
    {
      type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
      if (*(*(v15 - 8) + 84) != a3)
      {
        *(a1 + *(a4 + 60)) = (a2 - 1);
        return;
      }

      v12 = v15;
      v13 = *(v15 - 8);
      v14 = *(a4 + 56);
    }

    (*(v13 + 56))(a1 + v14, a2, a2, v12);
    return;
  }

  v10 = *(v9 + 56);

  v10(a1, a2, a2, v8);
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  specialized _copySequenceToContiguousArray<A>(_:)(a1, &lazy cache variable for type metadata for (offset: Int, element: RectangleMark), MEMORY[0x277CBB300], MEMORY[0x277CBB300], &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: RectangleMark)>);
}

{
  type metadata accessor for (offset: Int, element: PointMark)(0, &lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel), type metadata accessor for CategoryLevelMarkViewModel);
  v48 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v47 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v6;
    v12 = *(v6 + 80);
    v44 = v12;
    v45 = (v12 + 32) & ~v12;
    v13 = MEMORY[0x277D84F90] + v45;
    v14 = 0;
    v15 = 0;
    v16 = *(type metadata accessor for CategoryLevelMarkViewModel(0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v46 = *(v16 + 72);
    v18 = v10;
    v42 = v9;
    v43 = v11;
    while (1)
    {
      v21 = v47;
      v22 = *(v48 + 48);
      *v47 = v14;
      outlined init with copy of CategoryLevelMarkViewModel(v17, v21 + v22, type metadata accessor for CategoryLevelMarkViewModel);
      outlined init with take of (offset: Int, element: CategoryLevelMarkViewModel)(v21, v8, &lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel), type metadata accessor for CategoryLevelMarkViewModel);
      if (v15)
      {
        v10 = v18;
        v19 = v11;
        v20 = __OFSUB__(v15--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v18[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        type metadata accessor for [(offset: Int, element: PointMark)](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: CategoryLevelMarkViewModel)>, &lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel), type metadata accessor for CategoryLevelMarkViewModel, MEMORY[0x277D84560]);
        v27 = *(v11 + 72);
        v28 = v45;
        v10 = swift_allocObject();
        v29 = _swift_stdlib_malloc_size(v10);
        if (!v27)
        {
          goto LABEL_34;
        }

        v30 = v29 - v28;
        if (v29 - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v32 = v30 / v27;
        v10[2] = v26;
        v10[3] = 2 * (v30 / v27);
        v33 = v10 + v28;
        v34 = v18[3] >> 1;
        v35 = v34 * v27;
        if (v18[2])
        {
          if (v10 < v18 || v33 >= v18 + v45 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v13 = &v33[v35];
        v37 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v8 = v24;
        v9 = v42;
        v19 = v43;
        v20 = __OFSUB__(v37, 1);
        v15 = v37 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v14;
      outlined init with take of (offset: Int, element: CategoryLevelMarkViewModel)(v8, v13, &lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel), type metadata accessor for CategoryLevelMarkViewModel);
      v11 = v19;
      v13 += *(v19 + 72);
      v17 += v46;
      v18 = v10;
      if (v9 == v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
LABEL_29:
  v38 = v10[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v20 = __OFSUB__(v39, v15);
    v40 = v39 - v15;
    if (v20)
    {
      goto LABEL_36;
    }

    v10[2] = v40;
  }
}

{
  specialized _copySequenceToContiguousArray<A>(_:)(a1, &lazy cache variable for type metadata for (offset: Int, element: LineMark), MEMORY[0x277CBB440], MEMORY[0x277CBB440], &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: LineMark)>);
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void, __n128), unint64_t *a5)
{
  v52 = a5;
  v6 = a3;
  v7 = a2;
  type metadata accessor for (offset: Int, element: PointMark)(0, a2, a3);
  v61 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v60 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = MEMORY[0x277D84F90];
  v59 = *(a1 + 16);
  if (v59)
  {
    v18 = v13;
    v51 = *(v13 + 80);
    v53 = (v51 + 32) & ~v51;
    v19 = MEMORY[0x277D84F90] + v53;
    v20 = 0;
    v21 = 0;
    v58 = a4(0, v14);
    v22 = *(v58 - 8);
    v23 = *(v22 + 16);
    v56 = v22 + 16;
    v57 = v23;
    v24 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v54 = *(v22 + 72);
    v55 = v16;
    v25 = v17;
    v49 = v7;
    v50 = v6;
    while (1)
    {
      v28 = v60;
      v29 = *(v61 + 48);
      *v60 = v20;
      v57(v28 + v29, v24, v58);
      outlined init with take of (offset: Int, element: CategoryLevelMarkViewModel)(v28, v16, v7, v6);
      if (v21)
      {
        v17 = v25;
        v26 = v18;
        v27 = __OFSUB__(v21--, 1);
        if (v27)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v30 = v25[3];
        if (((v30 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        if (v31 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        type metadata accessor for [(offset: Int, element: PointMark)](0, v52, v7, v6, MEMORY[0x277D84560]);
        v33 = v18;
        v34 = *(v18 + 72);
        v35 = v53;
        v17 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v17);
        if (!v34)
        {
          goto LABEL_34;
        }

        v37 = v36 - v35;
        if (v36 - v35 == 0x8000000000000000 && v34 == -1)
        {
          goto LABEL_35;
        }

        v39 = v37 / v34;
        v17[2] = v32;
        v17[3] = 2 * (v37 / v34);
        v40 = v17 + v35;
        v41 = v25[3] >> 1;
        v42 = v41 * v34;
        if (v25[2])
        {
          if (v17 < v25 || v40 >= v25 + v53 + v42)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25[2] = 0;
        }

        v19 = &v40[v42];
        v44 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v41;

        v7 = v49;
        v6 = v50;
        v26 = v33;
        v27 = __OFSUB__(v44, 1);
        v21 = v44 - 1;
        if (v27)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v20;
      v16 = v55;
      outlined init with take of (offset: Int, element: CategoryLevelMarkViewModel)(v55, v19, v7, v6);
      v18 = v26;
      v19 += *(v26 + 72);
      v24 += v54;
      v25 = v17;
      if (v59 == v20)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = 0;
LABEL_29:
  v45 = v17[3];
  if (v45 >= 2)
  {
    v46 = v45 >> 1;
    v27 = __OFSUB__(v46, v21);
    v47 = v46 - v21;
    if (v27)
    {
      goto LABEL_36;
    }

    v17[2] = v47;
  }
}

uint64_t outlined init with take of (offset: Int, element: CategoryLevelMarkViewModel)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (offset: Int, element: PointMark)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata accessor for HealthChartsData.SeriesData<Date, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277D10358];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>)
  {
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for HealthChartsData.SeriesPoint();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>);
    }
  }
}

uint64_t outlined init with take of DotSeriesAttributes(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>)
  {
    type metadata accessor for Date();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for HealthChartsData.SeriesPoint();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>)
  {
    type metadata accessor for DateInterval();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for HealthChartsData.SeriesPoint();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for (offset: Int, element: PointMark)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _sSNySdGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D839F8]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<StrokeShapeView<Circle, ForegroundStyle, _ShapeView<Circle, Color>>, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined destroy of DotSeriesAttributes?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Calendar.Component?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of DotSeriesAttributes?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Calendar.Component?(0, &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DotSeriesAttributes(uint64_t a1)
{
  v2 = type metadata accessor for DotSeriesAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of CategoryLevelMarkViewModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@owned AnyView)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.symbol<A>(symbol:)>>.0, <<opaque return type of ChartContent.symbol<A>(_:)>>.0>, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double partial apply for closure #1 in ChartContent.symbol(_:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in ChartContent.symbol(_:)(a1);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = a5;
  v50 = a3;
  v51 = a4;
  v48 = a1;
  v49 = a2;
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v40 = v5;
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateInterval();
  v39 = v7;
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v46 = &v39 - v11;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v13 = MEMORY[0x2530763A0](*MEMORY[0x277CCC980]);
  v14 = *MEMORY[0x277CCC978];
  v44 = v45;
  v43 = v13;
  v45 = MEMORY[0x2530763A0](v14);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = v52;
  (*(v52 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v7);
  v17 = v47;
  (*(v47 + 16))(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v5);
  v18 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v19 = v17;
  v20 = (v8 + *(v17 + 80) + v18) & ~*(v17 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v43;
  v26 = v44;
  *(v24 + 4) = v44;
  *(v24 + 5) = v25;
  *(v24 + 6) = 14;
  (*(v52 + 32))(&v24[v18], v41, v39);
  (*(v19 + 32))(&v24[v20], v42, v40);
  v27 = &v24[v21];
  v28 = v45;
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = 14;
  v29 = &v24[v22];
  v30 = v51;
  *v29 = v50;
  *(v29 + 1) = v30;
  v31 = v48;
  *&v24[v49] = v25;
  *&v24[v31] = v28;
  *&v24[v23] = 14;
  *&v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8] = v26;
  v32 = v28;
  v33 = v26;
  v34 = v32;
  v35 = v33;
  v36 = v25;
  v37 = v35;
  v38 = v34;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v24);
}

uint64_t closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[238] = v37;
  v8[237] = v36;
  v8[231] = v35;
  v8[225] = v34;
  v8[219] = v33;
  v8[213] = v32;
  v8[207] = v31;
  v8[201] = v30;
  v8[195] = a8;
  v8[189] = a7;
  v8[183] = a6;
  v8[177] = a5;
  v8[171] = a4;
  v9 = type metadata accessor for HealthChartsData.Series();
  v8[239] = v9;
  v10 = *(v9 - 8);
  v8[240] = v10;
  v11 = *(v10 + 64) + 15;
  v8[241] = swift_task_alloc();
  v8[242] = swift_task_alloc();
  v8[243] = swift_task_alloc();
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.DescriptionDirection?, MEMORY[0x277D102A0]);
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[244] = swift_task_alloc();
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240]);
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[245] = swift_task_alloc();
  type metadata accessor for HealthChartsDataShape<DiscreteDateMinMaxData>();
  v8[246] = v16;
  v17 = *(v16 - 8);
  v8[247] = v17;
  v18 = *(v17 + 64) + 15;
  v8[248] = swift_task_alloc();
  v19 = type metadata accessor for HealthChartsData();
  v8[249] = v19;
  v20 = *(v19 - 8);
  v8[250] = v20;
  v21 = *(v20 + 64) + 15;
  v8[251] = swift_task_alloc();
  v8[252] = swift_task_alloc();
  v8[253] = swift_task_alloc();
  type metadata accessor for Result<HealthChartsData, Error>();
  v8[254] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v8[255] = swift_task_alloc();
  v24 = type metadata accessor for HealthChartsData.Aggregation();
  v8[256] = v24;
  v25 = *(v24 - 8);
  v8[257] = v25;
  v8[258] = *(v25 + 64);
  v8[259] = swift_task_alloc();
  v8[260] = swift_task_alloc();
  v26 = type metadata accessor for DateInterval();
  v8[261] = v26;
  v27 = *(v26 - 8);
  v8[262] = v27;
  v8[263] = *(v27 + 64);
  v8[264] = swift_task_alloc();
  v8[265] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

uint64_t closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)()
{
  v24 = v0[265];
  v32 = v0[264];
  v27 = v0[263];
  v1 = v0[262];
  v2 = v0[261];
  v3 = v0[260];
  v20 = v2;
  v21 = v3;
  v33 = v0[259];
  v28 = v0[258];
  v4 = v0[257];
  v5 = v0[256];
  v19 = v5;
  v35 = v0[207];
  v36 = v0[213];
  v34 = v0[201];
  v6 = v0[195];
  v31 = v0[189];
  v25 = v0[183];
  v7 = v0[177];
  v8 = v0[171];
  v30 = *(v1 + 16);
  v30();
  v29 = *(v4 + 16);
  v29(v3, v6, v5);
  v9 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v22 = (v27 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  *(v10 + 4) = v25;
  v26 = *(v1 + 32);
  v26(&v10[v9], v24, v20);
  v23 = *(v4 + 32);
  v23(&v10[v22], v21, v19);
  v11 = swift_allocObject();
  v0[266] = v11;
  *(v11 + 16) = &async function pointer to partial apply for implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  *(v11 + 24) = v10;
  v12 = v8;
  v13 = v7;
  type metadata accessor for (HKStatisticsCollectionQuery, HKStatisticsCollection?)();
  swift_asyncLet_begin();
  (v30)(v32, v31, v20);
  v29(v33, v6, v19);
  v14 = swift_allocObject();
  *(v14 + 2) = v34;
  *(v14 + 3) = v35;
  *(v14 + 4) = v36;
  v26(&v14[v9], v32, v20);
  v23(&v14[v22], v33, v19);
  v15 = swift_allocObject();
  v0[267] = v15;
  *(v15 + 16) = &async function pointer to partial apply for implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  *(v15 + 24) = v14;
  v16 = v34;
  v17 = v35;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 167, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 162);
}

{
  *(v1 + 2144) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1352, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v1 + 1376);
  }

  else
  {
    return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
  }
}

{
  v1 = v0[168];
  v0[269] = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x282200930](v0 + 82, v0 + 169, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 196);
  }

  else
  {
    v3 = v0[255];
    v4 = v0[254];
    v5 = v0[231];
    v15 = v0[219];
    v16 = v0[225];
    type metadata accessor for HealthChartsErrors();
    lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors);
    v6 = swift_allocError();
    v8 = v7;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *v8 = v11;
    v8[1] = v13;
    swift_storeEnumTagMultiPayload();
    *v3 = v6;
    swift_storeEnumTagMultiPayload();
    v15(v3);
    outlined destroy of Result<HealthChartsData, Error>(v3, type metadata accessor for Result<HealthChartsData, Error>);

    return MEMORY[0x282200920](v0 + 82, v0 + 169, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 184);
  }
}

{
  *(v1 + 2160) = v0;
  if (v0)
  {
    v2 = closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  }

  else
  {
    v2 = closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1336, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 1520);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  v1 = v0[170];
  v2 = v0[269];
  v45 = v0[254];
  v46 = v0[255];
  if (v1)
  {
    v3 = v0[253];
    v4 = v0[252];
    v39 = v0[251];
    v40 = v0[250];
    v43 = v0[249];
    v5 = v0[248];
    v6 = v0[247];
    v7 = v0[246];
    v31 = v0[244];
    v32 = v0[245];
    v33 = v0[242];
    v34 = v0[241];
    v35 = v0[243];
    v36 = v0[240];
    v37 = v0[239];
    v8 = v0[238];
    v41 = v0[219];
    v42 = v0[225];
    v9 = v0[195];
    v38 = v1;
    static HealthChartsDataShape.dateMinMax<>()();
    HealthChartsDataShape.buildData(from:aggregation:with:preferredUnit:)();
    v10 = *(v6 + 8);
    v10(v5, v7);
    static HealthChartsDataShape.dateMinMax<>()();
    HealthChartsDataShape.buildData(from:aggregation:with:preferredUnit:)();
    v10(v5, v7);
    specialized HealthChartsBloodPressureDataProvider.descriptionData(systolicData:diastolicData:)(v3, v4);
    v11 = type metadata accessor for HealthChartsData.DescriptionDirection();
    (*(*(v11 - 8) + 56))(v31, 1, 1, v11);
    HealthChartsData.Description.init(direction:substitutionValues:)();
    v12 = type metadata accessor for HealthChartsData.Description();
    (*(*(v12 - 8) + 56))(v32, 0, 1, v12);
    HealthChartsData.series.getter();
    HealthChartsData.series.getter();
    HealthChartsData.Series.overlay(_:)();
    v13 = *(v36 + 8);
    v13(v34, v37);
    v13(v33, v37);
    HealthChartsData.init(description:series:)();
    (*(v40 + 16))(v46, v39, v43);
    swift_storeEnumTagMultiPayload();
    v41(v46);

    outlined destroy of Result<HealthChartsData, Error>(v46, type metadata accessor for Result<HealthChartsData, Error>);
    v14 = *(v40 + 8);
    v14(v39, v43);
    v14(v4, v43);
    v14(v3, v43);
    v15 = closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
    v16 = v0 + 82;
    v17 = v0 + 169;
    v18 = v0 + 226;
  }

  else
  {
    v19 = v0[237];
    v20 = v0[225];
    v44 = v0[219];
    type metadata accessor for HealthChartsErrors();
    lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors(&lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors, type metadata accessor for HealthChartsErrors);
    v21 = swift_allocError();
    v23 = v22;
    v24 = v19;
    v25 = [v24 description];
    v26 = v2;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *v23 = v27;
    v23[1] = v29;
    swift_storeEnumTagMultiPayload();
    *v46 = v21;
    swift_storeEnumTagMultiPayload();
    v44(v46);

    outlined destroy of Result<HealthChartsData, Error>(v46, type metadata accessor for Result<HealthChartsData, Error>);
    v15 = closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
    v16 = v0 + 82;
    v17 = v0 + 169;
    v18 = v0 + 214;
  }

  return MEMORY[0x282200920](v16, v17, v15, v18);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1336, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 1856);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  v1 = v0[267];
  v2 = v0[266];

  v3 = v0[265];
  v4 = v0[264];
  v5 = v0[260];
  v6 = v0[259];
  v7 = v0[255];
  v8 = v0[253];
  v9 = v0[252];
  v10 = v0[251];
  v11 = v0[248];
  v12 = v0[245];
  v15 = v0[244];
  v16 = v0[243];
  v17 = v0[242];
  v18 = v0[241];

  v13 = v0[1];

  return v13();
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1336, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 1760);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1336, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 1424);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[255];
  v5 = v0[254];
  v6 = v0[225];
  v7 = v0[219];
  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  v7(v4);

  outlined destroy of Result<HealthChartsData, Error>(v4, type metadata accessor for Result<HealthChartsData, Error>);

  v9 = v0[265];
  v10 = v0[264];
  v11 = v0[260];
  v12 = v0[259];
  v13 = v0[255];
  v14 = v0[253];
  v15 = v0[252];
  v16 = v0[251];
  v17 = v0[248];
  v18 = v0[245];
  v21 = v0[244];
  v22 = v0[243];
  v23 = v0[242];
  v24 = v0[241];

  v19 = v0[1];

  return v19();
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 1352, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 1616);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 1336, closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), v0 + 1664);
}

{
  return MEMORY[0x2822009F8](closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

{
  v1 = v0[270];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[255];
  v5 = v0[254];
  v6 = v0[225];
  v7 = v0[219];
  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  v7(v4);

  outlined destroy of Result<HealthChartsData, Error>(v4, type metadata accessor for Result<HealthChartsData, Error>);

  v9 = v0[265];
  v10 = v0[264];
  v11 = v0[260];
  v12 = v0[259];
  v13 = v0[255];
  v14 = v0[253];
  v15 = v0[252];
  v16 = v0[251];
  v17 = v0[248];
  v18 = v0[245];
  v21 = v0[244];
  v22 = v0[243];
  v23 = v0[242];
  v24 = v0[241];

  v19 = v0[1];

  return v19();
}

uint64_t implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

uint64_t implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for (HKStatisticsCollectionQuery, HKStatisticsCollection?)();
  *v5 = v0;
  v5[1] = implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000002514640C0, closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:)partial apply, v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TRTQ0_;

  return v6();
}

uint64_t _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TRTQ0_(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:), 0, 0);
}

uint64_t implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for (HKStatisticsCollectionQuery, HKStatisticsCollection?)();
  *v5 = v0;
  v5[1] = implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000002514640C0, partial apply for closure #1 in HealthChartsStatisticsQueryExecutor.query(interval:aggregation:), v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_2513F1D8C()
{
  v14 = type metadata accessor for DateInterval();
  v1 = *(v14 - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for HealthChartsData.Aggregation();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v2, v14);
  (*(v5 + 8))(v0 + v6, v4);

  v12 = *(v0 + v8 + 8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DateInterval() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v30 = v5;
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = v1[3];
  v29 = v1[2];
  v26 = v1[5];
  v27 = v1[4];
  v25 = v1[6];
  v14 = v1 + v9;
  v24 = *v14;
  v15 = *(v14 + 2);
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = *(v1 + v11);
  v19 = *(v1 + v12);
  v20 = *(v1 + v13);
  v21 = *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = swift_task_alloc();
  *(v3 + 16) = v22;
  *v22 = v3;
  v22[1] = partial apply for closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:);

  return closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(a1, v29, v28, v27, v26, v25, v1 + v30, v1 + v8);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x277D85720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

void _sScPSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for HealthChartsDataShape<DiscreteDateMinMaxData>()
{
  if (!lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>)
  {
    type metadata accessor for DiscreteDateMinMaxData();
    v0 = type metadata accessor for HealthChartsDataShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>);
    }
  }
}

uint64_t partial apply for implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)()
{
  v2 = *(type metadata accessor for DateInterval() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);

  return implicit closure #1 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2513F26AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TRTA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TR(a1, v5);
}

void type metadata accessor for (HKStatisticsCollectionQuery, HKStatisticsCollection?)()
{
  if (!lazy cache variable for type metadata for (HKStatisticsCollectionQuery, HKStatisticsCollection?))
  {
    type metadata accessor for HKQuantityType(255, &lazy cache variable for type metadata for HKStatisticsCollectionQuery, 0x277CCDA60);
    type metadata accessor for HKStatisticsCollection?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HKStatisticsCollectionQuery, HKStatisticsCollection?));
    }
  }
}

void type metadata accessor for HKStatisticsCollection?()
{
  if (!lazy cache variable for type metadata for HKStatisticsCollection?)
  {
    type metadata accessor for HKQuantityType(255, &lazy cache variable for type metadata for HKStatisticsCollection, 0x277CCDA58);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HKStatisticsCollection?);
    }
  }
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)()
{
  v2 = *(type metadata accessor for DateInterval() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:);

  return implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t partial apply for implicit closure #2 in closure #1 in HealthChartsBloodPressureDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TRTA_27(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in HealthChartsCategoryLevelDataProvider.query(interval:aggregation:results:);

  return _sSo27HKStatisticsCollectionQueryCSo0aB0CSgs5Error_pIegHoozo_AB_AEtsAF_pIegHTrzo_TR(a1, v5);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HealthChartsData.DescriptionKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>();
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v46 = v6;
    v47 = v10;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v42 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v46);
      }

      else
      {
        (*v41)(v47, v29, v46);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors(&lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D10288]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v23 = v47;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v23 = v47;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v45 * v22, v23, v46);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for HealthChartsData.DescriptionKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = v14;
    v20 = v13[3];
    if (v20 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v21 = *v4;
      if (v19)
      {
LABEL_8:
        *(v21[7] + 8 * v15) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v20 >= result && (a2 & 1) == 0)
    {
      result = specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a2 & 1);
    v22 = *v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = result;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a1, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v21, a3);
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for HealthChartsData.DescriptionKey();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v28 = type metadata accessor for HealthChartsData.DescriptionKey();
  v30 = *(v28 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>();
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26[0] = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v31 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v30;
        v21 = *(v30 + 72) * v19;
        v22 = v27;
        v23 = v28;
        (*(v30 + 16))(v27, *(v4 + 48) + v21, v28);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v29;
        result = (*(v20 + 32))(*(v29 + 48) + v21, v22, v23);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v31;
      }

      while (v31);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26[0];
        v6 = v29;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v31 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}