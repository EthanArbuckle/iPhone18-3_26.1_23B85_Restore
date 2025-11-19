uint64_t outlined init with copy of AnySeriesData(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for (lower: Date, upper: Date)()
{
  if (!lazy cache variable for type metadata for (lower: Date, upper: Date))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: Date, upper: Date));
    }
  }
}

void type metadata accessor for ClosedRange<Date>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

uint64_t outlined init with take of ClosedRange<Date>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnySeriesData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AnySeriesData?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for AnySeriesData?(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for DateInterval(void *a1)
{
  v2 = MEMORY[0x277CC88A8];
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, v2);
  a1[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, v2);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, v2);
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> Range<A>(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance Range<A>, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D83D00]);
  a1[2] = lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
  a1[3] = lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
  result = lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
  a1[4] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for <> ClosedRange<A>(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83638]);
  a1[2] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  a1[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  result = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Date(void *a1)
{
  v2 = MEMORY[0x277CC9578];
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, v2);
  a1[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, v2);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, v2);
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Date(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Double, Double>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(Date, ClosedRange<Double>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    _s10Foundation4DateV_SNySdGtMaTm_0(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s10Foundation4DateV_SNySdGtMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

void type metadata accessor for ClosedRange<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<Double>>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v11[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v7);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<Date, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = &protocol witness table for Double;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    v7 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v11[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v7);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = &protocol witness table for Double;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for HealthChartsData.SeriesData<Double, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D839F8];
    v8[1] = MEMORY[0x277D839F8];
    v8[2] = &protocol witness table for Double;
    v8[3] = &protocol witness table for Double;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>)
  {
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(255, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v7;
    v10[1] = v7;
    v11 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v6);
    v12 = v11;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for AnySeriesData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HealthChartsUnit.subscript.getter()
{
  v1 = *v0;
  swift_getAtKeyPath();

  return v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsUnit.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsUnit.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HealthChartsUnit.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance HealthChartsUnit.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsUnit.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsUnit.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsUnit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  type metadata accessor for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v28 = v11;
    v12 = v31;
    v13 = v6;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v29;
    v15 = v30;
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
    v16 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v26 = v14;
    v27 = v15;
    if (v16)
    {
      v17 = v16;
      (*(v13 + 8))(v9, v5);
      outlined consume of Data._Representation(v26, v27);
      *v12 = v17;
    }

    else
    {
      v18 = v13;
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      type metadata accessor for _ContiguousArrayStorage<CodingKey>();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_25149B950;
      v23 = v28;
      *(v22 + 56) = &type metadata for HealthChartsUnit.CodingKeys;
      *(v22 + 64) = v23;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84168], v19);
      swift_willThrow();
      outlined consume of Data._Representation(v26, v27);
      (*(v18 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CodingKey>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>)
  {
    type metadata accessor for CodingKey();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>);
    }
  }
}

unint64_t type metadata accessor for CodingKey()
{
  result = lazy cache variable for type metadata for CodingKey;
  if (!lazy cache variable for type metadata for CodingKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CodingKey);
  }

  return result;
}

uint64_t HealthChartsUnit.encode(to:)(void *a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsUnit.CodingKeys>, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v22[-1] - v8;
  v10 = *v1;
  v11 = objc_opt_self();
  v22[0] = 0;
  v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v22];
  v13 = v22[0];
  if (v12)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v2;
    v16 = v15;

    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v22[0] = v14;
    v22[1] = v16;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    result = outlined consume of Data._Representation(v14, v16);
  }

  else
  {
    v19 = v13;
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void type metadata accessor for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();
    v7 = a3(a1, &type metadata for HealthChartsUnit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

Swift::Double __swiftcall HealthChartsUnit.convert(_:to:)(Swift::Double _, HealthChartsCore::HealthChartsUnit to)
{
  isa = to._dimension.super.super.isa;
  type metadata accessor for Measurement<NSDimension>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *isa;
  v14 = *v2;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
  v15 = v14;
  Measurement.init(value:unit:)();
  Measurement<>.converted(to:)();
  v16 = *(v6 + 8);
  v16(v10, v5);
  Measurement.value.getter();
  v18 = v17;
  v16(v12, v5);
  return v18;
}

void type metadata accessor for Measurement<NSDimension>()
{
  if (!lazy cache variable for type metadata for Measurement<NSDimension>)
  {
    type metadata accessor for NSKeyedUnarchiver(255, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Measurement<NSDimension>);
    }
  }
}

uint64_t Measurement.init<>(value:unit:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);

  return Measurement.init(value:unit:)();
}

uint64_t Measurement.converted<>(to:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Measurement<NSDimension>();

  return Measurement<>.converted(to:)();
}

uint64_t HealthChartsUnit.convert(_:to:)(uint64_t *a1)
{
  type metadata accessor for Measurement<NSDimension>();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = *v1;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
  v14 = v13;
  Measurement.init(value:unit:)();
  Measurement<>.converted(to:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  Measurement.value.getter();
  v17 = v16;
  v15(v11, v4);
  v18 = v14;
  Measurement.init(value:unit:)();
  Measurement<>.converted(to:)();
  v15(v9, v4);
  Measurement.value.getter();
  v20 = v19;
  result = (v15)(v11, v4);
  if (v17 > v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t static HealthChartsUnit.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int HealthChartsUnit.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsUnit(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void __swiftcall HKUnit.healthChartsUnit()(HealthChartsCore::HealthChartsUnit_optional *__return_ptr retstr)
{
  v3 = [v1 _foundationUnit];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      v3 = 0;
    }
  }

  retstr->value._dimension.super.super.isa = v3;
}

unint64_t lazy protocol witness table accessor for type HealthChartsUnit and conformance HealthChartsUnit()
{
  result = lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsUnit(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for HealthChartsUnit(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsUnit.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HealthChartsUnit.CodingKeys(_WORD *result, int a2, int a3)
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

Swift::Int RoundedDateDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RoundedDateDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RoundedDateDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.Aggregation.intervalDateComponents()@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D83D88];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  if (*v1 > 2u)
  {
    *v1;
LABEL_7:
    v15 = type metadata accessor for Calendar();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v17 = type metadata accessor for DateComponents();
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }

  if (*v1)
  {
    goto LABEL_7;
  }

  v12 = type metadata accessor for DateComponents();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t HealthChartsData.Aggregation.intervalCalendarComponent()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (!*v1)
    {
      v5 = type metadata accessor for Calendar.Component();
      v6 = *(*(v5 - 8) + 56);
      v7 = v5;
      v8 = a1;
      v9 = 1;
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = MEMORY[0x277CC99A0];
    }

    else
    {
      v4 = MEMORY[0x277CC9980];
    }
  }

  else if (*v1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = MEMORY[0x277CC9998];
    }

    else
    {
      v4 = MEMORY[0x277CC9988];
    }
  }

  else if (v3 == 3)
  {
    v4 = MEMORY[0x277CC9968];
  }

  else
  {
    v4 = MEMORY[0x277CC9940];
  }

  v10 = *v4;
  v11 = type metadata accessor for Calendar.Component();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a1, v10, v11);
  v6 = *(v13 + 56);
  v8 = a1;
  v9 = 0;
  v7 = v11;
LABEL_15:

  return v6(v8, v9, 1, v7);
}

uint64_t HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a2;
  v131 = a1;
  v126 = a4;
  v5 = MEMORY[0x277D83D88];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = &v112 - v8;
  v122 = type metadata accessor for Calendar.Component();
  v9 = *(v122 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v122);
  v116 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], v5);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v118 = &v112 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v112 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v115 = &v112 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v117 = &v112 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v112 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  v29 = type metadata accessor for DateComponents();
  v124 = *(v29 - 8);
  v125 = v29;
  v30 = *(v124 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v113 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v112 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v112 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v112 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v112 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v112 - v45;
  v47 = type metadata accessor for Date();
  v127 = *(v47 - 8);
  v128 = v47;
  v48 = *(v127 + 64);
  v49 = MEMORY[0x28223BE20](v47);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v112 - v51;
  MEMORY[0x28223BE20](v50);
  v123 = &v112 - v53;
  v54 = *a3;
  v55 = *v129;
  v112 = v56;
  v121 = v54;
  if (v55 <= 2)
  {
    v118 = v46;
    v119 = v26;
    v117 = v28;
    if (!v55)
    {
      v67 = v127;
      v66 = v128;
      v68 = v123;
      (*(v127 + 16))(v123, v130, v128);
      v64 = v125;
      v79 = v126;
      v65 = v124;
      if (!v121)
      {
        goto LABEL_33;
      }

LABEL_31:
      v132 = v55;
      v108 = v120;
      HealthChartsData.Aggregation.intervalDateComponents()(v120);
      if ((*(v65 + 48))(v108, 1, v64) == 1)
      {
        outlined destroy of Date?(v108, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
        goto LABEL_33;
      }

      v109 = v113;
      (*(v65 + 32))(v113, v108, v64);
      v107 = v114;
      Calendar.date(byAdding:to:wrappingComponents:)();
      (*(v65 + 8))(v109, v64);
      (*(v67 + 8))(v68, v66);
      if ((*(v67 + 48))(v107, 1, v66) != 1)
      {
        v110 = *(v67 + 32);
        v111 = v112;
        v110(v112, v107, v66);
        v110(v79, v111, v66);
        goto LABEL_34;
      }

LABEL_37:
      outlined destroy of Date?(v107, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      v78 = 1;
      return (*(v67 + 56))(v79, v78, 1, v66);
    }

    LODWORD(v129) = v55;
    v64 = v125;
    v68 = v123;
    if (v55 == 1)
    {
      type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v69 = *(v9 + 72);
      v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_25149BDE0;
      v72 = v71 + v70;
      v73 = *(v9 + 104);
      v74 = v122;
      v73(v72, *MEMORY[0x277CC9978], v122);
      v73(v72 + v69, *MEMORY[0x277CC9988], v74);
      v73(v72 + 2 * v69, *MEMORY[0x277CC9998], v74);
      v73(v72 + 3 * v69, *MEMORY[0x277CC9968], v74);
      v73(v72 + 4 * v69, *MEMORY[0x277CC9980], v74);
      v73(v72 + 5 * v69, *MEMORY[0x277CC99A0], v74);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v71);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v75 = v118;
      Calendar.dateComponents(_:from:)();

      v76 = DateComponents.minute.getter();
      if ((v77 & 1) == 0)
      {
        v79 = v126;
        v67 = v127;
        v66 = v128;
        v65 = v124;
        if (v76)
        {
          DateComponents.minute.setter();
        }

        v107 = v117;
        Calendar.date(from:)();
        (*(v65 + 8))(v75, v64);
        if ((*(v67 + 48))(v107, 1, v66) == 1)
        {
          goto LABEL_37;
        }

        (*(v67 + 32))(v68, v107, v66);
        goto LABEL_30;
      }

      (*(v124 + 8))(v75, v64);
      v78 = 1;
      v79 = v126;
      v67 = v127;
      v66 = v128;
      return (*(v67 + 56))(v79, v78, 1, v66);
    }

    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v88 = *(v9 + 72);
    v89 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_25149BDD0;
    v91 = v90 + v89;
    v92 = *(v9 + 104);
    v93 = v122;
    v92(v91, *MEMORY[0x277CC9978], v122);
    v92(v91 + v88, *MEMORY[0x277CC9988], v93);
    v92(v91 + 2 * v88, *MEMORY[0x277CC9998], v93);
    v92(v91 + 3 * v88, *MEMORY[0x277CC9968], v93);
    v92(v91 + 4 * v88, *MEMORY[0x277CC9980], v93);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v90);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v63 = v119;
    Calendar.date(from:)();
    v65 = v124;
    (*(v124 + 8))(v44, v64);
    v67 = v127;
    v66 = v128;
    if ((*(v127 + 48))(v63, 1, v128) != 1)
    {
      v68 = v123;
      (*(v67 + 32))(v123, v63, v66);
      v79 = v126;
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  LODWORD(v129) = v55;
  if (v55 > 4)
  {
    v68 = v123;
    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    if (v55 == 5)
    {
      v80 = *(v9 + 72);
      v81 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_25149BDB0;
      v83 = v82 + v81;
      v84 = *(v9 + 104);
      v85 = v122;
      v84(v83, *MEMORY[0x277CC9978], v122);
      v84(v83 + v80, *MEMORY[0x277CC9988], v85);
      v84(v83 + 2 * v80, *MEMORY[0x277CC9998], v85);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v82);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      v63 = v119;
      Calendar.date(from:)();
      v65 = v124;
      v86 = *(v124 + 8);
      v87 = v38;
    }

    else
    {
      v101 = *(v9 + 72);
      v102 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_25149BA60;
      v104 = v103 + v102;
      v105 = *(v9 + 104);
      v106 = v122;
      v105(v104, *MEMORY[0x277CC9978], v122);
      v105(v104 + v101, *MEMORY[0x277CC9988], v106);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v103);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      v63 = v118;
      Calendar.date(from:)();
      v65 = v124;
      v86 = *(v124 + 8);
      v87 = v35;
    }

    v64 = v125;
    v86(v87, v125);
    v67 = v127;
    v66 = v128;
    if ((*(v127 + 48))(v63, 1, v128) != 1)
    {
      (*(v67 + 32))(v68, v63, v66);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v57 = v122;
  if (v55 == 3)
  {
    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v58 = *(v9 + 72);
    v59 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_25149BDC0;
    v61 = v60 + v59;
    v62 = *(v9 + 104);
    v62(v61, *MEMORY[0x277CC9978], v57);
    v62(v61 + v58, *MEMORY[0x277CC9988], v57);
    v62(v61 + 2 * v58, *MEMORY[0x277CC9998], v57);
    v62(v61 + 3 * v58, *MEMORY[0x277CC9968], v57);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v60);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v63 = v117;
    Calendar.date(from:)();
    v65 = v124;
    v64 = v125;
    (*(v124 + 8))(v41, v125);
    v67 = v127;
    v66 = v128;
    if ((*(v127 + 48))(v63, 1, v128) != 1)
    {
      v68 = v123;
      (*(v67 + 32))(v123, v63, v66);
LABEL_24:
      v79 = v126;
      goto LABEL_30;
    }

LABEL_21:
    v99 = MEMORY[0x277CC9578];
    v100 = v63;
LABEL_22:
    outlined destroy of Date?(v100, &lazy cache variable for type metadata for Date?, v99);
    v78 = 1;
    v79 = v126;
    return (*(v67 + 56))(v79, v78, 1, v66);
  }

  v94 = *(v9 + 104);
  v95 = v116;
  v94(v116, *MEMORY[0x277CC99B8], v122);
  v96 = Calendar.component(_:from:)();
  v119 = *(v9 + 8);
  result = (v119)(v95, v57);
  if (!__OFADD__(v96, 6))
  {
    v94(v95, *MEMORY[0x277CC9968], v57);
    v98 = v115;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v119)(v95, v57);
    v67 = v127;
    v66 = v128;
    if ((*(v127 + 48))(v98, 1, v128) != 1)
    {
      (*(v67 + 32))(v52, v98, v66);
      v68 = v123;
      Calendar.startOfDay(for:)();
      (*(v67 + 8))(v52, v66);
      v64 = v125;
      v79 = v126;
      v65 = v124;
LABEL_30:
      LOBYTE(v55) = v129;
      if (!v121)
      {
LABEL_33:
        (*(v67 + 32))(v79, v68, v66);
LABEL_34:
        v78 = 0;
        return (*(v67 + 56))(v79, v78, 1, v66);
      }

      goto LABEL_31;
    }

    v99 = MEMORY[0x277CC9578];
    v100 = v98;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void type metadata accessor for TimeZone?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    type metadata accessor for _SetStorage<Calendar.Component>();
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined destroy of Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TimeZone?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RoundedDateDirection and conformance RoundedDateDirection()
{
  result = lazy protocol witness table cache variable for type RoundedDateDirection and conformance RoundedDateDirection;
  if (!lazy protocol witness table cache variable for type RoundedDateDirection and conformance RoundedDateDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedDateDirection and conformance RoundedDateDirection);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedDateDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RoundedDateDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for _SetStorage<Calendar.Component>()
{
  if (!lazy cache variable for type metadata for _SetStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<Calendar.Component>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static Date.fromString(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TimeZone();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v18 = MEMORY[0x253077090](0xD000000000000013, 0x800000025149DBF0);
  [v17 setDateFormat_];

  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v16, v12);
  [v17 setTimeZone_];

  v20 = a1;
  v21 = v29;
  v22 = MEMORY[0x253077090](v20, v29);
  v23 = [v17 dateFromString_];

  if (v23)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v30, v11, v4);
  }

  else
  {
    v24 = v9;
    v25 = v30;
    v26 = MEMORY[0x253077090](0x2D4D4D2D79797979, 0xEA00000000006464);
    [v17 setDateFormat_];

    v27 = MEMORY[0x253077090](v20, v21);
    v28 = [v17 dateFromString_];

    if (v28)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 32))(v25, v24, v4);
    }

    else
    {
      Date.init()();
    }
  }
}

uint64_t static DateInterval.fromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v21[2] = a1;
  v21[3] = a2;
  v21[0] = 15917;
  v21[1] = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.components<A>(separatedBy:)();
  v12 = v11[2];
  if (v12 == 1)
  {
    v19 = v11[4];
    v20 = v11[5];

    static Date.fromString(_:)(v19, v20, v10);

    return DateInterval.init(start:duration:)();
  }

  if (v12 != 2)
  {

    Date.init()();
    return DateInterval.init(start:duration:)();
  }

  v13 = v11[4];
  v14 = v11[5];
  v15 = v11;

  static Date.fromString(_:)(v13, v14, v10);

  if (v15[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = v15[6];
    v18 = v15[7];

    static Date.fromString(_:)(v17, v18, v8);

    return DateInterval.init(start:end:)();
  }

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

uint64_t HealthChartsData.init(description:series:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t protocol witness for AnySeriesData.points.getter in conformance HealthChartsData.SeriesData<A, B>()
{
  specialized HealthChartsData.SeriesData.points.getter();
}

uint64_t HealthChartsData.SeriesData.points.getter()
{
  specialized HealthChartsData.SeriesData.points.getter();
}

id HealthChartsData.SeriesData.unit.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t HealthChartsData.SeriesPoint.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for HealthChartsData.SeriesPoint();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t HealthChartsData.SeriesData.init(points:aggregation:unit:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  return result;
}

uint64_t HealthChartsData.DescriptionKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x65676172657661;
    v8 = 0xD000000000000012;
    v9 = 0x6E694D65676E6172;
    if (v1 == 3)
    {
      v9 = 0xD000000000000012;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x56746E6572727563;
    v3 = 0x746E756F63;
    if (v1 != 9)
    {
      v3 = 7173491;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    v5 = 0x78614D65676E6172;
    if (v1 != 6)
    {
      v5 = 0xD000000000000015;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

HealthChartsCore::HealthChartsData::DescriptionDirection_optional __swiftcall HealthChartsData.DescriptionDirection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HealthChartsData.DescriptionDirection.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t HealthChartsData.DescriptionDirection.rawValue.getter()
{
  v1 = 0x6973616572636564;
  if (*v0 != 1)
  {
    v1 = 0x65676E6168636E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973616572636E69;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HealthChartsData.DescriptionDirection(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6973616572636564;
  v4 = 0xE900000000000064;
  if (*v1 == 1)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v3 = 0x65676E6168636E75;
  }

  if (*v1)
  {
    v2 = v4;
  }

  else
  {
    v3 = 0x6973616572636E69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsData.DescriptionDirection(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6973616572636564;
  v3 = *a1;
  v4 = 0x65676E6168636E75;
  v5 = 0xE900000000000064;
  if (v3 == 1)
  {
    v4 = 0x6973616572636564;
    v5 = 0xEA0000000000676ELL;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6973616572636E69;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000676ELL;
  }

  if (*a2 == 1)
  {
    v8 = 0xEA0000000000676ELL;
  }

  else
  {
    v2 = 0x65676E6168636E75;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6973616572636E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000676ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.DescriptionDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HealthChartsData.DescriptionDirection()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.DescriptionDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

HealthChartsCore::HealthChartsData::DescriptionKey_optional __swiftcall HealthChartsData.DescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HealthChartsData.DescriptionKey.init(rawValue:), v3);

  v7 = 11;
  if (v5 < 0xB)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HealthChartsData.DescriptionKey@<X0>(uint64_t *a1@<X8>)
{
  result = HealthChartsData.DescriptionKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance HealthChartsData.DescriptionKey(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance HealthChartsData.DescriptionKey(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance HealthChartsData.DescriptionKey(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v4, &v5) & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.DescriptionKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.DescriptionKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ16HealthChartsCore0bC4DataV14DescriptionKeyO_SdTt1g5(unint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 11;
    if (v13 != 11)
    {
      v15 = *(*(v3 + 56) + 8 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v15)
      {
        continue;
      }
    }

    return v14;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.Description.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6F69746365726964;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.Description.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025149DC70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.Description.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.Description.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.Description.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys, &unk_28636DBF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v9;
  v18 = 0;
  lazy protocol witness table accessor for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection();
  v11 = v15;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v11)
  {
    v16 = v14;
    v17 = 1;
    type metadata accessor for [HealthChartsData.DescriptionKey : Double]();
    lazy protocol witness table accessor for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B], lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t HealthChartsData.Description.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (v3 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int HealthChartsData.Description.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.Description.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.Description.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys, &unk_28636DBF0, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = v6;
    v12 = v16[0];
    v18 = 0;
    lazy protocol witness table accessor for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v19;
    type metadata accessor for [HealthChartsData.DescriptionKey : Double]();
    v17 = 1;
    lazy protocol witness table accessor for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B], lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v9, v5);
    v15 = v16[1];
    *v12 = v13;
    *(v12 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HealthChartsData.Description(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (v3 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.Description()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

HealthChartsCore::HealthChartsData::Aggregation_optional __swiftcall HealthChartsData.Aggregation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.Aggregation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.Aggregation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1 + 1);
  return Hasher._finalize()();
}

uint64_t static HealthChartsData.SeriesPoint.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(a5 + 32) + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v8 = *(type metadata accessor for HealthChartsData.SeriesPoint() + 52);
    v9 = *(*(a6 + 32) + 8);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t HealthChartsData.SeriesPoint.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int HealthChartsData.SeriesPoint.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesPoint.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static HealthChartsData.SeriesPoint.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return HealthChartsData.SeriesPoint.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return HealthChartsData.SeriesPoint.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  HealthChartsData.SeriesPoint.CodingKeys.hash(into:)(v9, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return HealthChartsData.SeriesPoint.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HealthChartsData.SeriesPoint.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v22 = *(a2 + 16);
  v23 = v22;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v20 = v4;
  v21 = v6;
  v24 = v4;
  v25 = v6;
  v19 = v5;
  v26 = v5;
  type metadata accessor for HealthChartsData.SeriesPoint.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  v13 = *(v21 + 24);
  v14 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v15 = *(a2 + 52);
    LOBYTE(v23) = 1;
    v16 = *(v19 + 24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t HealthChartsData.SeriesPoint.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 32) + 32);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(a2 + 24);
  v7 = *(*(a2 + 40) + 32);
  v8 = v2 + *(a2 + 52);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int HealthChartsData.SeriesPoint.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesPoint.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v49 = *(a3 - 8);
  v11 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v57 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v17;
  v60 = v18;
  v61 = v19;
  v62 = v20;
  type metadata accessor for HealthChartsData.SeriesPoint.CodingKeys();
  swift_getWitnessTable();
  v58 = type metadata accessor for KeyedDecodingContainer();
  v51 = *(v58 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x28223BE20](v58);
  v23 = &v45 - v22;
  v54 = a2;
  v55 = a5;
  v59 = a2;
  v60 = a3;
  v56 = a4;
  v61 = a4;
  v62 = a5;
  v24 = type metadata accessor for HealthChartsData.SeriesPoint();
  v48 = *(v24 - 8);
  v25 = *(v48 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v45 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v27;
  v46 = v24;
  v47 = a3;
  v31 = v51;
  v32 = v52;
  v63 = a1;
  v33 = v55;
  v34 = v53;
  v35 = v54;
  LOBYTE(v59) = 0;
  v36 = *(v56 + 2);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = *(v32 + 32);
  v56 = v30;
  v37(v30, v57, v35);
  LOBYTE(v59) = 1;
  v38 = *(v33 + 16);
  v39 = v34;
  v40 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 8))(v23, v58);
  v41 = v46;
  v42 = v56;
  (*(v49 + 32))(&v56[*(v46 + 52)], v39, v40);
  v43 = v48;
  (*(v48 + 16))(v50, v42, v41);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return (*(v43 + 8))(v42, v41);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesPoint<A, B>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesPoint.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

BOOL _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZ10Foundation4DateV_SdTt1B5Tm(uint64_t a1, char a2, void *a3, uint64_t a4, char a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v11 = a7(a1, a4);
  result = 0;
  if ((v11 & 1) != 0 && a2 == a5)
  {
    if (a3)
    {
      if (a6)
      {
        type metadata accessor for NSObject();
        v13 = a3;
        v14 = a6;
        v15 = v13;
        LOBYTE(v13) = static NSObject.== infix(_:_:)();

        return (v13 & 1) != 0;
      }

      v16 = a3;
    }

    else
    {
      if (!a6)
      {
        return 1;
      }

      v16 = a6;
    }

    v17 = v16;

    return 0;
  }

  return result;
}

uint64_t _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZSd_SdTt1B5(uint64_t result, char a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a2 != a5)
    {
      return 0;
    }

    if (a3)
    {
      if (a6)
      {
        type metadata accessor for NSObject();
        v13 = a3;
        v14 = a6;
        v15 = v13;
        v16 = static NSObject.== infix(_:_:)();

        return (v16 & 1) != 0;
      }

      v18 = 0;
      v17 = a3;
      v19 = a3;
    }

    else
    {
      if (!a6)
      {
        return 1;
      }

      v17 = 0;
      v18 = a6;
      v19 = a6;
    }

    v20 = v19;

    return 0;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    v10 = vmovn_s64(vceqq_f64(*v8, *v9));
    if ((v10.i32[0] & v10.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL static HealthChartsData.SeriesData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  type metadata accessor for HealthChartsData.SeriesPoint();
  swift_getWitnessTable();
  v8 = static Array<A>.== infix(_:_:)();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    if (v4)
    {
      if (v7)
      {
        type metadata accessor for NSObject();
        v10 = v4;
        v11 = v7;
        v12 = v10;
        v13 = static NSObject.== infix(_:_:)();

        return (v13 & 1) != 0;
      }

      v14 = v4;
    }

    else
    {
      if (!v7)
      {
        return 1;
      }

      v14 = 0;
      v4 = v7;
    }

    v15 = v4;

    return 0;
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV06SeriesE5ShapeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v9 = *v3;
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = v9;
        outlined copy of HealthChartsData.SeriesDataShape(v15, v5, v6);
        outlined copy of HealthChartsData.SeriesDataShape(v7, v8, v9);
        v10 = specialized static HealthChartsData.SeriesDataShape.== infix(_:_:)(&v15, &v12);
        outlined consume of HealthChartsData.SeriesDataShape(v12, v13, v14);
        outlined consume of HealthChartsData.SeriesDataShape(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 3;
        v3 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_SNySdGAHG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSNySdGG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  type metadata accessor for Date();
  v17 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    if (!v13)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v16, v10, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      return 0;
    }

    v19 = *(v5 + 52);
    v20 = &v10[v19];
    v21 = *&v12[v19];
    v22 = *&v12[v19 + 8];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    v23 = *v20;
    v24 = v20[1];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    result = v22 == v24 && v21 == v23;
    v25 = result != 1 || v13-- == 1;
    v16 += v17;
    v15 += v17;
    if (v25)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSdG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  type metadata accessor for DateInterval();
  v17 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v12, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    if (!v13)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v16, v10, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      return 0;
    }

    v19 = *(v5 + 52);
    v20 = *&v10[v19];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    v21 = *&v12[v19];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    result = v21 == v20;
    v22 = v21 != v20 || v13-- == 1;
    v16 += v17;
    v15 += v17;
    if (v22)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  type metadata accessor for DateInterval();
  v17 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v12, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    if (!v13)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v16, v10, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      return 0;
    }

    v19 = *(v5 + 52);
    v20 = &v10[v19];
    v21 = *&v12[v19];
    v22 = *&v12[v19 + 8];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    v23 = *v20;
    v24 = v20[1];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    result = v22 == v24 && v21 == v23;
    v25 = result != 1 || v13-- == 1;
    v16 += v17;
    v15 += v17;
    if (v25)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSdG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  type metadata accessor for Date();
  v17 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    if (!v13)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v16, v10, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      return 0;
    }

    v19 = *(v5 + 52);
    v20 = *&v10[v19];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v10, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    v21 = *&v12[v19];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    result = v21 == v20;
    v22 = v21 != v20 || v13-- == 1;
    v16 += v17;
    v15 += v17;
    if (v22)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t HealthChartsData.SeriesData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int HealthChartsData.SeriesData.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](a1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesData.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x73746E696F70;
  }

  if (a1 == 1)
  {
    return 0x7461676572676761;
  }

  return 1953066613;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static HealthChartsData.SeriesData.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return HealthChartsData.SeriesData.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return HealthChartsData.SeriesData.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  HealthChartsData.SeriesData.CodingKeys.hash(into:)(v9, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return HealthChartsData.SeriesData.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HealthChartsData.SeriesData.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v24 = a2[4];
  v25 = v4;
  v23 = v6;
  v30 = v4;
  v31 = v5;
  v32 = v24;
  v33 = v6;
  type metadata accessor for HealthChartsData.SeriesData.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = *v2;
  v22 = *(v2 + 8);
  v21 = v2[2];
  v11 = a1[3];
  v10 = a1[4];
  v12 = a1;
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = v9;
  v29 = 0;
  v30 = v25;
  v31 = v5;
  v32 = v24;
  v33 = v23;
  type metadata accessor for HealthChartsData.SeriesPoint();
  type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {

    return (*(v26 + 8))(v14, v7);
  }

  else
  {
    v17 = v21;
    v18 = v26;

    LOBYTE(v30) = v22;
    LOBYTE(v34) = 1;
    lazy protocol witness table accessor for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = v17;
    LOBYTE(v34) = 2;
    lazy protocol witness table accessor for type HealthChartsUnit and conformance HealthChartsUnit();
    v19 = v17;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    return (*(v18 + 8))(v14, v7);
  }
}

void HealthChartsData.SeriesData.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = v2[2];
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  type metadata accessor for HealthChartsData.SeriesPoint();
  swift_getWitnessTable();
  Array<A>.hash(into:)();
  MEMORY[0x2530774B0](v4 + 1);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int HealthChartsData.SeriesData.hashValue.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6[9] = *v1;
  v7 = v3;
  v8 = v4;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesData.hash(into:)(v6, a1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v26 = a4;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v27 = a5;
  type metadata accessor for HealthChartsData.SeriesData.CodingKeys();
  swift_getWitnessTable();
  v29 = type metadata accessor for KeyedDecodingContainer();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v12;
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v9;
  v16 = v25;
  v32 = a2;
  v33 = a3;
  v34 = v26;
  v35 = v27;
  type metadata accessor for HealthChartsData.SeriesPoint();
  type metadata accessor for Array();
  LOBYTE(v32) = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = v29;
  v18 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v36;
  LOBYTE(v36) = 1;
  lazy protocol witness table accessor for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v32;
  LOBYTE(v36) = 2;
  lazy protocol witness table accessor for type HealthChartsUnit and conformance HealthChartsUnit();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v18, v17);
  v22 = v32;
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v22;
  v23 = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsData.SeriesData<A, B>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static HealthChartsData.SeriesData.== infix(_:_:)(a1, a2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesData<A, B>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesData.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.SeriesDataShape.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E696F5065746164;
  v3 = 0x615272616C616373;
  if (v1 != 5)
  {
    v3 = 0x7974706D65;
  }

  v4 = 0x4D6E694D65746164;
  if (v1 != 3)
  {
    v4 = 0x6F5072616C616373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E615265746164;
  if (v1 != 1)
  {
    v5 = 0x6E61705365746164;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesDataShape.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized HealthChartsData.SeriesDataShape.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736569726573 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.SeriesDataShape.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.EmptyCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys, &unk_28636DA80, MEMORY[0x277D84538]);
  v66 = v4;
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v55 - v6;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys, &unk_28636DA60, v3);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = &v55 - v9;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.ScalarPointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys, &unk_28636D9D0, v3);
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = &v55 - v12;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys, &unk_28636D940, v3);
  v59 = v13;
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v57 = &v55 - v15;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DateSpanCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys, &unk_28636D8B0, v3);
  v73 = v16;
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = &v55 - v18;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DateRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys, &unk_28636D820, v3);
  v70 = *(v19 - 8);
  v71 = v19;
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DatePointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys, &unk_28636D790, v3);
  v24 = v23;
  v69 = *(v23 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys, &unk_28636D700, v3);
  v29 = *(v28 - 8);
  v76 = v28;
  v77 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v1[1];
  v32 = v1[2];
  v74 = *v1;
  v75 = v32;
  v33 = a1[3];
  v34 = a1[4];
  v35 = a1;
  v37 = &v55 - v36;
  __swift_project_boxed_opaque_existential_1(v35, v33);
  lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();
  v81 = v37;
  v38 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v39 = v31 >> 61;
  if ((v31 >> 61) <= 2)
  {
    v44 = v69;
    v45 = v70;
    v46 = v24;
    v47 = v22;
    v49 = v71;
    v48 = v72;
    v50 = v73;
    if (v39)
    {
      v40 = v76;
      if (v39 == 1)
      {
        LOBYTE(v78) = 1;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v74;
        v79 = v38;
        v80 = v75;
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v45 + 8))(v47, v49);
      }

      else
      {
        LOBYTE(v78) = 2;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v74;
        v79 = v38;
        v80 = v75;
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v56 + 8))(v48, v50);
      }
    }

    else
    {
      LOBYTE(v78) = 0;
      lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();
      v51 = v27;
      v40 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v74;
      v79 = v38;
      v80 = v75;
      type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v44 + 8))(v51, v46);
    }
  }

  else
  {
    if (v39 > 4)
    {
      v40 = v76;
      if (v39 != 5)
      {
        LOBYTE(v78) = 6;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();
        v53 = v63;
        v54 = v81;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v64 + 8))(v53, v66);
        return (*(v77 + 8))(v54, v40);
      }

      LOBYTE(v78) = 5;
      lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();
      v41 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v74;
      v79 = v31;
      v80 = v75;
      type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>);
      v42 = v68;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v67;
    }

    else
    {
      v40 = v76;
      if (v39 == 3)
      {
        LOBYTE(v78) = 3;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();
        v41 = v57;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v74;
        v79 = v31;
        v80 = v75;
        type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>);
        v42 = v59;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v43 = v58;
      }

      else
      {
        LOBYTE(v78) = 4;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();
        v41 = v60;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v74;
        v79 = v31;
        v80 = v75;
        type metadata accessor for HealthChartsData.SeriesData<Double, Double>();
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Double, Double>);
        v42 = v62;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v43 = v61;
      }
    }

    (*(v43 + 8))(v41, v42);
  }

  return (*(v77 + 8))(v81, v40);
}

void HealthChartsData.SeriesDataShape.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v5 >> 61;
  if ((v5 >> 61) <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        MEMORY[0x2530774B0](1);
        specialized Array<A>.hash(into:)(a1, v4);
      }

      else
      {
        MEMORY[0x2530774B0](2);
        specialized Array<A>.hash(into:)(a1, v4);
      }
    }

    else
    {
      MEMORY[0x2530774B0](0);
      specialized Array<A>.hash(into:)(a1, v4);
    }
  }

  else if (v7 > 4)
  {
    if (v7 != 5)
    {
      MEMORY[0x2530774B0](6);
      return;
    }

    MEMORY[0x2530774B0](5);
    specialized Array<A>.hash(into:)(a1, v4);
  }

  else if (v7 == 3)
  {
    MEMORY[0x2530774B0](3);
    specialized Array<A>.hash(into:)(a1, v4);
  }

  else
  {
    MEMORY[0x2530774B0](4);
    specialized Array<A>.hash(into:)(a1, v4);
  }

  MEMORY[0x2530774B0](v5 + 1);
  if (v6)
  {
    Hasher._combine(_:)(1u);
    v8 = v6;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int HealthChartsData.SeriesDataShape.hashValue.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesDataShape.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesDataShape.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v90 = a2;
  v3 = MEMORY[0x277D844C8];
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.EmptyCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys, &unk_28636DA80, MEMORY[0x277D844C8]);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v89 = &v74 - v6;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys, &unk_28636DA60, v3);
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v94 = &v74 - v10;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.ScalarPointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys, &unk_28636D9D0, v3);
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v88 = &v74 - v13;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys, &unk_28636D940, v3);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14);
  v93 = &v74 - v16;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DateSpanCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys, &unk_28636D8B0, v3);
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v92 = &v74 - v19;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DateRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys, &unk_28636D820, v3);
  v77 = v20;
  v76 = *(v20 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x28223BE20](v20);
  v91 = &v74 - v22;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DatePointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys, &unk_28636D790, v3);
  v24 = v23;
  v75 = *(v23 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v74 - v26;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys, &unk_28636D700, v3);
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v74 - v32;
  v34 = a1;
  v35 = a1[3];
  v36 = v34[4];
  v95 = v34;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();
  v37 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v37)
  {
    v74 = v24;
    v38 = v91;
    v39 = v92;
    v40 = v93;
    v41 = v94;
    v99 = 0;
    v42 = KeyedDecodingContainer.allKeys.getter();
    if (*(v42 + 16) != 1 || (v43 = *(v42 + 32), v43 == 7))
    {
      v47 = v33;
      v48 = type metadata accessor for DecodingError();
      swift_allocError();
      v50 = v49;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      v52 = *(v51 + 48);
      *v50 = &type metadata for HealthChartsData.SeriesDataShape;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
      swift_willThrow();
      (*(v30 + 8))(v47, v29);
    }

    else
    {
      if (*(v42 + 32) <= 2u)
      {
        if (*(v42 + 32))
        {
          v93 = v42;
          v55 = v99;
          if (v43 == 1)
          {
            LOBYTE(v96) = 1;
            lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v55)
            {
              type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
              lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>);
              v56 = v77;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v76 + 8))(v38, v56);
              (*(v30 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v70 = v96;
              v71 = v98;
              v72 = v97 | 0x2000000000000000;
              goto LABEL_32;
            }
          }

          else
          {
            LOBYTE(v96) = 2;
            lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();
            v62 = v39;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v55)
            {
              type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
              lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>);
              v68 = v79;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v78 + 8))(v62, v68);
              (*(v30 + 8))(v33, v29);
              swift_unknownObjectRelease();
              v70 = v96;
              v71 = v98;
              v72 = v97 | 0x4000000000000000;
              goto LABEL_32;
            }
          }
        }

        else
        {
          LOBYTE(v96) = 0;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();
          v60 = v27;
          v61 = v99;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v61)
          {
            v99 = v33;
            type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>);
            v67 = v74;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v75 + 8))(v60, v67);
            (*(v30 + 8))(v99, v29);
            swift_unknownObjectRelease();
            v70 = v96;
            v72 = v97;
            v71 = v98;
            goto LABEL_32;
          }
        }
      }

      else if (*(v42 + 32) > 4u)
      {
        v57 = v42;
        if (v43 == 5)
        {
          LOBYTE(v96) = 5;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();
          v58 = v99;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v58)
          {
            v93 = v57;
            v99 = v33;
            type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>();
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>);
            v59 = v86;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v87 + 8))(v41, v59);
            (*(v30 + 8))(v99, v29);
            swift_unknownObjectRelease();
            v70 = v96;
            v71 = v98;
            v72 = v97 | 0xA000000000000000;
            goto LABEL_32;
          }
        }

        else
        {
          LOBYTE(v96) = 6;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();
          v65 = v89;
          v66 = v99;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v66)
          {
            (*(v80 + 8))(v65, v81);
            (*(v30 + 8))(v33, v29);
            swift_unknownObjectRelease();
            v70 = 0;
            v71 = 0;
            v72 = 0xC000000000000000;
            goto LABEL_32;
          }
        }
      }

      else
      {
        v44 = v30;
        if (v43 == 3)
        {
          LOBYTE(v96) = 3;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();
          v45 = v99;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v45)
          {
            type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>);
            v46 = v83;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v82 + 8))(v40, v46);
            (*(v30 + 8))(v33, v29);
            swift_unknownObjectRelease();
            v70 = v96;
            v71 = v98;
            v72 = v97 | 0x6000000000000000;
LABEL_32:
            v53 = v95;
            v73 = v90;
            *v90 = v70;
            v73[1] = v72;
            v73[2] = v71;
            return __swift_destroy_boxed_opaque_existential_1(v53);
          }
        }

        else
        {
          LOBYTE(v96) = 4;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();
          v63 = v88;
          v64 = v99;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v64)
          {
            v99 = v33;
            type metadata accessor for HealthChartsData.SeriesData<Double, Double>();
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Double, Double>);
            v69 = v85;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v84 + 8))(v63, v69);
            (*(v44 + 8))(v99, v29);
            swift_unknownObjectRelease();
            v70 = v96;
            v71 = v98;
            v72 = v97 | 0x8000000000000000;
            goto LABEL_32;
          }
        }
      }

      (*(v30 + 8))(v33, v29);
    }

    swift_unknownObjectRelease();
  }

  v53 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.SeriesDataShape()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesDataShape.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesDataShape()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesDataShape.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.Series.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.Series.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.Series.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.Series.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.Series.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys, &unk_28636D670, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[3] = v9;
  type metadata accessor for [HealthChartsData.SeriesDataShape]();
  lazy protocol witness table accessor for type [HealthChartsData.SeriesDataShape] and conformance <A> [A](&lazy protocol witness table cache variable for type [HealthChartsData.SeriesDataShape] and conformance <A> [A], lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v8, v4);
}

Swift::Int HealthChartsData.Series.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.Series.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.Series.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys, &unk_28636D670, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = v14;
    type metadata accessor for [HealthChartsData.SeriesDataShape]();
    lazy protocol witness table accessor for type [HealthChartsData.SeriesDataShape] and conformance <A> [A](&lazy protocol witness table cache variable for type [HealthChartsData.SeriesDataShape] and conformance <A> [A], lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *v11 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.Series()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.Series()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.description.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t HealthChartsData.description.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t HealthChartsData.series.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.CodingKeys()
{
  if (*v0)
  {
    result = 0x736569726573;
  }

  else
  {
    result = 0x7470697263736564;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736569726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys, &unk_28636D5E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v16 = v10;
  v17 = 0;
  lazy protocol witness table accessor for type HealthChartsData.Description and conformance HealthChartsData.Description();
  v12 = v14[1];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v12)
  {

    v15 = v14[0];
    v17 = 1;
    lazy protocol witness table accessor for type HealthChartsData.Series and conformance HealthChartsData.Series();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

void HealthChartsData.hash(into:)(__int128 *a1)
{
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  if (v4)
  {
    v5 = *v1;
    Hasher._combine(_:)(1u);
    if (v5 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    specialized Dictionary<>.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int HealthChartsData.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    if (v2 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    specialized Dictionary<>.hash(into:)(v5, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys, &unk_28636D5E0, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v6;
    v12 = v18;
    v21 = 0;
    lazy protocol witness table accessor for type HealthChartsData.Description and conformance HealthChartsData.Description();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v19;
    v13 = v20;

    v21 = 1;
    lazy protocol witness table accessor for type HealthChartsData.Series and conformance HealthChartsData.Series();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v9, v5);
    v16 = v19;
    *v12 = v14;
    v12[1] = v13;
    v12[2] = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v3[11] = v1;
  Hasher.init(_seed:)();
  HealthChartsData.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v3[11] = v1;
  Hasher.init(_seed:)();
  HealthChartsData.hash(into:)(v3);
  return Hasher._finalize()();
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v3);
  v113 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v10);
  v112 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>();
  v97 = v13;
  v96 = *(v13 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  MEMORY[0x2530774B0](v17);
  v107 = v17;
  if (v17)
  {
    v18 = 0;
    v105 = v9;
    v106 = a2 + 32;
    v104 = v16;
    do
    {
      v19 = (v106 + 24 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v20 >> 61;
      if ((v20 >> 61) <= 2)
      {
        v108 = v21;
        v109 = v18;
        v110 = v22;
        v111 = v20;
        if (v23)
        {
          if (v23 == 1)
          {
            MEMORY[0x2530774B0](1);
            MEMORY[0x2530774B0](*(v21 + 16));
            v36 = *(v21 + 16);
            if (v36)
            {
              v37 = v98;
              v38 = v112;
              v39 = (v112 + *(v99 + 52));
              v40 = v22;
              v41 = v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
              v42 = v40;
              v43 = *(v37 + 72);
              v44 = v38;

              do
              {
                outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v41, v44, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
                type metadata accessor for DateInterval();
                lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
                dispatch thunk of Hashable.hash(into:)();
                v45 = *v39;
                v46 = v39[1];
                if (*v39 == 0.0)
                {
                  v45 = 0.0;
                }

                MEMORY[0x2530774D0](*&v45);
                if (v46 == 0.0)
                {
                  v47 = 0.0;
                }

                else
                {
                  v47 = v46;
                }

                MEMORY[0x2530774D0](*&v47);
                v44 = v112;
                outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v112, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
                v41 += v43;
                --v36;
              }

              while (v36);
              goto LABEL_73;
            }
          }

          else
          {
            MEMORY[0x2530774B0](2);
            MEMORY[0x2530774B0](*(v21 + 16));
            v67 = *(v21 + 16);
            if (v67)
            {
              v68 = v100;
              v69 = *(v101 + 52);
              v70 = v22;
              v71 = v21 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
              v72 = v70;
              v73 = *(v68 + 72);

              do
              {
                outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v71, v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
                type metadata accessor for DateInterval();
                lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
                dispatch thunk of Hashable.hash(into:)();
                v74 = *&v9[v69];
                if (v74 == 0.0)
                {
                  v74 = 0.0;
                }

                MEMORY[0x2530774D0](*&v74);
                outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
                v71 += v73;
                --v67;
              }

              while (v67);
              goto LABEL_73;
            }
          }

          v88 = v22;

LABEL_73:
          v89 = v111;
          MEMORY[0x2530774B0](v111 + 1);
          v90 = v110;
          if (v110)
          {
            Hasher._combine(_:)(1u);
            v91 = v90;
            NSObject.hash(into:)();

            v92 = v108;
            v93 = v89;
            v94 = v90;
          }

          else
          {
            Hasher._combine(_:)(0);
            v92 = v108;
            v93 = v89;
            v94 = 0;
          }

          outlined consume of HealthChartsData.SeriesDataShape(v92, v93, v94);
          v18 = v109;
          v16 = v104;
          goto LABEL_4;
        }

        MEMORY[0x2530774B0](0);
        MEMORY[0x2530774B0](*(v21 + 16));
        v59 = *(v21 + 16);
        if (v59)
        {
          v60 = *(v97 + 52);
          v61 = v96;
          v62 = v22;
          v63 = v21 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
          v64 = v62;
          v65 = *(v61 + 72);

          do
          {
            outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v63, v16, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
            type metadata accessor for Date();
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
            dispatch thunk of Hashable.hash(into:)();
            v66 = *&v16[v60];
            if (v66 == 0.0)
            {
              v66 = 0.0;
            }

            MEMORY[0x2530774D0](*&v66);
            outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v16, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
            v63 += v65;
            --v59;
          }

          while (v59);
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v23 > 4)
      {
        if (v23 == 5)
        {
          v48 = v22;
          MEMORY[0x2530774B0](5);
          v49 = *(v21 + 16);
          MEMORY[0x2530774B0](v49);
          if (v49)
          {
            v50 = (v21 + 56);
            do
            {
              v51 = *(v50 - 3);
              v52 = *(v50 - 2);
              v53 = *(v50 - 1);
              v54 = *v50;
              if (v51 == 0.0)
              {
                v51 = 0.0;
              }

              MEMORY[0x2530774D0](*&v51);
              if (v52 == 0.0)
              {
                v55 = 0.0;
              }

              else
              {
                v55 = v52;
              }

              MEMORY[0x2530774D0](*&v55);
              if (v53 == 0.0)
              {
                v56 = 0.0;
              }

              else
              {
                v56 = v53;
              }

              MEMORY[0x2530774D0](*&v56);
              if (v54 == 0.0)
              {
                v57 = 0.0;
              }

              else
              {
                v57 = v54;
              }

              MEMORY[0x2530774D0](*&v57);
              v50 += 4;
              --v49;
            }

            while (v49);
          }

          MEMORY[0x2530774B0](v20 + 1);
          if (!v48)
          {
            goto LABEL_77;
          }

          Hasher._combine(_:)(1u);
          outlined copy of HealthChartsData.SeriesDataShape(v21, v20, v48);
          v58 = v48;
          NSObject.hash(into:)();

          outlined consume of HealthChartsData.SeriesDataShape(v21, v20, v48);
        }

        else
        {
          MEMORY[0x2530774B0](6);
        }
      }

      else
      {
        if (v23 == 3)
        {
          v111 = v20;
          v109 = v18;
          MEMORY[0x2530774B0](3);
          MEMORY[0x2530774B0](*(v21 + 16));
          v24 = *(v21 + 16);
          v108 = v21;
          v110 = v22;
          if (v24)
          {
            v25 = v102;
            v26 = v113;
            v27 = (v113 + *(v103 + 52));
            v28 = v22;
            v29 = v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
            v30 = v28;
            v31 = *(v25 + 72);
            v32 = v26;

            do
            {
              outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v29, v32, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
              type metadata accessor for Date();
              lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
              dispatch thunk of Hashable.hash(into:)();
              v33 = *v27;
              v34 = v27[1];
              if (*v27 == 0.0)
              {
                v33 = 0.0;
              }

              MEMORY[0x2530774D0](*&v33);
              if (v34 == 0.0)
              {
                v35 = 0.0;
              }

              else
              {
                v35 = v34;
              }

              MEMORY[0x2530774D0](*&v35);
              v32 = v113;
              outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v113, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
              v29 += v31;
              --v24;
            }

            while (v24);
            goto LABEL_68;
          }

LABEL_67:
          v81 = v22;

LABEL_68:
          v82 = v111;
          MEMORY[0x2530774B0](v111 + 1);
          v83 = v110;
          if (v110)
          {
            Hasher._combine(_:)(1u);
            v84 = v83;
            NSObject.hash(into:)();

            v85 = v108;
            v86 = v82;
            v87 = v83;
          }

          else
          {
            Hasher._combine(_:)(0);
            v85 = v108;
            v86 = v82;
            v87 = 0;
          }

          outlined consume of HealthChartsData.SeriesDataShape(v85, v86, v87);
          v18 = v109;
          v9 = v105;
          goto LABEL_4;
        }

        MEMORY[0x2530774B0](4);
        MEMORY[0x2530774B0](*(v21 + 16));
        v75 = *(v21 + 16);
        if (v75)
        {
          v76 = (v21 + 40);
          do
          {
            v77 = *(v76 - 1);
            v78 = *v76;
            if (v77 == 0.0)
            {
              v77 = 0.0;
            }

            MEMORY[0x2530774D0](*&v77);
            if (v78 == 0.0)
            {
              v79 = 0.0;
            }

            else
            {
              v79 = v78;
            }

            MEMORY[0x2530774D0](*&v79);
            v76 += 2;
            --v75;
          }

          while (v75);
        }

        MEMORY[0x2530774B0](v20 + 1);
        if (!v22)
        {
LABEL_77:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }

        Hasher._combine(_:)(1u);
        outlined copy of HealthChartsData.SeriesDataShape(v21, v20, v22);
        v80 = v22;
        NSObject.hash(into:)();

        outlined consume of HealthChartsData.SeriesDataShape(v21, v20, v22);
      }

LABEL_4:
      ++v18;
    }

    while (v18 != v107);
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x2530774D0](*&v6);
      if (v7 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v7;
      }

      MEMORY[0x2530774D0](*&v10);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v8;
      }

      MEMORY[0x2530774D0](*&v11);
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      result = MEMORY[0x2530774D0](*&v12);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x2530774D0](*&v6);
      if (v7 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v7;
      }

      result = MEMORY[0x2530774D0](*&v8);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v9);
  if (v9)
  {
    v11 = &v8[*(v4 + 52)];
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, v8, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      type metadata accessor for Date();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      dispatch thunk of Hashable.hash(into:)();
      v14 = *v11;
      v15 = v11[1];
      if (*v11 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x2530774D0](*&v14);
      if (v15 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v15;
      }

      MEMORY[0x2530774D0](*&v16);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v8, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v9);
  if (v9)
  {
    v11 = *(v4 + 52);
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, v8, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      type metadata accessor for DateInterval();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
      dispatch thunk of Hashable.hash(into:)();
      v14 = *&v8[v11];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x2530774D0](*&v14);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v8, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v9);
  if (v9)
  {
    v11 = &v8[*(v4 + 52)];
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, v8, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      type metadata accessor for DateInterval();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
      dispatch thunk of Hashable.hash(into:)();
      v14 = *v11;
      v15 = v11[1];
      if (*v11 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x2530774D0](*&v14);
      if (v15 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v15;
      }

      MEMORY[0x2530774D0](*&v16);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v8, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v9);
  if (v9)
  {
    v11 = *(v4 + 52);
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, v8, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      type metadata accessor for Date();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      dispatch thunk of Hashable.hash(into:)();
      v14 = *&v8[v11];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x2530774D0](*&v14);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v8, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_13:
    v14 = __clz(__rbit64(v7)) | (v11 << 6);
    v15 = *(*(a2 + 48) + v14);
    if (v15 == 11)
    {
LABEL_16:

      return MEMORY[0x2530774B0](v10);
    }

    v16 = *(*(a2 + 56) + 8 * v14);
    v19 = a1[2];
    v20 = a1[3];
    v21 = *(a1 + 8);
    v17 = *a1;
    v18 = a1[1];
    if (*(*(a2 + 48) + v14) <= 4u)
    {
      *(*(a2 + 48) + v14);
    }

    v7 &= v7 - 1;
    String.hash(into:)();

    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x2530774D0](v12);
    result = Hasher._finalize()();
    v10 ^= result;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      goto LABEL_16;
    }

    v7 = *(v4 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized static HealthChartsData.Description.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 3)
  {
    if (v4 == 3)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v4 == 3)
  {
    return 0;
  }

  v7 = 0x65676E6168636E75;
  v8 = 0xE900000000000064;
  if (v2 == 1)
  {
    v7 = 0x6973616572636564;
    v8 = 0xEA0000000000676ELL;
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6973616572636E69;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000676ELL;
  }

  v11 = 0x65676E6168636E75;
  if (v4 == 1)
  {
    v11 = 0x6973616572636564;
    v12 = 0xEA0000000000676ELL;
  }

  else
  {
    v12 = 0xE900000000000064;
  }

  if (*a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x6973616572636E69;
  }

  if (*a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xEA0000000000676ELL;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_27:

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ16HealthChartsCore0bC4DataV14DescriptionKeyO_SdTt1g5(v3, v5);
}

uint64_t specialized static HealthChartsData.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  if (!v3)
  {
    if (!v5)
    {

      goto LABEL_9;
    }

    v9 = a2[1];

    v8 = 0;
LABEL_10:

    return v8 & 1;
  }

  v6 = *a2;
  v13[0] = *a1;
  v13[1] = v3;
  if (!v5)
  {

    v8 = 0;
    goto LABEL_10;
  }

  v11[0] = v6;
  v12 = v5;
  swift_bridgeObjectRetain_n();

  v7 = specialized static HealthChartsData.Description.== infix(_:_:)(v13, v11);

  if (v7)
  {
LABEL_9:

    v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV06SeriesE5ShapeO_Tt1g5(v2, v4);
    goto LABEL_10;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t specialized static HealthChartsData.SeriesDataShape.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v5 >> 61 == 1)
        {
          outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
          outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
          outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
          outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
          v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGG_Tt1g5;
          goto LABEL_17;
        }
      }

      else if (v5 >> 61 == 2)
      {
        outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
        v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSdG_Tt1g5;
        goto LABEL_17;
      }
    }

    else if (!(v5 >> 61))
    {
      outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
      v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSdG_Tt1g5;
      goto LABEL_17;
    }

LABEL_28:
    outlined copy of HealthChartsData.SeriesDataShape(*a1, v2, v4);
    outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
    outlined consume of HealthChartsData.SeriesDataShape(v3, v2, v4);
    outlined consume of HealthChartsData.SeriesDataShape(v6, v5, v7);
    v11 = 0;
    return v11 & 1;
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      if (v5 >> 61 == 5)
      {
        outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
        v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_SNySdGAHG_Tt1g5;
        goto LABEL_17;
      }
    }

    else if (v5 >> 61 == 6 && v5 == 0xC000000000000000 && (v7 | v6) == 0)
    {
      outlined consume of HealthChartsData.SeriesDataShape(*a1, v2, v4);
      outlined consume of HealthChartsData.SeriesDataShape(0, 0xC000000000000000, 0);
      v11 = 1;
      return v11 & 1;
    }

    goto LABEL_28;
  }

  if (v8 != 3)
  {
    if (v5 >> 61 == 4)
    {
      outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
      v10 = _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZSd_SdTt1B5(v3, v2, v4, v6, v5, v7);
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v5 >> 61 != 3)
  {
    goto LABEL_28;
  }

  outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
  outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
  outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
  outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
  v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSNySdGG_Tt1g5;
LABEL_17:
  v10 = _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZ10Foundation4DateV_SdTt1B5Tm(v3, v2, v4, v6, v5, v7, v9);
LABEL_18:
  v11 = v10;
  outlined consume of HealthChartsData.SeriesDataShape(v3, v2, v4);
  outlined consume of HealthChartsData.SeriesDataShape(v6, v5, v7);
  outlined consume of HealthChartsData.SeriesDataShape(v6, v5, v7);
  outlined consume of HealthChartsData.SeriesDataShape(v3, v2, v4);
  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

void type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>)
  {
    type metadata accessor for ClosedRange<Double>();
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v0 = type metadata accessor for HealthChartsData.SeriesData();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for HealthChartsData.SeriesData<Double, Double>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>)
  {
    v0 = type metadata accessor for HealthChartsData.SeriesData();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>);
    }
  }
}

void type metadata accessor for (@thick Any.Type, DecodingError.Context)()
{
  if (!lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context))
  {
    type metadata accessor for @thick Any.Type();
    type metadata accessor for DecodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context));
    }
  }
}

unint64_t type metadata accessor for @thick Any.Type()
{
  result = lazy cache variable for type metadata for @thick Any.Type;
  if (!lazy cache variable for type metadata for @thick Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick Any.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

void type metadata accessor for [HealthChartsData.SeriesDataShape]()
{
  if (!lazy cache variable for type metadata for [HealthChartsData.SeriesDataShape])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [HealthChartsData.SeriesDataShape]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [HealthChartsData.SeriesDataShape] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [HealthChartsData.SeriesDataShape]();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Description and conformance HealthChartsData.Description()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Series and conformance HealthChartsData.Series()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type HealthChartsData and conformance HealthChartsData()
{
  result = lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData;
  if (!lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData);
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

uint64_t getEnumTagSinglePayload for HealthChartsData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for HealthChartsData(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for HealthChartsData.DescriptionKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.DescriptionKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.Description(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthChartsData.Description(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for HealthChartsData.SeriesPoint(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.SeriesPoint(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for HealthChartsData.SeriesPoint(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t type metadata instantiation function for HealthChartsData.SeriesData()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.SeriesData(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthChartsData.SeriesData(uint64_t result, int a2, int a3)
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

unint64_t get_enum_tag_for_layout_string_16HealthChartsCore0aB4DataV06SeriesD5ShapeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t getEnumTagSinglePayload for HealthChartsData.SeriesDataShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.SeriesDataShape(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 8 * -a2;
      *(result + 16) = 0;
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

void *destructiveInjectEnumTag for HealthChartsData.SeriesDataShape(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 7 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    *(result + 1) = xmmword_25149BE90;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.Aggregation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.Aggregation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.DescriptionDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HealthChartsData.DescriptionDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized HealthChartsData.SeriesDataShape.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E696F5065746164 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61705365746164 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D6E694D65746164 && a2 == 0xEA00000000007861 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F5072616C616373 && a2 == 0xEB00000000746E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x615272616C616373 && a2 == 0xEB0000000065676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DiscreteDatePointData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v14 = *a2;
  DiscreteDatePointData.buildSeries(from:aggregation:with:preferredUnit:)(a1, &v14, a3, a4, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA016DiscreteDateSpanE0V_10Foundation0tO0VSdTt2g5Tm(v15, a3, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, &v15);
  v10 = v15;
  v11 = v16;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25149B950;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;

  *a5 = v10;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}

uint64_t DiscreteDatePointData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v69 = a4;
  v81 = a3;
  v66 = a5;
  v83 = type metadata accessor for Date();
  v7 = *(v83 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v83);
  v78 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v63[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v63[-v13];
  v15 = MEMORY[0x277CC9578];
  type metadata accessor for (Date, Double)?(0, &lazy cache variable for type metadata for (Date, Double)?, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v63[-v18];
  type metadata accessor for (Date, Double)(0, &lazy cache variable for type metadata for (Date, Double), v15);
  v21 = v20;
  v68 = *(v20 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v20);
  v76 = &v63[-v23];
  v64 = *a2;
  v65 = a1;
  v24 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v57))
  {
    v27 = 0;
    v74 = v25 & 0xFFFFFFFFFFFFFF8;
    v75 = v25 & 0xC000000000000001;
    v79 = (v7 + 8);
    v67 = (v7 + 32);
    v71 = (v68 + 56);
    v80 = MEMORY[0x277D84F90];
    v70 = (v68 + 48);
    v72 = v25;
    v73 = i;
    while (1)
    {
      if (v75)
      {
        v28 = MEMORY[0x2530772A0](v27, v25);
      }

      else
      {
        if (v27 >= *(v74 + 16))
        {
          goto LABEL_30;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v82 = v27 + 1;
      v30 = v19;
      v31 = [v28 startDate];
      v32 = v14;
      v33 = v77;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v34 = *v79;
      v35 = v33;
      v36 = v83;
      (*v79)(v35, v83);
      v37 = [v29 endDate];
      v7 = v78;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v38 = v36;
      v14 = v32;
      v34(v7, v38);
      Date.init(timeIntervalSinceReferenceDate:)();
      if ((v81 & 2) != 0 && (v39 = [v29 averageQuantity]) != 0)
      {
        v40 = v39;
        v41 = v69;
        v42 = v69;
        v19 = v30;
        if (!v69)
        {
          v43 = [v39 _unit];
          v41 = v69;
          v42 = v43;
        }

        v44 = v41;
        [v40 doubleValueForUnit_];
        v46 = v45;
        v25 = v72;
      }

      else
      {
        v19 = v30;
        if ((v81 & 0x10) == 0 || (v47 = [v29 sumQuantity]) == 0)
        {

          v34(v32, v83);
          v53 = 1;
          v25 = v72;
          v52 = v73;
          goto LABEL_22;
        }

        v40 = v47;
        v48 = v69;
        v42 = v69;
        v25 = v72;
        if (!v69)
        {
          v49 = [v47 _unit];
          v48 = v69;
          v42 = v49;
        }

        v50 = v48;
        [v40 doubleValueForUnit_];
        v46 = v51;
      }

      v52 = v73;

      v7 = *(v21 + 48);
      (*v67)(v19, v32, v83);
      v53 = 0;
      *&v19[v7] = v46;
LABEL_22:
      (*v71)(v19, v53, 1, v21);
      if ((*v70)(v19, 1, v21) == 1)
      {
        outlined destroy of (Date, Double)?(v19, &lazy cache variable for type metadata for (Date, Double)?, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
      }

      else
      {
        outlined init with take of (Date, Double)(v19, v76, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80[2] + 1, 1, v80);
        }

        v55 = v80[2];
        v54 = v80[3];
        v7 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v80);
        }

        v56 = v80;
        v80[2] = v7;
        outlined init with take of (Date, Double)(v76, v56 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v55, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
      }

      ++v27;
      if (v82 == v52)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    if (v25 < 0)
    {
      v57 = v25;
    }

    else
    {
      v57 = v25 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v80 = MEMORY[0x277D84F90];
LABEL_36:

  v58 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v65, v81, v69);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SdTt3B5(v80, v64, v58, &v84);
  v60 = v85;
  v61 = v86;
  v62 = v66;
  *v66 = v84;
  *(v62 + 8) = v60;
  v62[2] = v61;
  return result;
}

unint64_t _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA016DiscreteDateSpanE0V_10Foundation0tO0VSdTt2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v58 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = MEMORY[0x277D84F90];
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = *(a1 + 16);
  if (v18)
  {
    v54 = a2;
    v55 = a6;
    v53 = v9;
    v56 = *(v9 + 52);
    v19 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v10 + 72);
    v21 = MEMORY[0x277D84F90];
    v22 = v19;
    v23 = v18;
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v22, v16, v57);
      v24 = *&v16[v56];
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v16, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      if (v26 >= v25 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v21);
      }

      *(v21 + 2) = v26 + 1;
      *&v21[8 * v26 + 32] = v24;
      v22 += v20;
      --v23;
    }

    while (v23);
    v27 = *(v53 + 52);
    v17 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v19, v14, v57);
      v28 = *&v14[v27];
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v14, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v30 = *(v17 + 2);
      v29 = *(v17 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v17);
      }

      *(v17 + 2) = v31;
      *&v17[8 * v30 + 32] = v28;
      v19 += v20;
      --v18;
    }

    while (v18);
    LOBYTE(a2) = v54;
    a6 = v55;
    if (v31 <= 3)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v31 = *(v17 + 2);
  if (v31)
  {
    v21 = v17;
    if (v31 <= 3)
    {
LABEL_15:
      v32 = 0;
      v33 = 0.0;
      goto LABEL_21;
    }

LABEL_18:
    v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = v17 + 48;
    v33 = 0.0;
    v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v34;
      v33 = v33 + *(v34 - 2) + *(v34 - 1) + *v34 + *(v34 + 1);
      v34 += 32;
      v35 -= 4;
    }

    while (v35);
    if (v31 == v32)
    {
LABEL_23:
      v40 = v60;
      v41 = v33 / *(v21 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, v41);
      v60 = v59;
      if ((a2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_21:
    v37 = v31 - v32;
    v38 = &v17[8 * v32 + 32];
    do
    {
      v39 = *v38++;
      v33 = v33 + v39;
      --v37;
    }

    while (v37);
    goto LABEL_23;
  }

  v33 = 0.0;
  v21 = v17;
  if ((a2 & 0x10) != 0)
  {
LABEL_24:
    v43 = v60;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v43;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0xAu, v44, v33);
    v60 = v59;
  }

LABEL_25:
  if ((a2 & 4) != 0)
  {
    v45 = specialized Sequence<>.min()(v21);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      specialized Dictionary.subscript.setter(v45, 0, 4u);
    }
  }

  else
  {
  }

  if ((a2 & 8) != 0)
  {
    v49 = specialized Sequence<>.max()(v17);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      result = specialized Dictionary.subscript.setter(v49, 0, 6u);
    }
  }

  else
  {
  }

  v52 = v60;
  *a6 = 3;
  *(a6 + 8) = v52;
  return result;
}

unint64_t type metadata accessor for HKStatistics()
{
  result = lazy cache variable for type metadata for HKStatistics;
  if (!lazy cache variable for type metadata for HKStatistics)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKStatistics);
  }

  return result;
}

unint64_t _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA017DiscreteDateRangeE0V_10Foundation0tO0VSNySdGTt2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v58 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = MEMORY[0x277D84F90];
  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = *(a1 + 16);
  if (v18)
  {
    v54 = a2;
    v55 = a6;
    v53 = v9;
    v56 = *(v9 + 52);
    v19 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v10 + 72);
    v21 = MEMORY[0x277D84F90];
    v22 = v19;
    v23 = v18;
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v22, v16, v57);
      v24 = *&v16[v56];
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v16, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      if (v26 >= v25 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v21);
      }

      *(v21 + 2) = v26 + 1;
      *&v21[8 * v26 + 32] = v24;
      v22 += v20;
      --v23;
    }

    while (v23);
    v27 = &v14[*(v53 + 52)];
    v17 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v19, v14, v57);
      v28 = *(v27 + 1);
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v14, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v30 = *(v17 + 2);
      v29 = *(v17 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v17);
      }

      *(v17 + 2) = v31;
      *&v17[8 * v30 + 32] = v28;
      v19 += v20;
      --v18;
    }

    while (v18);
    LOBYTE(a2) = v54;
    a6 = v55;
    if (v31 <= 3)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v31 = *(v17 + 2);
  if (v31)
  {
    v21 = v17;
    if (v31 <= 3)
    {
LABEL_15:
      v32 = 0;
      v33 = 0.0;
      goto LABEL_21;
    }

LABEL_18:
    v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = v17 + 48;
    v33 = 0.0;
    v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v34;
      v33 = v33 + *(v34 - 2) + *(v34 - 1) + *v34 + *(v34 + 1);
      v34 += 32;
      v35 -= 4;
    }

    while (v35);
    if (v31 == v32)
    {
LABEL_23:
      v40 = v60;
      v41 = v33 / *(v21 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, v41);
      v60 = v59;
      if ((a2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_21:
    v37 = v31 - v32;
    v38 = &v17[8 * v32 + 32];
    do
    {
      v39 = *v38++;
      v33 = v33 + v39;
      --v37;
    }

    while (v37);
    goto LABEL_23;
  }

  v33 = 0.0;
  v21 = v17;
  if ((a2 & 0x10) != 0)
  {
LABEL_24:
    v43 = v60;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v43;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0xAu, v44, v33);
    v60 = v59;
  }

LABEL_25:
  if ((a2 & 4) != 0)
  {
    v45 = specialized Sequence<>.min()(v21);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      specialized Dictionary.subscript.setter(v45, 0, 4u);
    }
  }

  else
  {
  }

  if ((a2 & 8) != 0)
  {
    v49 = specialized Sequence<>.max()(v17);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      result = specialized Dictionary.subscript.setter(v49, 0, 6u);
    }
  }

  else
  {
  }

  v52 = v60;
  *a6 = 3;
  *(a6 + 8) = v52;
  return result;
}

id _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(id a1, char a2, id a3)
{
  if (a3)
  {
    v5 = [a3 _foundationUnit];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        return v7;
      }
    }
  }

  v9 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
LABEL_21:
    if (v10 < 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = MEMORY[0x253077340](v16);
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v11 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530772A0](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = unit #1 <A>(from:) in SeriesDataShape.dimension(from:with:preferredUnit:)(v13, a2);

    if (v8)
    {

      return v8;
    }
  }

  return 0;
}

uint64_t DiscreteDateRangeData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v52 = a5;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v60 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v59 = &v49[-v13];
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8]);
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v49[-v19];
  v50 = *a2;
  v51 = a1;
  v21 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v39))
  {
    v24 = 0;
    v61 = v22 & 0xFFFFFFFFFFFFFF8;
    v62 = v22 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
    v55 = v20;
    v56 = a4;
    v53 = i;
    v54 = v22;
    while (1)
    {
      if (v62)
      {
        v26 = MEMORY[0x2530772A0](v24, v22);
      }

      else
      {
        if (v24 >= *(v61 + 16))
        {
          goto LABEL_26;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ((a3 & 2) != 0 && (v29 = [v26 averageQuantity]) != 0)
      {
        v30 = v29;
        v31 = a4;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((a3 & 0x10) == 0 || (v29 = [v27 sumQuantity]) == 0)
        {

          goto LABEL_5;
        }

        v30 = v29;
        v31 = a4;
        if (!a4)
        {
LABEL_17:
          v31 = [v29 _unit];
        }
      }

      v32 = a4;
      [v30 doubleValueForUnit_];
      v34 = v33;

      v20 = *(v58 + 48);
      v35 = [v27 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v27 endDate];
      a4 = v60;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.init(start:end:)();
      if (v34 < 0.0)
      {
        goto LABEL_27;
      }

      v36 = &v18[v20];
      *v36 = 0.0;
      v36[1] = v34;
      v37 = v55;
      outlined init with take of (Date, Double)(v18, v55, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      }

      a4 = v56;
      v20 = v25[2];
      v38 = v25[3];
      if (v20 >= v38 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v20 + 1, 1, v25);
      }

      v25[2] = v20 + 1;
      outlined init with take of (Date, Double)(v37, v25 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v20, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      i = v53;
      v22 = v54;
LABEL_5:
      ++v24;
      if (v28 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v22 < 0)
    {
      v39 = v22;
    }

    else
    {
      v39 = v22 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_33:

  v40 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v51, a3, a4);
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v25, v50, v40, &v63);
  v41 = v63;
  v42 = v64;
  v43 = v65;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA017DiscreteDateRangeE0V_10Foundation0tO0VSNySdGTt2g5Tm(v63, a3, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, &v63);
  v44 = v63;
  v45 = v64;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25149B950;
  *(v46 + 32) = v41;
  *(v46 + 40) = v42 | 0x2000000000000000;
  *(v46 + 48) = v43;

  v48 = v52;
  *v52 = v44;
  v48[1] = v45;
  v48[2] = v46;
  return result;
}

uint64_t DiscreteDateRangeData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v48 = a5;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v55 = &v45[-v13];
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8]);
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v45[-v19];
  v46 = *a2;
  v47 = a1;
  v21 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v39))
  {
    v24 = 0;
    v57 = v22 & 0xFFFFFFFFFFFFFF8;
    v58 = v22 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
    v51 = v20;
    v52 = a4;
    v49 = i;
    v50 = v22;
    while (1)
    {
      if (v58)
      {
        v26 = MEMORY[0x2530772A0](v24, v22);
      }

      else
      {
        if (v24 >= *(v57 + 16))
        {
          goto LABEL_26;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ((a3 & 2) != 0 && (v29 = [v26 averageQuantity]) != 0)
      {
        v30 = v29;
        v31 = a4;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((a3 & 0x10) == 0 || (v29 = [v27 sumQuantity]) == 0)
        {

          goto LABEL_5;
        }

        v30 = v29;
        v31 = a4;
        if (!a4)
        {
LABEL_17:
          v31 = [v29 _unit];
        }
      }

      v32 = a4;
      [v30 doubleValueForUnit_];
      v34 = v33;

      v20 = *(v54 + 48);
      v35 = [v27 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v27 endDate];
      a4 = v56;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.init(start:end:)();
      if (v34 < 0.0)
      {
        goto LABEL_27;
      }

      v36 = &v18[v20];
      *v36 = 0.0;
      v36[1] = v34;
      v37 = v51;
      outlined init with take of (Date, Double)(v18, v51, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      }

      a4 = v52;
      v20 = v25[2];
      v38 = v25[3];
      if (v20 >= v38 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v20 + 1, 1, v25);
      }

      v25[2] = v20 + 1;
      outlined init with take of (Date, Double)(v37, v25 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      i = v49;
      v22 = v50;
LABEL_5:
      ++v24;
      if (v28 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v22 < 0)
    {
      v39 = v22;
    }

    else
    {
      v39 = v22 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_33:

  v40 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v47, a3, a4);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v25, v46, v40, &v59);
  v42 = v60;
  v43 = v61;
  v44 = v48;
  *v48 = v59;
  *(v44 + 8) = v42;
  v44[2] = v43;
  return result;
}

uint64_t DiscreteDateMinMaxData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v14 = *a2;
  DiscreteDateMinMaxData.buildSeries(from:aggregation:with:preferredUnit:)(a1, &v14, a3, a4, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA017DiscreteDateRangeE0V_10Foundation0tO0VSNySdGTt2g5Tm(v15, a3, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, &v15);
  v10 = v15;
  v11 = v16;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25149B950;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8 | 0x6000000000000000;
  *(v12 + 48) = v9;

  *a5 = v10;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}

uint64_t DiscreteDateMinMaxData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v72 = a4;
  v68 = a5;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v82 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v65[-v14];
  MEMORY[0x28223BE20](v13);
  v85 = &v65[-v15];
  v16 = MEMORY[0x277CC9578];
  type metadata accessor for (Date, Double)?(0, &lazy cache variable for type metadata for (Date, ClosedRange<Double>)?, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65[-v19];
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), v16);
  v83 = v21;
  v70 = *(v21 - 8);
  v22 = *(v70 + 64);
  MEMORY[0x28223BE20](v21);
  v80 = &v65[-v23];
  v66 = *a2;
  v67 = a1;
  v24 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v59))
  {
    v27 = 0;
    v78 = v25 & 0xFFFFFFFFFFFFFF8;
    v79 = v25 & 0xC000000000000001;
    v28 = (v9 + 1);
    v69 = (v9 + 4);
    v75 = (v70 + 56);
    v84 = MEMORY[0x277D84F90];
    v74 = (v70 + 48);
    v71 = a3;
    v73 = v8;
    v76 = i;
    v77 = v25;
    while (1)
    {
      if (v79)
      {
        v29 = MEMORY[0x2530772A0](v27, v25);
      }

      else
      {
        if (v27 >= *(v78 + 16))
        {
          goto LABEL_33;
        }

        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32 = v20;
      v33 = [v29 startDate];
      v25 = a3;
      v34 = v81;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v20 = *v28;
      (*v28)(v34, v8);
      v35 = [v30 endDate];
      v36 = v82;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      a3 = v25;
      Date.timeIntervalSinceReferenceDate.getter();
      (v20)(v36, v8);
      Date.init(timeIntervalSinceReferenceDate:)();
      v37 = 0.0;
      if ((v25 & 4) != 0 && (v38 = [v30 minimumQuantity]) != 0)
      {
        v39 = v38;
        v40 = v72;
        v41 = v72;
        if (!v72)
        {
          v42 = [v38 _unit];
          v40 = v72;
          v41 = v42;
        }

        v43 = v40;
        [v39 doubleValueForUnit_];
        v37 = v44;

        v8 = 0;
        a3 = v71;
        if ((v71 & 8) == 0)
        {
LABEL_23:

LABEL_24:
          v8 = v73;
          (v20)(v85, v73);
          v53 = 1;
          v20 = v32;
          goto LABEL_25;
        }
      }

      else
      {
        v8 = 1;
        if ((v25 & 8) == 0)
        {
          goto LABEL_23;
        }
      }

      v45 = [v30 maximumQuantity];
      if (!v45)
      {
        goto LABEL_23;
      }

      v9 = v45;
      v46 = v72;
      v47 = v72;
      if (!v72)
      {
        v48 = [v45 _unit];
        v46 = v72;
        v47 = v48;
      }

      v49 = v46;
      [v9 doubleValueForUnit_];
      v51 = v50;

      a3 = v71;
      if (v8)
      {
        goto LABEL_24;
      }

      if (v37 > v51)
      {
        goto LABEL_34;
      }

      v20 = v32;
      v52 = &v32[*(v83 + 48)];
      v8 = v73;
      (*v69)(v32, v85, v73);
      v53 = 0;
      *v52 = v37;
      v52[1] = v51;
LABEL_25:
      v9 = v83;
      (*v75)(v20, v53, 1, v83);
      v54 = (*v74)(v20, 1, v9);
      v55 = v76;
      v25 = v77;
      if (v54 == 1)
      {
        outlined destroy of (Date, Double)?(v20, &lazy cache variable for type metadata for (Date, ClosedRange<Double>)?, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
      }

      else
      {
        outlined init with take of (Date, Double)(v20, v80, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
        }

        v57 = v84[2];
        v56 = v84[3];
        v9 = (v57 + 1);
        if (v57 >= v56 >> 1)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v84);
        }

        v58 = v84;
        v84[2] = v9;
        outlined init with take of (Date, Double)(v80, v58 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v57, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
      }

      ++v27;
      if (v31 == v55)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    if (v25 < 0)
    {
      v59 = v25;
    }

    else
    {
      v59 = v25 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v84 = MEMORY[0x277D84F90];
LABEL_40:

  v60 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v67, a3, v72);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SNySdGTt3B5(v84, v66, v60, &v86);
  v62 = v87;
  v63 = v88;
  v64 = v68;
  *v68 = v86;
  *(v64 + 8) = v62;
  v64[2] = v63;
  return result;
}

uint64_t DiscreteDateSpanData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v53 = a5;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v61 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v60 = &v50[-v13];
  type metadata accessor for (Date, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v50[-v19];
  v51 = *a2;
  v52 = a1;
  v21 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v40))
  {
    v24 = 0;
    v62 = v22 & 0xFFFFFFFFFFFFFF8;
    v63 = v22 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
    v56 = v20;
    v57 = a4;
    v54 = i;
    v55 = v22;
    while (1)
    {
      if (v63)
      {
        v26 = MEMORY[0x2530772A0](v24, v22);
      }

      else
      {
        if (v24 >= *(v62 + 16))
        {
          goto LABEL_25;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ((a3 & 2) != 0)
      {
        v29 = [v26 averageQuantity];
        if (v29)
        {
          v30 = v29;
          v31 = a4;
          if (!a4)
          {
LABEL_17:
            v31 = [v29 _unit];
          }

LABEL_18:
          v32 = a4;
          [v30 doubleValueForUnit_];
          v34 = v33;

          v35 = *(v59 + 48);
          v36 = [v27 startDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = [v27 endDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.init(start:end:)();
          *&v18[v35] = v34;
          v38 = v56;
          outlined init with take of (Date, Double)(v18, v56, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
          }

          v20 = v25[2];
          v39 = v25[3];
          a4 = v57;
          if (v20 >= v39 >> 1)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v20 + 1, 1, v25);
          }

          v25[2] = v20 + 1;
          outlined init with take of (Date, Double)(v38, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v20, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          i = v54;
          v22 = v55;
          goto LABEL_5;
        }
      }

      if ((a3 & 0x10) != 0)
      {
        v29 = [v27 sumQuantity];
        if (v29)
        {
          v30 = v29;
          v31 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

LABEL_5:
      ++v24;
      if (v28 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (v22 < 0)
    {
      v40 = v22;
    }

    else
    {
      v40 = v22 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_31:

  v41 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v52, a3, a4);
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5(v25, v51, v41, &v64);
  v42 = v64;
  v43 = v65;
  v44 = v66;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA016DiscreteDateSpanE0V_10Foundation0tO0VSdTt2g5Tm(v64, a3, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, &v64);
  v45 = v64;
  v46 = v65;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_25149B950;
  *(v47 + 32) = v42;
  *(v47 + 40) = v43 | 0x4000000000000000;
  *(v47 + 48) = v44;

  v49 = v53;
  *v53 = v45;
  v49[1] = v46;
  v49[2] = v47;
  return result;
}

uint64_t DiscreteDateSpanData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v49 = a5;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v56 = &v46[-v13];
  type metadata accessor for (Date, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v46[-v19];
  v47 = *a2;
  v48 = a1;
  v21 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v40))
  {
    v24 = 0;
    v58 = v22 & 0xFFFFFFFFFFFFFF8;
    v59 = v22 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
    v52 = v20;
    v53 = a4;
    v50 = i;
    v51 = v22;
    while (1)
    {
      if (v59)
      {
        v26 = MEMORY[0x2530772A0](v24, v22);
      }

      else
      {
        if (v24 >= *(v58 + 16))
        {
          goto LABEL_25;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if ((a3 & 2) != 0)
      {
        v29 = [v26 averageQuantity];
        if (v29)
        {
          v30 = v29;
          v31 = a4;
          if (!a4)
          {
LABEL_17:
            v31 = [v29 _unit];
          }

LABEL_18:
          v32 = a4;
          [v30 doubleValueForUnit_];
          v34 = v33;

          v35 = *(v55 + 48);
          v36 = [v27 startDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = [v27 endDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.init(start:end:)();
          *&v18[v35] = v34;
          v38 = v52;
          outlined init with take of (Date, Double)(v18, v52, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
          }

          v20 = v25[2];
          v39 = v25[3];
          a4 = v53;
          if (v20 >= v39 >> 1)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v20 + 1, 1, v25);
          }

          v25[2] = v20 + 1;
          outlined init with take of (Date, Double)(v38, v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v20, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          i = v50;
          v22 = v51;
          goto LABEL_5;
        }
      }

      if ((a3 & 0x10) != 0)
      {
        v29 = [v27 sumQuantity];
        if (v29)
        {
          v30 = v29;
          v31 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

LABEL_5:
      ++v24;
      if (v28 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (v22 < 0)
    {
      v40 = v22;
    }

    else
    {
      v40 = v22 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_31:

  v41 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v48, a3, a4);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5(v25, v47, v41, &v60);
  v43 = v61;
  v44 = v62;
  v45 = v49;
  *v49 = v60;
  *(v45 + 8) = v43;
  v45[2] = v44;
  return result;
}

id unit #1 <A>(from:) in SeriesDataShape.dimension(from:with:preferredUnit:)(id a1, char a2)
{
  if (((a2 & 2) == 0 || (result = [a1 averageQuantity]) == 0) && ((a2 & 0x10) == 0 || (result = objc_msgSend(a1, sel_sumQuantity)) == 0) && ((a2 & 4) == 0 || (result = objc_msgSend(a1, sel_minimumQuantity)) == 0))
  {
    if ((a2 & 8) == 0)
    {
      return 0;
    }

    result = [a1 maximumQuantity];
    if (!result)
    {
      return result;
    }
  }

  v5 = result;
  v6 = [result _unit];
  v7 = [v6 _foundationUnit];

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t outlined init with take of (Date, Double)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for (Date, Double)?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for (DateInterval, ClosedRange<Double>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ClosedRange<Double>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of (Date, Double)?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for (Date, Double)?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for (Date, Double)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t associated type witness table accessor for SeriesDataShape.XShape : IntervalChartValue in <> HealthChartsDataShape<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for SeriesDataShape.YShape : IntervalChartValue in <> HealthChartsDataShape<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t _s10Foundation4DateVAC16HealthChartsCore18IntervalChartValueADWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for HealthChartsDataShape(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsDataShape(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for HealthChartsDataShape(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = *v3;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v8)
    {
      v9 = result;
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v12 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v12);
      *v4 = v12;
    }
  }

  else
  {
    v14 = *v3;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v15, *&a1);
    *v3 = v17;
  }

  return result;
}

void DiscreteDateRangeData.buildData(from:aggregation:histogramBucketSize:zeroCountForGap:preferredUnit:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v106 = a5;
  v107 = a6;
  type metadata accessor for (DateInterval, ClosedRange<Double>)();
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = *(v124 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = &v104[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v127 = &v104[-v14];
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v116 = &v104[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v115 = &v104[-v19];
  v126 = type metadata accessor for DateInterval();
  v20 = *(v126 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v126);
  v128 = &v104[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v105 = *a2;
    v23 = [a3 _unit];
    [a3 doubleValueForUnit_];
    v25 = v24;

    v26 = (a1 & 0xFFFFFFFFFFFFFF8);
    v109 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_122;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v91))
    {
      v28 = 0;
      v114 = a1 & 0xC000000000000001;
      v108 = a1 + 32;
      v123 = (v20 + 16);
      v26 = &v133;
      v113 = (v20 + 8);
      v129 = MEMORY[0x277D84F90];
      v20 = 1;
      v29 = 0.0;
      v30 = 0.0;
      v111 = a3;
      v110 = a1;
      v112 = i;
      while (1)
      {
        if (v114)
        {
          v31 = MEMORY[0x2530772A0](v28, a1);
        }

        else
        {
          if (v28 >= *(v109 + 16))
          {
            goto LABEL_121;
          }

          v31 = *(v108 + 8 * v28);
        }

        v32 = v31;
        v33 = __OFADD__(v28++, 1);
        if (v33)
        {
          break;
        }

        v34 = [v31 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 endDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.init(start:end:)();
        v36 = [v32 minimumValue];
        v37 = [a3 _unit];
        [v36 doubleValueForUnit_];
        v39 = v38;

        v40 = [v32 maximumValue];
        v41 = [a3 _unit];
        [v40 doubleValueForUnit_];
        v43 = v42;

        if (v39 <= v30)
        {
          v44 = v39;
        }

        else
        {
          v44 = v30;
        }

        if (v43 > v29)
        {
          v45 = v43;
        }

        else
        {
          v45 = v29;
        }

        if (v20)
        {
          v30 = v39;
        }

        else
        {
          v30 = v44;
        }

        if (v20)
        {
          v29 = v43;
        }

        else
        {
          v29 = v45;
        }

        v46 = [v32 minimumBucketValue];
        v47 = [a3 _unit];
        [v46 doubleValueForUnit_];
        v49 = v48;

        v122 = v32;
        v50 = [v32 histogramCounts];
        type metadata accessor for NSNumber();
        v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v51 >> 62)
        {
          if (v51 < 0)
          {
            v87 = v51;
          }

          else
          {
            v87 = v51 & 0xFFFFFFFFFFFFFF8;
          }

          v52 = MEMORY[0x253077340](v87);
          if (!v52)
          {
LABEL_5:

            i = v112;
LABEL_6:
            (*v113)(v128, v126);
            goto LABEL_7;
          }
        }

        else
        {
          v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v52)
          {
            goto LABEL_5;
          }
        }

        v118 = v28;
        v119 = v30;
        v120 = v29;
        v53 = 0;
        a1 = 0;
        v54 = v51 & 0xC000000000000001;
        v20 = v51 & 0xFFFFFFFFFFFFFF8;
        v121 = v51 + 32;
        v55 = v49;
        while (2)
        {
          if (v55 > v39)
          {
            v56 = v55;
          }

          else
          {
            v56 = v39;
          }

          if (v43 >= v56)
          {
            v57 = v56;
          }

          else
          {
            v57 = v43;
          }

LABEL_34:
          a3 = 0;
          if (v49 > v39)
          {
            v58 = v49;
          }

          else
          {
            v58 = v39;
          }

          if (v43 >= v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v43;
          }

          v60 = v49;
          v61 = a1;
          while (1)
          {
            if (v54)
            {
              v62 = MEMORY[0x2530772A0](v61, v51);
            }

            else
            {
              if (v61 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_117;
              }

              v62 = *(v121 + 8 * v61);
            }

            v63 = v62;
            a1 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_115;
            }

            v64 = [v62 integerValue];
            if ((v53 & 1) == 0)
            {
              break;
            }

            if (v64 > 0)
            {
LABEL_71:

              v49 = v25 + v60;
              v53 = 1;
              if (a1 != v52)
              {
                goto LABEL_34;
              }

LABEL_86:
              v60 = v55;
              goto LABEL_87;
            }

            v65 = a3 + 1;
            if (__OFADD__(a3, 1))
            {
              goto LABEL_116;
            }

            if (v65 != a4)
            {

              if (a1 != v52)
              {
                a1 = v61 + 5;
                while (1)
                {
                  v71 = a1 - 4;
                  if (v54)
                  {
                    v72 = MEMORY[0x2530772A0](a1 - 4, v51);
                  }

                  else
                  {
                    if (v71 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_117;
                    }

                    v72 = *(v51 + 8 * a1);
                  }

                  v63 = v72;
                  v33 = __OFADD__(v71, 1);
                  v61 = a1 - 3;
                  if (v33)
                  {
                    break;
                  }

                  v60 = v25 + v60;
                  if ([v72 integerValue] > 0)
                  {
                    a1 -= 3;
                    goto LABEL_71;
                  }

                  if (__OFADD__(v65, 1))
                  {
                    goto LABEL_116;
                  }

                  if (v65 + 1 == a4)
                  {
                    goto LABEL_51;
                  }

                  ++v65;
                  ++a1;
                  if (v61 == v52)
                  {
                    goto LABEL_86;
                  }
                }

LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
                goto LABEL_119;
              }

              goto LABEL_86;
            }

            ++v61;
LABEL_51:
            v66 = v129;
            if (v57 > v59)
            {
              goto LABEL_118;
            }

            v67 = &v127[*(v125 + 48)];
            (*v123)();
            *v67 = v57;
            v67[1] = v59;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
            }

            v69 = v66[2];
            v68 = v66[3];
            a1 = v69 + 1;
            if (v69 >= v68 >> 1)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v66);
            }

            v66[2] = a1;
            v70 = (*(v124 + 80) + 32) & ~*(v124 + 80);
            v129 = v66;
            outlined init with take of (DateInterval, ClosedRange<Double>)(v127, v66 + v70 + *(v124 + 72) * v69);
            v53 = 0;
            v60 = v25 + v60;
            a3 = a4;
            if (v61 == v52)
            {
              goto LABEL_85;
            }
          }

          a3 = v64;

          if (a3 <= 0)
          {
            if (a1 == v52)
            {
LABEL_85:

              a3 = v111;
              a1 = v110;
              i = v112;
              v29 = v120;
              v30 = v119;
              v28 = v118;
              goto LABEL_6;
            }

            a3 = v61 + 5;
            while (1)
            {
              v73 = a3 - 4;
              if (v54)
              {
                v74 = MEMORY[0x2530772A0](a3 - 4, v51);
              }

              else
              {
                if (v73 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_117;
                }

                v74 = *(v51 + 8 * a3);
              }

              v75 = v74;
              a1 = a3 - 3;
              if (__OFADD__(v73, 1))
              {
                goto LABEL_115;
              }

              v60 = v25 + v60;
              v76 = [v74 integerValue];

              if (v76 >= 1)
              {
                break;
              }

              ++a3;
              if (a1 == v52)
              {
                goto LABEL_85;
              }
            }
          }

          v49 = v25 + v60;
          v53 = 1;
          v55 = v60;
          if (a1 != v52)
          {
            continue;
          }

          break;
        }

LABEL_87:

        if (v60 > v39)
        {
          v77 = v60;
        }

        else
        {
          v77 = v39;
        }

        if (v43 >= v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = v43;
        }

        if (v49 > v39)
        {
          v79 = v49;
        }

        else
        {
          v79 = v39;
        }

        if (v43 >= v79)
        {
          v80 = v79;
        }

        else
        {
          v80 = v43;
        }

        if (v78 > v80)
        {
          goto LABEL_120;
        }

        v81 = &v117[*(v125 + 48)];
        (*v123)();
        *v81 = v78;
        v81[1] = v80;
        v82 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82[2] + 1, 1, v82);
        }

        a3 = v111;
        a1 = v110;
        i = v112;
        v29 = v120;
        v30 = v119;
        v28 = v118;
        v83 = v122;
        v85 = v129[2];
        v84 = v129[3];
        if (v85 >= v84 >> 1)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1, v129);
        }

        (*v113)(v128, v126);
        v86 = v129;
        v129[2] = v85 + 1;
        outlined init with take of (DateInterval, ClosedRange<Double>)(v117, v86 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v85);
LABEL_7:
        v20 = 0;
        if (v28 == i)
        {
          goto LABEL_127;
        }
      }

LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      if (a1 >= 0)
      {
        v91 = v26;
      }

      else
      {
        v91 = a1;
      }
    }

    v129 = MEMORY[0x277D84F90];
    v29 = 0.0;
    v30 = 0.0;
LABEL_127:
    v92 = specialized static DiscreteDateRangeData.dimension(for:preferredUnit:)(a3, v106);
    v93 = v92;
    _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v129, v105, v92, &v130);
    v94 = v130;
    v95 = v131;
    v96 = v132;
    v97 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (i)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v97;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4u, isUniquelyReferenced_nonNull_native, v30);
      v99 = v130;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v99;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(6u, v100, v29);
      v97 = v130;
    }

    v101 = v95 | 0x2000000000000000;
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_25149B950;
    *(v102 + 32) = v94;
    *(v102 + 40) = v101;
    *(v102 + 48) = v96;

    v103 = v107;
    *v107 = 3;
    v103[1] = v97;
    v103[2] = v102;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v88 = unk_27F435E30;
    v89 = qword_27F435E38;
    v90 = v107;
    *v107 = static HealthChartsData.empty;
    v90[1] = v88;
    v90[2] = v89;
  }
}

void type metadata accessor for (DateInterval, ClosedRange<Double>)()
{
  if (!lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>))
  {
    type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>));
    }
  }
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v8;
  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v18 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a1;
    *(v20[7] + 8 * result) = a3;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t specialized static DiscreteDateRangeData.dimension(for:preferredUnit:)(id a1, id a2)
{
  if (a2)
  {
    v3 = [a2 _foundationUnit];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  v6 = [a1 _unit];
  v7 = [v6 _foundationUnit];

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t outlined init with take of (DateInterval, ClosedRange<Double>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (DateInterval, ClosedRange<Double>)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>)
  {
    lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>);
    }
  }
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}