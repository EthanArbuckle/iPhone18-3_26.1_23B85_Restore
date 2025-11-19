uint64_t sub_25C4D9C70()
{

  return swift_deallocObject();
}

uint64_t sub_25C4D9E10()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_25C4DA16C()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA1B4()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA23C()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA284()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DA2CC()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_25C4DA348()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25C4DA390()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0ts5Error_pGMd) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_25C4DA478()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGs5Error_pGMd);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_25C4DA574()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19NightingaleTraining9Pregnancy_pSgGs5Error_pGMd) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_25C4DA81C()
{

  return swift_deallocObject();
}

uint64_t sub_25C4DAF28()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_25C4DB464()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_25C4DB4B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = *(a3 + 16);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = type metadata accessor for Optional();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 48), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_25C4DB618(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = type metadata accessor for Optional();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 48), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C4DB96C()
{

  return swift_deallocObject();
}

uint64_t Array<A>.sum.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd);
  lazy protocol witness table accessor for type [Bool] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  return v1;
}

BOOL closure #1 in Array<A>.sum.getter@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  result = Bool.intValue.getter(*a2 & 1);
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v6 + result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type [Bool] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Bool] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Bool] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySbGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Bool] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

uint64_t Comparable.clamp(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v15 = a1;
  v22 = a2;
  v19 = a3;
  v26 = 0;
  v25 = 0;
  v27 = a2;
  v13 = *(a2 - 8);
  v14 = a2 - 8;
  v11 = v13[8];
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3);
  v20 = &v9 - v10;
  v12 = v10;
  v5 = MEMORY[0x28223BE20](&v9 - v10);
  v21 = &v9 - v12;
  v26 = v6;
  v25 = v4;
  v17 = v13[2];
  v16 = v13 + 2;
  v17(v5);
  max<A>(_:_:)();
  v24 = v13[1];
  v23 = v13 + 1;
  v24(v20, v22);
  v7 = type metadata accessor for ClosedRange();
  (v17)(v20, v15 + *(v7 + 36), v22);
  min<A>(_:_:)();
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t BinaryFloatingPoint.clamp(to:nonFiniteValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v22 = a2;
  v23 = a3;
  v21 = a4;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v46 = a3;
  v24 = type metadata accessor for FloatingPointRoundingRule();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v23);
  v28 = &v14 - v27;
  v29 = *(v5 - 8);
  v30 = v5 - 8;
  v36 = v29[8];
  v31 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v32 = &v14 - v31;
  v33 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v34 = &v14 - v33;
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v37 = &v14 - v35;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v39 = &v14 - v38;
  v45 = v9;
  v44 = v10;
  v43 = v4;
  v40 = *(v11 + 16);
  if (dispatch thunk of FloatingPoint.isFinite.getter())
  {
    (*(v25 + 104))(v28, *MEMORY[0x277D84678], v24);
    dispatch thunk of FloatingPoint.rounded(_:)();
    (*(v25 + 8))(v28, v24);
    v15 = v29[2];
    v14 = v29 + 2;
    v15(v32, v20, v23);
    v16 = *(*(v40 + 24) + 8);
    max<A>(_:_:)();
    v18 = v29[1];
    v17 = v29 + 1;
    v18(v32, v23);
    v18(v34, v23);
    v12 = type metadata accessor for ClosedRange();
    v15(v34, v20 + *(v12 + 36), v23);
    min<A>(_:_:)();
    v18(v34, v23);
    v18(v37, v23);
    lazy protocol witness table accessor for type Int and conformance Int();
    FixedWidthInteger.init<A>(_:)();
    return v41;
  }

  else
  {
    (v29[2])(v39, v22, v23);
    lazy protocol witness table accessor for type Int and conformance Int();
    FixedWidthInteger.init<A>(_:)();
    return v42;
  }
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t static HIDPFLUtils.getDayAndHourInGMT(date:)(uint64_t a1)
{
  v38 = a1;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v18 = 0;
  v41 = type metadata accessor for Calendar.Component();
  v28 = *(v41 - 8);
  v29 = v41 - 8;
  v15 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0);
  v39 = v11 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v40 = v11 - v16;
  v17 = (*(*(type metadata accessor for TimeZone() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v27 = v11 - v17;
  v26 = type metadata accessor for Calendar.Identifier();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v25 = v11 - v19;
  v45 = type metadata accessor for Calendar();
  v30 = *(v45 - 8);
  v31 = v45 - 8;
  v21 = v30[8];
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v25);
  v44 = v11 - v20;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v32 = v11 - v22;
  v62 = v11 - v22;
  v61 = v38;
  (*(v23 + 104))(v4, *MEMORY[0x277CC9830]);
  Calendar.init(identifier:)();
  (*(v23 + 8))(v25, v26);
  static TimeZone.gmt.getter(v27);
  Calendar.timeZone.setter();
  v34 = v30[2];
  v33 = v30 + 2;
  v34(v44, v32, v45);
  v35 = MEMORY[0x277CC9968];
  v5 = *MEMORY[0x277CC9968];
  v37 = v28[13];
  v36 = v28 + 13;
  v37(v40, v5, v41);
  v37(v39, *MEMORY[0x277CC9988], v41);
  v6 = Calendar.ordinality(of:in:for:)();
  v7 = v44;
  v50 = v6;
  v51 = v8;
  v43 = v28[1];
  v42 = v28 + 1;
  v43(v39, v41);
  v43(v40, v41);
  v47 = v30[1];
  v46 = v30 + 1;
  v47(v7, v45);
  v59 = v50;
  v52 = 1;
  v60 = v51 & 1;
  v34(v7, v32, v45);
  v37(v40, *MEMORY[0x277CC9980], v41);
  v37(v39, *v35, v41);
  v48 = Calendar.ordinality(of:in:for:)();
  v49 = v9;
  v43(v39, v41);
  v43(v40, v41);
  v47(v44, v45);
  v57 = v48;
  v58 = v49 & 1 & v52;
  v55 = v50;
  if (v51 & 1 & v52)
  {
    v14 = 0;
  }

  else
  {
    v14 = v55;
  }

  v13 = v14;
  v53 = v48;
  v54 = v49 & 1;
  if (v49)
  {
    v12 = 0;
  }

  else
  {
    v12 = v53;
  }

  v11[1] = v12;
  v47(v32, v45);
  return v13;
}

uint64_t static TimeZone.gmt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v2 - v4;
  v5 = 0;
  TimeZone.init(secondsFromGMT:)();
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  result = (*(v8 + 48))(v6, 1);
  if (result != 1)
  {
    return (*(v8 + 32))(v3, v6, v7);
  }

  __break(1u);
  return result;
}

void static HIDPFLUtils.checkMetrics(_:)()
{
  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
  v1 = swift_allocError();
  *v0 = 29;

  static PFLUtils.throwIfFalse(error:for:)();
}

unint64_t lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError()
{
  v2 = lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError;
  if (!lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError;
  if (!lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError;
  if (!lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLError and conformance HIDPFLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t closure #1 in static HIDPFLUtils.checkMetrics(_:)()
{
  v1 = objc_opt_self();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = [v1 isValidJSONObject_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(uint64_t result, uint64_t a2)
{
  if (a2 <= 0)
  {
    return result;
  }

  if (a2 >= result)
  {
    return result;
  }

  v2 = result;
  v5 = v2 - v2 % a2;
  if (!__OFSUB__(v2, v2 % a2))
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t static HIDPFLUtils.inplaceSub(_:_:)(uint64_t *a1)
{
  v2 = *a1;

  MEMORY[0x25F8895B0](v2, MEMORY[0x277D83A90]);

  lazy protocol witness table accessor for type Int and conformance Int();
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  numericCast<A, B>(_:)();
  numericCast<A, B>(_:)();
  numericCast<A, B>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  Array.reserveCapacity(_:)(0);

  cblas_saxpy_NEWLAPACK();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

uint64_t static HIDPFLUtils.findClosest<A>(_:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a6;
  v33 = a1;
  v32 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v45 = a3;
  v18 = *(a5 + 16);
  v28 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = v15 - v20;
  v22 = *(v6 - 8);
  v23 = v6 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - v20);
  v25 = v15 - v24;
  v26 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - v24);
  v27 = v15 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = type metadata accessor for Optional();
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v33);
  v40 = v15 - v35;
  v38 = *(TupleTypeMetadata2 - 8);
  v39 = TupleTypeMetadata2 - 8;
  v36 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v37 = v15 - v36;
  v44 = v15 - v36;
  v43 = v9;
  v42 = v10;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v9, v10, v11, v12, v13);
  if ((*(v38 + 48))(v40, 1, TupleTypeMetadata2) == 1)
  {
    outlined destroy of (value: A, index: Int)?(v40, v29, TupleTypeMetadata2);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v16 = *(v22 + 8);
    v15[1] = v22 + 8;
    v16(v25, v29);
    static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v33, v27, v29, v30, v17);
    return (v16)(v27, v29);
  }

  else
  {
    outlined init with take of (value: A, index: Int)(v40, v37, v29, TupleTypeMetadata2);
    outlined init with copy of (value: A, index: Int)(v37, v17, v29, TupleTypeMetadata2);
    (*(v38 + 56))(v17, 0, 1, TupleTypeMetadata2);
    result = v37;
    outlined destroy of (value: A, index: Int)(v37, v29);
  }

  return result;
}

uint64_t static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v60 = a1;
  v69 = a2;
  v61 = a3;
  v51 = a4;
  v71 = MEMORY[0x277D83988];
  v52 = "Fatal error";
  v53 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = "NightingaleTraining/HIDPFLUtils.swift";
  v55 = MEMORY[0x277D83958];
  v82 = 0;
  v81 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v83 = a3;
  v56 = *(a3 - 8);
  v57 = a3 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v59 = &v19 - v58;
  v62 = 0;
  v66 = *(*(type metadata accessor for Optional() - 8) + 64);
  v63 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v62);
  v64 = &v19 - v63;
  v65 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v67 = &v19 - v65;
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v70 = &v19 - v68;
  v82 = v7;
  v81 = v69;
  v80 = v7;
  v72 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v50, 1);
  }

  else
  {
    v79 = v60;
    Collection.first.getter();
    v48 = *(v56 + 48);
    v49 = v56 + 48;
    if (v48(v70, 1, v61) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v47 = dispatch thunk of static Comparable.< infix(_:_:)();
    v45 = *(v56 + 8);
    v46 = v56 + 8;
    v45(v70, v61);
    if (v47)
    {
      v8 = swift_getTupleTypeMetadata2();
      return (*(*(v8 - 8) + 56))(v50, 1);
    }

    v78 = v60;
    v44 = swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    if (v48(v67, 1, v61) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v43 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v45(v67, v61);
    if (v43)
    {
      v41 = swift_getTupleTypeMetadata2();
      v42 = *(v41 + 48);
      v74 = v60;
      BidirectionalCollection.last.getter();
      if (v48(v64, 1, v61) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      (*(v56 + 32))(v50, v64, v61);
      result = MEMORY[0x25F8895B0](v60, v61);
      v40 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        v11 = v41;
        *(v50 + v42) = v40;
        return (*(*(v11 - 8) + 56))();
      }

      goto LABEL_47;
    }

    v77 = 0;
    result = MEMORY[0x25F8895B0](v60, v61);
    v39 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v76 = v39;
    v37 = v39;
    for (i = 0; ; i = v24)
    {
      v34 = i;
      v35 = v37;
      v36 = v37;
      if (v37 < i)
      {
        break;
      }

      v33 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_44;
      }

      v30 = v33 / 2;
      v75 = v33 / 2;
      Array.subscript.getter();
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45(v59, v61);
      v32 = v30;
      if (v31)
      {
        v28 = v32;
        v29 = swift_getTupleTypeMetadata2();
        v27 = *(v29 + 48);
        (*(v56 + 16))(v50, v69, v61);
        v14 = v29;
        *(v50 + v27) = v28;
        return (*(*(v14 - 8) + 56))();
      }

      Array.subscript.getter();
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v45(v59, v61);
      result = v26;
      if (v26)
      {
        v25 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_46;
        }

        v77 = v25;
        v23 = v35;
        v24 = v25;
      }

      else
      {
        v22 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_45;
        }

        v76 = v22;
        v23 = v22;
        v24 = v34;
      }

      v37 = v23;
    }

    v20 = v36;
    v21 = swift_getTupleTypeMetadata2();
    v19 = *(v21 + 48);
    Array.subscript.getter();
    v17 = v21;
    *(v50 + v19) = v20;
    return (*(*(v17 - 8) + 56))();
  }
}

uint64_t outlined destroy of (value: A, index: Int)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a3 - 8) + 48))(a1, 1))
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v57 = a1;
  v66 = a2;
  v58 = a3;
  v48 = a4;
  v68 = MEMORY[0x277D83988];
  v49 = MEMORY[0x277D83958];
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "NightingaleTraining/HIDPFLUtils.swift";
  v79 = 0;
  v78 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v80 = a3;
  v53 = *(a3 - 8);
  v54 = a3 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v56 = &v18 - v55;
  v59 = 0;
  v63 = *(*(type metadata accessor for Optional() - 8) + 64);
  v60 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v59);
  v61 = &v18 - v60;
  v62 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v64 = &v18 - v62;
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v67 = &v18 - v65;
  v79 = v7;
  v78 = v66;
  v77 = v7;
  v69 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v47, 1);
  }

  else
  {
    v76 = v57;
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v45 = *(v53 + 48);
    v46 = v53 + 48;
    if (v45(v67, 1, v58) == 1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v44 = dispatch thunk of static Comparable.> infix(_:_:)();
    v42 = *(v53 + 8);
    v43 = v53 + 8;
    v42(v67, v58);
    if (v44)
    {
      v8 = swift_getTupleTypeMetadata2();
      return (*(*(v8 - 8) + 56))(v47, 1);
    }

    else
    {
      v75 = v57;
      Collection.first.getter();
      if (v45(v64, 1, v58) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v41 = dispatch thunk of static Comparable.<= infix(_:_:)();
      v42(v64, v58);
      if (v41)
      {
        v39 = swift_getTupleTypeMetadata2();
        v40 = *(v39 + 48);
        v71 = v57;
        Collection.first.getter();
        if (v45(v61, 1, v58) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        (*(v53 + 32))(v47, v61, v58);
        v10 = v39;
        *(v47 + v40) = 0;
        return (*(*(v10 - 8) + 56))();
      }

      else
      {
        v74 = 0;
        result = MEMORY[0x25F8895B0](v57, v58);
        v38 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        else
        {
          v73 = v38;
          v36 = v38;
          for (i = 0; ; i = v23)
          {
            v33 = i;
            v34 = v36;
            v35 = i;
            if (v36 < i)
            {
              break;
            }

            v32 = v33 + v34;
            if (__OFADD__(v33, v34))
            {
              goto LABEL_40;
            }

            v29 = v32 / 2;
            v72 = v32 / 2;
            Array.subscript.getter();
            v30 = dispatch thunk of static Equatable.== infix(_:_:)();
            v42(v56, v58);
            v31 = v29;
            if (v30)
            {
              v27 = v31;
              v28 = swift_getTupleTypeMetadata2();
              v26 = *(v28 + 48);
              (*(v53 + 16))(v47, v66, v58);
              v13 = v28;
              *(v47 + v26) = v27;
              return (*(*(v13 - 8) + 56))();
            }

            Array.subscript.getter();
            v25 = dispatch thunk of static Comparable.< infix(_:_:)();
            v42(v56, v58);
            result = v25;
            if (v25)
            {
              v24 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_42;
              }

              v74 = v24;
              v22 = v34;
              v23 = v24;
            }

            else
            {
              v21 = v29 - 1;
              if (__OFSUB__(v29, 1))
              {
                goto LABEL_41;
              }

              v73 = v21;
              v22 = v21;
              v23 = v33;
            }

            v36 = v22;
          }

          v19 = v35;
          v20 = swift_getTupleTypeMetadata2();
          v18 = *(v20 + 48);
          Array.subscript.getter();
          v16 = v20;
          *(v47 + v18) = v19;
          return (*(*(v16 - 8) + 56))();
        }
      }
    }
  }

  return result;
}

uint64_t outlined init with take of (value: A, index: Int)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 32))();
  result = a2;
  *(a2 + *(a4 + 48)) = *(a1 + *(a4 + 48));
  return result;
}

uint64_t outlined init with copy of (value: A, index: Int)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  result = a2;
  *(a2 + *(a4 + 48)) = *(a1 + *(a4 + 48));
  return result;
}

uint64_t type metadata accessor for _HKPrivatePregnancyStartDateSource()
{
  v4 = lazy cache variable for type metadata for _HKPrivatePregnancyStartDateSource;
  if (!lazy cache variable for type metadata for _HKPrivatePregnancyStartDateSource)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for _HKPrivatePregnancyStartDateSource);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKCategoryValueSleepAnalysis()
{
  v4 = lazy cache variable for type metadata for HKCategoryValueSleepAnalysis;
  if (!lazy cache variable for type metadata for HKCategoryValueSleepAnalysis)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKCategoryValueSleepAnalysis);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for HKQueryOptions()
{
  v4 = lazy cache variable for type metadata for HKQueryOptions;
  if (!lazy cache variable for type metadata for HKQueryOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for HKQueryOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t protocol witness for SetAlgebra.init() in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance HKQueryOptions()
{
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance _HKPrivatePregnancyStartDateSource(uint64_t a1@<X8>)
{
  _HKPrivatePregnancyStartDateSource.init(rawValue:)();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

__C::HKQueryOptions protocol witness for OptionSet.init(rawValue:) in conformance HKQueryOptions@<X0>(Swift::UInt *a1@<X0>, __C::HKQueryOptions *a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.init(rawValue:) in conformance HKQueryOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*a1).rawValue;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

__C::HKQueryOptions protocol witness for RawRepresentable.rawValue.getter in conformance HKQueryOptions@<X0>(__C::HKQueryOptions *a1@<X8>)
{
  result.rawValue = HKQueryOptions.init(rawValue:)(*v1).rawValue;
  a1->rawValue = result.rawValue;
  return result;
}

unint64_t lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions()
{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions;
  if (!lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions)
  {
    type metadata accessor for HKQueryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQueryOptions and conformance HKQueryOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis()
{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis;
  if (!lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKCategoryValueSleepAnalysis and conformance HKCategoryValueSleepAnalysis);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource()
{
  v2 = lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource;
  if (!lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource)
  {
    type metadata accessor for _HKPrivatePregnancyStartDateSource();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource;
  if (!lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource)
  {
    type metadata accessor for _HKPrivatePregnancyStartDateSource();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource);
    return WitnessTable;
  }

  return v2;
}

Swift::UInt32_optional __swiftcall Date.toJulianDay()()
{
  v52 = "Fatal error";
  v53 = "Negative value is not representable";
  v54 = "Swift/Integers.swift";
  v55 = "Not enough bits to represent the passed value";
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v65 = 0;
  v56 = type metadata accessor for DateComponents();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v75 = &v21[-v59];
  v86 = &v21[-v59];
  v60 = type metadata accessor for Calendar();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = &v21[-v63];
  v85 = &v21[-v63];
  v84 = v0;
  static Calendar.current.getter();
  v73 = type metadata accessor for Calendar.Component();
  v72 = _allocateUninitializedArray<A>(_:)();
  v69 = v1;
  v66 = *(v73 - 8);
  v67 = v73 - 8;
  v71 = *(v66 + 104);
  v70 = v66 + 104;
  v71();
  v68 = *(v66 + 72);
  (v71)(v69 + v68, *MEMORY[0x277CC9998], v73);
  (v71)(v69 + 2 * v68, *MEMORY[0x277CC9968], v73);
  v2 = v72;
  _finalizeUninitializedArray<A>(_:)();
  v74 = v2;
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v76 = Set.init(arrayLiteral:)();
  Calendar.dateComponents(_:from:)();

  v77 = DateComponents.day.getter();
  if (v3)
  {
    goto LABEL_76;
  }

  v51 = v77;
  v49 = v77;
  v82 = v77;
  v50 = DateComponents.month.getter();
  if (v4)
  {
    goto LABEL_76;
  }

  v48 = v50;
  v46 = v50;
  v81 = v50;
  v5 = DateComponents.year.getter();
  v47 = v5;
  if (v6)
  {
    goto LABEL_76;
  }

  v45 = v47;
  v43 = v45;
  v80 = v45;
  v44 = v45 + 4800;
  if (__OFADD__(v45, 4800))
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v42 = v46 - 14;
  if (__OFSUB__(v46, 14))
  {
    goto LABEL_79;
  }

  v41 = v44 + v42 / 12;
  if (__OFADD__(v44, v42 / 12))
  {
    goto LABEL_80;
  }

  v40 = 1461 * v41;
  if ((1461 * v41) >> 64 != (1461 * v41) >> 63)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v38 = v40 / 4;
  v39 = v46 - 2;
  if (__OFSUB__(v46, 2))
  {
    goto LABEL_82;
  }

  v37 = v46 - 14;
  if (__OFSUB__(v46, 14))
  {
    goto LABEL_83;
  }

  v36 = 12 * (v37 / 12);
  if ((12 * (v37 / 12)) >> 64 != v36 >> 63)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v35 = v39 - v36;
  if (__OFSUB__(v39, v36))
  {
    goto LABEL_85;
  }

  v34 = 367 * v35;
  if ((367 * v35) >> 64 != (367 * v35) >> 63)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v33 = v38 + v34 / 12;
  if (__OFADD__(v38, v34 / 12))
  {
    goto LABEL_87;
  }

  v32 = v43 + 4900;
  if (__OFADD__(v43, 4900))
  {
    goto LABEL_88;
  }

  v31 = v46 - 14;
  if (__OFSUB__(v46, 14))
  {
    goto LABEL_89;
  }

  v30 = v32 + v31 / 12;
  if (__OFADD__(v32, v31 / 12))
  {
    goto LABEL_90;
  }

  v29 = 3 * (v30 / 100);
  if ((3 * (v30 / 100)) >> 64 != v29 >> 63)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v28 = v33 - v29 / 4;
  if (__OFSUB__(v33, v29 / 4))
  {
    goto LABEL_92;
  }

  v27 = v28 + v49;
  if (__OFADD__(v28, v49))
  {
    goto LABEL_93;
  }

  v26 = v27 - 32075;
  if (__OFSUB__(v27, 32075))
  {
    goto LABEL_94;
  }

  v79 = v26;
  if (v26 < 2400001)
  {
LABEL_76:
    (*(v57 + 8))(v75, v56);
    (*(v61 + 8))(v64, v60);
    v23 = 0;
    v24 = 1;
    goto LABEL_77;
  }

  v25 = v26 - 2400001;
  if (__OFSUB__(v26, 2400001))
  {
LABEL_95:
    __break(1u);
    return v5;
  }

  if (v25 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v25 > 0xFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_76;
  }

  v22 = v25;
  v78 = v25;
  (*(v57 + 8))(v75, v56);
  (*(v61 + 8))(v64, v60);
  v23 = v22;
  v24 = 0;
LABEL_77:
  LODWORD(v83) = v23;
  BYTE4(v83) = v24 & 1;
  return v83;
}

unint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component()
{
  v2 = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    type metadata accessor for Calendar.Component();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
    return WitnessTable;
  }

  return v2;
}

uint64_t UInt32.getDateComponents()@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v46 = a1;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v43 = &v20 - v42;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  v44 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v45 = &v20 - v44;
  v47 = type metadata accessor for DateComponents();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v46);
  v51 = &v20 - v50;
  v62 = &v20 - v50;
  v61 = result;
  v52 = result + 2400001;
  if (__OFADD__(result, 2400001))
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v60 = v52;
  v40 = v52 + 1401;
  if (__OFADD__(v52, 1401))
  {
    goto LABEL_59;
  }

  v39 = 4 * v52;
  if ((4 * v52) >> 64 != (4 * v52) >> 63)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v38 = v39 + 274277;
  if (__OFADD__(v39, 274277))
  {
    goto LABEL_61;
  }

  v37 = 3 * (v38 / 146097);
  if ((v38 / 146097 * 3) >> 64 != v37 >> 63)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v36 = v40 + v37 / 4;
  if (__OFADD__(v40, v37 / 4))
  {
    goto LABEL_63;
  }

  v35 = v36 - 38;
  if (__OFSUB__(v36, 38))
  {
    goto LABEL_64;
  }

  v59 = v35;
  v34 = 4 * v35;
  if ((4 * v35) >> 64 != (4 * v35) >> 63)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v33 = v34 + 3;
  if (__OFADD__(v34, 3))
  {
    goto LABEL_66;
  }

  v58 = v33;
  v32 = v33 % 1461;
  v57 = v33 % 1461 / 4;
  v31 = 5 * v57;
  if ((5 * v57) >> 64 != (5 * v57) >> 63)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v30 = v31 + 2;
  if (__OFADD__(v31, 2))
  {
    goto LABEL_68;
  }

  v56 = v30;
  v29 = v30 % 153;
  v28 = v30 % 153 / 5 + 1;
  if (__OFADD__(v30 % 153 / 5, 1))
  {
    goto LABEL_69;
  }

  v55 = v28;
  v27 = v30 / 153 + 2;
  if (__OFADD__(v30 / 153, 2))
  {
    goto LABEL_70;
  }

  v26 = v27 % 12 + 1;
  if (__OFADD__(v27 % 12, 1))
  {
    goto LABEL_71;
  }

  v54 = v26;
  v25 = v33 / 1461 - 4716;
  if (__OFSUB__(v33 / 1461, 4716))
  {
    goto LABEL_72;
  }

  v24 = 14 - v26;
  if (__OFSUB__(14, v26))
  {
    goto LABEL_73;
  }

  v23 = v25 + v24 / 12;
  if (!__OFADD__(v25, v24 / 12))
  {
    v53 = v23;
    v20 = 0;
    v18 = *(*(type metadata accessor for Calendar() - 8) + 56);
    v21 = 1;
    v18(v45, 1);
    v19 = type metadata accessor for TimeZone();
    (*(*(v19 - 8) + 56))(v43, v21);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v22 = 0;
    DateComponents.day.setter();
    DateComponents.month.setter();
    DateComponents.year.setter();
    return (*(v48 + 32))(v41, v51, v47);
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t UInt32.toDate(calendar:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = a3;
  v6 = a2;
  v14 = 0;
  v13 = 0;
  v12 = type metadata accessor for DateComponents();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v5[-v7];
  v14 = a1;
  v13 = MEMORY[0x28223BE20](v6);
  UInt32.getDateComponents()(v13, &v5[-v7]);
  Calendar.date(from:)();
  return (*(v9 + 8))(v11, v12);
}

uint64_t UInt32.toDate(atHour:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v14 = a1;
  v16 = a2;
  v10 = a3;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v15 = 0;
  v25 = 0;
  v22 = type metadata accessor for DateComponents();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  v12 = *(v18 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v10);
  v20 = &v9[-v11];
  v13 = v11;
  v5 = MEMORY[0x28223BE20](v4);
  v21 = &v9[-v13];
  v28 = &v9[-v13];
  v27 = v6;
  v26 = v7;
  v25 = v5;
  UInt32.getDateComponents()(v5, &v9[-v13]);
  DateComponents.hour.setter();
  (*(v18 + 16))(v20, v21, v22);
  Calendar.date(from:)();
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t static UInt32.modifiedJulianStartDate()@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v32 = 0;
  v31 = 0;
  v17 = 0;
  v26 = type metadata accessor for Calendar();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v8 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v25 = &v7 - v8;
  v32 = &v7 - v8;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v15 = &v7 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v14 = &v7 - v10;
  v28 = type metadata accessor for DateComponents();
  v20 = *(v28 - 8);
  v21 = v28 - 8;
  v12 = *(v20 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v22 = &v7 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v27 = &v7 - v13;
  v31 = &v7 - v13;
  v4 = *(v23 + 56);
  v16 = 1;
  v4(v3, 1);
  v5 = type metadata accessor for TimeZone();
  (*(*(v5 - 8) + 56))(v15, v16);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v18 = 0;
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.year.setter();
  DateComponents.hour.setter();
  DateComponents.minute.setter();
  static Calendar.current.getter();
  (*(v20 + 16))(v22, v27, v28);
  Calendar.date(from:)();
  v30 = *(v20 + 8);
  v29 = v20 + 8;
  v30(v22, v28);
  (*(v23 + 8))(v25, v26);
  return (v30)(v27, v28);
}

uint64_t sleepDayInterval(morningIndex:calendar:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v26 = a1;
  v25 = a2;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v22 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v23 = &v14 - v22;
  v24 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v22);
  v38 = &v14 - v24;
  v39 = type metadata accessor for Date();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v32 = v36[8];
  v27 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v26);
  v28 = &v14 - v27;
  v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v30 = &v14 - v29;
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v33 = &v14 - v31;
  v45 = &v14 - v31;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v35 = &v14 - v34;
  v44 = &v14 - v34;
  v43 = v8;
  v42 = v9;
  sleepDayStartForMorningIndex(morningIndex:calendar:)(v8, v9, v10);
  v40 = v36[6];
  v41 = v36 + 6;
  if (v40(v38, 1, v39) == 1)
  {
    outlined destroy of Date?(v38);
LABEL_7:
    v13 = type metadata accessor for DateInterval();
    return (*(*(v13 - 8) + 56))(v21, 1);
  }

  v18 = v36[4];
  v19 = v36 + 4;
  result = v18(v35, v38, v39);
  v20 = v26 + 1;
  if (v26 != -1)
  {
    sleepDayStartForMorningIndex(morningIndex:calendar:)(v20, v25, v23);
    if (v40(v23, 1, v39) != 1)
    {
      v18(v33, v23, v39);
      v15 = v36[2];
      v14 = v36 + 2;
      v15(v30, v35, v39);
      v15(v28, v33, v39);
      DateInterval.init(start:end:)();
      v12 = type metadata accessor for DateInterval();
      (*(*(v12 - 8) + 56))(v21, 0, 1);
      v17 = v36[1];
      v16 = v36 + 1;
      v17(v33, v39);
      return (v17)(v35, v39);
    }

    outlined destroy of Date?(v23);
    (v36[1])(v35, v39);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sleepDayStartForMorningIndex(morningIndex:calendar:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    return UInt32.toDate(atHour:calendar:)(18, a2, result - 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t NightingaleDReachLocation.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStarted", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CTEnrolled", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryPregnanciesCompleted", 0x19uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryUpdatingFeaturesCompleted", 0x1EuLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnanciesCompleted", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CheckValidPregnanciesCompleted", 0x1EuLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchorCompleted", 0x1FuLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeaturesCompleted", 0x1EuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DemographicsPeriodsCompleted", 0x1CuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationCompleted", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingCompleted", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginCompleted", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStopped", 0xDuLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

NightingaleTraining::NightingaleDReachLocation_optional __swiftcall NightingaleDReachLocation.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
    case 7:
      return 6;
    case 8:
      return 7;
    case 9:
      return 8;
    case 10:
      return 9;
    case 11:
      return 10;
    case 12:
      return 11;
    case 13:
      return 12;
    case 14:
      return 13;
  }

  return 14;
}

uint64_t NightingaleDReachLocation.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 3;
      break;
    case 3:
      v2 = 4;
      break;
    case 4:
      v2 = 5;
      break;
    case 5:
      v2 = 6;
      break;
    case 6:
      v2 = 7;
      break;
    case 7:
      v2 = 8;
      break;
    case 8:
      v2 = 9;
      break;
    case 9:
      v2 = 10;
      break;
    case 10:
      v2 = 11;
      break;
    case 11:
      v2 = 12;
      break;
    case 12:
      v2 = 13;
      break;
    case 13:
      v2 = 14;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NightingaleDReachLocation and conformance NightingaleDReachLocation()
{
  v2 = lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation;
  if (!lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation;
  if (!lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation;
  if (!lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDReachLocation and conformance NightingaleDReachLocation);
    return WitnessTable;
  }

  return v2;
}

NightingaleTraining::NightingaleDReachLocation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingaleDReachLocation@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NightingaleDReachLocation_optional *a2@<X8>)
{
  result.value = NightingaleDReachLocation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingaleDReachLocation@<X0>(uint64_t *a1@<X8>)
{
  result = NightingaleDReachLocation.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for keyMetricsLoss()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Loss", 4uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsLoss = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Loss", 4uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsLoss = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLoss != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsLoss;
}

uint64_t static NightingaleDPFLRunner.keyMetricsLoss.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyNumSlices()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumSlices", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyNumSlices = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumSlices", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyNumSlices = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNumSlices != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyNumSlices;
}

uint64_t static NightingaleDPFLRunner.keyNumSlices.getter()
{
  v1 = *NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsLossBeforeTraining()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LossBeforeTraining", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsLossBeforeTraining = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LossBeforeTraining", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsLossBeforeTraining = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLossBeforeTraining != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsLossBeforeTraining;
}

uint64_t static NightingaleDPFLRunner.keyMetricsLossBeforeTraining.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleTrackingCheckDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CycleTrackingCheckDurationS", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleTrackingCheckDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfAllPregnancies()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfAllPregnancies", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfAllPregnancies != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies;
}

uint64_t static NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfPregnancyInitializerFailed()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfPregnancyInitializerFailed", 0x22uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfPregnancyInitializerFailed != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed;
}

uint64_t static NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsPregnanciesQueryDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PregnanciesQueryDurationS", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsPregnanciesQueryDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsUpdatingFeaturesQueryDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatingFeaturesQueryDurationS", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsUpdatingFeaturesQueryDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsUpdatePregnanciesDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnanciesDurationS", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsUpdatePregnanciesDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfValidPregnancies()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfValidPregnancies", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfValidPregnancies != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies;
}

uint64_t static NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsUpdateSliceDeltaAnchorDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchorDurationS", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsUpdateSliceDeltaAnchorDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsRequiredFeaturesQueryDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequiredFeaturesQueryDurationS", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsRequiredFeaturesQueryDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSHRDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsSHRDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsSHRDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSHRDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsSHRDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsSHRDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFeaturizationDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationDurationS", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFeaturizationDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationDurationS", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsFeaturizationDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFeaturizationDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFeaturizationDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsBMIDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsBMIDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIDurationS", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsBMIDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsBMIDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsBMIDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsBMIDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsTrainingDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingDurationS", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsTrainingDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingDurationS", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsTrainingDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsTrainingDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsTrainingDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsTrainingDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsE2EDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("E2EPluginDurationS", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsE2EDurationS = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("E2EPluginDurationS", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsE2EDurationS = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsE2EDurationS != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsE2EDurationS;
}

uint64_t static NightingaleDPFLRunner.keyMetricsE2EDurationS.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsL2Norm()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("L2Norm", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsL2Norm = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("L2Norm", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsL2Norm = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsL2Norm != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsL2Norm;
}

uint64_t static NightingaleDPFLRunner.keyMetricsL2Norm.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsIterationElapsedTime()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IterationElapsedTime", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsIterationElapsedTime = v1;
  return result;
}

{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IterationElapsedTime", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsIterationElapsedTime = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsIterationElapsedTime != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsIterationElapsedTime;
}

uint64_t static NightingaleDPFLRunner.keyMetricsIterationElapsedTime.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidDurationPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidDurationPregnanciesCount", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidDurationPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidLMPDeltaPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidLMPDeltaPregnanciesCount", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidLMPDeltaPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsContainsFlowPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ContainsFlowPregnanciesCount", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsContainsFlowPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidLMPPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidLMPPregnanciesCount", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidLMPPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidEndPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidEndPregnanciesCount", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidEndPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsInvalidStartSourcePregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InvalidStartSourceCount", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsInvalidStartSourcePregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFailedToQueryUpdatingFeaturesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedToQueryUpdatingFeaturesCount", 0x22uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFailedToQueryUpdatingFeaturesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFailedToQuerySWTCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedToQuerySWTCount", 0x15uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFailedToQuerySWTCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFailedToGetHistoricalPeriodsCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedToGetHistoricalPeriodsCount", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFailedToGetHistoricalPeriodsCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsOverlappingPregnanciesCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OverlappingPregnanciesCount", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount = v1;
  return result;
}

__int128 *NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsOverlappingPregnanciesCount != -1)
  {
    swift_once();
  }

  return &static NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount;
}

uint64_t static NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.getter()
{
  v1 = *NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();

  return v1;
}

uint64_t NightingaleDPFLRunner.performanceMeasure.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t NightingaleDPFLRunner.performanceMeasure.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t NightingaleDPFLRunner.taskId.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t NightingaleDPFLRunner.taskId.setter(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  swift_endAccess();
}

uint64_t NightingaleDPFLRunner.useCase.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 40);
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t NightingaleDPFLRunner.useCase.setter(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  *(v1 + 40) = v3;
  return swift_endAccess();
}

uint64_t outlined init with copy of HealthDataQuery(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t NightingaleDPFLRunner.__allocating_init(useCase:)(char *a1)
{
  v7 = 0;
  v7 = *a1;
  v6 = v7;
  v3 = type metadata accessor for HealthDataStoreQuery();
  type metadata accessor for HKHealthStore();
  v1.super.isa = HKHealthStore.__allocating_init()().super.isa;
  v5[3] = v3;
  v5[4] = &protocol witness table for HealthDataStoreQuery;
  v5[0] = HealthDataStoreQuery.__allocating_init(store:)(v1.super.isa);
  v4 = NightingaleDPFLRunner.__allocating_init(useCase:query:)(&v6, v5);

  v8 = v4;

  return v4;
}

unint64_t type metadata accessor for HKHealthStore()
{
  v2 = lazy cache variable for type metadata for HKHealthStore;
  if (!lazy cache variable for type metadata for HKHealthStore)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKHealthStore);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t NightingaleDPFLRunner.init(useCase:query:)(char *a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  v4 = v10;
  v9 = a2;
  v8 = v2;
  *(v2 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  type metadata accessor for PerformanceMeasure();
  *(v6 + 16) = PerformanceMeasure.__allocating_init()();
  *(v6 + 40) = v4;
  outlined init with copy of HealthDataQuery(a2, v7);
  outlined init with take of HealthDataQuery(v7, (v6 + 48));
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t NightingaleDPFLRunner.performCustomConsent(taskPreferences:)(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  outlined init with copy of HealthDataQuery(v1 + 48, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v5 + 40))(0, 0, v4);
  if (!v3)
  {
    MEMORY[0x277D82BD8](v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 3536) = v4;
  *(v5 + 3528) = a1;
  *(v5 + 2632) = v5;
  *(v5 + 2640) = 0;
  *(v5 + 2520) = 0;
  *(v5 + 2528) = 0;
  *(v5 + 2648) = 0;
  *(v5 + 2656) = 0;
  *(v5 + 2664) = 0;
  *(v5 + 2672) = 0;
  *(v5 + 2680) = 0;
  *(v5 + 2688) = 0;
  *(v5 + 2696) = 0;
  *(v5 + 2704) = 0;
  *(v5 + 2712) = 0;
  *(v5 + 4352) = 0;
  *(v5 + 2536) = 0;
  *(v5 + 2544) = 0;
  *(v5 + 4240) = 0;
  *(v5 + 4248) = 0;
  *(v5 + 2720) = 0;
  *(v5 + 2728) = 0;
  *(v5 + 2736) = 0;
  *(v5 + 2744) = 0;
  *(v5 + 2752) = 0;
  *(v5 + 2760) = 0;
  *(v5 + 2768) = 0;
  *(v5 + 2776) = 0;
  *(v5 + 2784) = 0;
  *(v5 + 2792) = 0;
  *(v5 + 2800) = 0;
  *(v5 + 2808) = 0;
  *(v5 + 2816) = 0;
  *(v5 + 2824) = 0;
  *(v5 + 2832) = 0;
  *(v5 + 4256) = 0;
  *(v5 + 2840) = 0;
  *(v5 + 2848) = 0;
  *(v5 + 2856) = 0;
  *(v5 + 2872) = 0;
  *(v5 + 2888) = 0;
  *(v5 + 2904) = 0;
  *(v5 + 2472) = 0;
  *(v5 + 2480) = 0;
  *(v5 + 2488) = 0;
  *(v5 + 2912) = 0;
  *(v5 + 2920) = 0;
  *(v5 + 2928) = 0;
  *(v5 + 2936) = 0;
  *(v5 + 2952) = 0;
  *(v5 + 2968) = 0;
  *(v5 + 2984) = 0;
  *(v5 + 3000) = 0;
  *(v5 + 3016) = 0;
  *(v5 + 3032) = 0;
  *(v5 + 3048) = 0;
  *(v5 + 3056) = 0;
  *(v5 + 3064) = 0;
  *(v5 + 4264) = 0;
  *(v5 + 4272) = 0;
  *(v5 + 4280) = 0;
  *(v5 + 2428) = 0;
  *(v5 + 3096) = 0;
  *(v5 + 3112) = 0;
  *(v5 + 3120) = 0;
  *(v5 + 3128) = 0;
  *(v5 + 3136) = 0;
  *(v5 + 3144) = 0;
  *(v5 + 4288) = 0;
  *(v5 + 4296) = 0;
  *(v5 + 3152) = 0;
  *(v5 + 2568) = 0;
  *(v5 + 2576) = 0;
  *(v5 + 4304) = 0;
  *(v5 + 3168) = 0;
  *(v5 + 4312) = 0;
  *(v5 + 4320) = 0;
  *(v5 + 3208) = 0;
  *(v5 + 3216) = 0;
  *(v5 + 2496) = 0;
  *(v5 + 2504) = 0;
  *(v5 + 2512) = 0;
  *(v5 + 3264) = 0;
  *(v5 + 3272) = 0;
  *(v5 + 4328) = 0;
  *(v5 + 4336) = 0;
  *(v5 + 4344) = 0;
  *(v5 + 2452) = 0;
  *(v5 + 3344) = 0;
  *(v5 + 3352) = 0;
  *(v5 + 3368) = 0;
  *(v5 + 3384) = 0;
  *(v5 + 3456) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 3544) = v6;
  *(v5 + 3552) = *(v6 - 8);
  *(v5 + 3560) = swift_task_alloc();
  *(v5 + 3568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24PrivateFederatedLearning8PFLErrorOSgMd);
  *(v5 + 3576) = swift_task_alloc();
  v7 = type metadata accessor for PFLError();
  *(v5 + 3584) = v7;
  *(v5 + 3592) = *(v7 - 8);
  *(v5 + 3600) = swift_task_alloc();
  *(v5 + 3608) = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  *(v5 + 3616) = v8;
  *(v5 + 3624) = *(v8 - 8);
  *(v5 + 3632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
  *(v5 + 3640) = swift_task_alloc();
  v9 = type metadata accessor for PFLStats.StdMethod();
  *(v5 + 3648) = v9;
  *(v5 + 3656) = *(v9 - 8);
  *(v5 + 3664) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v5 + 3672) = v10;
  *(v5 + 3680) = *(v10 - 8);
  *(v5 + 3688) = swift_task_alloc();
  *(v5 + 2640) = a1;
  *(v5 + 2520) = a2;
  *(v5 + 2528) = a3;
  *(v5 + 2648) = a4;
  *(v5 + 2656) = v4;

  return MEMORY[0x2822009F8](NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v32 = *(v0 + 3536);
  v34 = *(v0 + 3528);
  *(v0 + 2632) = v0;
  v1 = PFLTask.taskId.getter();
  NightingaleDPFLRunner.taskId.setter(v1, v2);
  type metadata accessor for HyperParams();
  dispatch thunk of PFLTask.recipe.getter();
  v3 = _dictionaryUpCast<A, B, C, D>(_:)();
  v33 = HyperParams.__allocating_init(recipe:)(v3);
  *(v0 + 3696) = v33;

  *(v0 + 2664) = v33;
  v4 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginStarted, v4);
  v5 = PFLTask.iterationElapsedTime()();
  *(v0 + 3704) = v5;
  *(v0 + 2672) = v5;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CheckCycleTracking", 0x12uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  v35 = swift_task_alloc();
  v35[2] = v32;
  v35[3] = v33;
  v35[4] = v34;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo46NgtMenstrualAlgorithmsDayStreamProcessorConfigC_S2dSo0abc7MLModelG0CtMd);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(2, 1, v35, v6, v0 + 1952);

  v27 = *(v31 + 1952);
  *(v31 + 3712) = v27;
  v7 = *(v31 + 1960);
  *(v31 + 3720) = v7;
  v8 = *(v31 + 1968);
  *(v31 + 3728) = v8;
  v28 = *(v31 + 1976);
  *(v31 + 3736) = v28;
  *(v31 + 2680) = v27;
  *(v31 + 2688) = v7;
  *(v31 + 2696) = v8;
  *(v31 + 2704) = v28;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CheckCycleTracking", 0x12uLL, 1);
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v29 = v9;
  *(v31 + 3744) = v9;

  *(v31 + 2712) = v29;
  v10 = HyperParams.pflTaskType.getter();
  *(v31 + 4359) = v10;
  *(v31 + 4352) = v10;
  v30 = PFLTask.trainingModelPath(taskType:hyperParams:)();
  *(v31 + 3752) = v30;
  *(v31 + 3760) = v11;
  v24 = *(v31 + 3688);
  v23 = *(v31 + 3672);
  v22 = *(v31 + 3680);
  *(v31 + 2536) = v30;
  *(v31 + 2544) = v11;
  v21 = HyperParams.maximumDays.getter();
  *(v31 + 4240) = v21;
  Date.init()();
  *&v12 = Date.toJulianDay()();
  v25 = v12;
  *(v31 + 4260) = v12;
  v26 = BYTE4(v12);
  (*(v22 + 8))(v24, v23);
  if ((v26 & 1) != 0 || (*(v31 + 4248) = v25, v21 >= v25))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v16 = 14;
    swift_willThrow();

    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v27);

    v17 = *(*(v31 + 2632) + 8);

    return v17();
  }

  else
  {
    v18 = *(v31 + 3536);
    *(v31 + 3768) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 2720) = Dictionary.init(dictionaryLiteral:)();
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 2728) = Dictionary.init(dictionaryLiteral:)();
    *(v31 + 3776) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 2736) = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V5start_AD3endtGtMd);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 3784) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
    *(v31 + 2744) = Dictionary.init(dictionaryLiteral:)();
    *(v31 + 3792) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd);
    _allocateUninitializedArray<A>(_:)();
    *(v31 + 3800) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
    *(v31 + 2752) = Dictionary.init(dictionaryLiteral:)();
    *(v31 + 2760) = Dictionary.init()();
    *(v31 + 2768) = Dictionary.init()();
    *(v31 + 2776) = Dictionary.init()();
    *(v31 + 2784) = Dictionary.init()();
    *(v31 + 2792) = Dictionary.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf15periodStartMean_Sf0bC3StdttMd);
    _allocateUninitializedArray<A>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd);
    *(v31 + 2800) = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd);
    *(v31 + 2808) = _allocateUninitializedArray<A>(_:)();
    NightingaleDPFLRunner.performanceMeasure.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryPregnancies", 0x10uLL, 1);
    dispatch thunk of PerformanceMeasure.start(_:)();

    v19 = swift_task_alloc();
    *(v31 + 3808) = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v33;
    v20 = swift_task_alloc();
    *(v31 + 3816) = v20;
    *(v20 + 16) = &async function pointer to partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:);
    *(v20 + 24) = v19;
    v13 = swift_task_alloc();
    *(v31 + 3824) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SiSay19NightingaleTraining9Pregnancy_pGs6UInt32VtMd);
    *v13 = *(v31 + 2632);
    v13[1] = NightingaleDPFLRunner.run(task:useCase:context:);

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v31 + 2400, 3, 1, &async function pointer to partial apply for thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error), v20, v14);
  }
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 3832) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v16 = *(v0 + 4260);
  v9 = *(v0 + 3736);
  v11 = *(v0 + 3728);
  v10 = *(v0 + 3720);
  v12 = *(v0 + 3712);
  v13 = *(v0 + 3696);
  v14 = *(v0 + 3536);
  *(v0 + 2632) = v0;
  v1 = *(v0 + 2400);
  *(v0 + 3840) = v1;
  v2 = *(v0 + 2408);
  *(v0 + 3848) = v2;
  v8 = *(v0 + 2416);
  *(v0 + 3856) = v8;
  v15 = *(v0 + 2424);
  *(v0 + 4268) = v15;
  *(v0 + 2816) = v1;
  *(v0 + 2824) = v2;
  *(v0 + 2832) = v8;
  *(v0 + 4256) = v15;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryPregnancies", 0x10uLL, 1);
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v7 = v3;
  *(v0 + 3864) = v3;

  *(v0 + 2840) = v7;

  *(v0 + 2848) = v8;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryUpdatingFeatures", 0x15uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  type metadata accessor for CalendarPeriodPrediction();
  MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BE0](v9);
  v4 = CalendarPeriodPrediction.__allocating_init(config:mlConfig:urCycleLength:urPeriodLength:)(v12, v9, v10, v11);
  *(v0 + 3872) = v4;
  *(v0 + 2856) = v4;

  v19 = swift_task_alloc();
  *(v0 + 3880) = v19;
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  *(v19 + 32) = v15;
  *(v19 + 36) = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
  *(v0 + 3888) = v20;
  v18 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
  v5 = swift_task_alloc();
  *(v17 + 3896) = v5;
  *v5 = *(v17 + 2632);
  v5[1] = NightingaleDPFLRunner.run(task:useCase:context:);

  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v17 + 2864, 4, v18 & 1, &async function pointer to partial apply for closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), v19, v20);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 3904) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4080) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 2632) = v0;
  v47 = *(v0 + 3336);
  *(v0 + 3352) = v47;
  *(v0 + 4349) = 7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v1 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 4349, v47, &type metadata for HealthDataRawSampleType, v48, v1);
  if (*(v0 + 1736))
  {
    v45 = *(v46 + 1736);
    v43 = *(v46 + 1744);
    __swift_project_boxed_opaque_existential_1((v46 + 1712), v45);
    v44 = *(v43 + 16);
    *(v46 + 2200) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v46 + 2176));
    v44(v45, v43);
    __swift_destroy_boxed_opaque_existential_1(v46 + 1712);
  }

  else
  {
    outlined destroy of Pregnancy?(v46 + 1712);
    *(v46 + 2176) = 0;
    *(v46 + 2184) = 0;
    *(v46 + 2192) = 0;
    *(v46 + 2200) = 0;
  }

  if (*(v46 + 2200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
    if (swift_dynamicCast())
    {
      v42 = *(v46 + 3376);
    }

    else
    {
      v42 = 0;
    }

    v41 = v42;
  }

  else
  {
    outlined destroy of Pregnancy?(v46 + 2176);
    v41 = 0;
  }

  *(v46 + 3360) = v41;
  if (!*(v46 + 3360))
  {
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v46 + 3360))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v2 = *(v46 + 4080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v2)
  {
    v40 = *(v46 + 4276);
    v32 = *(v46 + 3920);
    v36 = *(v46 + 3800);
    v39 = *(v46 + 4056);

    NightingaleDPFLRunner.performanceMeasure.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1);
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v31 = v4;

    *(v46 + 3368) = v31;
    v5 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v5);
    v33 = *(v46 + 2848);

    v34 = MEMORY[0x25F8895B0](v33, v32);

    v35 = *(v46 + 2936);

    v37 = *(v46 + 2752);

    v38 = MEMORY[0x25F889130](v37, MEMORY[0x277D84CC0], v36, MEMORY[0x277D84CD0]);

    result = v38;
    if (v40 < v39)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v46 + 3864);
      v22 = *(v46 + 3848);
      v20 = *(v46 + 3840);
      v26 = *(v46 + 3760);
      v25 = *(v46 + 3752);
      v17 = *(v46 + 3744);
      v19 = *(v46 + 3704);
      v28 = *(v46 + 3696);
      *(v46 + 4252) = v40 - v39;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      Float.init<A>(_:)();
      v27 = (v38 / v6) * 100.0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
      _allocateUninitializedArray<A>(_:)();
      v24 = v7;
      v8 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v8, v24);
      v23 = MEMORY[0x277D839F8];
      v24[5] = MEMORY[0x277D839F8];
      v24[2] = v17;
      Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(Duration, v24 + 6);
      v24[11] = v23;
      v24[8] = v18;
      v10 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
      outlined init with copy of String(v10, v24 + 12);
      v24[17] = v23;
      v24[14] = v19;
      v11 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v11, v24 + 18);
      v21 = MEMORY[0x277D83B88];
      v24[23] = MEMORY[0x277D83B88];
      v24[20] = v20;
      v12 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
      outlined init with copy of String(v12, v24 + 24);
      v24[29] = v21;
      v24[26] = v22;
      v13 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v13, v24 + 30);
      v24[35] = v23;
      v24[32] = v31;
      _finalizeUninitializedArray<A>(_:)();
      v29 = Dictionary.init(dictionaryLiteral:)();
      v30 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v28, v25, v26, v34, v35, v29, v27);
      v15 = *(v46 + 3736);
      v16 = *(v46 + 3712);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);

      v14 = *(*(v46 + 2632) + 8);

      return v14(v30);
    }
  }

  return result;
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4104) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4136) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v459 = v0;
  v424 = v0;
  v425 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v426 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v427 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v428 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v429 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v0[329] = v0;
  v432 = v0 + 330;
  v450 = v0 + 315;
  v451 = v0 + 331;
  v452 = v0 + 332;
  v453 = v0 + 333;
  v454 = v0 + 334;
  v455 = v0 + 335;
  v456 = v0 + 336;
  v457 = v0 + 337;
  v449 = v0 + 338;
  v433 = v0 + 532;
  v434 = v0 + 355;
  v435 = v0 + 357;
  v436 = v0 + 361;
  v437 = v0 + 364;
  v438 = v0 + 365;
  v439 = v0 + 369;
  v431 = v0 + 373;
  v440 = v0 + 375;
  v441 = v0 + 377;
  v442 = v0 + 379;
  v443 = v0 + 381;
  v444 = v0 + 382;
  v445 = v0 + 383;
  v446 = v0 + 533;
  v447 = v0 + 534;
  v448 = v0 + 535;
  v458 = v0 + 2428;
  v430 = v0[517];
  v0[389] = 0;
  if (HyperParams.isSHRRequired()())
  {
    v418 = *(v424 + 1075);
    v419 = *(v424 + 1065);
    v417 = v424[462];
    v416 = v424[442];

    v1 = swift_task_alloc();
    v2 = v416;
    v3 = v417;
    v4 = v418;
    v5 = v419;
    v6 = v424;
    v421 = v1;
    v424[518] = v1;
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 32) = v4;
    *(v1 + 36) = v5;
    *(v1 + 40) = v6 + 348;
    *(v1 + 48) = v6 + 349;
    *(v1 + 56) = v6 + 389;
    v422 = MEMORY[0x277D84F78] + 8;
    v420 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    v7 = swift_task_alloc();
    v8 = v424;
    v9 = v420;
    v10 = v429;
    v11 = v421;
    v12 = v422;
    v13 = v7;
    v14 = v423;
    v424[519] = v13;
    *v13 = v8[329];
    v13[1] = NightingaleDPFLRunner.run(task:useCase:context:);
    v15 = 8;
    v16 = v9 & 1;

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v14, v15, v16, v10, v11, v12);
  }

  v389 = v424 + 330;
  v407 = v424 + 315;
  v408 = v424 + 331;
  v409 = v424 + 332;
  v410 = v424 + 333;
  v411 = v424 + 334;
  v412 = v424 + 335;
  v413 = v424 + 336;
  v414 = v424 + 337;
  v406 = v424 + 338;
  v390 = v424 + 532;
  v391 = v424 + 355;
  v392 = v424 + 357;
  v393 = v424 + 361;
  v394 = v424 + 364;
  v395 = v424 + 365;
  v396 = v424 + 369;
  v388 = v424 + 373;
  v397 = v424 + 375;
  v398 = v424 + 377;
  v399 = v424 + 379;
  v400 = v424 + 381;
  v401 = v424 + 382;
  v402 = v424 + 383;
  v403 = v424 + 533;
  v404 = v424 + 534;
  v405 = v424 + 535;
  v415 = v424 + 2428;
  if (HyperParams.isCalendarAlgorithmRequired()())
  {
    v381 = *(v424 + 1073);
    v379 = *(v424 + 1071);
    v384 = v424[484];
    v382 = *(v424 + 1065);
    v380 = v424[462];
    v383 = v424[442];

    v18 = swift_task_alloc();
    v19 = v379;
    v20 = v380;
    v21 = v381;
    v22 = v382;
    v23 = v383;
    v24 = v384;
    v25 = v424;
    v386 = v18;
    v424[521] = v18;
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v21;
    *(v18 + 36) = v22;
    *(v18 + 40) = v23;
    *(v18 + 48) = v25 + 340;
    *(v18 + 56) = v25 + 341;
    *(v18 + 64) = v25 + 342;
    *(v18 + 72) = v25 + 343;
    *(v18 + 80) = v24;
    *(v18 + 88) = v25 + 350;
    *(v18 + 96) = v25 + 351;
    v387 = MEMORY[0x277D84F78] + 8;
    v385 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    v26 = swift_task_alloc();
    v27 = v424;
    v28 = v385;
    v10 = v428;
    v11 = v386;
    v12 = v387;
    v29 = v26;
    v14 = v423;
    v424[522] = v29;
    *v29 = v27[329];
    v29[1] = NightingaleDPFLRunner.run(task:useCase:context:);
    v15 = 8;
    v16 = v28 & 1;

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v14, v15, v16, v10, v11, v12);
  }

  v351 = v424 + 330;
  v369 = v424 + 315;
  v370 = v424 + 331;
  v371 = v424 + 332;
  v372 = v424 + 333;
  v373 = v424 + 334;
  v374 = v424 + 335;
  v375 = v424 + 336;
  v376 = v424 + 337;
  v377 = v424 + 338;
  v368 = v424 + 339;
  v352 = v424 + 355;
  v353 = v424 + 357;
  v354 = v424 + 361;
  v355 = v424 + 364;
  v356 = v424 + 365;
  v357 = v424 + 369;
  v358 = v424 + 371;
  v344 = v424 + 375;
  v359 = v424 + 377;
  v360 = v424 + 379;
  v361 = v424 + 381;
  v362 = v424 + 382;
  v363 = v424 + 383;
  v364 = v424 + 533;
  v365 = v424 + 534;
  v366 = v424 + 535;
  v367 = v424 + 2428;
  v349 = v424[462];
  v341 = v424[442];
  v339 = NightingaleDPFLRunner.performanceMeasure.getter();
  v345 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v340 = v30;

  v378 = v424 + 390;
  v424[390] = v340;
  v31 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v31);
  v343 = NightingaleDPFLRunner.performanceMeasure.getter();
  v342 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v345 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v32 = HyperParams.metricsProcessEngine.getter();
  v33 = v424;
  v347 = v424 + 4309;
  *(v424 + 4309) = v32 & v345;
  v346 = v33 + 4310;
  *(v33 + 4310) = 1;
  v348 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  v350 = == infix<A>(_:_:)();

  if (v350)
  {
    v337 = 1;
  }

  else
  {
    v34 = HyperParams.featurizerEngine.getter();
    v35 = v424;
    *(v424 + 4311) = v34 & 1;
    *(v35 + 4316) = 1;
    v337 = == infix<A>(_:_:)();
  }

  v336 = v337;

  if (v337)
  {
    static HIDMorpheusExtensions.extendMorpheus()();
    v335 = v430;
    if (v430)
    {
      v141 = v424[494];
      v142 = v424[484];
      v143 = v424[482];
      v144 = v424[470];
      v145 = v424[467];
      v146 = v424[464];
      v147 = v424[462];
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v146);

      v165 = v335;
      goto LABEL_35;
    }

    static Math.extendMorpheus()();
    v334 = 0;
    v333 = 0;
  }

  else
  {
    v333 = v430;
  }

  v36 = v333;
  v329 = *(v424 + 1065);
  v328 = v424[462];
  v325 = v424[442];
  v327 = v424[441];
  type metadata accessor for Featurizer();
  v37 = Featurizer.__allocating_init()();
  v38 = v424;
  v326 = v37;
  v424[524] = v37;
  v330 = v38 + 391;
  v38[391] = v37;

  v39 = swift_task_alloc();
  v40 = v326;
  v41 = v327;
  v42 = v328;
  v43 = v329;
  v44 = v424;
  v331 = v39;
  v424[525] = v39;
  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  *(v39 + 32) = v44 + 366;
  *(v39 + 40) = v44 + 344;
  *(v39 + 48) = v44 + 345;
  *(v39 + 56) = v44 + 347;
  *(v39 + 64) = v44 + 346;
  *(v39 + 72) = v44 + 348;
  *(v39 + 80) = v44 + 349;
  *(v39 + 88) = v44 + 350;
  *(v39 + 96) = v44 + 351;
  *(v39 + 104) = v44 + 343;
  *(v39 + 112) = v42;
  *(v39 + 120) = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v331, v45, (v424 + 2));
  v332 = v36;
  if (v36)
  {
    v134 = v424[494];
    v135 = v424[484];
    v136 = v424[482];
    v137 = v424[470];
    v138 = v424[467];
    v139 = v424[464];
    v140 = v424[462];
    v133 = v424[441];

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);

    v165 = v332;
    goto LABEL_35;
  }

  v263 = v424[514];
  v261 = v424[505];
  v291 = v424[504];
  v288 = v424[503];
  v286 = v424[502];
  v284 = v424[501];
  v282 = v424[500];
  v280 = v424[499];
  v278 = v424[498];
  v276 = v424[495];
  v259 = v424[489];
  v257 = v424[483];
  v274 = v424[481];
  v272 = v424[480];
  v255 = v424[468];
  v270 = v424[463];
  v252 = v424[462];
  v251 = v424[441];

  v294 = v424 + 23;
  v317 = v424 + 2;
  memcpy(v424 + 23, v424 + 2, 0xA8uLL);
  v254 = NightingaleDPFLRunner.performanceMeasure.getter();
  v253 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v267 = v46;

  v318 = v424 + 392;
  v424[392] = v267;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  v293 = _allocateUninitializedArray<A>(_:)();
  v290 = v47;
  v48 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v48, v290);
  v49 = v255;
  v50 = v290;
  v269 = MEMORY[0x277D839F8];
  v290[5] = MEMORY[0x277D839F8];
  v50[2] = v49;
  v256 = v50 + 6;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v256);
  v52 = v257;
  v53 = v290;
  v290[11] = v269;
  v53[8] = v52;
  v258 = v53 + 12;
  v54 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v54, v258);
  v55 = v259;
  v56 = v290;
  v290[17] = v269;
  v56[14] = v55;
  v260 = v56 + 18;
  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
  outlined init with copy of String(updated, v260);
  v58 = v261;
  v59 = v290;
  v290[23] = v269;
  v59[20] = v58;
  v262 = v59 + 24;
  v60 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v60, v262);
  v61 = v263;
  v62 = v290;
  v290[29] = v269;
  v62[26] = v61;
  v264 = v62 + 30;
  v63 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v63, v264);
  v64 = v290;
  v65 = v424[389];
  v290[35] = v269;
  v64[32] = v65;
  v265 = v64 + 36;
  v66 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v66, v265);
  v67 = v340;
  v68 = v290;
  v290[41] = v269;
  v68[38] = v67;
  v266 = v68 + 42;
  v69 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v69, v266);
  v70 = v267;
  v71 = v290;
  v290[47] = v269;
  v71[44] = v70;
  v268 = v71 + 48;
  v72 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v72, v268);
  v73 = v270;
  v74 = v290;
  v290[53] = v269;
  v74[50] = v73;
  v271 = v74 + 54;
  v75 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v75, v271);
  v76 = v272;
  v77 = v290;
  v295 = MEMORY[0x277D83B88];
  v290[59] = MEMORY[0x277D83B88];
  v77[56] = v76;
  v273 = v77 + 60;
  v78 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v78, v273);
  v79 = v274;
  v80 = v290;
  v290[65] = v295;
  v80[62] = v79;
  v275 = v80 + 66;
  v81 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v81, v275);
  v82 = v276;
  v83 = v290;
  v290[71] = v295;
  v83[68] = v82;
  v277 = v83 + 72;
  v84 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v84, v277);
  v85 = v278;
  v86 = v290;
  v290[77] = v295;
  v86[74] = v85;
  v279 = v86 + 78;
  v87 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v87, v279);
  v88 = v280;
  v89 = v290;
  v290[83] = v295;
  v89[80] = v88;
  v281 = v89 + 84;
  v90 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v90, v281);
  v91 = v282;
  v92 = v290;
  v290[89] = v295;
  v92[86] = v91;
  v283 = v92 + 90;
  v93 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v93, v283);
  v94 = v284;
  v95 = v290;
  v290[95] = v295;
  v95[92] = v94;
  v285 = v95 + 96;
  v96 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v96, v285);
  v97 = v286;
  v98 = v290;
  v290[101] = v295;
  v98[98] = v97;
  v287 = v98 + 102;
  v99 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v99, v287);
  v100 = v288;
  v101 = v290;
  v290[107] = v295;
  v101[104] = v100;
  v289 = v101 + 108;
  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(started, v289);
  v103 = v290;
  v104 = v291;
  v290[113] = v295;
  v103[110] = v104;
  _finalizeUninitializedArray<A>(_:)();
  v320 = MEMORY[0x277D837D0];
  v321 = MEMORY[0x277D84F70] + 8;
  v322 = MEMORY[0x277D837E0];
  v319 = Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v294, v424 + 44);
  v296 = v424[23];
  v297 = v424[24];
  v298 = v424[25];
  v299 = v424[26];
  v300 = v424[27];
  v301 = v424[28];
  v302 = v424[29];
  v303 = v424[30];
  v304 = v424[31];
  v305 = v424[32];
  v306 = v424[33];
  v307 = v424[34];
  v308 = v424[35];
  v309 = v424[36];
  v310 = v424[37];
  v311 = v424[38];
  v312 = v424[39];
  v313 = v424[40];
  v314 = v424[41];
  v315 = v424[42];
  v316 = v424[43];
  _dictionaryUpCast<A, B, C, D>(_:)();
  v323 = Dictionary.merging(_:uniquingKeysWith:)();
  v424[526] = v323;
  v324 = 0;
  v249 = v424[506];
  v248 = *(v424 + 4359);

  v105 = v248;
  v106 = v424;
  v250 = v424 + 393;
  v424[393] = v323;
  *(v106 + 4317) = v105;
  *(v106 + 4318) = 0;
  if (== infix<A>(_:_:)())
  {
    v107 = v324;
    v222 = *(v424 + 1065);
    v218 = v424[470];
    v217 = v424[469];
    v219 = v424[462];
    v223 = v424[441];
    v220 = v424[351];

    v221 = v424[356];

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v424 + 23, v424 + 128);
    v224 = v424[23];
    v242 = v424[24];
    v244 = v424[25];
    v245 = v424[26];
    v225 = v424[27];
    v226 = v424[28];
    v227 = v424[29];
    v228 = v424[30];
    v229 = v424[31];
    v230 = v424[32];
    v231 = v424[33];
    v232 = v424[34];
    v233 = v424[35];
    v234 = v424[36];
    v235 = v424[37];
    v236 = v424[38];
    v237 = v424[39];
    v238 = v424[40];
    v239 = v424[41];
    v240 = v424[42];
    v241 = v424[43];
    v243 = v122;
    v246 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v223, v217, v218, v219, v220, v221, v222, v224, v242, v244, v245, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v323);
    v247 = v107;
    if (!v107)
    {
      v209 = v424[494];
      v210 = v424[484];
      v211 = v424[482];
      v212 = v424[470];
      v213 = v424[467];
      v214 = v424[464];
      v215 = v424[462];

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v213);
      MEMORY[0x277D82BD8](v214);

      v216 = v246;
      goto LABEL_28;
    }

    v126 = v424[494];
    v127 = v424[484];
    v128 = v424[482];
    v129 = v424[470];
    v130 = v424[467];
    v131 = v424[464];
    v132 = v424[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);

    v165 = v247;
LABEL_35:
    v122[21] = v424[458];
    v122[22] = v424[455];
    v122[23] = v424[454];
    v122[24] = v424[451];
    v122[25] = v424[450];
    v122[26] = v424[447];
    v122[27] = v424[446];
    v122[28] = v424[445];

    v120 = v423;
    v121 = *(v424[329] + 8);

    return v121(v120);
  }

  v108 = v424;
  *(v424 + 4319) = *(v424 + 4359);
  *(v108 + 4324) = 1;
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v109 = v424;
    *(v424 + 4325) = *(v424 + 4359);
    *(v109 + 4326) = 2;
    if (== infix<A>(_:_:)())
    {
      v169 = v424[484];
      v168 = *(v424 + 1067);
      v166 = v424[462];
      v167 = v424[442];

      v110 = swift_task_alloc();
      v111 = v166;
      v112 = v167;
      v113 = v168;
      v114 = v169;
      v115 = v424;
      v170 = v110;
      v424[527] = v110;
      *(v110 + 16) = v111;
      *(v110 + 24) = v115 + 356;
      *(v110 + 32) = v112;
      *(v110 + 40) = v113;
      *(v110 + 48) = v115 + 340;
      *(v110 + 56) = v115 + 341;
      *(v110 + 64) = v115 + 342;
      *(v110 + 72) = v115 + 343;
      *(v110 + 80) = v115 + 351;
      *(v110 + 88) = v114;
      v116 = swift_task_alloc();
      v424[528] = v116;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
      v118 = v424;
      v10 = v427;
      v11 = v170;
      v12 = v117;
      *v116 = v424[329];
      v116[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v14 = v118 + 2436;
      v15 = 9;
      v16 = 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v14, v15, v16, v10, v11, v12);
    }

    v157 = v424[494];
    v158 = v424[484];
    v159 = v424[482];
    v160 = v424[470];
    v161 = v424[467];
    v162 = v424[464];
    v163 = v424[462];
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v164 = swift_allocError();
    *v119 = 69;
    swift_willThrow();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);

    v165 = v164;
    goto LABEL_35;
  }

  v207 = PFLTask.evalModelNames(taskType:hyperParams:)();
  v208 = v324;
  if (v324)
  {
    v122[36] = v424[494];
    v122[37] = v424[484];
    v122[38] = v424[482];
    v122[39] = v424[470];
    v123 = v424[467];
    v124 = v424[464];
    v125 = v424[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);

    v165 = v208;
    goto LABEL_35;
  }

  v182 = *(v424 + 1065);
  v179 = v424[462];
  v178 = v424[441];
  v180 = v424[351];

  v181 = v424[356];

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v424 + 23, v424 + 107);
  v183 = v424[23];
  v184 = v424[24];
  v202 = v424[25];
  v204 = v424[26];
  v185 = v424[27];
  v186 = v424[28];
  v187 = v424[29];
  v188 = v424[30];
  v189 = v424[31];
  v190 = v424[32];
  v191 = v424[33];
  v192 = v424[34];
  v193 = v424[35];
  v194 = v424[36];
  v195 = v424[37];
  v196 = v424[38];
  v197 = v424[39];
  v198 = v424[40];
  v199 = v424[41];
  v200 = v424[42];
  v201 = v424[43];
  v203 = v122;
  v205 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v207, v178, v179, v180, v181, v182, v183, v184, v202, v204, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v323);
  v206 = 0;
  v171 = v424[494];
  v172 = v424[484];
  v173 = v424[482];
  v174 = v424[470];
  v175 = v424[467];
  v176 = v424[464];
  v177 = v424[462];

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v175);
  MEMORY[0x277D82BD8](v176);

  v216 = v205;
LABEL_28:
  v156 = v216;
  v148 = v424[458];
  v149 = v424[455];
  v150 = v424[454];
  v151 = v424[451];
  v152 = v424[450];
  v153 = v424[447];
  v154 = v424[446];
  v155 = v424[445];

  v120 = v156;
  v121 = *(v424[329] + 8);

  return v121(v120);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4160) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v413 = v0;
  v379 = v0;
  v380 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v381 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v382 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v383 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  *(v0 + 2632) = v0;
  v386 = v0 + 2640;
  v404 = v0 + 2520;
  v405 = v0 + 2648;
  v406 = v0 + 2656;
  v407 = v0 + 2664;
  v408 = v0 + 2672;
  v409 = v0 + 2680;
  v410 = v0 + 2688;
  v411 = v0 + 2696;
  v403 = v0 + 2704;
  v387 = v0 + 4256;
  v388 = v0 + 2840;
  v389 = v0 + 2856;
  v390 = v0 + 2888;
  v391 = v0 + 2912;
  v392 = v0 + 2920;
  v393 = v0 + 2952;
  v385 = v0 + 2984;
  v394 = v0 + 3000;
  v395 = v0 + 3016;
  v396 = v0 + 3032;
  v397 = v0 + 3048;
  v398 = v0 + 3056;
  v399 = v0 + 3064;
  v400 = v0 + 4264;
  v401 = v0 + 4272;
  v402 = v0 + 4280;
  v412 = v0 + 2428;
  v384 = *(v0 + 4160);
  if (HyperParams.isCalendarAlgorithmRequired()())
  {
    v371 = *(v379 + 4292);
    v369 = *(v379 + 4284);
    v374 = *(v379 + 3872);
    v372 = *(v379 + 4260);
    v370 = *(v379 + 3696);
    v373 = *(v379 + 3536);

    v1 = swift_task_alloc();
    v2 = v369;
    v3 = v370;
    v4 = v371;
    v5 = v372;
    v6 = v373;
    v7 = v374;
    v8 = v379;
    v376 = v1;
    *(v379 + 4168) = v1;
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 32) = v4;
    *(v1 + 36) = v5;
    *(v1 + 40) = v6;
    *(v1 + 48) = v8 + 2720;
    *(v1 + 56) = v8 + 2728;
    *(v1 + 64) = v8 + 2736;
    *(v1 + 72) = v8 + 2744;
    *(v1 + 80) = v7;
    *(v1 + 88) = v8 + 2800;
    *(v1 + 96) = v8 + 2808;
    v377 = MEMORY[0x277D84F78] + 8;
    v375 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
    v9 = swift_task_alloc();
    v10 = v379;
    v11 = v375;
    v12 = v383;
    v13 = v376;
    v14 = v377;
    v15 = v9;
    v16 = v378;
    *(v379 + 4176) = v15;
    *v15 = *(v10 + 2632);
    v15[1] = NightingaleDPFLRunner.run(task:useCase:context:);
    v17 = 8;
    v18 = v11 & 1;

    return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v16, v17, v18, v12, v13, v14);
  }

  v341 = v379 + 2640;
  v359 = v379 + 2520;
  v360 = v379 + 2648;
  v361 = v379 + 2656;
  v362 = v379 + 2664;
  v363 = v379 + 2672;
  v364 = v379 + 2680;
  v365 = v379 + 2688;
  v366 = v379 + 2696;
  v367 = v379 + 2704;
  v358 = v379 + 2712;
  v342 = v379 + 2840;
  v343 = v379 + 2856;
  v344 = v379 + 2888;
  v345 = v379 + 2912;
  v346 = v379 + 2920;
  v347 = v379 + 2952;
  v348 = v379 + 2968;
  v334 = v379 + 3000;
  v349 = v379 + 3016;
  v350 = v379 + 3032;
  v351 = v379 + 3048;
  v352 = v379 + 3056;
  v353 = v379 + 3064;
  v354 = v379 + 4264;
  v355 = v379 + 4272;
  v356 = v379 + 4280;
  v357 = v379 + 2428;
  v339 = *(v379 + 3696);
  v331 = *(v379 + 3536);
  v329 = NightingaleDPFLRunner.performanceMeasure.getter();
  v335 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v330 = v20;

  v368 = v379 + 3120;
  *(v379 + 3120) = v330;
  v21 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v21);
  v333 = NightingaleDPFLRunner.performanceMeasure.getter();
  v332 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v335 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v22 = HyperParams.metricsProcessEngine.getter();
  v23 = v379;
  v337 = v379 + 4309;
  *(v379 + 4309) = v22 & v335;
  v336 = v23 + 4310;
  *(v23 + 4310) = 1;
  v338 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  v340 = == infix<A>(_:_:)();

  if (v340)
  {
    v327 = 1;
  }

  else
  {
    v24 = HyperParams.featurizerEngine.getter();
    v25 = v379;
    *(v379 + 4311) = v24 & 1;
    *(v25 + 4316) = 1;
    v327 = == infix<A>(_:_:)();
  }

  v326 = v327;

  if (v327)
  {
    static HIDMorpheusExtensions.extendMorpheus()();
    v325 = v384;
    if (v384)
    {
      v131 = *(v379 + 3952);
      v132 = *(v379 + 3872);
      v133 = *(v379 + 3856);
      v134 = *(v379 + 3760);
      v135 = *(v379 + 3736);
      v136 = *(v379 + 3712);
      v137 = *(v379 + 3696);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v136);

      v155 = v325;
      goto LABEL_31;
    }

    static Math.extendMorpheus()();
    v324 = 0;
    v323 = 0;
  }

  else
  {
    v323 = v384;
  }

  v26 = v323;
  v319 = *(v379 + 4260);
  v318 = *(v379 + 3696);
  v315 = *(v379 + 3536);
  v317 = *(v379 + 3528);
  type metadata accessor for Featurizer();
  v27 = Featurizer.__allocating_init()();
  v28 = v379;
  v316 = v27;
  *(v379 + 4192) = v27;
  v320 = v28 + 3128;
  *(v28 + 3128) = v27;

  v29 = swift_task_alloc();
  v30 = v316;
  v31 = v317;
  v32 = v318;
  v33 = v319;
  v34 = v379;
  v321 = v29;
  *(v379 + 4200) = v29;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  *(v29 + 32) = v34 + 2928;
  *(v29 + 40) = v34 + 2752;
  *(v29 + 48) = v34 + 2760;
  *(v29 + 56) = v34 + 2776;
  *(v29 + 64) = v34 + 2768;
  *(v29 + 72) = v34 + 2784;
  *(v29 + 80) = v34 + 2792;
  *(v29 + 88) = v34 + 2800;
  *(v29 + 96) = v34 + 2808;
  *(v29 + 104) = v34 + 2744;
  *(v29 + 112) = v32;
  *(v29 + 120) = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v321, v35, v379 + 16);
  v322 = v26;
  if (v26)
  {
    v124 = *(v379 + 3952);
    v125 = *(v379 + 3872);
    v126 = *(v379 + 3856);
    v127 = *(v379 + 3760);
    v128 = *(v379 + 3736);
    v129 = *(v379 + 3712);
    v130 = *(v379 + 3696);
    v123 = *(v379 + 3528);

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);

    v155 = v322;
    goto LABEL_31;
  }

  v253 = *(v379 + 4112);
  v251 = *(v379 + 4040);
  v281 = *(v379 + 4032);
  v278 = *(v379 + 4024);
  v276 = *(v379 + 4016);
  v274 = *(v379 + 4008);
  v272 = *(v379 + 4000);
  v270 = *(v379 + 3992);
  v268 = *(v379 + 3984);
  v266 = *(v379 + 3960);
  v249 = *(v379 + 3912);
  v247 = *(v379 + 3864);
  v264 = *(v379 + 3848);
  v262 = *(v379 + 3840);
  v245 = *(v379 + 3744);
  v260 = *(v379 + 3704);
  v242 = *(v379 + 3696);
  v241 = *(v379 + 3528);

  v284 = (v379 + 184);
  v307 = v379 + 16;
  memcpy((v379 + 184), (v379 + 16), 0xA8uLL);
  v244 = NightingaleDPFLRunner.performanceMeasure.getter();
  v243 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v257 = v36;

  v308 = v379 + 3136;
  *(v379 + 3136) = v257;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  v283 = _allocateUninitializedArray<A>(_:)();
  v280 = v37;
  v38 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v38, v280);
  v39 = v245;
  v40 = v280;
  v259 = MEMORY[0x277D839F8];
  v280[5] = MEMORY[0x277D839F8];
  v40[2] = v39;
  v246 = v40 + 6;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v246);
  v42 = v247;
  v43 = v280;
  v280[11] = v259;
  v43[8] = v42;
  v248 = v43 + 12;
  v44 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v44, v248);
  v45 = v249;
  v46 = v280;
  v280[17] = v259;
  v46[14] = v45;
  v250 = v46 + 18;
  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
  outlined init with copy of String(updated, v250);
  v48 = v251;
  v49 = v280;
  v280[23] = v259;
  v49[20] = v48;
  v252 = v49 + 24;
  v50 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v50, v252);
  v51 = v253;
  v52 = v280;
  v280[29] = v259;
  v52[26] = v51;
  v254 = v52 + 30;
  v53 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v53, v254);
  v54 = v280;
  v55 = *(v379 + 3112);
  v280[35] = v259;
  v54[32] = v55;
  v255 = v54 + 36;
  v56 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v56, v255);
  v57 = v330;
  v58 = v280;
  v280[41] = v259;
  v58[38] = v57;
  v256 = v58 + 42;
  v59 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v59, v256);
  v60 = v257;
  v61 = v280;
  v280[47] = v259;
  v61[44] = v60;
  v258 = v61 + 48;
  v62 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v62, v258);
  v63 = v260;
  v64 = v280;
  v280[53] = v259;
  v64[50] = v63;
  v261 = v64 + 54;
  v65 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v65, v261);
  v66 = v262;
  v67 = v280;
  v285 = MEMORY[0x277D83B88];
  v280[59] = MEMORY[0x277D83B88];
  v67[56] = v66;
  v263 = v67 + 60;
  v68 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v68, v263);
  v69 = v264;
  v70 = v280;
  v280[65] = v285;
  v70[62] = v69;
  v265 = v70 + 66;
  v71 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v71, v265);
  v72 = v266;
  v73 = v280;
  v280[71] = v285;
  v73[68] = v72;
  v267 = v73 + 72;
  v74 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v74, v267);
  v75 = v268;
  v76 = v280;
  v280[77] = v285;
  v76[74] = v75;
  v269 = v76 + 78;
  v77 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v77, v269);
  v78 = v270;
  v79 = v280;
  v280[83] = v285;
  v79[80] = v78;
  v271 = v79 + 84;
  v80 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v80, v271);
  v81 = v272;
  v82 = v280;
  v280[89] = v285;
  v82[86] = v81;
  v273 = v82 + 90;
  v83 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v83, v273);
  v84 = v274;
  v85 = v280;
  v280[95] = v285;
  v85[92] = v84;
  v275 = v85 + 96;
  v86 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v86, v275);
  v87 = v276;
  v88 = v280;
  v280[101] = v285;
  v88[98] = v87;
  v277 = v88 + 102;
  v89 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v89, v277);
  v90 = v278;
  v91 = v280;
  v280[107] = v285;
  v91[104] = v90;
  v279 = v91 + 108;
  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(started, v279);
  v93 = v280;
  v94 = v281;
  v280[113] = v285;
  v93[110] = v94;
  _finalizeUninitializedArray<A>(_:)();
  v310 = MEMORY[0x277D837D0];
  v311 = MEMORY[0x277D84F70] + 8;
  v312 = MEMORY[0x277D837E0];
  v309 = Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v284, (v379 + 352));
  v286 = *(v379 + 184);
  v287 = *(v379 + 192);
  v288 = *(v379 + 200);
  v289 = *(v379 + 208);
  v290 = *(v379 + 216);
  v291 = *(v379 + 224);
  v292 = *(v379 + 232);
  v293 = *(v379 + 240);
  v294 = *(v379 + 248);
  v295 = *(v379 + 256);
  v296 = *(v379 + 264);
  v297 = *(v379 + 272);
  v298 = *(v379 + 280);
  v299 = *(v379 + 288);
  v300 = *(v379 + 296);
  v301 = *(v379 + 304);
  v302 = *(v379 + 312);
  v303 = *(v379 + 320);
  v304 = *(v379 + 328);
  v305 = *(v379 + 336);
  v306 = *(v379 + 344);
  _dictionaryUpCast<A, B, C, D>(_:)();
  v313 = Dictionary.merging(_:uniquingKeysWith:)();
  *(v379 + 4208) = v313;
  v314 = 0;
  v239 = *(v379 + 4048);
  v238 = *(v379 + 4359);

  v95 = v238;
  v96 = v379;
  v240 = v379 + 3144;
  *(v379 + 3144) = v313;
  *(v96 + 4317) = v95;
  *(v96 + 4318) = 0;
  if (== infix<A>(_:_:)())
  {
    v97 = v314;
    v212 = *(v379 + 4260);
    v208 = *(v379 + 3760);
    v207 = *(v379 + 3752);
    v209 = *(v379 + 3696);
    v213 = *(v379 + 3528);
    v210 = *(v379 + 2808);

    v211 = *(v379 + 2848);

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v379 + 184), (v379 + 1024));
    v214 = *(v379 + 184);
    v232 = *(v379 + 192);
    v234 = *(v379 + 200);
    v235 = *(v379 + 208);
    v215 = *(v379 + 216);
    v216 = *(v379 + 224);
    v217 = *(v379 + 232);
    v218 = *(v379 + 240);
    v219 = *(v379 + 248);
    v220 = *(v379 + 256);
    v221 = *(v379 + 264);
    v222 = *(v379 + 272);
    v223 = *(v379 + 280);
    v224 = *(v379 + 288);
    v225 = *(v379 + 296);
    v226 = *(v379 + 304);
    v227 = *(v379 + 312);
    v228 = *(v379 + 320);
    v229 = *(v379 + 328);
    v230 = *(v379 + 336);
    v231 = *(v379 + 344);
    v233 = v112;
    v236 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v213, v207, v208, v209, v210, v211, v212, v214, v232, v234, v235, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v313);
    v237 = v97;
    if (!v97)
    {
      v199 = *(v379 + 3952);
      v200 = *(v379 + 3872);
      v201 = *(v379 + 3856);
      v202 = *(v379 + 3760);
      v203 = *(v379 + 3736);
      v204 = *(v379 + 3712);
      v205 = *(v379 + 3696);

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v203);
      MEMORY[0x277D82BD8](v204);

      v206 = v236;
      goto LABEL_24;
    }

    v116 = *(v379 + 3952);
    v117 = *(v379 + 3872);
    v118 = *(v379 + 3856);
    v119 = *(v379 + 3760);
    v120 = *(v379 + 3736);
    v121 = *(v379 + 3712);
    v122 = *(v379 + 3696);

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);

    v155 = v237;
LABEL_31:
    v112[22] = *(v379 + 3664);
    v112[23] = *(v379 + 3640);
    v112[24] = *(v379 + 3632);
    v112[25] = *(v379 + 3608);
    v112[26] = *(v379 + 3600);
    v112[27] = *(v379 + 3576);
    v112[28] = *(v379 + 3568);
    v112[29] = *(v379 + 3560);

    v110 = v378;
    v111 = *(*(v379 + 2632) + 8);

    return v111(v110);
  }

  v98 = v379;
  *(v379 + 4319) = *(v379 + 4359);
  *(v98 + 4324) = 1;
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v99 = v379;
    *(v379 + 4325) = *(v379 + 4359);
    *(v99 + 4326) = 2;
    if (== infix<A>(_:_:)())
    {
      v159 = *(v379 + 3872);
      v158 = *(v379 + 4268);
      v156 = *(v379 + 3696);
      v157 = *(v379 + 3536);

      v100 = swift_task_alloc();
      v101 = v156;
      v102 = v157;
      v103 = v158;
      v104 = v159;
      v105 = v379;
      v160 = v100;
      *(v379 + 4216) = v100;
      *(v100 + 16) = v101;
      *(v100 + 24) = v105 + 2848;
      *(v100 + 32) = v102;
      *(v100 + 40) = v103;
      *(v100 + 48) = v105 + 2720;
      *(v100 + 56) = v105 + 2728;
      *(v100 + 64) = v105 + 2736;
      *(v100 + 72) = v105 + 2744;
      *(v100 + 80) = v105 + 2808;
      *(v100 + 88) = v104;
      v106 = swift_task_alloc();
      *(v379 + 4224) = v106;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
      v108 = v379;
      v12 = v382;
      v13 = v160;
      v14 = v107;
      *v106 = *(v379 + 2632);
      v106[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v16 = v108 + 2436;
      v17 = 9;
      v18 = 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v16, v17, v18, v12, v13, v14);
    }

    v147 = *(v379 + 3952);
    v148 = *(v379 + 3872);
    v149 = *(v379 + 3856);
    v150 = *(v379 + 3760);
    v151 = *(v379 + 3736);
    v152 = *(v379 + 3712);
    v153 = *(v379 + 3696);
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v154 = swift_allocError();
    *v109 = 69;
    swift_willThrow();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);

    v155 = v154;
    goto LABEL_31;
  }

  v197 = PFLTask.evalModelNames(taskType:hyperParams:)();
  v198 = v314;
  if (v314)
  {
    v112[37] = *(v379 + 3952);
    v112[38] = *(v379 + 3872);
    v112[39] = *(v379 + 3856);
    v112[40] = *(v379 + 3760);
    v113 = *(v379 + 3736);
    v114 = *(v379 + 3712);
    v115 = *(v379 + 3696);

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);

    v155 = v198;
    goto LABEL_31;
  }

  v172 = *(v379 + 4260);
  v169 = *(v379 + 3696);
  v168 = *(v379 + 3528);
  v170 = *(v379 + 2808);

  v171 = *(v379 + 2848);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v379 + 184), (v379 + 856));
  v173 = *(v379 + 184);
  v174 = *(v379 + 192);
  v192 = *(v379 + 200);
  v194 = *(v379 + 208);
  v175 = *(v379 + 216);
  v176 = *(v379 + 224);
  v177 = *(v379 + 232);
  v178 = *(v379 + 240);
  v179 = *(v379 + 248);
  v180 = *(v379 + 256);
  v181 = *(v379 + 264);
  v182 = *(v379 + 272);
  v183 = *(v379 + 280);
  v184 = *(v379 + 288);
  v185 = *(v379 + 296);
  v186 = *(v379 + 304);
  v187 = *(v379 + 312);
  v188 = *(v379 + 320);
  v189 = *(v379 + 328);
  v190 = *(v379 + 336);
  v191 = *(v379 + 344);
  v193 = v112;
  v195 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v197, v168, v169, v170, v171, v172, v173, v174, v192, v194, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v313);
  v196 = 0;
  v161 = *(v379 + 3952);
  v162 = *(v379 + 3872);
  v163 = *(v379 + 3856);
  v164 = *(v379 + 3760);
  v165 = *(v379 + 3736);
  v166 = *(v379 + 3712);
  v167 = *(v379 + 3696);

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v165);
  MEMORY[0x277D82BD8](v166);

  v206 = v195;
LABEL_24:
  v146 = v206;
  v138 = *(v379 + 3664);
  v139 = *(v379 + 3640);
  v140 = *(v379 + 3632);
  v141 = *(v379 + 3608);
  v142 = *(v379 + 3600);
  v143 = *(v379 + 3576);
  v144 = *(v379 + 3568);
  v145 = *(v379 + 3560);

  v110 = v146;
  v111 = *(*(v379 + 2632) + 8);

  return v111(v110);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4184) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v359 = v0;
  v325 = v0;
  v313 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v314 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v315 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v0[329] = v0;
  v331 = v0 + 330;
  v349 = v0 + 315;
  v350 = v0 + 331;
  v351 = v0 + 332;
  v352 = v0 + 333;
  v353 = v0 + 334;
  v354 = v0 + 335;
  v355 = v0 + 336;
  v356 = v0 + 337;
  v357 = v0 + 338;
  v348 = v0 + 339;
  v332 = v0 + 355;
  v333 = v0 + 357;
  v334 = v0 + 361;
  v335 = v0 + 364;
  v336 = v0 + 365;
  v337 = v0 + 369;
  v338 = v0 + 371;
  v323 = v0 + 375;
  v339 = v0 + 377;
  v340 = v0 + 379;
  v341 = v0 + 381;
  v342 = v0 + 382;
  v343 = v0 + 383;
  v344 = v0 + 533;
  v345 = v0 + 534;
  v346 = v0 + 535;
  v347 = v0 + 2428;
  v316 = v0[523];
  v329 = v0[462];
  v320 = v0[442];
  v318 = NightingaleDPFLRunner.performanceMeasure.getter();
  v324 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v319 = v1;

  v358 = v325 + 390;
  v325[390] = v319;
  v2 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v2);
  v322 = NightingaleDPFLRunner.performanceMeasure.getter();
  v321 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v324 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v3 = HyperParams.metricsProcessEngine.getter();
  v4 = v325;
  v327 = v325 + 4309;
  *(v325 + 4309) = v3 & v324;
  v326 = v4 + 4310;
  *(v4 + 4310) = 1;
  v328 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  v330 = == infix<A>(_:_:)();

  if (v330)
  {
    v312 = 1;
  }

  else
  {
    v5 = HyperParams.featurizerEngine.getter();
    v6 = v325;
    *(v325 + 4311) = v5 & 1;
    *(v6 + 4316) = 1;
    v312 = == infix<A>(_:_:)();
  }

  v311 = v312;

  if (v312)
  {
    static HIDMorpheusExtensions.extendMorpheus()();
    v310 = v316;
    if (v316)
    {
      v115 = v325[494];
      v116 = v325[484];
      v117 = v325[482];
      v118 = v325[470];
      v119 = v325[467];
      v120 = v325[464];
      v121 = v325[462];
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v120);

      v139 = v310;
      goto LABEL_27;
    }

    static Math.extendMorpheus()();
    v308 = 0;
    v307 = 0;
  }

  else
  {
    v307 = v316;
  }

  v7 = v307;
  v303 = *(v325 + 1065);
  v302 = v325[462];
  v299 = v325[442];
  v301 = v325[441];
  type metadata accessor for Featurizer();
  v8 = Featurizer.__allocating_init()();
  v9 = v325;
  v300 = v8;
  v325[524] = v8;
  v304 = v9 + 391;
  v9[391] = v8;

  v10 = swift_task_alloc();
  v11 = v300;
  v12 = v301;
  v13 = v302;
  v14 = v303;
  v15 = v325;
  v305 = v10;
  v325[525] = v10;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v15 + 366;
  *(v10 + 40) = v15 + 344;
  *(v10 + 48) = v15 + 345;
  *(v10 + 56) = v15 + 347;
  *(v10 + 64) = v15 + 346;
  *(v10 + 72) = v15 + 348;
  *(v10 + 80) = v15 + 349;
  *(v10 + 88) = v15 + 350;
  *(v10 + 96) = v15 + 351;
  *(v10 + 104) = v15 + 343;
  *(v10 + 112) = v13;
  *(v10 + 120) = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd);
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v305, v16, (v325 + 2));
  v306 = v7;
  if (v7)
  {
    v108 = v325[494];
    v109 = v325[484];
    v110 = v325[482];
    v111 = v325[470];
    v112 = v325[467];
    v113 = v325[464];
    v114 = v325[462];
    v107 = v325[441];

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);

    v139 = v306;
    goto LABEL_27;
  }

  v237 = v325[514];
  v235 = v325[505];
  v265 = v325[504];
  v262 = v325[503];
  v260 = v325[502];
  v258 = v325[501];
  v256 = v325[500];
  v254 = v325[499];
  v252 = v325[498];
  v250 = v325[495];
  v233 = v325[489];
  v231 = v325[483];
  v248 = v325[481];
  v246 = v325[480];
  v229 = v325[468];
  v244 = v325[463];
  v226 = v325[462];
  v225 = v325[441];

  v268 = v325 + 23;
  v291 = v325 + 2;
  memcpy(v325 + 23, v325 + 2, 0xA8uLL);
  v228 = NightingaleDPFLRunner.performanceMeasure.getter();
  v227 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v241 = v17;

  v292 = v325 + 392;
  v325[392] = v241;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  v267 = _allocateUninitializedArray<A>(_:)();
  v264 = v18;
  v19 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v19, v264);
  v20 = v229;
  v21 = v264;
  v243 = MEMORY[0x277D839F8];
  v264[5] = MEMORY[0x277D839F8];
  v21[2] = v20;
  v230 = v21 + 6;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v230);
  v23 = v231;
  v24 = v264;
  v264[11] = v243;
  v24[8] = v23;
  v232 = v24 + 12;
  v25 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v25, v232);
  v26 = v233;
  v27 = v264;
  v264[17] = v243;
  v27[14] = v26;
  v234 = v27 + 18;
  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
  outlined init with copy of String(updated, v234);
  v29 = v235;
  v30 = v264;
  v264[23] = v243;
  v30[20] = v29;
  v236 = v30 + 24;
  v31 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v31, v236);
  v32 = v237;
  v33 = v264;
  v264[29] = v243;
  v33[26] = v32;
  v238 = v33 + 30;
  v34 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v34, v238);
  v35 = v264;
  v36 = v325[389];
  v264[35] = v243;
  v35[32] = v36;
  v239 = v35 + 36;
  v37 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v37, v239);
  v38 = v319;
  v39 = v264;
  v264[41] = v243;
  v39[38] = v38;
  v240 = v39 + 42;
  v40 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v40, v240);
  v41 = v241;
  v42 = v264;
  v264[47] = v243;
  v42[44] = v41;
  v242 = v42 + 48;
  v43 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v43, v242);
  v44 = v244;
  v45 = v264;
  v264[53] = v243;
  v45[50] = v44;
  v245 = v45 + 54;
  v46 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v46, v245);
  v47 = v246;
  v48 = v264;
  v269 = MEMORY[0x277D83B88];
  v264[59] = MEMORY[0x277D83B88];
  v48[56] = v47;
  v247 = v48 + 60;
  v49 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v49, v247);
  v50 = v248;
  v51 = v264;
  v264[65] = v269;
  v51[62] = v50;
  v249 = v51 + 66;
  v52 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v52, v249);
  v53 = v250;
  v54 = v264;
  v264[71] = v269;
  v54[68] = v53;
  v251 = v54 + 72;
  v55 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v55, v251);
  v56 = v252;
  v57 = v264;
  v264[77] = v269;
  v57[74] = v56;
  v253 = v57 + 78;
  v58 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v58, v253);
  v59 = v254;
  v60 = v264;
  v264[83] = v269;
  v60[80] = v59;
  v255 = v60 + 84;
  v61 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v61, v255);
  v62 = v256;
  v63 = v264;
  v264[89] = v269;
  v63[86] = v62;
  v257 = v63 + 90;
  v64 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v64, v257);
  v65 = v258;
  v66 = v264;
  v264[95] = v269;
  v66[92] = v65;
  v259 = v66 + 96;
  v67 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v67, v259);
  v68 = v260;
  v69 = v264;
  v264[101] = v269;
  v69[98] = v68;
  v261 = v69 + 102;
  v70 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(v70, v261);
  v71 = v262;
  v72 = v264;
  v264[107] = v269;
  v72[104] = v71;
  v263 = v72 + 108;
  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
  outlined init with copy of String(started, v263);
  v74 = v264;
  v75 = v265;
  v264[113] = v269;
  v74[110] = v75;
  _finalizeUninitializedArray<A>(_:)();
  v294 = MEMORY[0x277D837D0];
  v295 = MEMORY[0x277D84F70] + 8;
  v296 = MEMORY[0x277D837E0];
  v293 = Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v268, v325 + 44);
  v270 = v325[23];
  v271 = v325[24];
  v272 = v325[25];
  v273 = v325[26];
  v274 = v325[27];
  v275 = v325[28];
  v276 = v325[29];
  v277 = v325[30];
  v278 = v325[31];
  v279 = v325[32];
  v280 = v325[33];
  v281 = v325[34];
  v282 = v325[35];
  v283 = v325[36];
  v284 = v325[37];
  v285 = v325[38];
  v286 = v325[39];
  v287 = v325[40];
  v288 = v325[41];
  v289 = v325[42];
  v290 = v325[43];
  _dictionaryUpCast<A, B, C, D>(_:)();
  v297 = Dictionary.merging(_:uniquingKeysWith:)();
  v325[526] = v297;
  v298 = 0;
  v223 = v325[506];
  v222 = *(v325 + 4359);

  v76 = v222;
  v77 = v325;
  v224 = v325 + 393;
  v325[393] = v297;
  *(v77 + 4317) = v76;
  *(v77 + 4318) = 0;
  if (== infix<A>(_:_:)())
  {
    v78 = v298;
    v196 = *(v325 + 1065);
    v192 = v325[470];
    v191 = v325[469];
    v193 = v325[462];
    v197 = v325[441];
    v194 = v325[351];

    v195 = v325[356];

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v325 + 23, v325 + 128);
    v198 = v325[23];
    v216 = v325[24];
    v218 = v325[25];
    v219 = v325[26];
    v199 = v325[27];
    v200 = v325[28];
    v201 = v325[29];
    v202 = v325[30];
    v203 = v325[31];
    v204 = v325[32];
    v205 = v325[33];
    v206 = v325[34];
    v207 = v325[35];
    v208 = v325[36];
    v209 = v325[37];
    v210 = v325[38];
    v211 = v325[39];
    v212 = v325[40];
    v213 = v325[41];
    v214 = v325[42];
    v215 = v325[43];
    v217 = v96;
    v220 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v197, v191, v192, v193, v194, v195, v196, v198, v216, v218, v219, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v297);
    v221 = v78;
    if (!v78)
    {
      v183 = v325[494];
      v184 = v325[484];
      v185 = v325[482];
      v186 = v325[470];
      v187 = v325[467];
      v188 = v325[464];
      v189 = v325[462];

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v187);
      MEMORY[0x277D82BD8](v188);

      v190 = v220;
      goto LABEL_20;
    }

    v100 = v325[494];
    v101 = v325[484];
    v102 = v325[482];
    v103 = v325[470];
    v104 = v325[467];
    v105 = v325[464];
    v106 = v325[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);

    v139 = v221;
    goto LABEL_27;
  }

  v79 = v325;
  *(v325 + 4319) = *(v325 + 4359);
  *(v79 + 4324) = 1;
  if (== infix<A>(_:_:)())
  {
    v181 = PFLTask.evalModelNames(taskType:hyperParams:)();
    v182 = v298;
    if (!v298)
    {
      v156 = *(v325 + 1065);
      v153 = v325[462];
      v152 = v325[441];
      v154 = v325[351];

      v155 = v325[356];

      outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v325 + 23, v325 + 107);
      v157 = v325[23];
      v158 = v325[24];
      v176 = v325[25];
      v178 = v325[26];
      v159 = v325[27];
      v160 = v325[28];
      v161 = v325[29];
      v162 = v325[30];
      v163 = v325[31];
      v164 = v325[32];
      v165 = v325[33];
      v166 = v325[34];
      v167 = v325[35];
      v168 = v325[36];
      v169 = v325[37];
      v170 = v325[38];
      v171 = v325[39];
      v172 = v325[40];
      v173 = v325[41];
      v174 = v325[42];
      v175 = v325[43];
      v177 = v96;
      v179 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v181, v152, v153, v154, v155, v156, v157, v158, v176, v178, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v297);
      v180 = 0;
      v145 = v325[494];
      v146 = v325[484];
      v147 = v325[482];
      v148 = v325[470];
      v149 = v325[467];
      v150 = v325[464];
      v151 = v325[462];

      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v150);

      v190 = v179;
LABEL_20:
      v130 = v190;
      v122 = v325[458];
      v123 = v325[455];
      v124 = v325[454];
      v125 = v325[451];
      v126 = v325[450];
      v127 = v325[447];
      v128 = v325[446];
      v129 = v325[445];

      v94 = v130;
      v95 = *(v325[329] + 8);

      return v95(v94);
    }

    v96[36] = v325[494];
    v96[37] = v325[484];
    v96[38] = v325[482];
    v96[39] = v325[470];
    v97 = v325[467];
    v98 = v325[464];
    v99 = v325[462];

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);

    v139 = v182;
LABEL_27:
    v96[21] = v325[458];
    v96[22] = v325[455];
    v96[23] = v325[454];
    v96[24] = v325[451];
    v96[25] = v325[450];
    v96[26] = v325[447];
    v96[27] = v325[446];
    v96[28] = v325[445];

    v94 = v309;
    v95 = *(v325[329] + 8);

    return v95(v94);
  }

  v80 = v325;
  *(v325 + 4325) = *(v325 + 4359);
  *(v80 + 4326) = 2;
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v131 = v325[494];
    v132 = v325[484];
    v133 = v325[482];
    v134 = v325[470];
    v135 = v325[467];
    v136 = v325[464];
    v137 = v325[462];
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v138 = swift_allocError();
    *v93 = 69;
    swift_willThrow();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);

    v139 = v138;
    goto LABEL_27;
  }

  v143 = v325[484];
  v142 = *(v325 + 1067);
  v140 = v325[462];
  v141 = v325[442];

  v81 = swift_task_alloc();
  v82 = v140;
  v83 = v141;
  v84 = v142;
  v85 = v143;
  v86 = v325;
  v144 = v81;
  v325[527] = v81;
  *(v81 + 16) = v82;
  *(v81 + 24) = v86 + 356;
  *(v81 + 32) = v83;
  *(v81 + 40) = v84;
  *(v81 + 48) = v86 + 340;
  *(v81 + 56) = v86 + 341;
  *(v81 + 64) = v86 + 342;
  *(v81 + 72) = v86 + 343;
  *(v81 + 80) = v86 + 351;
  *(v81 + 88) = v85;
  v87 = swift_task_alloc();
  v325[528] = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
  v89 = v325;
  v90 = v315;
  v91 = v144;
  *v87 = v325[329];
  v87[1] = NightingaleDPFLRunner.run(task:useCase:context:);

  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v89 + 2436, 9, 1, v90, v91, v88);
}

{
  v4 = *v1;
  *(v4 + 2632) = *v1;
  *(v4 + 4232) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 2632) = v0;
  v39 = *(v0 + 2436);
  v40 = *(v0 + 2440);
  *(v0 + 4288) = v39;
  *(v0 + 4296) = v40;
  *(v0 + 3152) = Array.init()();
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v0 + 184), (v0 + 520));
  *(v0 + 3160) = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  Collection<>.makeIterator()();

  for (i = *(v0 + 4232); ; i = 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays6UInt32VGGMd);
    IndexingIterator.next()();
    v37 = *(v38 + 2460);
    if (*(v38 + 2464))
    {
      break;
    }

    *(v38 + 4304) = v37;
    *(v38 + 3168) = Set.init()();
    result = HyperParams.sliceSize.getter();
    v36 = v37 - result;
    if (v37 < result)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v35 = v36 + 1;
    if (v36 == -1)
    {
      goto LABEL_21;
    }

    if (v37 < v35)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v38 + 2444) = v35;
    *(v38 + 2448) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
    lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
    Set.formUnion<A>(_:)();
    v30 = *(v38 + 2752);

    *(v38 + 3176) = v30;
    v31 = swift_task_alloc();
    *(v31 + 16) = v38 + 3168;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
    v2 = lazy protocol witness table accessor for type [UInt32 : (Float, String)] and conformance [A : B]();
    result = _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lF(partial apply for closure #39 in NightingaleDPFLRunner.run(task:useCase:context:), v31, v32, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v33);
    v34 = result;
    if (i)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    *(v38 + 2468) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  v28 = *(v38 + 3712);
  v25 = *(v38 + 3664);
  v24 = *(v38 + 3648);
  v23 = *(v38 + 3656);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v21 = *(v38 + 2848);

  v22 = *(v38 + 2808);

  (*(v23 + 104))(v25, *MEMORY[0x277D41408], v24);
  v42 = static PFLStats.meanAndStd(_:_:)();
  v26 = v3;
  (*(v23 + 8))(v25, v24);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v38 + 184), (v38 + 688));
  v27 = MEMORY[0x25F8895B0]();

  v29 = [v28 birthDateComponents];
  if (v29)
  {
    v20 = *(v38 + 3640);
    v18 = *(v38 + 3632);
    v19 = *(v38 + 3616);
    v17 = *(v38 + 3624);
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v17 + 32))(v20, v18, v19);
    (*(v17 + 56))(v20, 0, 1, v19);
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    (*(*(v38 + 3624) + 56))(*(v38 + 3640), 1, 1, *(v38 + 3616));
  }

  v16 = *(v38 + 3640);
  v4 = HyperParams.birthDateRequired.getter();
  v43 = calculateAge(components:birthDateRequired:)(v16, v4 & 1);
  if (i)
  {
    v7 = *(v38 + 3736);
    v8 = *(v38 + 3712);
    outlined destroy of DateComponents?(*(v38 + 3640));

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);

    v5 = v33;
    v6 = *(*(v38 + 2632) + 8);
  }

  else
  {
    v11 = *(v38 + 4208);
    v13 = *(v38 + 3760);
    v12 = *(v38 + 3752);
    v14 = *(v38 + 3696);
    outlined destroy of DateComponents?(*(v38 + 3640));
    LODWORD(v44) = v42;
    BYTE4(v44) = BYTE4(v42) & 1;
    LODWORD(v45) = v26;
    BYTE4(v45) = 0;
    LODWORD(v46) = v43;
    BYTE4(v46) = BYTE4(v43) & 1;
    v15 = NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)(v14, v12, v13, v21, v22, v44, v45, v46, v27, v39, v40, v11);
    v9 = *(v38 + 3736);
    v10 = *(v38 + 3712);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);

    v5 = v15;
    v6 = *(*(v38 + 2632) + 8);
  }

  return v6(v5);
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v14 = *(v0 + 4080);
  v16 = *(v0 + 3920);
  v19 = *(v0 + 3864);
  v25 = *(v0 + 3848);
  v22 = *(v0 + 3840);
  v27 = *(v0 + 3760);
  v26 = *(v0 + 3752);
  v18 = *(v0 + 3744);
  v21 = *(v0 + 3704);
  v30 = *(v0 + 3696);
  *(v0 + 2632) = v0;

  v1 = v14;
  *(v0 + 3344) = v14;
  v15 = *(v0 + 2848);

  v28 = MEMORY[0x25F8895B0](v15, v16);

  *(v0 + 4348) = 9;
  v17 = *(v0 + 2928);

  MEMORY[0x25F8895B0](v17, v16);

  Array.init(repeating:count:)();
  v29 = static Array.+ infix(_:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  _allocateUninitializedArray<A>(_:)();
  v24 = v2;
  v3 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v3, v24);
  v20 = MEMORY[0x277D839F8];
  v24[5] = MEMORY[0x277D839F8];
  v24[2] = v18;
  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
  outlined init with copy of String(Duration, v24 + 6);
  v24[11] = v20;
  v24[8] = v19;
  v5 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
  outlined init with copy of String(v5, v24 + 12);
  v24[17] = v20;
  v24[14] = v21;
  v6 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
  outlined init with copy of String(v6, v24 + 18);
  v23 = MEMORY[0x277D83B88];
  v24[23] = MEMORY[0x277D83B88];
  v24[20] = v22;
  v7 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
  outlined init with copy of String(v7, v24 + 24);
  v24[29] = v23;
  v24[26] = v25;
  _finalizeUninitializedArray<A>(_:)();
  v31 = Dictionary.init(dictionaryLiteral:)();
  v32 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v30, v26, v27, v28, v29, v31, -1.0);
  v10 = v13[510];
  v11 = v13[467];
  v12 = v13[464];

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v8 = *(v13[329] + 8);

  return v8(v32);
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

{
  v3 = v0[467];
  v4 = v0[464];
  v0[329] = v0;

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[329] + 8);

  return v1();
}

uint64_t NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v721 = v1;
  MEMORY[0x28223BE20](a1);
  v690 = v1;
  v691 = closure #4 in NightingaleDPFLRunner.run(task:useCase:context:);
  v692 = closure #4 in NightingaleDPFLRunner.run(task:useCase:context:);
  v693 = closure #6 in NightingaleDPFLRunner.run(task:useCase:context:);
  v694 = closure #7 in NightingaleDPFLRunner.run(task:useCase:context:);
  v695 = closure #19 in NightingaleDPFLRunner.run(task:useCase:context:);
  v696 = "Fatal error";
  v697 = "Range requires lowerBound <= upperBound";
  v698 = "Swift/Range.swift";
  v699 = partial apply for closure #29 in NightingaleDPFLRunner.run(task:useCase:context:);
  v700 = partial apply for closure #29 in NightingaleDPFLRunner.run(task:useCase:context:);
  v701 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v702 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v703 = closure #32 in NightingaleDPFLRunner.run(task:useCase:context:);
  v704 = "Swift/ClosedRange.swift";
  v705 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v706 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v707 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v708 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v709 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v710 = &async function pointer to partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  *(v1 + 2632) = v1;
  v711 = *(v1 + 3200);
  v715 = v1 + 3216;
  *(v1 + 3216) = v711;
  v713 = v1 + 4335;
  *(v1 + 4335) = 0;
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd);
  v714 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v713, v711, &type metadata for HealthDataRawSampleType, v712);
  if (*(v1 + 1416))
  {
    v688 = *(v690 + 1416);
    v685 = *(v690 + 1424);
    v689 = v690 + 1392;
    __swift_project_boxed_opaque_existential_1((v690 + 1392), v688);
    v687 = *(v685 + 16);
    v686 = v685 + 16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v3 = v690;
    *(v690 + 2008) = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0((v3 + 1984));
    v687(v688, v685);
    __swift_destroy_boxed_opaque_existential_1(v689);
  }

  else
  {
    outlined destroy of Pregnancy?(v690 + 1392);
    v34 = v690;
    *(v690 + 1984) = 0;
    v34[249] = 0;
    v34[250] = 0;
    v34[251] = 0;
  }

  if (*(v690 + 2008))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
    if (swift_dynamicCast())
    {
      v684 = *(v690 + 3312);
    }

    else
    {
      v684 = 0;
    }

    v683 = v684;
  }

  else
  {
    outlined destroy of Pregnancy?(v690 + 1984);
    v683 = 0;
  }

  v4 = v690;
  *(v690 + 3224) = v683;
  if (*(v4 + 3224))
  {
    v716 = *(v690 + 3224);
  }

  else
  {
    _allocateUninitializedArray<A>(_:)();
    v716 = Dictionary.init(dictionaryLiteral:)();
    if (*(v690 + 3224))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v5 = *(v690 + 4104);
  v680 = v716;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  v682 = v5;
  if (!v5)
  {
    *(v690 + 4340) = 2;
    MEMORY[0x25F8891D0]();
    if (*(v690 + 1456))
    {
      v678 = *(v690 + 1456);
      v675 = *(v690 + 1464);
      v679 = v690 + 1432;
      __swift_project_boxed_opaque_existential_1((v690 + 1432), v678);
      v677 = *(v675 + 16);
      v676 = v675 + 16;
      v7 = swift_getAssociatedTypeWitness();
      v8 = v690;
      *(v690 + 2040) = v7;
      __swift_allocate_boxed_opaque_existential_0((v8 + 2016));
      v677(v678, v675);
      __swift_destroy_boxed_opaque_existential_1(v679);
    }

    else
    {
      outlined destroy of Pregnancy?(v690 + 1432);
      v33 = v690;
      *(v690 + 2016) = 0;
      v33[253] = 0;
      v33[254] = 0;
      v33[255] = 0;
    }

    if (*(v690 + 2040))
    {
      v674 = (swift_dynamicCast() & 1) != 0 ? *(v690 + 3304) : 0;
      v673 = v674;
    }

    else
    {
      outlined destroy of Pregnancy?(v690 + 2016);
      v673 = 0;
    }

    v9 = v690;
    *(v690 + 3232) = v673;
    if (*(v9 + 3232))
    {
      v717 = *(v690 + 3232);
    }

    else
    {
      _allocateUninitializedArray<A>(_:)();
      v717 = Dictionary.init(dictionaryLiteral:)();
      if (*(v690 + 3232))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    result = Dictionary.merge(_:uniquingKeysWith:)();
    v672 = v682;
    if (!v682)
    {
      *(v690 + 4341) = 1;
      MEMORY[0x25F8891D0]();
      if (*(v690 + 1496))
      {
        v670 = *(v690 + 1496);
        v667 = *(v690 + 1504);
        v671 = v690 + 1472;
        __swift_project_boxed_opaque_existential_1((v690 + 1472), v670);
        v669 = *(v667 + 16);
        v668 = v667 + 16;
        v10 = swift_getAssociatedTypeWitness();
        v11 = v690;
        *(v690 + 2072) = v10;
        __swift_allocate_boxed_opaque_existential_0((v11 + 2048));
        v669(v670, v667);
        __swift_destroy_boxed_opaque_existential_1(v671);
      }

      else
      {
        outlined destroy of Pregnancy?(v690 + 1472);
        v32 = v690;
        *(v690 + 2048) = 0;
        v32[257] = 0;
        v32[258] = 0;
        v32[259] = 0;
      }

      if (*(v690 + 2072))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
        v666 = (swift_dynamicCast() & 1) != 0 ? *(v690 + 3296) : 0;
        v665 = v666;
      }

      else
      {
        outlined destroy of Pregnancy?(v690 + 2048);
        v665 = 0;
      }

      v12 = v690;
      *(v690 + 3240) = v665;
      if (*(v12 + 3240))
      {
        v718 = *(v690 + 3240);
      }

      else
      {
        _allocateUninitializedArray<A>(_:)();
        v718 = Dictionary.init(dictionaryLiteral:)();
        if (*(v690 + 3240))
        {
          outlined destroy of [(start: UInt32, end: UInt32)]();
        }
      }

      v663 = v718;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd);
      result = Dictionary.merge(_:uniquingKeysWith:)();
      v664 = v672;
      if (!v672)
      {
        *(v690 + 4342) = 3;
        MEMORY[0x25F8891D0]();
        if (*(v690 + 1536))
        {
          v661 = *(v690 + 1536);
          v658 = *(v690 + 1544);
          v662 = v690 + 1512;
          __swift_project_boxed_opaque_existential_1((v690 + 1512), v661);
          v660 = *(v658 + 16);
          v659 = v658 + 16;
          v13 = swift_getAssociatedTypeWitness();
          v14 = v690;
          *(v690 + 2104) = v13;
          __swift_allocate_boxed_opaque_existential_0((v14 + 2080));
          v660(v661, v658);
          __swift_destroy_boxed_opaque_existential_1(v662);
        }

        else
        {
          outlined destroy of Pregnancy?(v690 + 1512);
          v31 = v690;
          *(v690 + 2080) = 0;
          v31[261] = 0;
          v31[262] = 0;
          v31[263] = 0;
        }

        if (*(v690 + 2104))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd);
          v657 = (swift_dynamicCast() & 1) != 0 ? *(v690 + 3288) : 0;
          v656 = v657;
        }

        else
        {
          outlined destroy of Pregnancy?(v690 + 2080);
          v656 = 0;
        }

        v15 = v690;
        *(v690 + 3248) = v656;
        if (*(v15 + 3248))
        {
          v719 = *(v690 + 3248);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd);
          v655 = _allocateUninitializedArray<A>(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
          v719 = Dictionary.init(dictionaryLiteral:)();
          if (*(v690 + 3248))
          {
            outlined destroy of [(start: UInt32, end: UInt32)]();
          }
        }

        v651 = *(v690 + 3784);
        v652 = v719;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd);
        v653 = _dictionaryUpCast<A, B, C, D>(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
        result = Dictionary.merge(_:uniquingKeysWith:)();
        v654 = v664;
        if (!v664)
        {

          *(v690 + 4343) = 7;
          MEMORY[0x25F8891D0]();
          if (*(v690 + 1576))
          {
            v649 = *(v690 + 1576);
            v646 = *(v690 + 1584);
            v650 = v690 + 1552;
            __swift_project_boxed_opaque_existential_1((v690 + 1552), v649);
            v648 = *(v646 + 16);
            v647 = v646 + 16;
            v16 = swift_getAssociatedTypeWitness();
            v17 = v690;
            *(v690 + 2136) = v16;
            __swift_allocate_boxed_opaque_existential_0((v17 + 2112));
            v648(v649, v646);
            __swift_destroy_boxed_opaque_existential_1(v650);
          }

          else
          {
            outlined destroy of Pregnancy?(v690 + 1552);
            v30 = v690;
            *(v690 + 2112) = 0;
            v30[265] = 0;
            v30[266] = 0;
            v30[267] = 0;
          }

          if (*(v690 + 2136))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
            v645 = (swift_dynamicCast() & 1) != 0 ? *(v690 + 3280) : 0;
            v644 = v645;
          }

          else
          {
            outlined destroy of Pregnancy?(v690 + 2112);
            v644 = 0;
          }

          v18 = v690;
          *(v690 + 3256) = v644;
          if (*(v18 + 3256))
          {
            v720 = *(v690 + 3256);
          }

          else
          {
            v643 = *(v690 + 3800);
            _allocateUninitializedArray<A>(_:)();
            v720 = Dictionary.init(dictionaryLiteral:)();
            if (*(v690 + 3256))
            {
              outlined destroy of [(start: UInt32, end: UInt32)]();
            }
          }

          v641 = v720;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd);
          result = Dictionary.merge(_:uniquingKeysWith:)();
          v642 = v654;
          if (!v654)
          {
            v638 = *(v690 + 3920);
            v639 = *(v690 + 2928);

            v640 = MEMORY[0x25F8895B0](v639, v638);

            if (v640 < 0)
            {
              LOBYTE(v179) = 2;
              v180 = 760;
              LODWORD(v181) = 0;
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v19 = v690;
            v20 = v640;
            *(v690 + 2584) = 0;
            *(v19 + 2592) = v20;
            Collection<>.makeIterator()();
            for (i = v642; ; i = 0)
            {
              v634 = i;
              v635 = v690 + 2616;
              IndexingIterator.next()();
              v636 = *(v690 + 2616);
              if (*(v690 + 2624))
              {
                break;
              }

              v21 = v634;
              v22 = v690;
              v624 = *(v690 + 3920);
              v625 = v690 + 3264;
              *(v690 + 3264) = v636;
              v626 = *(v22 + 2720);

              v627 = *(v690 + 2728);

              v628 = *(v690 + 2736);

              v629 = *(v690 + 2744);

              v630 = *(v690 + 2752);

              v631 = v690 + 1592;
              Array.subscript.getter();
              v23._rawValue = v626;
              v24._rawValue = v627;
              v25._rawValue = v628;
              v26._rawValue = v629;
              v27._rawValue = v630;
              v632 = CalendarPeriodPrediction.predictOvu(flow:otr:spotting:cycleFactors:swt:pregnancy:)(v23, v24, v25, v26, v27, (v690 + 1592));
              v633 = v21;
              if (v21)
              {
                v220 = *(v690 + 3696);
                __swift_destroy_boxed_opaque_existential_1(v690 + 1592);

                v178 = v633;
                v219 = v690 + 3272;
                *(v690 + 3272) = v633;

                static PFLUtils.throwIfFalse(error:for:)();
                v221 = 0;
              }

              else
              {
                v617 = *(v690 + 3968);
                __swift_destroy_boxed_opaque_existential_1(v690 + 1592);

                v28 = v690;
                v622 = v690 + 4328;
                *(v690 + 4328) = v632;
                v620 = v28 + 2144;
                v621 = Array.subscript.modify();
                v618 = *(v29 + 24);
                v619 = *(v29 + 32);
                __swift_mutable_project_boxed_opaque_existential_1(v29, v618);
                (*(v619 + 120))(v632, 1, v618);
                v621();
              }

              v623 = 0;
            }

            v616 = v634;
            v35 = v634;
            v606 = v690 + 2640;
            v607 = v690 + 2520;
            v608 = v690 + 2648;
            v609 = v690 + 2656;
            v610 = v690 + 2664;
            v611 = v690 + 2672;
            v612 = v690 + 2680;
            v613 = v690 + 2688;
            v587 = v690 + 2696;
            v614 = v690 + 2704;
            v604 = v690 + 2712;
            v589 = v690 + 4256;
            v590 = v690 + 2840;
            v591 = v690 + 2856;
            v592 = v690 + 2888;
            v593 = v690 + 2912;
            v594 = v690 + 2952;
            v595 = v690 + 2968;
            v596 = v690 + 2984;
            v597 = v690 + 3000;
            v598 = v690 + 3016;
            v599 = v690 + 3032;
            v600 = v690 + 3048;
            v601 = v690 + 3056;
            v603 = *(v690 + 3976);
            v602 = *(v690 + 3968);
            v583 = *(v690 + 3536);
            v581 = NightingaleDPFLRunner.performanceMeasure.getter();
            v584 = 1;
            object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
            dispatch thunk of PerformanceMeasure.finish(_:)();
            v582 = v36;
            *(v690 + 4112) = v36;

            v605 = v690 + 3064;
            *(v690 + 3064) = v582;
            v37 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
            NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updateSliceDeltaAnchorCompleted, v37);
            v586 = NightingaleDPFLRunner.performanceMeasure.getter();
            v585 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, v584 & 1)._object;
            dispatch thunk of PerformanceMeasure.start(_:)();

            v588 = *(v690 + 2928);

            *(v690 + 3072) = v588;
            result = Sequence.min(by:)();
            v615 = v35;
            if (!v35)
            {
              outlined destroy of [(start: UInt32, end: UInt32)]();
              if (*(v690 + 1216))
              {
                v575 = *(v690 + 1216);
                v574 = *(v690 + 1224);
                v576 = v690 + 1192;
                __swift_project_boxed_opaque_existential_1((v690 + 1192), v575);
                v577 = (*(v574 + 64))(v575);
                __swift_destroy_boxed_opaque_existential_1(v690 + 1192);
                v578 = v577;
                v579 = 0;
              }

              else
              {
                outlined destroy of Pregnancy?(v690 + 1192);
                v578 = 0;
                v579 = 1;
              }

              v38 = v579;
              v573 = v578;
              *(v690 + 4284) = v578;
              if (v38)
              {
                goto LABEL_146;
              }

              v39 = v690;
              v40 = v615;
              v571 = *(v690 + 3976);
              v570 = *(v690 + 3968);
              v569 = v690 + 4264;
              *(v690 + 4264) = v573;
              v568 = *(v39 + 2928);

              *(v690 + 3080) = v568;
              result = Sequence.max(by:)();
              v572 = v40;
              if (v40)
              {
                return result;
              }

              outlined destroy of [(start: UInt32, end: UInt32)]();
              if (*(v690 + 1256))
              {
                v563 = *(v690 + 1256);
                v562 = *(v690 + 1264);
                v564 = v690 + 1232;
                __swift_project_boxed_opaque_existential_1((v690 + 1232), v563);
                v565 = (*(v562 + 64))(v563);
                __swift_destroy_boxed_opaque_existential_1(v690 + 1232);
                v566 = v565;
                v567 = 0;
              }

              else
              {
                outlined destroy of Pregnancy?(v690 + 1232);
                v566 = 0;
                v567 = 1;
              }

              v41 = v567;
              v561 = v566;
              *(v690 + 4292) = v566;
              if (v41)
              {
                goto LABEL_146;
              }

              v42 = v690;
              v43 = v572;
              v559 = *(v690 + 3976);
              v558 = *(v690 + 3968);
              v557 = v690 + 4272;
              *(v690 + 4272) = v561;
              v556 = *(v42 + 2928);

              *(v690 + 3088) = v556;
              result = Sequence.min(by:)();
              v560 = v43;
              if (v43)
              {
                return result;
              }

              outlined destroy of [(start: UInt32, end: UInt32)]();
              if (*(v690 + 1296))
              {
                v551 = *(v690 + 1296);
                v550 = *(v690 + 1304);
                v552 = v690 + 1272;
                __swift_project_boxed_opaque_existential_1((v690 + 1272), v551);
                v553 = (*(v550 + 8))(v551);
                __swift_destroy_boxed_opaque_existential_1(v690 + 1272);
                v554 = v553;
                v555 = 0;
              }

              else
              {
                outlined destroy of Pregnancy?(v690 + 1272);
                v554 = 0;
                v555 = 1;
              }

              v549 = v554;
              if (v555)
              {
LABEL_146:
                v231 = *(v690 + 3952);
                v232 = *(v690 + 3872);
                v233 = *(v690 + 3856);
                v234 = *(v690 + 3760);
                v235 = *(v690 + 3736);
                v236 = *(v690 + 3712);
                v237 = *(v690 + 3696);
                lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                v238 = swift_allocError();
                *v175 = 106;
                swift_willThrow();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();

                outlined destroy of [(start: UInt32, end: UInt32)]();

                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();

                MEMORY[0x277D82BD8](v235);
                MEMORY[0x277D82BD8](v236);

                v247 = v238;
                goto LABEL_163;
              }

              *(v690 + 4280) = v549;
              result = HyperParams.featureLookbackDays.getter();
              v548 = v549 - result;
              v44 = v549 < result;
              *(v690 + 4300) = v549 - result;
              if (!v44)
              {
                if (*(v690 + 4260) < v548)
                {
                  LOBYTE(v179) = 2;
                  v180 = 409;
                  LODWORD(v181) = 0;
                  return _assertionFailure(_:_:file:line:flags:)();
                }

                v45 = v690;
                v46 = *(v690 + 4260);
                v547 = v690 + 2428;
                *(v690 + 2428) = v548;
                *(v45 + 2432) = v46;
                *(v690 + 3096) = _allocateUninitializedArray<A>(_:)();
                if (HyperParams.isHRVRequired()())
                {
                  v546 = v690 + 4334;
                  *(v690 + 4334) = 8;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
                  Array.append(_:)();
                }

                if (HyperParams.isSpO2Required()())
                {
                  v545 = v690 + 4333;
                  *(v690 + 4333) = 10;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
                  Array.append(_:)();
                }

                if (HyperParams.isRespiratoryRateRequired()())
                {
                  v544 = v690 + 4332;
                  *(v690 + 4332) = 9;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
                  Array.append(_:)();
                }

                if (HyperParams.isSWTRequired()())
                {
                  v543 = v690 + 4327;
                  *(v690 + 4327) = 7;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
                  Array.append(_:)();
                }

                v541 = *(v690 + 3096);

                *(v690 + 3104) = v541;
                v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
                lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
                v542 = Collection.isEmpty.getter();

                if ((v542 & 1) == 0)
                {
                  v535 = *(v690 + 4260);
                  v533 = *(v690 + 3696);
                  v534 = *(v690 + 3536);

                  v47 = swift_task_alloc();
                  v48 = v533;
                  v49 = v534;
                  v50 = v548;
                  v51 = v535;
                  v52 = v690;
                  v537 = v47;
                  *(v690 + 4120) = v47;
                  *(v47 + 16) = v48;
                  *(v47 + 24) = v52 + 3096;
                  *(v47 + 32) = v49;
                  *(v47 + 40) = v50;
                  *(v47 + 44) = v51;
                  *(v47 + 48) = v52 + 2760;
                  *(v47 + 56) = v52 + 2768;
                  *(v47 + 64) = v52 + 2776;
                  *(v47 + 72) = v52 + 2752;
                  v538 = MEMORY[0x277D84F78] + 8;
                  v536 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
                  v53 = swift_task_alloc();
                  v54 = v690;
                  v55 = v536;
                  v56 = v710;
                  v57 = v537;
                  v58 = v538;
                  v59 = v53;
                  v60 = v539;
                  *(v690 + 4128) = v59;
                  *v59 = *(v54 + 2632);
                  v59[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                  v61 = 8;
                  v62 = v55 & 1;

                  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v60, v61, v62, v56, v57, v58);
                }

                v506 = v690 + 2640;
                v524 = v690 + 2520;
                v525 = v690 + 2648;
                v526 = v690 + 2656;
                v527 = v690 + 2664;
                v528 = v690 + 2672;
                v529 = v690 + 2680;
                v530 = v690 + 2688;
                v531 = v690 + 2696;
                v523 = v690 + 2704;
                v507 = v690 + 4256;
                v508 = v690 + 2840;
                v509 = v690 + 2856;
                v510 = v690 + 2888;
                v511 = v690 + 2912;
                v512 = v690 + 2920;
                v513 = v690 + 2952;
                v505 = v690 + 2984;
                v514 = v690 + 3000;
                v515 = v690 + 3016;
                v516 = v690 + 3032;
                v517 = v690 + 3048;
                v518 = v690 + 3056;
                v519 = v690 + 3064;
                v520 = v690 + 4264;
                v521 = v690 + 4272;
                v522 = v690 + 4280;
                v532 = v690 + 2428;
                *(v690 + 3112) = 0;
                if (HyperParams.isSHRRequired()())
                {
                  v500 = *(v690 + 4300);
                  v501 = *(v690 + 4260);
                  v499 = *(v690 + 3696);
                  v498 = *(v690 + 3536);

                  v63 = swift_task_alloc();
                  v64 = v498;
                  v65 = v499;
                  v66 = v500;
                  v67 = v501;
                  v68 = v690;
                  v503 = v63;
                  *(v690 + 4144) = v63;
                  *(v63 + 16) = v64;
                  *(v63 + 24) = v65;
                  *(v63 + 32) = v66;
                  *(v63 + 36) = v67;
                  *(v63 + 40) = v68 + 2784;
                  *(v63 + 48) = v68 + 2792;
                  *(v63 + 56) = v68 + 3112;
                  v504 = MEMORY[0x277D84F78] + 8;
                  v502 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
                  v69 = swift_task_alloc();
                  v70 = v690;
                  v71 = v502;
                  v56 = v709;
                  v57 = v503;
                  v58 = v504;
                  v72 = v69;
                  v60 = v539;
                  *(v690 + 4152) = v72;
                  *v72 = *(v70 + 2632);
                  v72[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                  v61 = 8;
                  v62 = v71 & 1;

                  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v60, v61, v62, v56, v57, v58);
                }

                v471 = v690 + 2640;
                v489 = v690 + 2520;
                v490 = v690 + 2648;
                v491 = v690 + 2656;
                v492 = v690 + 2664;
                v493 = v690 + 2672;
                v494 = v690 + 2680;
                v495 = v690 + 2688;
                v496 = v690 + 2696;
                v488 = v690 + 2704;
                v472 = v690 + 4256;
                v473 = v690 + 2840;
                v474 = v690 + 2856;
                v475 = v690 + 2888;
                v476 = v690 + 2912;
                v477 = v690 + 2920;
                v478 = v690 + 2952;
                v470 = v690 + 2984;
                v479 = v690 + 3000;
                v480 = v690 + 3016;
                v481 = v690 + 3032;
                v482 = v690 + 3048;
                v483 = v690 + 3056;
                v484 = v690 + 3064;
                v485 = v690 + 4264;
                v486 = v690 + 4272;
                v487 = v690 + 4280;
                v497 = v690 + 2428;
                if (HyperParams.isCalendarAlgorithmRequired()())
                {
                  v463 = *(v690 + 4292);
                  v461 = *(v690 + 4284);
                  v466 = *(v690 + 3872);
                  v464 = *(v690 + 4260);
                  v462 = *(v690 + 3696);
                  v465 = *(v690 + 3536);

                  v73 = swift_task_alloc();
                  v74 = v461;
                  v75 = v462;
                  v76 = v463;
                  v77 = v464;
                  v78 = v465;
                  v79 = v466;
                  v80 = v690;
                  v468 = v73;
                  *(v690 + 4168) = v73;
                  *(v73 + 16) = v74;
                  *(v73 + 24) = v75;
                  *(v73 + 32) = v76;
                  *(v73 + 36) = v77;
                  *(v73 + 40) = v78;
                  *(v73 + 48) = v80 + 2720;
                  *(v73 + 56) = v80 + 2728;
                  *(v73 + 64) = v80 + 2736;
                  *(v73 + 72) = v80 + 2744;
                  *(v73 + 80) = v79;
                  *(v73 + 88) = v80 + 2800;
                  *(v73 + 96) = v80 + 2808;
                  v469 = MEMORY[0x277D84F78] + 8;
                  v467 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
                  v81 = swift_task_alloc();
                  v82 = v690;
                  v83 = v467;
                  v56 = v708;
                  v57 = v468;
                  v58 = v469;
                  v84 = v81;
                  v60 = v539;
                  *(v690 + 4176) = v84;
                  *v84 = *(v82 + 2632);
                  v84[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                  v61 = 8;
                  v62 = v83 & 1;

                  return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v60, v61, v62, v56, v57, v58);
                }

                v433 = v690 + 2640;
                v451 = v690 + 2520;
                v452 = v690 + 2648;
                v453 = v690 + 2656;
                v454 = v690 + 2664;
                v455 = v690 + 2672;
                v456 = v690 + 2680;
                v457 = v690 + 2688;
                v458 = v690 + 2696;
                v459 = v690 + 2704;
                v450 = v690 + 2712;
                v434 = v690 + 2840;
                v435 = v690 + 2856;
                v436 = v690 + 2888;
                v437 = v690 + 2912;
                v438 = v690 + 2920;
                v439 = v690 + 2952;
                v440 = v690 + 2968;
                v426 = v690 + 3000;
                v441 = v690 + 3016;
                v442 = v690 + 3032;
                v443 = v690 + 3048;
                v444 = v690 + 3056;
                v445 = v690 + 3064;
                v446 = v690 + 4264;
                v447 = v690 + 4272;
                v448 = v690 + 4280;
                v449 = v690 + 2428;
                v431 = *(v690 + 3696);
                v423 = *(v690 + 3536);
                v421 = NightingaleDPFLRunner.performanceMeasure.getter();
                v427 = 1;
                v420 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
                dispatch thunk of PerformanceMeasure.finish(_:)();
                v422 = v85;

                v460 = v690 + 3120;
                *(v690 + 3120) = v422;
                v86 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
                NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v86);
                v425 = NightingaleDPFLRunner.performanceMeasure.getter();
                v424 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v427 & 1)._object;
                dispatch thunk of PerformanceMeasure.start(_:)();

                v87 = HyperParams.metricsProcessEngine.getter();
                v88 = v690;
                v429 = v690 + 4309;
                *(v690 + 4309) = v87 & v427;
                v428 = v88 + 4310;
                *(v88 + 4310) = 1;
                v430 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
                v432 = == infix<A>(_:_:)();

                if (v432)
                {
                  v419 = 1;
                }

                else
                {
                  v89 = HyperParams.featurizerEngine.getter();
                  v90 = v690;
                  *(v690 + 4311) = v89 & 1;
                  *(v90 + 4316) = 1;
                  v419 = == infix<A>(_:_:)();
                }

                v418 = v419;

                if (v419)
                {
                  static HIDMorpheusExtensions.extendMorpheus()();
                  v417 = v560;
                  if (v560)
                  {
                    v212 = *(v690 + 3952);
                    v213 = *(v690 + 3872);
                    v214 = *(v690 + 3856);
                    v215 = *(v690 + 3760);
                    v216 = *(v690 + 3736);
                    v217 = *(v690 + 3712);
                    v218 = *(v690 + 3696);
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    MEMORY[0x277D82BD8](v216);
                    MEMORY[0x277D82BD8](v217);

                    v247 = v417;
                    goto LABEL_163;
                  }

                  static Math.extendMorpheus()();
                  v416 = 0;
                  v415 = 0;
                }

                else
                {
                  v415 = v560;
                }

                v91 = v415;
                v411 = *(v690 + 4260);
                v410 = *(v690 + 3696);
                v407 = *(v690 + 3536);
                v409 = *(v690 + 3528);
                type metadata accessor for Featurizer();
                v92 = Featurizer.__allocating_init()();
                v93 = v690;
                v408 = v92;
                *(v690 + 4192) = v92;
                v412 = v93 + 3128;
                *(v93 + 3128) = v92;

                v94 = swift_task_alloc();
                v95 = v408;
                v96 = v409;
                v97 = v410;
                v98 = v411;
                v99 = v690;
                v413 = v94;
                *(v690 + 4200) = v94;
                *(v94 + 16) = v95;
                *(v94 + 24) = v96;
                *(v94 + 32) = v99 + 2928;
                *(v94 + 40) = v99 + 2752;
                *(v94 + 48) = v99 + 2760;
                *(v94 + 56) = v99 + 2776;
                *(v94 + 64) = v99 + 2768;
                *(v94 + 72) = v99 + 2784;
                *(v94 + 80) = v99 + 2792;
                *(v94 + 88) = v99 + 2800;
                *(v94 + 96) = v99 + 2808;
                *(v94 + 104) = v99 + 2744;
                *(v94 + 112) = v97;
                *(v94 + 120) = v98;
                v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd);
                NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v413, v100, v690 + 16);
                v414 = v91;
                if (v91)
                {
                  v205 = *(v690 + 3952);
                  v206 = *(v690 + 3872);
                  v207 = *(v690 + 3856);
                  v208 = *(v690 + 3760);
                  v209 = *(v690 + 3736);
                  v210 = *(v690 + 3712);
                  v211 = *(v690 + 3696);
                  v204 = *(v690 + 3528);

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  MEMORY[0x277D82BD8](v209);
                  MEMORY[0x277D82BD8](v210);

                  v247 = v414;
                }

                else
                {
                  v345 = *(v690 + 4112);
                  v343 = *(v690 + 4040);
                  v373 = *(v690 + 4032);
                  v370 = *(v690 + 4024);
                  v368 = *(v690 + 4016);
                  v366 = *(v690 + 4008);
                  v364 = *(v690 + 4000);
                  v362 = *(v690 + 3992);
                  v360 = *(v690 + 3984);
                  v358 = *(v690 + 3960);
                  v341 = *(v690 + 3912);
                  v339 = *(v690 + 3864);
                  v356 = *(v690 + 3848);
                  v354 = *(v690 + 3840);
                  v337 = *(v690 + 3744);
                  v352 = *(v690 + 3704);
                  v334 = *(v690 + 3696);
                  v333 = *(v690 + 3528);

                  v376 = (v690 + 184);
                  v399 = v690 + 16;
                  memcpy((v690 + 184), (v690 + 16), 0xA8uLL);
                  v336 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v335 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v349 = v101;

                  v400 = v690 + 3136;
                  *(v690 + 3136) = v349;
                  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
                  v375 = _allocateUninitializedArray<A>(_:)();
                  v372 = v102;
                  v103 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v103, v372);
                  v104 = v337;
                  v105 = v372;
                  v351 = MEMORY[0x277D839F8];
                  v372[5] = MEMORY[0x277D839F8];
                  v105[2] = v104;
                  v338 = v105 + 6;
                  Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(Duration, v338);
                  v107 = v339;
                  v108 = v372;
                  v372[11] = v351;
                  v108[8] = v107;
                  v340 = v108 + 12;
                  v109 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v109, v340);
                  v110 = v341;
                  v111 = v372;
                  v372[17] = v351;
                  v111[14] = v110;
                  v342 = v111 + 18;
                  updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(updated, v342);
                  v113 = v343;
                  v114 = v372;
                  v372[23] = v351;
                  v114[20] = v113;
                  v344 = v114 + 24;
                  v115 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v115, v344);
                  v116 = v345;
                  v117 = v372;
                  v372[29] = v351;
                  v117[26] = v116;
                  v346 = v117 + 30;
                  v118 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v118, v346);
                  v119 = v372;
                  v120 = *(v690 + 3112);
                  v372[35] = v351;
                  v119[32] = v120;
                  v347 = v119 + 36;
                  v121 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v121, v347);
                  v122 = v422;
                  v123 = v372;
                  v372[41] = v351;
                  v123[38] = v122;
                  v348 = v123 + 42;
                  v124 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v124, v348);
                  v125 = v349;
                  v126 = v372;
                  v372[47] = v351;
                  v126[44] = v125;
                  v350 = v126 + 48;
                  v127 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
                  outlined init with copy of String(v127, v350);
                  v128 = v352;
                  v129 = v372;
                  v372[53] = v351;
                  v129[50] = v128;
                  v353 = v129 + 54;
                  v130 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
                  outlined init with copy of String(v130, v353);
                  v131 = v354;
                  v132 = v372;
                  v377 = MEMORY[0x277D83B88];
                  v372[59] = MEMORY[0x277D83B88];
                  v132[56] = v131;
                  v355 = v132 + 60;
                  v133 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
                  outlined init with copy of String(v133, v355);
                  v134 = v356;
                  v135 = v372;
                  v372[65] = v377;
                  v135[62] = v134;
                  v357 = v135 + 66;
                  v136 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v136, v357);
                  v137 = v358;
                  v138 = v372;
                  v372[71] = v377;
                  v138[68] = v137;
                  v359 = v138 + 72;
                  v139 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
                  outlined init with copy of String(v139, v359);
                  v140 = v360;
                  v141 = v372;
                  v372[77] = v377;
                  v141[74] = v140;
                  v361 = v141 + 78;
                  v142 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v142, v361);
                  v143 = v362;
                  v144 = v372;
                  v372[83] = v377;
                  v144[80] = v143;
                  v363 = v144 + 84;
                  v145 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v145, v363);
                  v146 = v364;
                  v147 = v372;
                  v372[89] = v377;
                  v147[86] = v146;
                  v365 = v147 + 90;
                  v148 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v148, v365);
                  v149 = v366;
                  v150 = v372;
                  v372[95] = v377;
                  v150[92] = v149;
                  v367 = v150 + 96;
                  v151 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v151, v367);
                  v152 = v368;
                  v153 = v372;
                  v372[101] = v377;
                  v153[98] = v152;
                  v369 = v153 + 102;
                  v154 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(v154, v369);
                  v155 = v370;
                  v156 = v372;
                  v372[107] = v377;
                  v156[104] = v155;
                  v371 = v156 + 108;
                  started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
                  outlined init with copy of String(started, v371);
                  v158 = v372;
                  v159 = v373;
                  v372[113] = v377;
                  v158[110] = v159;
                  _finalizeUninitializedArray<A>(_:)();
                  v402 = MEMORY[0x277D837D0];
                  v403 = MEMORY[0x277D84F70] + 8;
                  v404 = MEMORY[0x277D837E0];
                  v401 = Dictionary.init(dictionaryLiteral:)();
                  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v376, (v690 + 352));
                  v378 = *(v690 + 184);
                  v379 = *(v690 + 192);
                  v380 = *(v690 + 200);
                  v381 = *(v690 + 208);
                  v382 = *(v690 + 216);
                  v383 = *(v690 + 224);
                  v384 = *(v690 + 232);
                  v385 = *(v690 + 240);
                  v386 = *(v690 + 248);
                  v387 = *(v690 + 256);
                  v388 = *(v690 + 264);
                  v389 = *(v690 + 272);
                  v390 = *(v690 + 280);
                  v391 = *(v690 + 288);
                  v392 = *(v690 + 296);
                  v393 = *(v690 + 304);
                  v394 = *(v690 + 312);
                  v395 = *(v690 + 320);
                  v396 = *(v690 + 328);
                  v397 = *(v690 + 336);
                  v398 = *(v690 + 344);
                  _dictionaryUpCast<A, B, C, D>(_:)();
                  v405 = Dictionary.merging(_:uniquingKeysWith:)();
                  *(v690 + 4208) = v405;
                  v406 = 0;
                  v331 = *(v690 + 4048);
                  v330 = *(v690 + 4359);

                  v160 = v330;
                  v161 = v690;
                  v332 = v690 + 3144;
                  *(v690 + 3144) = v405;
                  *(v161 + 4317) = v160;
                  *(v161 + 4318) = 0;
                  if (== infix<A>(_:_:)())
                  {
                    v162 = v406;
                    v304 = *(v690 + 4260);
                    v300 = *(v690 + 3760);
                    v299 = *(v690 + 3752);
                    v301 = *(v690 + 3696);
                    v305 = *(v690 + 3528);
                    v302 = *(v690 + 2808);

                    v303 = *(v690 + 2848);

                    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v690 + 184), (v690 + 1024));
                    v306 = *(v690 + 184);
                    v324 = *(v690 + 192);
                    v326 = *(v690 + 200);
                    v327 = *(v690 + 208);
                    v307 = *(v690 + 216);
                    v308 = *(v690 + 224);
                    v309 = *(v690 + 232);
                    v310 = *(v690 + 240);
                    v311 = *(v690 + 248);
                    v312 = *(v690 + 256);
                    v313 = *(v690 + 264);
                    v314 = *(v690 + 272);
                    v315 = *(v690 + 280);
                    v316 = *(v690 + 288);
                    v317 = *(v690 + 296);
                    v318 = *(v690 + 304);
                    v319 = *(v690 + 312);
                    v320 = *(v690 + 320);
                    v321 = *(v690 + 328);
                    v322 = *(v690 + 336);
                    v323 = *(v690 + 344);
                    v325 = &v179;
                    v328 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v305, v299, v300, v301, v302, v303, v304, v306, v324, v326, v327, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v405);
                    v329 = v162;
                    if (!v162)
                    {
                      v291 = *(v690 + 3952);
                      v292 = *(v690 + 3872);
                      v293 = *(v690 + 3856);
                      v294 = *(v690 + 3760);
                      v295 = *(v690 + 3736);
                      v296 = *(v690 + 3712);
                      v297 = *(v690 + 3696);

                      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      MEMORY[0x277D82BD8](v295);
                      MEMORY[0x277D82BD8](v296);

                      v298 = v328;
                      goto LABEL_147;
                    }

                    v197 = *(v690 + 3952);
                    v198 = *(v690 + 3872);
                    v199 = *(v690 + 3856);
                    v200 = *(v690 + 3760);
                    v201 = *(v690 + 3736);
                    v202 = *(v690 + 3712);
                    v203 = *(v690 + 3696);

                    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();

                    MEMORY[0x277D82BD8](v201);
                    MEMORY[0x277D82BD8](v202);

                    v247 = v329;
                  }

                  else
                  {
                    v163 = v690;
                    *(v690 + 4319) = *(v690 + 4359);
                    *(v163 + 4324) = 1;
                    if (== infix<A>(_:_:)())
                    {
                      v289 = PFLTask.evalModelNames(taskType:hyperParams:)();
                      v290 = v406;
                      if (!v406)
                      {
                        v264 = *(v690 + 4260);
                        v261 = *(v690 + 3696);
                        v260 = *(v690 + 3528);
                        v262 = *(v690 + 2808);

                        v263 = *(v690 + 2848);

                        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v690 + 184), (v690 + 856));
                        v265 = *(v690 + 184);
                        v266 = *(v690 + 192);
                        v284 = *(v690 + 200);
                        v286 = *(v690 + 208);
                        v267 = *(v690 + 216);
                        v268 = *(v690 + 224);
                        v269 = *(v690 + 232);
                        v270 = *(v690 + 240);
                        v271 = *(v690 + 248);
                        v272 = *(v690 + 256);
                        v273 = *(v690 + 264);
                        v274 = *(v690 + 272);
                        v275 = *(v690 + 280);
                        v276 = *(v690 + 288);
                        v277 = *(v690 + 296);
                        v278 = *(v690 + 304);
                        v279 = *(v690 + 312);
                        v280 = *(v690 + 320);
                        v281 = *(v690 + 328);
                        v282 = *(v690 + 336);
                        v283 = *(v690 + 344);
                        v285 = &v179;
                        v287 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v289, v260, v261, v262, v263, v264, v265, v266, v284, v286, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v405);
                        v288 = 0;
                        v253 = *(v690 + 3952);
                        v254 = *(v690 + 3872);
                        v255 = *(v690 + 3856);
                        v256 = *(v690 + 3760);
                        v257 = *(v690 + 3736);
                        v258 = *(v690 + 3712);
                        v259 = *(v690 + 3696);

                        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();

                        outlined destroy of [(start: UInt32, end: UInt32)]();

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();

                        MEMORY[0x277D82BD8](v257);
                        MEMORY[0x277D82BD8](v258);

                        v298 = v287;
LABEL_147:
                        v230 = v298;
                        v222 = *(v690 + 3664);
                        v223 = *(v690 + 3640);
                        v224 = *(v690 + 3632);
                        v225 = *(v690 + 3608);
                        v226 = *(v690 + 3600);
                        v227 = *(v690 + 3576);
                        v228 = *(v690 + 3568);
                        v229 = *(v690 + 3560);

                        v176 = v230;
                        v177 = *(*(v690 + 2632) + 8);

                        return v177(v176);
                      }

                      v190 = *(v690 + 3952);
                      v191 = *(v690 + 3872);
                      v192 = *(v690 + 3856);
                      v193 = *(v690 + 3760);
                      v194 = *(v690 + 3736);
                      v195 = *(v690 + 3712);
                      v196 = *(v690 + 3696);

                      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      MEMORY[0x277D82BD8](v194);
                      MEMORY[0x277D82BD8](v195);

                      v247 = v290;
                    }

                    else
                    {
                      v164 = v690;
                      *(v690 + 4325) = *(v690 + 4359);
                      *(v164 + 4326) = 2;
                      if (== infix<A>(_:_:)())
                      {
                        v251 = *(v690 + 3872);
                        v250 = *(v690 + 4268);
                        v248 = *(v690 + 3696);
                        v249 = *(v690 + 3536);

                        v165 = swift_task_alloc();
                        v166 = v248;
                        v167 = v249;
                        v168 = v250;
                        v169 = v251;
                        v170 = v690;
                        v252 = v165;
                        *(v690 + 4216) = v165;
                        *(v165 + 16) = v166;
                        *(v165 + 24) = v170 + 2848;
                        *(v165 + 32) = v167;
                        *(v165 + 40) = v168;
                        *(v165 + 48) = v170 + 2720;
                        *(v165 + 56) = v170 + 2728;
                        *(v165 + 64) = v170 + 2736;
                        *(v165 + 72) = v170 + 2744;
                        *(v165 + 80) = v170 + 2808;
                        *(v165 + 88) = v169;
                        v171 = swift_task_alloc();
                        *(v690 + 4224) = v171;
                        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
                        v173 = v690;
                        v56 = v707;
                        v57 = v252;
                        v58 = v172;
                        *v171 = *(v690 + 2632);
                        v171[1] = NightingaleDPFLRunner.run(task:useCase:context:);
                        v60 = v173 + 2436;
                        v61 = 9;
                        v62 = 1;

                        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v60, v61, v62, v56, v57, v58);
                      }

                      v239 = *(v690 + 3952);
                      v240 = *(v690 + 3872);
                      v241 = *(v690 + 3856);
                      v242 = *(v690 + 3760);
                      v243 = *(v690 + 3736);
                      v244 = *(v690 + 3712);
                      v245 = *(v690 + 3696);
                      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                      v246 = swift_allocError();
                      *v174 = 69;
                      swift_willThrow();

                      outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      MEMORY[0x277D82BD8](v243);
                      MEMORY[0x277D82BD8](v244);

                      v247 = v246;
                    }
                  }
                }

LABEL_163:
                v182 = *(v690 + 3664);
                v183 = *(v690 + 3640);
                v184 = *(v690 + 3632);
                v185 = *(v690 + 3608);
                v186 = *(v690 + 3600);
                v187 = *(v690 + 3576);
                v188 = *(v690 + 3568);
                v189 = *(v690 + 3560);

                v176 = v539;
                v177 = *(*(v690 + 2632) + 8);

                return v177(v176);
              }

              __break(1u);
            }
          }
        }
      }
    }
  }

  return result;
}

{
  v1109 = v1;
  MEMORY[0x28223BE20](a1);
  v1064 = v1;
  v1065 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v1066 = partial apply for closure #8 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1067 = partial apply for closure #1 in osLogInternal(_:log:type:);
  v1068 = "Fatal error";
  v1069 = "Range requires lowerBound <= upperBound";
  v1070 = "Swift/Range.swift";
  v1071 = partial apply for closure #9 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1072 = closure #10 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1073 = closure #11 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1074 = closure #12 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1075 = closure #13 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1076 = closure #14 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1077 = closure #15 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1078 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1079 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1080 = closure #32 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1081 = "Swift/ClosedRange.swift";
  v1082 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1083 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1084 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1085 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1086 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1087 = &async function pointer to partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1088 = closure #20 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1089 = closure #20 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1090 = &async function pointer to partial apply for closure #22 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1091 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1092 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1093 = "Negative value is not representable";
  v1094 = "Swift/Integers.swift";
  v1095 = &async function pointer to partial apply for closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  v1096 = "Not enough bits to represent the passed value";
  v1099 = *(v1 + 3904);
  v1100 = *(v1 + 4359);
  v1097 = *(v1 + 3696);
  v1098 = *(v1 + 3536);
  *(v1 + 2632) = v1;

  v2 = v1099;
  v3 = v1100;
  v1103 = v1 + 2872;
  *(v1 + 2872) = v1099;
  v1102 = v1 + 2465;
  *(v1 + 2465) = v3;
  v1101 = v1 + 2466;
  *(v1 + 2466) = 4;
  lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if (== infix<A>(_:_:)())
  {
    v441 = *(v1064 + 3864);
    v450 = *(v1064 + 3848);
    v446 = *(v1064 + 3840);
    v454 = *(v1064 + 3760);
    v453 = *(v1064 + 3752);
    v439 = *(v1064 + 3744);
    v444 = *(v1064 + 3704);
    v457 = *(v1064 + 3696);
    v434 = *(v1064 + 2848);

    v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
    v455 = MEMORY[0x25F8895B0](v434);

    v252 = v1064;
    v437 = v1064 + 4354;
    *(v1064 + 4354) = 7;
    v436 = *(v252 + 2848);

    v438 = MEMORY[0x25F8895B0](v436, v435);

    v456 = Array.init(repeating:count:)();
    v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v452 = _allocateUninitializedArray<A>(_:)();
    v449 = v253;
    v254 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v254, v449);
    v255 = v439;
    v256 = v449;
    v443 = MEMORY[0x277D839F8];
    v449[5] = MEMORY[0x277D839F8];
    v256[2] = v255;
    v440 = v256 + 6;
    Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
    outlined init with copy of String(Duration, v440);
    v258 = v441;
    v259 = v449;
    v449[11] = v443;
    v259[8] = v258;
    v442 = v259 + 12;
    v260 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
    outlined init with copy of String(v260, v442);
    v261 = v444;
    v262 = v449;
    v449[17] = v443;
    v262[14] = v261;
    v445 = v262 + 18;
    v263 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v263, v445);
    v264 = v446;
    v265 = v449;
    v448 = MEMORY[0x277D83B88];
    v449[23] = MEMORY[0x277D83B88];
    v265[20] = v264;
    v447 = v265 + 24;
    v266 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
    outlined init with copy of String(v266, v447);
    v267 = v449;
    v268 = v450;
    v449[29] = v448;
    v267[26] = v268;
    _finalizeUninitializedArray<A>(_:)();
    v458 = Dictionary.init(dictionaryLiteral:)();
    v459 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v457, v453, v454, v455, v456, v458, -1.0);
    v460 = 0;
    v427 = *(v1064 + 3904);
    v428 = *(v1064 + 3872);
    v429 = *(v1064 + 3856);
    v430 = *(v1064 + 3760);
    v431 = *(v1064 + 3736);
    v432 = *(v1064 + 3712);
    v433 = *(v1064 + 3696);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v431);
    MEMORY[0x277D82BD8](v432);

    v576 = v459;
    goto LABEL_136;
  }

  v425 = *(v1064 + 3696);
  started = HyperParams.useFactorStartDateAsLMP.getter();

  if (started)
  {
    v424 = 1;
  }

  else
  {
    v424 = HyperParams.useTestDateAsLMP.getter();
  }

  v423 = v424;

  if ((v424 & 1) == 0)
  {
    v419 = *(v1064 + 3904);
    v421 = *(v1064 + 3584);
    v422 = *(v1064 + 3576);
    v269 = v419;
    v420 = v1064 + 2880;
    *(v1064 + 2880) = v419;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      (*(*(v1064 + 3592) + 56))(*(v1064 + 3576), 0, 1, *(v1064 + 3584));
    }

    else
    {
      (*(*(v1064 + 3592) + 56))(*(v1064 + 3576), 1, 1, *(v1064 + 3584));
    }

    if ((*(*(v1064 + 3592) + 48))(*(v1064 + 3576), 1, *(v1064 + 3584)) == 1)
    {
      outlined destroy of PFLError?(*(v1064 + 3576));
    }

    else
    {
      v415 = *(v1064 + 3608);
      v418 = *(v1064 + 3600);
      v270 = *(v1064 + 3592);
      v417 = *(v1064 + 3584);
      v414 = v270;
      v416 = v270;
      (*(v270 + 32))();
      (*(v414 + 16))(v418, v415, v417);
      if ((*(v416 + 88))(v418, v417) == *MEMORY[0x277D413F0])
      {
        v402 = *(v1064 + 3904);
        v403 = *(v1064 + 3872);
        v404 = *(v1064 + 3856);
        v405 = *(v1064 + 3760);
        v406 = *(v1064 + 3736);
        v407 = *(v1064 + 3712);
        v408 = *(v1064 + 3696);
        v398 = *(v1064 + 3608);
        v273 = *(v1064 + 3600);
        v274 = *(v1064 + 3592);
        v399 = *(v1064 + 3584);
        v401 = *(v274 + 8);
        v400 = v274 + 8;
        v401(v273);
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v409 = swift_allocError();
        *v275 = 5;
        swift_willThrow();
        (v401)(v398, v399);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v406);
        MEMORY[0x277D82BD8](v407);

        v935 = v409;
        goto LABEL_168;
      }

      v410 = *(v1064 + 3608);
      v271 = *(v1064 + 3600);
      v272 = *(v1064 + 3592);
      v411 = *(v1064 + 3584);
      v413 = *(v272 + 8);
      v412 = v272 + 8;
      v413(v271);
      (v413)(v410, v411);
    }

    v391 = *(v1064 + 3904);
    v392 = *(v1064 + 3872);
    v393 = *(v1064 + 3856);
    v394 = *(v1064 + 3760);
    v395 = *(v1064 + 3736);
    v396 = *(v1064 + 3712);
    v397 = *(v1064 + 3696);
    swift_willThrow();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v395);
    MEMORY[0x277D82BD8](v396);

    v935 = *(v1064 + 3904);
LABEL_168:
    v295 = *(v1064 + 3664);
    v296 = *(v1064 + 3640);
    v297 = *(v1064 + 3632);
    v298 = *(v1064 + 3608);
    v299 = *(v1064 + 3600);
    v300 = *(v1064 + 3576);
    v301 = *(v1064 + 3568);
    v302 = *(v1064 + 3560);

    v250 = v1016;
    v251 = *(*(v1064 + 2632) + 8);

    return v251(v250);
  }

  v276 = *(v1064 + 3568);
  v277 = *(v1064 + 3552);
  v387 = *(v1064 + 3544);
  v386 = v277;
  v278 = Logging.default.unsafeMutableAddressor();
  (*(v386 + 16))(v276, v278, v387);
  oslog = Logger.logObject.getter();
  v388 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
  v390 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v388))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v375 = 0;
    v377 = createStorage<A>(capacity:type:)(0);
    v279 = createStorage<A>(capacity:type:)(0);
    v280 = v377;
    v281 = v1064;
    v378 = v279;
    v282 = (v1064 + 3424);
    v380 = (v1064 + 3424);
    *(v1064 + 3424) = buf;
    v381 = v281 + 3432;
    *(v281 + 3432) = v280;
    v382 = v281 + 3440;
    *(v281 + 3440) = v279;
    v379 = 0;
    serialize(_:at:)(0, v282);
    serialize(_:at:)(0, v380);
    *(v1064 + 3448) = v390;
    v283 = swift_task_alloc();
    v284 = v381;
    v285 = v382;
    v383 = v283;
    v283[2] = v380;
    v283[3] = v284;
    v283[4] = v285;
    v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v385 = 0;

    _os_log_impl(&dword_25C4D8000, oslog, v388, "Ignore failed to query updating features.", buf, 2u);
    v372 = 0;
    destroyStorage<A>(_:count:)(v377, 0, v374);
    destroyStorage<A>(_:count:)(v378, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x25F8899D0](buf, MEMORY[0x277D84B78]);
  }

  v373 = 0;
  v348 = *(v1064 + 3904);
  v346 = *(v1064 + 3568);
  v286 = *(v1064 + 3552);
  v347 = *(v1064 + 3544);
  v345 = v286;
  MEMORY[0x277D82BD8](oslog);
  (*(v345 + 8))(v346, v347);

  v370 = v1064 + 2640;
  v357 = v1064 + 2696;
  v358 = v1064 + 2704;
  v359 = v1064 + 2712;
  v360 = v1064 + 4352;
  v371 = v1064 + 2536;
  v361 = v1064 + 4248;
  v362 = v1064 + 2816;
  v363 = v1064 + 2824;
  v364 = v1064 + 2832;
  v365 = v1064 + 4256;
  v366 = v1064 + 2840;
  v367 = v1064 + 2856;
  v356 = *(v1064 + 3872);
  v369 = *(v1064 + 3784);
  v353 = *(v1064 + 3536);
  v350 = NightingaleDPFLRunner.performanceMeasure.getter();
  v352 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryUpdatingFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v351 = v287;
  *(v1064 + 3912) = v287;

  v368 = v1064 + 2888;
  *(v1064 + 2888) = v351;
  v288 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryUpdatingFeaturesCompleted, v288);
  v355 = NightingaleDPFLRunner.performanceMeasure.getter();
  v354 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnancies", 0x11uLL, v352 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v289 = swift_task_alloc();
  v290 = v1064;
  v1058 = v289;
  v289[2] = v356;
  v289[3] = v290 + 2720;
  v289[4] = v290 + 2728;
  v289[5] = v290 + 2736;
  v289[6] = v290 + 2744;
  v291 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(5, v291 & 1, v1058, v369, v1064 + 2896);
  v1059 = 0;
  v1061 = 0;
  v1060 = *(v1064 + 3872);

  *(v1064 + 2808) = *(v1064 + 2896);

  v1062 = v1061;
  v1063 = 0;
  v1053 = v1063;
  v1054 = v1062;
  v1104 = 0;
  v1056 = *(v1064 + 2848);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
  v5 = v1056;
  v1055 = v4;
  *(v1064 + 3920) = v4;
  v1057 = MEMORY[0x25F8895B0](v5);

  v1105 = v1057;
  if (v1057 < v1104)
  {
    LOBYTE(v292) = 2;
    v293 = 760;
    LODWORD(v294) = 0;
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v7 = v1064;
  v1106 = v1104;
  v1107 = v1105;
  v8 = v1105;
  *(v1064 + 2552) = v1104;
  *(v7 + 2560) = v8;
  v1051 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  *(v1064 + 3928) = v1051;
  *(v1064 + 3936) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (i = v1053; ; i = v1048)
  {
    v1048 = i;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    v10 = v1064;
    *(v1064 + 3944) = v9;
    v1049 = v10 + 2600;
    IndexingIterator.next()();
    v1050 = *(v1064 + 2600);
    if (*(v1049 + 8))
    {
      break;
    }

    v11 = v1064;
    v1046 = v1064 + 3384;
    *(v1064 + 3384) = v1050;
    v1045 = (v11 + 1752);
    Array.subscript.getter();
    v1040 = *(v1064 + 1776);
    v1037 = *(v1064 + 1784);
    v1036 = __swift_project_boxed_opaque_existential_1(v1045, v1040);
    v1038 = *(v1040 - 8);
    v1039 = v1040 - 8;
    v1044 = swift_task_alloc();
    (*(v1038 + 16))(v1044, v1036, v1040);
    v1041 = (*(v1037 + 48))(v1040);
    (*(v1038 + 8))(v1044, v1040);
    v12 = v1064;
    v1043 = v1064 + 4350;
    *(v1064 + 4350) = v1041;
    v1042 = v12 + 4351;
    *(v12 + 4351) = 2;
    lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
    v1047 = == infix<A>(_:_:)();

    __swift_destroy_boxed_opaque_existential_1(v1045);
    if (v1047)
    {
      v1028 = *(v1064 + 3696);
      v1035 = *(v1064 + 2808);

      v1029 = HyperParams.useSeahorseInferredStartdate.getter();
      v1030 = HyperParams.useTestDateAsLMP.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
      v1033 = v1064 + 2240;
      v1034 = Array.subscript.modify();
      v1031 = *(v13 + 24);
      v1032 = *(v13 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v13, v1031);
      (*(v1032 + 112))(v1035, v1029 & 1, v1030 & 1, v1031);
      v1034();
    }

    else
    {
      v1020 = *(v1064 + 3696);
      v1027 = *(v1064 + 2808);

      v1021 = HyperParams.useSeahorseInferredStartdate.getter();
      v1022 = HyperParams.useFactorStartDateAsLMP.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
      v1025 = v1064 + 2208;
      v1026 = Array.subscript.modify();
      v1023 = *(v14 + 24);
      v1024 = *(v14 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v14, v1023);
      (*(v1024 + 112))(v1027, v1021 & 1, v1022 & 1, v1023);
      v1026();
    }
  }

  v15 = v1054;
  v1017 = *(v1064 + 2848);

  v16 = HyperParams.overlapPregnanciesStrategy.getter();
  v1018 = mergePregnancies(pregnancies:strategy:)(v1017, v16 & 1);
  *(v1064 + 3952) = v1018;
  v1019 = v15;
  if (v15)
  {
    v339 = *(v1064 + 3872);
    v340 = *(v1064 + 3856);
    v341 = *(v1064 + 3760);
    v342 = *(v1064 + 3736);
    v343 = *(v1064 + 3712);
    v344 = *(v1064 + 3696);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v342);
    MEMORY[0x277D82BD8](v343);

    v935 = v1019;
    goto LABEL_168;
  }

  v1013 = *(v1064 + 3848);
  v1014 = *(v1064 + 3840);

  v22 = v1013;
  v23 = v1014;
  *(v1064 + 2912) = v1018;
  v1015 = v23 - v22;
  if (__OFSUB__(v23, v22))
  {
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v17 = MEMORY[0x25F8895B0](v1018, v1055);
  v1012 = v1015 - v17;
  v25 = __OFSUB__(v1015, v17);
  *(v1064 + 3960) = v1015 - v17;
  if (v25)
  {
    goto LABEL_172;
  }

  v26 = v1019;
  v1004 = *(v1064 + 3696);
  v1007 = v1064 + 2920;
  *(v1064 + 2920) = v1012;
  v1003 = 0;
  v1005 = v1064 + 2928;
  *(v1064 + 2928) = _allocateUninitializedArray<A>(_:)();
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v1018;
  v29 = v1064;
  v1006 = v1064 + 2936;
  *(v1064 + 2936) = v27;
  *(v29 + 2944) = v28;

  v30 = swift_task_alloc();
  v31 = v1005;
  v32 = v1006;
  v33 = v1064;
  v1008 = v30;
  v30[2] = v1004;
  v30[3] = v33 + 2720;
  v30[4] = v31;
  v30[5] = v32;
  v1009 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
  *(v1064 + 3968) = v1009;
  v1010 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  *(v1064 + 3976) = v1010;
  Sequence.forEach(_:)();
  v1011 = v26;
  if (v26)
  {
    v338 = *(v1064 + 3696);
  }

  v994 = *(v1064 + 3696);

  v995 = *(v1064 + 2928);

  v34 = MEMORY[0x25F8895B0](v995, v1055);
  v35 = v1064;
  v996 = v34;
  *(v1064 + 3984) = v34;
  v998 = v35 + 2952;
  *(v35 + 2952) = v34;

  v997 = *(v1064 + 2936);

  *(v1064 + 2960) = v997;
  v999 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd);
  v1000 = lazy protocol witness table accessor for type [PregnancyInvalidReason] and conformance [A]();
  v1001 = _ArrayProtocol.filter(_:)();
  v1002 = 0;
  v36 = MEMORY[0x25F8895B0](v1001, &type metadata for PregnancyInvalidReason);
  v37 = v1064;
  *(v1064 + 3992) = v36;
  v991 = v37 + 2968;
  *(v37 + 2968) = v36;

  *(v1064 + 2976) = v997;
  v992 = _ArrayProtocol.filter(_:)();
  v993 = 0;
  v38 = MEMORY[0x25F8895B0](v992, &type metadata for PregnancyInvalidReason);
  v39 = v1064;
  *(v1064 + 4000) = v38;
  v988 = v39 + 2984;
  *(v39 + 2984) = v38;

  *(v1064 + 2992) = v997;
  v989 = _ArrayProtocol.filter(_:)();
  v990 = 0;
  v40 = MEMORY[0x25F8895B0](v989, &type metadata for PregnancyInvalidReason);
  v41 = v1064;
  *(v1064 + 4008) = v40;
  v985 = v41 + 3000;
  *(v41 + 3000) = v40;

  *(v1064 + 3008) = v997;
  v986 = _ArrayProtocol.filter(_:)();
  v987 = 0;
  v42 = MEMORY[0x25F8895B0](v986, &type metadata for PregnancyInvalidReason);
  v43 = v1064;
  *(v1064 + 4016) = v42;
  v982 = v43 + 3016;
  *(v43 + 3016) = v42;

  *(v1064 + 3024) = v997;
  v983 = _ArrayProtocol.filter(_:)();
  v984 = 0;
  v44 = MEMORY[0x25F8895B0](v983, &type metadata for PregnancyInvalidReason);
  v45 = v1064;
  *(v1064 + 4024) = v44;
  v979 = v45 + 3032;
  *(v45 + 3032) = v44;

  *(v1064 + 3040) = v997;
  v980 = _ArrayProtocol.filter(_:)();
  v981 = 0;
  v973 = *(v1064 + 3536);
  v46 = MEMORY[0x25F8895B0](v980, &type metadata for PregnancyInvalidReason);
  v47 = v1064;
  *(v1064 + 4032) = v46;
  v977 = v47 + 3048;
  *(v47 + 3048) = v46;

  v975 = NightingaleDPFLRunner.performanceMeasure.getter();
  v974 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdatePregnancies", 0x11uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v976 = v48;
  *(v1064 + 4040) = v48;

  v978 = v1064 + 3056;
  *(v1064 + 3056) = v976;
  v49 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updatePregnanciesCompleted, v49);
  if (v996 <= 0)
  {
    v226 = v1064;
    v227 = *(v1064 + 4359);
    v509 = v1064 + 2610;
    *(v1064 + 2610) = v227;
    v508 = v226 + 2611;
    *(v226 + 2611) = 4;
    lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
    if ((== infix<A>(_:_:)() & 1) == 0)
    {
      v471 = *(v1064 + 3872);
      v472 = *(v1064 + 3856);
      v473 = *(v1064 + 3760);
      v474 = *(v1064 + 3736);
      v475 = *(v1064 + 3712);
      v476 = *(v1064 + 3696);
      v470 = 58;
      v248 = HIDPFLError.rawValue.getter(58);
      NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_checkValidPregnanciesCompleted, v248);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v477 = swift_allocError();
      *v249 = 58;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v474);
      MEMORY[0x277D82BD8](v475);

      v935 = v477;
      goto LABEL_168;
    }

    v228 = v981;
    v487 = *(v1064 + 3864);
    v494 = *(v1064 + 3848);
    v491 = *(v1064 + 3840);
    v501 = *(v1064 + 3760);
    v500 = *(v1064 + 3752);
    v485 = *(v1064 + 3744);
    v489 = *(v1064 + 3704);
    v504 = *(v1064 + 3696);
    v484 = *(v1064 + 2848);

    v502 = MEMORY[0x25F8895B0](v484, v1055);

    v503 = *(v1064 + 2936);

    v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    v499 = _allocateUninitializedArray<A>(_:)();
    v497 = v229;
    v230 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v230, v497);
    v231 = v485;
    v232 = v497;
    v496 = MEMORY[0x277D839F8];
    v497[5] = MEMORY[0x277D839F8];
    v232[2] = v231;
    v486 = v232 + 6;
    v233 = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v233, v486);
    v234 = v487;
    v235 = v497;
    v497[11] = v496;
    v235[8] = v234;
    v488 = v235 + 12;
    v236 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
    outlined init with copy of String(v236, v488);
    v237 = v489;
    v238 = v497;
    v497[17] = v496;
    v238[14] = v237;
    v490 = v238 + 18;
    v239 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v239, v490);
    v240 = v491;
    v241 = v497;
    v493 = MEMORY[0x277D83B88];
    v497[23] = MEMORY[0x277D83B88];
    v241[20] = v240;
    v492 = v241 + 24;
    v242 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
    outlined init with copy of String(v242, v492);
    v243 = v494;
    v244 = v497;
    v497[29] = v493;
    v244[26] = v243;
    v495 = v244 + 30;
    updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
    outlined init with copy of String(updated, v495);
    v246 = v497;
    v247 = v976;
    v497[35] = v496;
    v246[32] = v247;
    _finalizeUninitializedArray<A>(_:)();
    v505 = Dictionary.init(dictionaryLiteral:)();
    v506 = NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(v504, v500, v501, v502, v503, v505, -1.0);
    v507 = v228;
    if (v228)
    {
      v332 = *(v1064 + 3872);
      v333 = *(v1064 + 3856);
      v334 = *(v1064 + 3760);
      v335 = *(v1064 + 3736);
      v336 = *(v1064 + 3712);
      v337 = *(v1064 + 3696);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v335);
      MEMORY[0x277D82BD8](v336);

      v935 = v507;
      goto LABEL_168;
    }

    v478 = *(v1064 + 3872);
    v479 = *(v1064 + 3856);
    v480 = *(v1064 + 3760);
    v481 = *(v1064 + 3736);
    v482 = *(v1064 + 3712);
    v483 = *(v1064 + 3696);

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    MEMORY[0x277D82BD8](v481);
    MEMORY[0x277D82BD8](v482);

    v576 = v506;
    goto LABEL_136;
  }

  v970 = *(v1064 + 4359);
  v50 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_checkValidPregnanciesCompleted, v50);
  v51 = v1064;
  v972 = v1064 + 2625;
  *(v1064 + 2625) = v970;
  v971 = v51 + 2626;
  *(v51 + 2626) = 4;
  *(v1064 + 4048) = lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v922 = *(v1064 + 3696);
    v924 = NightingaleDPFLRunner.performanceMeasure.getter();
    v925 = 1;
    v923 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v80 = HyperParams.sliceDeltaAnchor.getter();
    v81 = v1064;
    v927 = v1064 + 2627;
    *(v1064 + 2627) = v80 & 1;
    v926 = v81 + 4308;
    *(v81 + 4308) = 1;
    lazy protocol witness table accessor for type SliceDeltaAnchor and conformance SliceDeltaAnchor();
    if (== infix<A>(_:_:)())
    {
      v82 = v981;
      v920 = *(v1064 + 2928);

      *(v1064 + 3184) = v920;
      result = Sequence.min(by:)();
      v921 = v82;
      if (!v82)
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
        if (*(v1064 + 1336))
        {
          v915 = *(v1064 + 1336);
          v914 = *(v1064 + 1344);
          v916 = v1064 + 1312;
          __swift_project_boxed_opaque_existential_1((v1064 + 1312), v915);
          v917 = (*(v914 + 16))(v915);
          __swift_destroy_boxed_opaque_existential_1(v1064 + 1312);
          v918 = v917;
          v919 = 0;
        }

        else
        {
          outlined destroy of Pregnancy?(v1064 + 1312);
          v918 = 0;
          v919 = 1;
        }

        v913 = v918;
        if (v919 & 1) != 0 || ((v83 = v1064, v912 = v1064 + 4312, *(v1064 + 4312) = v913, v911 = *(v83 + 2928), , *(v1064 + 3192) = v911, Sequence.max(by:)(), outlined destroy of [(start: UInt32, end: UInt32)](), !*(v1064 + 1376)) ? (outlined destroy of Pregnancy?(v1064 + 1352), v909 = 0, v910 = 1) : (v906 = *(v1064 + 1376), v905 = *(v1064 + 1384), v907 = v1064 + 1352, __swift_project_boxed_opaque_existential_1((v1064 + 1352), v906), v908 = (*(v905 + 16))(v906), __swift_destroy_boxed_opaque_existential_1(v1064 + 1352), v909 = v908, v910 = 0), v904 = v909, (v910))
        {
          v892 = *(v1064 + 3872);
          v893 = *(v1064 + 3856);
          v894 = *(v1064 + 3760);
          v895 = *(v1064 + 3736);
          v896 = *(v1064 + 3712);
          v897 = *(v1064 + 3696);
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v898 = swift_allocError();
          *v91 = 105;
          swift_willThrow();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v895);
          MEMORY[0x277D82BD8](v896);

          v935 = v898;
          goto LABEL_168;
        }

        v900 = *(v1064 + 3696);
        v899 = *(v1064 + 3536);
        v901 = v1064 + 4320;
        *(v1064 + 4320) = v904;
        v902 = HyperParams.rawSampleTimeout.getter();

        v84 = swift_allocObject();
        v85 = v899;
        v86 = v913;
        v87 = v900;
        v88 = v904;
        v903 = v84;
        *(v1064 + 4088) = v84;
        *(v84 + 16) = v85;
        *(v84 + 24) = v86;
        *(v84 + 32) = v87;
        *(v84 + 40) = v88;
        v89 = swift_task_alloc();
        v90 = v1064;
        v21.n128_f64[0] = v902;
        v18 = v1090;
        v19 = v903;
        *(v1064 + 4096) = v89;
        *v89 = *(v90 + 2632);
        v89[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v20 = *(v90 + 3888);
        v17 = v90 + 3200;

        return MEMORY[0x2821A2088](v17, v18, v19, v20, v21);
      }

      return result;
    }

    v883 = v1064 + 2640;
    v884 = v1064 + 2520;
    v885 = v1064 + 2648;
    v886 = v1064 + 2656;
    v887 = v1064 + 2664;
    v888 = v1064 + 2672;
    v889 = v1064 + 2680;
    v864 = v1064 + 2696;
    v890 = v1064 + 2704;
    v881 = v1064 + 2712;
    v866 = v1064 + 4256;
    v867 = v1064 + 2840;
    v868 = v1064 + 2856;
    v869 = v1064 + 2888;
    v870 = v1064 + 2912;
    v871 = v1064 + 2952;
    v872 = v1064 + 2968;
    v873 = v1064 + 2984;
    v874 = v1064 + 3000;
    v875 = v1064 + 3016;
    v876 = v1064 + 3032;
    v877 = v1064 + 3048;
    v878 = v1064 + 3056;
    v880 = *(v1064 + 3976);
    v879 = *(v1064 + 3968);
    v860 = *(v1064 + 3536);
    v858 = NightingaleDPFLRunner.performanceMeasure.getter();
    v861 = 1;
    v857 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v859 = v92;
    *(v1064 + 4112) = v92;

    v882 = v1064 + 3064;
    *(v1064 + 3064) = v859;
    v93 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updateSliceDeltaAnchorCompleted, v93);
    v863 = NightingaleDPFLRunner.performanceMeasure.getter();
    v862 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, v861 & 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v865 = *(v1064 + 2928);

    *(v1064 + 3072) = v865;
    result = Sequence.min(by:)();
    v891 = v981;
    if (v981)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1064 + 1216))
    {
      v852 = *(v1064 + 1216);
      v851 = *(v1064 + 1224);
      v853 = v1064 + 1192;
      __swift_project_boxed_opaque_existential_1((v1064 + 1192), v852);
      v854 = (*(v851 + 64))(v852);
      __swift_destroy_boxed_opaque_existential_1(v1064 + 1192);
      v855 = v854;
      v856 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v1064 + 1192);
      v855 = 0;
      v856 = 1;
    }

    v94 = v856;
    v850 = v855;
    *(v1064 + 4284) = v855;
    if (v94)
    {
      goto LABEL_131;
    }

    v95 = v1064;
    v96 = v891;
    v848 = *(v1064 + 3976);
    v847 = *(v1064 + 3968);
    v846 = v1064 + 4264;
    *(v1064 + 4264) = v850;
    v845 = *(v95 + 2928);

    *(v1064 + 3080) = v845;
    result = Sequence.max(by:)();
    v849 = v96;
    if (v96)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1064 + 1256))
    {
      v840 = *(v1064 + 1256);
      v839 = *(v1064 + 1264);
      v841 = v1064 + 1232;
      __swift_project_boxed_opaque_existential_1((v1064 + 1232), v840);
      v842 = (*(v839 + 64))(v840);
      __swift_destroy_boxed_opaque_existential_1(v1064 + 1232);
      v843 = v842;
      v844 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v1064 + 1232);
      v843 = 0;
      v844 = 1;
    }

    v97 = v844;
    v838 = v843;
    *(v1064 + 4292) = v843;
    if (v97)
    {
      goto LABEL_131;
    }

    v98 = v1064;
    v99 = v849;
    v836 = *(v1064 + 3976);
    v835 = *(v1064 + 3968);
    v834 = v1064 + 4272;
    *(v1064 + 4272) = v838;
    v833 = *(v98 + 2928);

    *(v1064 + 3088) = v833;
    result = Sequence.min(by:)();
    v837 = v99;
    if (v99)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1064 + 1296))
    {
      v828 = *(v1064 + 1296);
      v827 = *(v1064 + 1304);
      v829 = v1064 + 1272;
      __swift_project_boxed_opaque_existential_1((v1064 + 1272), v828);
      v830 = (*(v827 + 8))(v828);
      __swift_destroy_boxed_opaque_existential_1(v1064 + 1272);
      v831 = v830;
      v832 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v1064 + 1272);
      v831 = 0;
      v832 = 1;
    }

    v826 = v831;
    if (v832)
    {
LABEL_131:
      v510 = *(v1064 + 3952);
      v511 = *(v1064 + 3872);
      v512 = *(v1064 + 3856);
      v513 = *(v1064 + 3760);
      v514 = *(v1064 + 3736);
      v515 = *(v1064 + 3712);
      v516 = *(v1064 + 3696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v517 = swift_allocError();
      *v225 = 106;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v514);
      MEMORY[0x277D82BD8](v515);

      v935 = v517;
      goto LABEL_168;
    }

    *(v1064 + 4280) = v826;
    v17 = HyperParams.featureLookbackDays.getter();
    v825 = v826 - v17;
    v100 = v826 < v17;
    *(v1064 + 4300) = v826 - v17;
    if (!v100)
    {
      if (*(v1064 + 4260) < v825)
      {
        goto LABEL_53;
      }

      v101 = v1064;
      v102 = *(v1064 + 4260);
      v824 = v1064 + 2428;
      *(v1064 + 2428) = v825;
      *(v101 + 2432) = v102;
      *(v1064 + 3096) = _allocateUninitializedArray<A>(_:)();
      if (HyperParams.isHRVRequired()())
      {
        v823 = v1064 + 4334;
        *(v1064 + 4334) = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
        Array.append(_:)();
      }

      if (HyperParams.isSpO2Required()())
      {
        v822 = v1064 + 4333;
        *(v1064 + 4333) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
        Array.append(_:)();
      }

      if (HyperParams.isRespiratoryRateRequired()())
      {
        v821 = v1064 + 4332;
        *(v1064 + 4332) = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
        Array.append(_:)();
      }

      if (HyperParams.isSWTRequired()())
      {
        v820 = v1064 + 4327;
        *(v1064 + 4327) = 7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
        Array.append(_:)();
      }

      v818 = *(v1064 + 3096);

      *(v1064 + 3104) = v818;
      v817 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
      lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
      v819 = Collection.isEmpty.getter();

      if ((v819 & 1) == 0)
      {
        v813 = *(v1064 + 4260);
        v811 = *(v1064 + 3696);
        v812 = *(v1064 + 3536);

        v103 = swift_task_alloc();
        v104 = v811;
        v105 = v812;
        v106 = v825;
        v107 = v813;
        v108 = v1064;
        v815 = v103;
        *(v1064 + 4120) = v103;
        *(v103 + 16) = v104;
        *(v103 + 24) = v108 + 3096;
        *(v103 + 32) = v105;
        *(v103 + 40) = v106;
        *(v103 + 44) = v107;
        *(v103 + 48) = v108 + 2760;
        *(v103 + 56) = v108 + 2768;
        *(v103 + 64) = v108 + 2776;
        *(v103 + 72) = v108 + 2752;
        v816 = MEMORY[0x277D84F78] + 8;
        v814 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
        v109 = swift_task_alloc();
        v110 = v1064;
        v111 = v814;
        v73 = v1087;
        v74 = v815;
        v75 = v816;
        v112 = v109;
        v76 = v1016;
        *(v1064 + 4128) = v112;
        *v112 = *(v110 + 2632);
        v112[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v77 = 8;
        v78 = v111 & 1;

        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v76, v77, v78, v73, v74, v75);
      }

      v784 = v1064 + 2640;
      v802 = v1064 + 2520;
      v803 = v1064 + 2648;
      v804 = v1064 + 2656;
      v805 = v1064 + 2664;
      v806 = v1064 + 2672;
      v807 = v1064 + 2680;
      v808 = v1064 + 2688;
      v809 = v1064 + 2696;
      v801 = v1064 + 2704;
      v785 = v1064 + 4256;
      v786 = v1064 + 2840;
      v787 = v1064 + 2856;
      v788 = v1064 + 2888;
      v789 = v1064 + 2912;
      v790 = v1064 + 2920;
      v791 = v1064 + 2952;
      v783 = v1064 + 2984;
      v792 = v1064 + 3000;
      v793 = v1064 + 3016;
      v794 = v1064 + 3032;
      v795 = v1064 + 3048;
      v796 = v1064 + 3056;
      v797 = v1064 + 3064;
      v798 = v1064 + 4264;
      v799 = v1064 + 4272;
      v800 = v1064 + 4280;
      v810 = v1064 + 2428;
      *(v1064 + 3112) = 0;
      if (HyperParams.isSHRRequired()())
      {
        v778 = *(v1064 + 4300);
        v779 = *(v1064 + 4260);
        v777 = *(v1064 + 3696);
        v776 = *(v1064 + 3536);

        v113 = swift_task_alloc();
        v114 = v776;
        v115 = v777;
        v116 = v778;
        v117 = v779;
        v118 = v1064;
        v781 = v113;
        *(v1064 + 4144) = v113;
        *(v113 + 16) = v114;
        *(v113 + 24) = v115;
        *(v113 + 32) = v116;
        *(v113 + 36) = v117;
        *(v113 + 40) = v118 + 2784;
        *(v113 + 48) = v118 + 2792;
        *(v113 + 56) = v118 + 3112;
        v782 = MEMORY[0x277D84F78] + 8;
        v780 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
        v119 = swift_task_alloc();
        v120 = v1064;
        v121 = v780;
        v73 = v1086;
        v74 = v781;
        v75 = v782;
        v122 = v119;
        v76 = v1016;
        *(v1064 + 4152) = v122;
        *v122 = *(v120 + 2632);
        v122[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v77 = 8;
        v78 = v121 & 1;

        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v76, v77, v78, v73, v74, v75);
      }

      v749 = v1064 + 2640;
      v767 = v1064 + 2520;
      v768 = v1064 + 2648;
      v769 = v1064 + 2656;
      v770 = v1064 + 2664;
      v771 = v1064 + 2672;
      v772 = v1064 + 2680;
      v773 = v1064 + 2688;
      v774 = v1064 + 2696;
      v766 = v1064 + 2704;
      v750 = v1064 + 4256;
      v751 = v1064 + 2840;
      v752 = v1064 + 2856;
      v753 = v1064 + 2888;
      v754 = v1064 + 2912;
      v755 = v1064 + 2920;
      v756 = v1064 + 2952;
      v748 = v1064 + 2984;
      v757 = v1064 + 3000;
      v758 = v1064 + 3016;
      v759 = v1064 + 3032;
      v760 = v1064 + 3048;
      v761 = v1064 + 3056;
      v762 = v1064 + 3064;
      v763 = v1064 + 4264;
      v764 = v1064 + 4272;
      v765 = v1064 + 4280;
      v775 = v1064 + 2428;
      if (HyperParams.isCalendarAlgorithmRequired()())
      {
        v741 = *(v1064 + 4292);
        v739 = *(v1064 + 4284);
        v744 = *(v1064 + 3872);
        v742 = *(v1064 + 4260);
        v740 = *(v1064 + 3696);
        v743 = *(v1064 + 3536);

        v123 = swift_task_alloc();
        v124 = v739;
        v125 = v740;
        v126 = v741;
        v127 = v742;
        v128 = v743;
        v129 = v744;
        v130 = v1064;
        v746 = v123;
        *(v1064 + 4168) = v123;
        *(v123 + 16) = v124;
        *(v123 + 24) = v125;
        *(v123 + 32) = v126;
        *(v123 + 36) = v127;
        *(v123 + 40) = v128;
        *(v123 + 48) = v130 + 2720;
        *(v123 + 56) = v130 + 2728;
        *(v123 + 64) = v130 + 2736;
        *(v123 + 72) = v130 + 2744;
        *(v123 + 80) = v129;
        *(v123 + 88) = v130 + 2800;
        *(v123 + 96) = v130 + 2808;
        v747 = MEMORY[0x277D84F78] + 8;
        v745 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
        v131 = swift_task_alloc();
        v132 = v1064;
        v133 = v745;
        v73 = v1085;
        v74 = v746;
        v75 = v747;
        v134 = v131;
        v76 = v1016;
        *(v1064 + 4176) = v134;
        *v134 = *(v132 + 2632);
        v134[1] = NightingaleDPFLRunner.run(task:useCase:context:);
        v77 = 8;
        v78 = v133 & 1;

        return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v76, v77, v78, v73, v74, v75);
      }

      v711 = v1064 + 2640;
      v729 = v1064 + 2520;
      v730 = v1064 + 2648;
      v731 = v1064 + 2656;
      v732 = v1064 + 2664;
      v733 = v1064 + 2672;
      v734 = v1064 + 2680;
      v735 = v1064 + 2688;
      v736 = v1064 + 2696;
      v737 = v1064 + 2704;
      v728 = v1064 + 2712;
      v712 = v1064 + 2840;
      v713 = v1064 + 2856;
      v714 = v1064 + 2888;
      v715 = v1064 + 2912;
      v716 = v1064 + 2920;
      v717 = v1064 + 2952;
      v718 = v1064 + 2968;
      v704 = v1064 + 3000;
      v719 = v1064 + 3016;
      v720 = v1064 + 3032;
      v721 = v1064 + 3048;
      v722 = v1064 + 3056;
      v723 = v1064 + 3064;
      v724 = v1064 + 4264;
      v725 = v1064 + 4272;
      v726 = v1064 + 4280;
      v727 = v1064 + 2428;
      v709 = *(v1064 + 3696);
      v701 = *(v1064 + 3536);
      v699 = NightingaleDPFLRunner.performanceMeasure.getter();
      v705 = 1;
      v698 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v700 = v135;

      v738 = v1064 + 3120;
      *(v1064 + 3120) = v700;
      v136 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
      NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v136);
      v703 = NightingaleDPFLRunner.performanceMeasure.getter();
      v702 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v705 & 1)._object;
      dispatch thunk of PerformanceMeasure.start(_:)();

      v137 = HyperParams.metricsProcessEngine.getter();
      v138 = v1064;
      v707 = v1064 + 4309;
      *(v1064 + 4309) = v137 & v705;
      v706 = v138 + 4310;
      *(v138 + 4310) = 1;
      v708 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
      v710 = == infix<A>(_:_:)();

      if (v710)
      {
        v697 = 1;
      }

      else
      {
        v139 = HyperParams.featurizerEngine.getter();
        v140 = v1064;
        *(v1064 + 4311) = v139 & 1;
        *(v140 + 4316) = 1;
        v697 = == infix<A>(_:_:)();
      }

      v696 = v697;

      if (v697)
      {
        static HIDMorpheusExtensions.extendMorpheus()();
        v695 = v837;
        if (v837)
        {
          v325 = *(v1064 + 3952);
          v326 = *(v1064 + 3872);
          v327 = *(v1064 + 3856);
          v328 = *(v1064 + 3760);
          v329 = *(v1064 + 3736);
          v330 = *(v1064 + 3712);
          v331 = *(v1064 + 3696);
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v329);
          MEMORY[0x277D82BD8](v330);

          v935 = v695;
          goto LABEL_168;
        }

        static Math.extendMorpheus()();
        v694 = 0;
        v693 = 0;
      }

      else
      {
        v693 = v837;
      }

      v141 = v693;
      v689 = *(v1064 + 4260);
      v688 = *(v1064 + 3696);
      v685 = *(v1064 + 3536);
      v687 = *(v1064 + 3528);
      type metadata accessor for Featurizer();
      v142 = Featurizer.__allocating_init()();
      v143 = v1064;
      v686 = v142;
      *(v1064 + 4192) = v142;
      v690 = v143 + 3128;
      *(v143 + 3128) = v142;

      v144 = swift_task_alloc();
      v145 = v686;
      v146 = v687;
      v147 = v688;
      v148 = v689;
      v149 = v1064;
      v691 = v144;
      *(v1064 + 4200) = v144;
      *(v144 + 16) = v145;
      *(v144 + 24) = v146;
      *(v144 + 32) = v149 + 2928;
      *(v144 + 40) = v149 + 2752;
      *(v144 + 48) = v149 + 2760;
      *(v144 + 56) = v149 + 2776;
      *(v144 + 64) = v149 + 2768;
      *(v144 + 72) = v149 + 2784;
      *(v144 + 80) = v149 + 2792;
      *(v144 + 88) = v149 + 2800;
      *(v144 + 96) = v149 + 2808;
      *(v144 + 104) = v149 + 2744;
      *(v144 + 112) = v147;
      *(v144 + 120) = v148;
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd);
      NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v691, v150, v1064 + 16);
      v692 = v141;
      if (v141)
      {
        v318 = *(v1064 + 3952);
        v319 = *(v1064 + 3872);
        v320 = *(v1064 + 3856);
        v321 = *(v1064 + 3760);
        v322 = *(v1064 + 3736);
        v323 = *(v1064 + 3712);
        v324 = *(v1064 + 3696);
        v317 = *(v1064 + 3528);

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v322);
        MEMORY[0x277D82BD8](v323);

        v935 = v692;
        goto LABEL_168;
      }

      v623 = *(v1064 + 4112);
      v621 = *(v1064 + 4040);
      v651 = *(v1064 + 4032);
      v648 = *(v1064 + 4024);
      v646 = *(v1064 + 4016);
      v644 = *(v1064 + 4008);
      v642 = *(v1064 + 4000);
      v640 = *(v1064 + 3992);
      v638 = *(v1064 + 3984);
      v636 = *(v1064 + 3960);
      v619 = *(v1064 + 3912);
      v617 = *(v1064 + 3864);
      v634 = *(v1064 + 3848);
      v632 = *(v1064 + 3840);
      v615 = *(v1064 + 3744);
      v630 = *(v1064 + 3704);
      v612 = *(v1064 + 3696);
      v611 = *(v1064 + 3528);

      v654 = (v1064 + 184);
      v677 = v1064 + 16;
      memcpy((v1064 + 184), (v1064 + 16), 0xA8uLL);
      v614 = NightingaleDPFLRunner.performanceMeasure.getter();
      v613 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v627 = v151;

      v678 = v1064 + 3136;
      *(v1064 + 3136) = v627;
      v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
      v653 = _allocateUninitializedArray<A>(_:)();
      v650 = v152;
      v153 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v153, v650);
      v154 = v615;
      v155 = v650;
      v629 = MEMORY[0x277D839F8];
      v650[5] = MEMORY[0x277D839F8];
      v155[2] = v154;
      v616 = v155 + 6;
      v156 = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v156, v616);
      v157 = v617;
      v158 = v650;
      v650[11] = v629;
      v158[8] = v157;
      v618 = v158 + 12;
      v159 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v159, v618);
      v160 = v619;
      v161 = v650;
      v650[17] = v629;
      v161[14] = v160;
      v620 = v161 + 18;
      v162 = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v162, v620);
      v163 = v621;
      v164 = v650;
      v650[23] = v629;
      v164[20] = v163;
      v622 = v164 + 24;
      v165 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v165, v622);
      v166 = v623;
      v167 = v650;
      v650[29] = v629;
      v167[26] = v166;
      v624 = v167 + 30;
      v168 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v168, v624);
      v169 = v650;
      v170 = *(v1064 + 3112);
      v650[35] = v629;
      v169[32] = v170;
      v625 = v169 + 36;
      v171 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v171, v625);
      v172 = v700;
      v173 = v650;
      v650[41] = v629;
      v173[38] = v172;
      v626 = v173 + 42;
      v174 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v174, v626);
      v175 = v627;
      v176 = v650;
      v650[47] = v629;
      v176[44] = v175;
      v628 = v176 + 48;
      v177 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
      outlined init with copy of String(v177, v628);
      v178 = v630;
      v179 = v650;
      v650[53] = v629;
      v179[50] = v178;
      v631 = v179 + 54;
      v180 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v180, v631);
      v181 = v632;
      v182 = v650;
      v655 = MEMORY[0x277D83B88];
      v650[59] = MEMORY[0x277D83B88];
      v182[56] = v181;
      v633 = v182 + 60;
      v183 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
      outlined init with copy of String(v183, v633);
      v184 = v634;
      v185 = v650;
      v650[65] = v655;
      v185[62] = v184;
      v635 = v185 + 66;
      v186 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v186, v635);
      v187 = v636;
      v188 = v650;
      v650[71] = v655;
      v188[68] = v187;
      v637 = v188 + 72;
      v189 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v189, v637);
      v190 = v638;
      v191 = v650;
      v650[77] = v655;
      v191[74] = v190;
      v639 = v191 + 78;
      v192 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v192, v639);
      v193 = v640;
      v194 = v650;
      v650[83] = v655;
      v194[80] = v193;
      v641 = v194 + 84;
      v195 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v195, v641);
      v196 = v642;
      v197 = v650;
      v650[89] = v655;
      v197[86] = v196;
      v643 = v197 + 90;
      v198 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v198, v643);
      v199 = v644;
      v200 = v650;
      v650[95] = v655;
      v200[92] = v199;
      v645 = v200 + 96;
      v201 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v201, v645);
      v202 = v646;
      v203 = v650;
      v650[101] = v655;
      v203[98] = v202;
      v647 = v203 + 102;
      v204 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v204, v647);
      v205 = v648;
      v206 = v650;
      v650[107] = v655;
      v206[104] = v205;
      v649 = v206 + 108;
      v207 = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v207, v649);
      v208 = v650;
      v209 = v651;
      v650[113] = v655;
      v208[110] = v209;
      _finalizeUninitializedArray<A>(_:)();
      v680 = MEMORY[0x277D837D0];
      v681 = MEMORY[0x277D84F70] + 8;
      v682 = MEMORY[0x277D837E0];
      v679 = Dictionary.init(dictionaryLiteral:)();
      outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v654, (v1064 + 352));
      v656 = *(v1064 + 184);
      v657 = *(v1064 + 192);
      v658 = *(v1064 + 200);
      v659 = *(v1064 + 208);
      v660 = *(v1064 + 216);
      v661 = *(v1064 + 224);
      v662 = *(v1064 + 232);
      v663 = *(v1064 + 240);
      v664 = *(v1064 + 248);
      v665 = *(v1064 + 256);
      v666 = *(v1064 + 264);
      v667 = *(v1064 + 272);
      v668 = *(v1064 + 280);
      v669 = *(v1064 + 288);
      v670 = *(v1064 + 296);
      v671 = *(v1064 + 304);
      v672 = *(v1064 + 312);
      v673 = *(v1064 + 320);
      v674 = *(v1064 + 328);
      v675 = *(v1064 + 336);
      v676 = *(v1064 + 344);
      _dictionaryUpCast<A, B, C, D>(_:)();
      v683 = Dictionary.merging(_:uniquingKeysWith:)();
      *(v1064 + 4208) = v683;
      v684 = 0;
      v609 = *(v1064 + 4048);
      v608 = *(v1064 + 4359);

      v210 = v608;
      v211 = v1064;
      v610 = v1064 + 3144;
      *(v1064 + 3144) = v683;
      *(v211 + 4317) = v210;
      *(v211 + 4318) = 0;
      if (== infix<A>(_:_:)())
      {
        v212 = v684;
        v582 = *(v1064 + 4260);
        v578 = *(v1064 + 3760);
        v577 = *(v1064 + 3752);
        v579 = *(v1064 + 3696);
        v583 = *(v1064 + 3528);
        v580 = *(v1064 + 2808);

        v581 = *(v1064 + 2848);

        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v1064 + 184), (v1064 + 1024));
        v584 = *(v1064 + 184);
        v602 = *(v1064 + 192);
        v604 = *(v1064 + 200);
        v605 = *(v1064 + 208);
        v585 = *(v1064 + 216);
        v586 = *(v1064 + 224);
        v587 = *(v1064 + 232);
        v588 = *(v1064 + 240);
        v589 = *(v1064 + 248);
        v590 = *(v1064 + 256);
        v591 = *(v1064 + 264);
        v592 = *(v1064 + 272);
        v593 = *(v1064 + 280);
        v594 = *(v1064 + 288);
        v595 = *(v1064 + 296);
        v596 = *(v1064 + 304);
        v597 = *(v1064 + 312);
        v598 = *(v1064 + 320);
        v599 = *(v1064 + 328);
        v600 = *(v1064 + 336);
        v601 = *(v1064 + 344);
        v603 = &v292;
        v606 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v583, v577, v578, v579, v580, v581, v582, v584, v602, v604, v605, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v683);
        v607 = v212;
        if (v212)
        {
          v310 = *(v1064 + 3952);
          v311 = *(v1064 + 3872);
          v312 = *(v1064 + 3856);
          v313 = *(v1064 + 3760);
          v314 = *(v1064 + 3736);
          v315 = *(v1064 + 3712);
          v316 = *(v1064 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v314);
          MEMORY[0x277D82BD8](v315);

          v935 = v607;
          goto LABEL_168;
        }

        v569 = *(v1064 + 3952);
        v570 = *(v1064 + 3872);
        v571 = *(v1064 + 3856);
        v572 = *(v1064 + 3760);
        v573 = *(v1064 + 3736);
        v574 = *(v1064 + 3712);
        v575 = *(v1064 + 3696);

        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v573);
        MEMORY[0x277D82BD8](v574);

        v576 = v606;
      }

      else
      {
        v213 = v1064;
        *(v1064 + 4319) = *(v1064 + 4359);
        *(v213 + 4324) = 1;
        if ((== infix<A>(_:_:)() & 1) == 0)
        {
          v214 = v1064;
          *(v1064 + 4325) = *(v1064 + 4359);
          *(v214 + 4326) = 2;
          if ((== infix<A>(_:_:)() & 1) == 0)
          {
            v518 = *(v1064 + 3952);
            v519 = *(v1064 + 3872);
            v520 = *(v1064 + 3856);
            v521 = *(v1064 + 3760);
            v522 = *(v1064 + 3736);
            v523 = *(v1064 + 3712);
            v524 = *(v1064 + 3696);
            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v525 = swift_allocError();
            *v224 = 69;
            swift_willThrow();

            outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            MEMORY[0x277D82BD8](v522);
            MEMORY[0x277D82BD8](v523);

            v935 = v525;
            goto LABEL_168;
          }

          v529 = *(v1064 + 3872);
          v528 = *(v1064 + 4268);
          v526 = *(v1064 + 3696);
          v527 = *(v1064 + 3536);

          v215 = swift_task_alloc();
          v216 = v526;
          v217 = v527;
          v218 = v528;
          v219 = v529;
          v220 = v1064;
          v530 = v215;
          *(v1064 + 4216) = v215;
          *(v215 + 16) = v216;
          *(v215 + 24) = v220 + 2848;
          *(v215 + 32) = v217;
          *(v215 + 40) = v218;
          *(v215 + 48) = v220 + 2720;
          *(v215 + 56) = v220 + 2728;
          *(v215 + 64) = v220 + 2736;
          *(v215 + 72) = v220 + 2744;
          *(v215 + 80) = v220 + 2808;
          *(v215 + 88) = v219;
          v221 = swift_task_alloc();
          *(v1064 + 4224) = v221;
          v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
          v223 = v1064;
          v73 = v1084;
          v74 = v530;
          v75 = v222;
          *v221 = *(v1064 + 2632);
          v221[1] = NightingaleDPFLRunner.run(task:useCase:context:);
          v76 = v223 + 2436;
          v77 = 9;
          v78 = 1;

          return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v76, v77, v78, v73, v74, v75);
        }

        v567 = PFLTask.evalModelNames(taskType:hyperParams:)();
        v568 = v684;
        if (v684)
        {
          v303 = *(v1064 + 3952);
          v304 = *(v1064 + 3872);
          v305 = *(v1064 + 3856);
          v306 = *(v1064 + 3760);
          v307 = *(v1064 + 3736);
          v308 = *(v1064 + 3712);
          v309 = *(v1064 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v307);
          MEMORY[0x277D82BD8](v308);

          v935 = v568;
          goto LABEL_168;
        }

        v542 = *(v1064 + 4260);
        v539 = *(v1064 + 3696);
        v538 = *(v1064 + 3528);
        v540 = *(v1064 + 2808);

        v541 = *(v1064 + 2848);

        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v1064 + 184), (v1064 + 856));
        v543 = *(v1064 + 184);
        v544 = *(v1064 + 192);
        v562 = *(v1064 + 200);
        v564 = *(v1064 + 208);
        v545 = *(v1064 + 216);
        v546 = *(v1064 + 224);
        v547 = *(v1064 + 232);
        v548 = *(v1064 + 240);
        v549 = *(v1064 + 248);
        v550 = *(v1064 + 256);
        v551 = *(v1064 + 264);
        v552 = *(v1064 + 272);
        v553 = *(v1064 + 280);
        v554 = *(v1064 + 288);
        v555 = *(v1064 + 296);
        v556 = *(v1064 + 304);
        v557 = *(v1064 + 312);
        v558 = *(v1064 + 320);
        v559 = *(v1064 + 328);
        v560 = *(v1064 + 336);
        v561 = *(v1064 + 344);
        v563 = &v292;
        v565 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v567, v538, v539, v540, v541, v542, v543, v544, v562, v564, v545, v546, v547, v548, v549, v550, v551, v552, v553, v554, v555, v556, v557, v558, v559, v560, v561, v683);
        v566 = 0;
        v531 = *(v1064 + 3952);
        v532 = *(v1064 + 3872);
        v533 = *(v1064 + 3856);
        v534 = *(v1064 + 3760);
        v535 = *(v1064 + 3736);
        v536 = *(v1064 + 3712);
        v537 = *(v1064 + 3696);

        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v535);
        MEMORY[0x277D82BD8](v536);

        v576 = v565;
      }

LABEL_136:
      v469 = v576;
      v461 = *(v1064 + 3664);
      v462 = *(v1064 + 3640);
      v463 = *(v1064 + 3632);
      v464 = *(v1064 + 3608);
      v465 = *(v1064 + 3600);
      v466 = *(v1064 + 3576);
      v467 = *(v1064 + 3568);
      v468 = *(v1064 + 3560);

      v250 = v469;
      v251 = *(*(v1064 + 2632) + 8);

      return v251(v250);
    }

LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v52 = v981;
  v967 = NightingaleDPFLRunner.performanceMeasure.getter();
  v966 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v968 = *(v1064 + 2928);

  *(v1064 + 3320) = v968;
  result = Sequence.min(by:)();
  v969 = v52;
  if (!v52)
  {
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v1064 + 1656))
    {
      v961 = *(v1064 + 1656);
      v960 = *(v1064 + 1664);
      v962 = v1064 + 1632;
      __swift_project_boxed_opaque_existential_1((v1064 + 1632), v961);
      v963 = (*(v960 + 64))(v961);
      __swift_destroy_boxed_opaque_existential_1(v1064 + 1632);
      v964 = v963;
      v965 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v1064 + 1632);
      v964 = 0;
      v965 = 1;
    }

    v959 = v964;
    if (v965 & 1) != 0 || ((v53 = v1064, v958 = v1064 + 4336, *(v1064 + 4336) = v959, v957 = *(v53 + 2928), , *(v1064 + 3328) = v957, Sequence.max(by:)(), outlined destroy of [(start: UInt32, end: UInt32)](), !*(v1064 + 1696)) ? (outlined destroy of Pregnancy?(v1064 + 1672), v955 = 0, v956 = 1) : (v952 = *(v1064 + 1696), v951 = *(v1064 + 1704), v953 = v1064 + 1672, __swift_project_boxed_opaque_existential_1((v1064 + 1672), v952), v954 = (*(v951 + 64))(v952), __swift_destroy_boxed_opaque_existential_1(v1064 + 1672), v955 = v954, v956 = 0), v950 = v955, (v956))
    {
      v928 = *(v1064 + 3872);
      v929 = *(v1064 + 3856);
      v930 = *(v1064 + 3760);
      v931 = *(v1064 + 3736);
      v932 = *(v1064 + 3712);
      v933 = *(v1064 + 3696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v934 = swift_allocError();
      *v79 = 55;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v931);
      MEMORY[0x277D82BD8](v932);

      v935 = v934;
      goto LABEL_168;
    }

    v54 = v959;
    *(v1064 + 4344) = v950;
    v1108 = v54;
    v948 = v54;
    v17 = HyperParams.minSliceAnchorDelta.getter();
    v949 = v948 + v17;
    if (!__OFADD__(v948, v17))
    {
      v17 = HyperParams.sliceSize.getter();
      v947 = v949 - v17;
      if (!__OFSUB__(v949, v17))
      {
        v946 = v947 + 1;
        v57 = __OFADD__(v947, 1);
        *(v1064 + 4056) = v947 + 1;
        if (!v57)
        {
          if (v946 < 0)
          {
LABEL_43:
            LOBYTE(v292) = 2;
            v293 = 3049;
            LODWORD(v294) = 0;
            return _assertionFailure(_:_:file:line:flags:)();
          }

          if (v946 > 0xFFFFFFFFLL)
          {
LABEL_45:
            LOBYTE(v292) = 2;
            v293 = 3053;
            LODWORD(v294) = 0;
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v943 = v946;
          v944 = v950;
          v17 = HyperParams.maxSliceAnchorDelta.getter();
          v945 = v950 + v17;
          if (!__OFADD__(v950, v17))
          {
            if (v945 < 0)
            {
              goto LABEL_43;
            }

            if (v945 > 0xFFFFFFFFLL)
            {
              goto LABEL_45;
            }

            v59 = v1064;
            v60 = *(v1064 + 4260);
            *(v1064 + 2628) = v945;
            *(v59 + 4244) = v60;
            min<A>(_:_:)();
            v61 = v943;
            v62 = *(v1064 + 2612);
            v942 = v62;
            *(v1064 + 4276) = v62;
            if (v62 < v61)
            {
LABEL_53:
              LOBYTE(v292) = 2;
              v293 = 409;
              LODWORD(v294) = 0;
              return _assertionFailure(_:_:file:line:flags:)();
            }

            v63 = v1064;
            v64 = v942;
            v938 = *(v1064 + 3888);
            v936 = *(v1064 + 3696);
            v937 = *(v1064 + 3536);
            v939 = v1064 + 2452;
            *(v1064 + 2452) = v946;
            *(v63 + 2456) = v64;

            v65 = swift_task_alloc();
            v66 = v936;
            v67 = v937;
            v68 = v946;
            v69 = v942;
            v941 = v65;
            *(v1064 + 4064) = v65;
            *(v65 + 16) = v66;
            *(v65 + 24) = v67;
            *(v65 + 32) = v68;
            *(v65 + 36) = v69;
            v940 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
            v70 = swift_task_alloc();
            v71 = v1064;
            v72 = v940;
            v73 = v1095;
            v74 = v941;
            *(v1064 + 4072) = v70;
            *v70 = *(v71 + 2632);
            v70[1] = NightingaleDPFLRunner.run(task:useCase:context:);
            v75 = *(v71 + 3888);
            v76 = v71 + 3336;
            v77 = 8;
            v78 = v72 & 1;

            return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v76, v77, v78, v73, v74, v75);
          }

          goto LABEL_177;
        }

LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        return MEMORY[0x2821A2088](v17, v18, v19, v20, v21);
      }

LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  return result;
}

{
  v621 = v1;
  MEMORY[0x28223BE20](a1);
  v589 = v1;
  v606 = partial apply for closure #29 in NightingaleDPFLRunner.run(task:useCase:context:);
  v577 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v578 = closure #16 in NightingaleDPFLRunner.run(task:useCase:context:);
  v579 = closure #32 in NightingaleDPFLRunner.run(task:useCase:context:);
  v580 = "Fatal error";
  v581 = "Range requires lowerBound <= upperBound";
  v582 = "Swift/ClosedRange.swift";
  v583 = partial apply for closure #36 in NightingaleDPFLRunner.run(task:useCase:context:);
  v584 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v585 = &async function pointer to partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  v586 = &async function pointer to partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v587 = &async function pointer to partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  v588 = &async function pointer to partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  *(v1 + 2632) = v1;

  v591 = v589 + 2640;
  v609 = v589 + 2520;
  v610 = v589 + 2648;
  v611 = v589 + 2656;
  v612 = v589 + 2664;
  v613 = v589 + 2672;
  v614 = v589 + 2680;
  v615 = v589 + 2688;
  v616 = v589 + 2696;
  v590 = v589 + 2704;
  v608 = v589 + 4352;
  v592 = v589 + 2840;
  v593 = v589 + 2856;
  v594 = v589 + 2888;
  v595 = v589 + 2912;
  v596 = v589 + 2920;
  v597 = v589 + 2968;
  v598 = v589 + 2984;
  v599 = v589 + 3000;
  v600 = v589 + 3016;
  v601 = v589 + 3032;
  v602 = v589 + 3048;
  v603 = v589 + 3056;
  v604 = v589 + 4312;
  v605 = v589 + 4320;
  v618 = *(v589 + 4104);
  v607 = *(v589 + 3696);
  v2 = v618;
  v617 = v589 + 3208;
  *(v589 + 3208) = v618;

  static PFLUtils.throwIfFalse(error:for:)();
  v620 = 0;

  v211 = v589 + 2640;
  v212 = v589 + 2520;
  v213 = v589 + 2648;
  v214 = v589 + 2656;
  v215 = v589 + 2664;
  v216 = v589 + 2672;
  v217 = v589 + 2680;
  v192 = v589 + 2696;
  v218 = v589 + 2704;
  v209 = v589 + 2712;
  v194 = v589 + 4256;
  v195 = v589 + 2840;
  v196 = v589 + 2856;
  v197 = v589 + 2888;
  v198 = v589 + 2912;
  v199 = v589 + 2952;
  v200 = v589 + 2968;
  v201 = v589 + 2984;
  v202 = v589 + 3000;
  v203 = v589 + 3016;
  v204 = v589 + 3032;
  v205 = v589 + 3048;
  v206 = v589 + 3056;
  v208 = *(v589 + 3976);
  v207 = *(v589 + 3968);
  v188 = *(v589 + 3536);
  v186 = NightingaleDPFLRunner.performanceMeasure.getter();
  v189 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateSliceDeltaAnchor", 0x16uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v187 = v143;
  *(v589 + 4112) = v143;

  v210 = v589 + 3064;
  *(v589 + 3064) = v187;
  v144 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_updateSliceDeltaAnchorCompleted, v144);
  v191 = NightingaleDPFLRunner.performanceMeasure.getter();
  v190 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, v189 & 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v193 = *(v589 + 2928);

  *(v589 + 3072) = v193;
  result = Sequence.min(by:)();
  v564 = v620;
  if (!v620)
  {
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v589 + 1216))
    {
      v572 = *(v589 + 1216);
      v571 = *(v589 + 1224);
      v573 = v589 + 1192;
      __swift_project_boxed_opaque_existential_1((v589 + 1192), v572);
      v574 = (*(v571 + 64))(v572);
      __swift_destroy_boxed_opaque_existential_1(v589 + 1192);
      v575 = v574;
      v576 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v589 + 1192);
      v575 = 0;
      v576 = 1;
    }

    v3 = v576;
    v570 = v575;
    *(v589 + 4284) = v575;
    if (v3)
    {
      goto LABEL_58;
    }

    v4 = v589;
    v5 = v564;
    v568 = *(v589 + 3976);
    v567 = *(v589 + 3968);
    v566 = v589 + 4264;
    *(v589 + 4264) = v570;
    v565 = *(v4 + 2928);

    *(v589 + 3080) = v565;
    result = Sequence.max(by:)();
    v569 = v5;
    if (v5)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v589 + 1256))
    {
      v559 = *(v589 + 1256);
      v558 = *(v589 + 1264);
      v560 = v589 + 1232;
      __swift_project_boxed_opaque_existential_1((v589 + 1232), v559);
      v561 = (*(v558 + 64))(v559);
      __swift_destroy_boxed_opaque_existential_1(v589 + 1232);
      v562 = v561;
      v563 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v589 + 1232);
      v562 = 0;
      v563 = 1;
    }

    v6 = v563;
    v557 = v562;
    *(v589 + 4292) = v562;
    if (v6)
    {
      goto LABEL_58;
    }

    v7 = v589;
    v8 = v569;
    v555 = *(v589 + 3976);
    v554 = *(v589 + 3968);
    v553 = v589 + 4272;
    *(v589 + 4272) = v557;
    v552 = *(v7 + 2928);

    *(v589 + 3088) = v552;
    result = Sequence.min(by:)();
    v556 = v8;
    if (v8)
    {
      return result;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v589 + 1296))
    {
      v547 = *(v589 + 1296);
      v546 = *(v589 + 1304);
      v548 = v589 + 1272;
      __swift_project_boxed_opaque_existential_1((v589 + 1272), v547);
      v549 = (*(v546 + 8))(v547);
      __swift_destroy_boxed_opaque_existential_1(v589 + 1272);
      v550 = v549;
      v551 = 0;
    }

    else
    {
      outlined destroy of Pregnancy?(v589 + 1272);
      v550 = 0;
      v551 = 1;
    }

    v545 = v550;
    if (v551)
    {
LABEL_58:
      v228 = *(v589 + 3952);
      v229 = *(v589 + 3872);
      v230 = *(v589 + 3856);
      v231 = *(v589 + 3760);
      v232 = *(v589 + 3736);
      v233 = *(v589 + 3712);
      v234 = *(v589 + 3696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v235 = swift_allocError();
      *v140 = 106;
      swift_willThrow();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v232);
      MEMORY[0x277D82BD8](v233);

      v244 = v235;
      goto LABEL_70;
    }

    *(v589 + 4280) = v545;
    result = HyperParams.featureLookbackDays.getter();
    v544 = v545 - result;
    v9 = v545 < result;
    *(v589 + 4300) = v545 - result;
    if (v9)
    {
      __break(1u);
      return result;
    }

    if (*(v589 + 4260) < v544)
    {
      LOBYTE(v146[0]) = 2;
      v146[1] = 409;
      LODWORD(v147) = 0;
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v10 = v589;
    v11 = *(v589 + 4260);
    v543 = v589 + 2428;
    *(v589 + 2428) = v544;
    *(v10 + 2432) = v11;
    *(v589 + 3096) = _allocateUninitializedArray<A>(_:)();
    if (HyperParams.isHRVRequired()())
    {
      v542 = v589 + 4334;
      *(v589 + 4334) = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
      Array.append(_:)();
    }

    if (HyperParams.isSpO2Required()())
    {
      v541 = v589 + 4333;
      *(v589 + 4333) = 10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
      Array.append(_:)();
    }

    if (HyperParams.isRespiratoryRateRequired()())
    {
      v540 = v589 + 4332;
      *(v589 + 4332) = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
      Array.append(_:)();
    }

    if (HyperParams.isSWTRequired()())
    {
      v539 = v589 + 4327;
      *(v589 + 4327) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
      Array.append(_:)();
    }

    v537 = *(v589 + 3096);

    *(v589 + 3104) = v537;
    v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
    lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]();
    v538 = Collection.isEmpty.getter();

    if ((v538 & 1) == 0)
    {
      v532 = *(v589 + 4260);
      v530 = *(v589 + 3696);
      v531 = *(v589 + 3536);

      v12 = swift_task_alloc();
      v13 = v530;
      v14 = v531;
      v15 = v544;
      v16 = v532;
      v17 = v589;
      v534 = v12;
      *(v589 + 4120) = v12;
      *(v12 + 16) = v13;
      *(v12 + 24) = v17 + 3096;
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      *(v12 + 44) = v16;
      *(v12 + 48) = v17 + 2760;
      *(v12 + 56) = v17 + 2768;
      *(v12 + 64) = v17 + 2776;
      *(v12 + 72) = v17 + 2752;
      v535 = MEMORY[0x277D84F78] + 8;
      v533 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      v18 = swift_task_alloc();
      v19 = v589;
      v20 = v533;
      v21 = v588;
      v22 = v534;
      v23 = v535;
      v24 = v18;
      v25 = v619;
      *(v589 + 4128) = v24;
      *v24 = *(v19 + 2632);
      v24[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v26 = 8;
      v27 = v20 & 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v25, v26, v27, v21, v22, v23);
    }

    v503 = v589 + 2640;
    v521 = v589 + 2520;
    v522 = v589 + 2648;
    v523 = v589 + 2656;
    v524 = v589 + 2664;
    v525 = v589 + 2672;
    v526 = v589 + 2680;
    v527 = v589 + 2688;
    v528 = v589 + 2696;
    v520 = v589 + 2704;
    v504 = v589 + 4256;
    v505 = v589 + 2840;
    v506 = v589 + 2856;
    v507 = v589 + 2888;
    v508 = v589 + 2912;
    v509 = v589 + 2920;
    v510 = v589 + 2952;
    v502 = v589 + 2984;
    v511 = v589 + 3000;
    v512 = v589 + 3016;
    v513 = v589 + 3032;
    v514 = v589 + 3048;
    v515 = v589 + 3056;
    v516 = v589 + 3064;
    v517 = v589 + 4264;
    v518 = v589 + 4272;
    v519 = v589 + 4280;
    v529 = v589 + 2428;
    *(v589 + 3112) = 0;
    if (HyperParams.isSHRRequired()())
    {
      v497 = *(v589 + 4300);
      v498 = *(v589 + 4260);
      v496 = *(v589 + 3696);
      v495 = *(v589 + 3536);

      v28 = swift_task_alloc();
      v29 = v495;
      v30 = v496;
      v31 = v497;
      v32 = v498;
      v33 = v589;
      v500 = v28;
      *(v589 + 4144) = v28;
      *(v28 + 16) = v29;
      *(v28 + 24) = v30;
      *(v28 + 32) = v31;
      *(v28 + 36) = v32;
      *(v28 + 40) = v33 + 2784;
      *(v28 + 48) = v33 + 2792;
      *(v28 + 56) = v33 + 3112;
      v501 = MEMORY[0x277D84F78] + 8;
      v499 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      v34 = swift_task_alloc();
      v35 = v589;
      v36 = v499;
      v21 = v587;
      v22 = v500;
      v23 = v501;
      v37 = v34;
      v25 = v619;
      *(v589 + 4152) = v37;
      *v37 = *(v35 + 2632);
      v37[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v26 = 8;
      v27 = v36 & 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v25, v26, v27, v21, v22, v23);
    }

    v468 = v589 + 2640;
    v486 = v589 + 2520;
    v487 = v589 + 2648;
    v488 = v589 + 2656;
    v489 = v589 + 2664;
    v490 = v589 + 2672;
    v491 = v589 + 2680;
    v492 = v589 + 2688;
    v493 = v589 + 2696;
    v485 = v589 + 2704;
    v469 = v589 + 4256;
    v470 = v589 + 2840;
    v471 = v589 + 2856;
    v472 = v589 + 2888;
    v473 = v589 + 2912;
    v474 = v589 + 2920;
    v475 = v589 + 2952;
    v467 = v589 + 2984;
    v476 = v589 + 3000;
    v477 = v589 + 3016;
    v478 = v589 + 3032;
    v479 = v589 + 3048;
    v480 = v589 + 3056;
    v481 = v589 + 3064;
    v482 = v589 + 4264;
    v483 = v589 + 4272;
    v484 = v589 + 4280;
    v494 = v589 + 2428;
    if (HyperParams.isCalendarAlgorithmRequired()())
    {
      v460 = *(v589 + 4292);
      v458 = *(v589 + 4284);
      v463 = *(v589 + 3872);
      v461 = *(v589 + 4260);
      v459 = *(v589 + 3696);
      v462 = *(v589 + 3536);

      v38 = swift_task_alloc();
      v39 = v458;
      v40 = v459;
      v41 = v460;
      v42 = v461;
      v43 = v462;
      v44 = v463;
      v45 = v589;
      v465 = v38;
      *(v589 + 4168) = v38;
      *(v38 + 16) = v39;
      *(v38 + 24) = v40;
      *(v38 + 32) = v41;
      *(v38 + 36) = v42;
      *(v38 + 40) = v43;
      *(v38 + 48) = v45 + 2720;
      *(v38 + 56) = v45 + 2728;
      *(v38 + 64) = v45 + 2736;
      *(v38 + 72) = v45 + 2744;
      *(v38 + 80) = v44;
      *(v38 + 88) = v45 + 2800;
      *(v38 + 96) = v45 + 2808;
      v466 = MEMORY[0x277D84F78] + 8;
      v464 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      v46 = swift_task_alloc();
      v47 = v589;
      v48 = v464;
      v21 = v586;
      v22 = v465;
      v23 = v466;
      v49 = v46;
      v25 = v619;
      *(v589 + 4176) = v49;
      *v49 = *(v47 + 2632);
      v49[1] = NightingaleDPFLRunner.run(task:useCase:context:);
      v26 = 8;
      v27 = v48 & 1;

      return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v25, v26, v27, v21, v22, v23);
    }

    v430 = v589 + 2640;
    v448 = v589 + 2520;
    v449 = v589 + 2648;
    v450 = v589 + 2656;
    v451 = v589 + 2664;
    v452 = v589 + 2672;
    v453 = v589 + 2680;
    v454 = v589 + 2688;
    v455 = v589 + 2696;
    v456 = v589 + 2704;
    v447 = v589 + 2712;
    v431 = v589 + 2840;
    v432 = v589 + 2856;
    v433 = v589 + 2888;
    v434 = v589 + 2912;
    v435 = v589 + 2920;
    v436 = v589 + 2952;
    v437 = v589 + 2968;
    v423 = v589 + 3000;
    v438 = v589 + 3016;
    v439 = v589 + 3032;
    v440 = v589 + 3048;
    v441 = v589 + 3056;
    v442 = v589 + 3064;
    v443 = v589 + 4264;
    v444 = v589 + 4272;
    v445 = v589 + 4280;
    v446 = v589 + 2428;
    v428 = *(v589 + 3696);
    v420 = *(v589 + 3536);
    v418 = NightingaleDPFLRunner.performanceMeasure.getter();
    v424 = 1;
    v417 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QueryRequiredFeatures", 0x15uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v419 = v50;

    v457 = v589 + 3120;
    *(v589 + 3120) = v419;
    v51 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_queryRequiredFeaturesCompleted, v51);
    v422 = NightingaleDPFLRunner.performanceMeasure.getter();
    v421 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, v424 & 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v52 = HyperParams.metricsProcessEngine.getter();
    v53 = v589;
    v426 = v589 + 4309;
    *(v589 + 4309) = v52 & v424;
    v425 = v53 + 4310;
    *(v53 + 4310) = 1;
    v427 = lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
    v429 = == infix<A>(_:_:)();

    if (v429)
    {
      v416 = 1;
    }

    else
    {
      v54 = HyperParams.featurizerEngine.getter();
      v55 = v589;
      *(v589 + 4311) = v54 & 1;
      *(v55 + 4316) = 1;
      v416 = == infix<A>(_:_:)();
    }

    v415 = v416;

    if (v416)
    {
      static HIDMorpheusExtensions.extendMorpheus()();
      v414 = v556;
      if (v556)
      {
        v178 = *(v589 + 3952);
        v179 = *(v589 + 3872);
        v180 = *(v589 + 3856);
        v181 = *(v589 + 3760);
        v182 = *(v589 + 3736);
        v183 = *(v589 + 3712);
        v184 = *(v589 + 3696);
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v182);
        MEMORY[0x277D82BD8](v183);

        v244 = v414;
        goto LABEL_70;
      }

      static Math.extendMorpheus()();
      v413 = 0;
      v412 = 0;
    }

    else
    {
      v412 = v556;
    }

    v56 = v412;
    v408 = *(v589 + 4260);
    v407 = *(v589 + 3696);
    v404 = *(v589 + 3536);
    v406 = *(v589 + 3528);
    type metadata accessor for Featurizer();
    v57 = Featurizer.__allocating_init()();
    v58 = v589;
    v405 = v57;
    *(v589 + 4192) = v57;
    v409 = v58 + 3128;
    *(v58 + 3128) = v57;

    v59 = swift_task_alloc();
    v60 = v405;
    v61 = v406;
    v62 = v407;
    v63 = v408;
    v64 = v589;
    v410 = v59;
    *(v589 + 4200) = v59;
    *(v59 + 16) = v60;
    *(v59 + 24) = v61;
    *(v59 + 32) = v64 + 2928;
    *(v59 + 40) = v64 + 2752;
    *(v59 + 48) = v64 + 2760;
    *(v59 + 56) = v64 + 2776;
    *(v59 + 64) = v64 + 2768;
    *(v59 + 72) = v64 + 2784;
    *(v59 + 80) = v64 + 2792;
    *(v59 + 88) = v64 + 2800;
    *(v59 + 96) = v64 + 2808;
    *(v59 + 104) = v64 + 2744;
    *(v59 + 112) = v62;
    *(v59 + 120) = v63;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG8daySHR10_AA0aB5StatsAA05nightB0AA0dbC0AA15periodStartMeanAA0efgC0AA0eF3StdAA0efhC0AA019daysSinceLastPeriodF0AA0ijklfC0AA3swtAA0mC0AA3hrvAA0nC0AA15respiratoryRateAA0opC0AA4spo2AA0qC0Says6UInt32VG12sliceEndDaysAA6labelsSDySSSiG7metricstMd);
    NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(10, 1, v410, v65, v589 + 16);
    v411 = v56;
    if (v56)
    {
      v171 = *(v589 + 3952);
      v172 = *(v589 + 3872);
      v173 = *(v589 + 3856);
      v174 = *(v589 + 3760);
      v175 = *(v589 + 3736);
      v176 = *(v589 + 3712);
      v177 = *(v589 + 3696);
      v170 = *(v589 + 3528);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v176);

      v244 = v411;
    }

    else
    {
      v342 = *(v589 + 4112);
      v340 = *(v589 + 4040);
      v370 = *(v589 + 4032);
      v367 = *(v589 + 4024);
      v365 = *(v589 + 4016);
      v363 = *(v589 + 4008);
      v361 = *(v589 + 4000);
      v359 = *(v589 + 3992);
      v357 = *(v589 + 3984);
      v355 = *(v589 + 3960);
      v338 = *(v589 + 3912);
      v336 = *(v589 + 3864);
      v353 = *(v589 + 3848);
      v351 = *(v589 + 3840);
      v334 = *(v589 + 3744);
      v349 = *(v589 + 3704);
      v331 = *(v589 + 3696);
      v330 = *(v589 + 3528);

      v373 = (v589 + 184);
      v396 = v589 + 16;
      memcpy((v589 + 184), (v589 + 16), 0xA8uLL);
      v333 = NightingaleDPFLRunner.performanceMeasure.getter();
      v332 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Featurization", 0xDuLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v346 = v66;

      v397 = v589 + 3136;
      *(v589 + 3136) = v346;
      v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
      v372 = _allocateUninitializedArray<A>(_:)();
      v369 = v67;
      v68 = NightingaleDPFLRunner.keyMetricsCycleTrackingCheckDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v68, v369);
      v69 = v334;
      v70 = v369;
      v348 = MEMORY[0x277D839F8];
      v369[5] = MEMORY[0x277D839F8];
      v70[2] = v69;
      v335 = v70 + 6;
      Duration = NightingaleDPFLRunner.keyMetricsPregnanciesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(Duration, v335);
      v72 = v336;
      v73 = v369;
      v369[11] = v348;
      v73[8] = v72;
      v337 = v73 + 12;
      v74 = NightingaleDPFLRunner.keyMetricsUpdatingFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v74, v337);
      v75 = v338;
      v76 = v369;
      v369[17] = v348;
      v76[14] = v75;
      v339 = v76 + 18;
      updated = NightingaleDPFLRunner.keyMetricsUpdatePregnanciesDurationS.unsafeMutableAddressor();
      outlined init with copy of String(updated, v339);
      v78 = v340;
      v79 = v369;
      v369[23] = v348;
      v79[20] = v78;
      v341 = v79 + 24;
      v80 = NightingaleDPFLRunner.keyMetricsUpdateSliceDeltaAnchorDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v80, v341);
      v81 = v342;
      v82 = v369;
      v369[29] = v348;
      v82[26] = v81;
      v343 = v82 + 30;
      v83 = NightingaleDPFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v83, v343);
      v84 = v369;
      v85 = *(v589 + 3112);
      v369[35] = v348;
      v84[32] = v85;
      v344 = v84 + 36;
      v86 = NightingaleDPFLRunner.keyMetricsRequiredFeaturesQueryDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v86, v344);
      v87 = v419;
      v88 = v369;
      v369[41] = v348;
      v88[38] = v87;
      v345 = v88 + 42;
      v89 = NightingaleDPFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();
      outlined init with copy of String(v89, v345);
      v90 = v346;
      v91 = v369;
      v369[47] = v348;
      v91[44] = v90;
      v347 = v91 + 48;
      v92 = NightingaleDPFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();
      outlined init with copy of String(v92, v347);
      v93 = v349;
      v94 = v369;
      v369[53] = v348;
      v94[50] = v93;
      v350 = v94 + 54;
      v95 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v95, v350);
      v96 = v351;
      v97 = v369;
      v374 = MEMORY[0x277D83B88];
      v369[59] = MEMORY[0x277D83B88];
      v97[56] = v96;
      v352 = v97 + 60;
      v98 = NightingaleDPFLRunner.keyMetricsNumberOfPregnancyInitializerFailed.unsafeMutableAddressor();
      outlined init with copy of String(v98, v352);
      v99 = v353;
      v100 = v369;
      v369[65] = v374;
      v100[62] = v99;
      v354 = v100 + 66;
      v101 = NightingaleDPFLRunner.keyMetricsOverlappingPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v101, v354);
      v102 = v355;
      v103 = v369;
      v369[71] = v374;
      v103[68] = v102;
      v356 = v103 + 72;
      v104 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
      outlined init with copy of String(v104, v356);
      v105 = v357;
      v106 = v369;
      v369[77] = v374;
      v106[74] = v105;
      v358 = v106 + 78;
      v107 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v107, v358);
      v108 = v359;
      v109 = v369;
      v369[83] = v374;
      v109[80] = v108;
      v360 = v109 + 84;
      v110 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v110, v360);
      v111 = v361;
      v112 = v369;
      v369[89] = v374;
      v112[86] = v111;
      v362 = v112 + 90;
      v113 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v113, v362);
      v114 = v363;
      v115 = v369;
      v369[95] = v374;
      v115[92] = v114;
      v364 = v115 + 96;
      v116 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v116, v364);
      v117 = v365;
      v118 = v369;
      v369[101] = v374;
      v118[98] = v117;
      v366 = v118 + 102;
      v119 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(v119, v366);
      v120 = v367;
      v121 = v369;
      v369[107] = v374;
      v121[104] = v120;
      v368 = v121 + 108;
      started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
      outlined init with copy of String(started, v368);
      v123 = v369;
      v124 = v370;
      v369[113] = v374;
      v123[110] = v124;
      _finalizeUninitializedArray<A>(_:)();
      v399 = MEMORY[0x277D837D0];
      v400 = MEMORY[0x277D84F70] + 8;
      v401 = MEMORY[0x277D837E0];
      v398 = Dictionary.init(dictionaryLiteral:)();
      outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v373, (v589 + 352));
      v375 = *(v589 + 184);
      v376 = *(v589 + 192);
      v377 = *(v589 + 200);
      v378 = *(v589 + 208);
      v379 = *(v589 + 216);
      v380 = *(v589 + 224);
      v381 = *(v589 + 232);
      v382 = *(v589 + 240);
      v383 = *(v589 + 248);
      v384 = *(v589 + 256);
      v385 = *(v589 + 264);
      v386 = *(v589 + 272);
      v387 = *(v589 + 280);
      v388 = *(v589 + 288);
      v389 = *(v589 + 296);
      v390 = *(v589 + 304);
      v391 = *(v589 + 312);
      v392 = *(v589 + 320);
      v393 = *(v589 + 328);
      v394 = *(v589 + 336);
      v395 = *(v589 + 344);
      _dictionaryUpCast<A, B, C, D>(_:)();
      v402 = Dictionary.merging(_:uniquingKeysWith:)();
      *(v589 + 4208) = v402;
      v403 = 0;
      v328 = *(v589 + 4048);
      v327 = *(v589 + 4359);

      v125 = v327;
      v126 = v589;
      v329 = v589 + 3144;
      *(v589 + 3144) = v402;
      *(v126 + 4317) = v125;
      *(v126 + 4318) = 0;
      if (== infix<A>(_:_:)())
      {
        v127 = v403;
        v301 = *(v589 + 4260);
        v297 = *(v589 + 3760);
        v296 = *(v589 + 3752);
        v298 = *(v589 + 3696);
        v302 = *(v589 + 3528);
        v299 = *(v589 + 2808);

        v300 = *(v589 + 2848);

        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v589 + 184), (v589 + 1024));
        v303 = *(v589 + 184);
        v321 = *(v589 + 192);
        v323 = *(v589 + 200);
        v324 = *(v589 + 208);
        v304 = *(v589 + 216);
        v305 = *(v589 + 224);
        v306 = *(v589 + 232);
        v307 = *(v589 + 240);
        v308 = *(v589 + 248);
        v309 = *(v589 + 256);
        v310 = *(v589 + 264);
        v311 = *(v589 + 272);
        v312 = *(v589 + 280);
        v313 = *(v589 + 288);
        v314 = *(v589 + 296);
        v315 = *(v589 + 304);
        v316 = *(v589 + 312);
        v317 = *(v589 + 320);
        v318 = *(v589 + 328);
        v319 = *(v589 + 336);
        v320 = *(v589 + 344);
        v322 = v146;
        v325 = NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v302, v296, v297, v298, v299, v300, v301, v303, v321, v323, v324, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v402);
        v326 = v127;
        if (!v127)
        {
          v288 = *(v589 + 3952);
          v289 = *(v589 + 3872);
          v290 = *(v589 + 3856);
          v291 = *(v589 + 3760);
          v292 = *(v589 + 3736);
          v293 = *(v589 + 3712);
          v294 = *(v589 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v292);
          MEMORY[0x277D82BD8](v293);

          v295 = v325;
          goto LABEL_59;
        }

        v163 = *(v589 + 3952);
        v164 = *(v589 + 3872);
        v165 = *(v589 + 3856);
        v166 = *(v589 + 3760);
        v167 = *(v589 + 3736);
        v168 = *(v589 + 3712);
        v169 = *(v589 + 3696);

        outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        MEMORY[0x277D82BD8](v167);
        MEMORY[0x277D82BD8](v168);

        v244 = v326;
      }

      else
      {
        v128 = v589;
        *(v589 + 4319) = *(v589 + 4359);
        *(v128 + 4324) = 1;
        if (== infix<A>(_:_:)())
        {
          v286 = PFLTask.evalModelNames(taskType:hyperParams:)();
          v287 = v403;
          if (!v403)
          {
            v261 = *(v589 + 4260);
            v258 = *(v589 + 3696);
            v257 = *(v589 + 3528);
            v259 = *(v589 + 2808);

            v260 = *(v589 + 2848);

            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])((v589 + 184), (v589 + 856));
            v262 = *(v589 + 184);
            v263 = *(v589 + 192);
            v281 = *(v589 + 200);
            v283 = *(v589 + 208);
            v264 = *(v589 + 216);
            v265 = *(v589 + 224);
            v266 = *(v589 + 232);
            v267 = *(v589 + 240);
            v268 = *(v589 + 248);
            v269 = *(v589 + 256);
            v270 = *(v589 + 264);
            v271 = *(v589 + 272);
            v272 = *(v589 + 280);
            v273 = *(v589 + 288);
            v274 = *(v589 + 296);
            v275 = *(v589 + 304);
            v276 = *(v589 + 312);
            v277 = *(v589 + 320);
            v278 = *(v589 + 328);
            v279 = *(v589 + 336);
            v280 = *(v589 + 344);
            v282 = v146;
            v284 = NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(v286, v257, v258, v259, v260, v261, v262, v263, v281, v283, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v402);
            v285 = 0;
            v250 = *(v589 + 3952);
            v251 = *(v589 + 3872);
            v252 = *(v589 + 3856);
            v253 = *(v589 + 3760);
            v254 = *(v589 + 3736);
            v255 = *(v589 + 3712);
            v256 = *(v589 + 3696);

            outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();

            MEMORY[0x277D82BD8](v254);
            MEMORY[0x277D82BD8](v255);

            v295 = v284;
LABEL_59:
            v227 = v295;
            v219 = *(v589 + 3664);
            v220 = *(v589 + 3640);
            v221 = *(v589 + 3632);
            v222 = *(v589 + 3608);
            v223 = *(v589 + 3600);
            v224 = *(v589 + 3576);
            v225 = *(v589 + 3568);
            v226 = *(v589 + 3560);

            v141 = v227;
            v142 = *(*(v589 + 2632) + 8);

            return v142(v141);
          }

          v156 = *(v589 + 3952);
          v157 = *(v589 + 3872);
          v158 = *(v589 + 3856);
          v159 = *(v589 + 3760);
          v160 = *(v589 + 3736);
          v161 = *(v589 + 3712);
          v162 = *(v589 + 3696);

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v160);
          MEMORY[0x277D82BD8](v161);

          v244 = v287;
        }

        else
        {
          v129 = v589;
          *(v589 + 4325) = *(v589 + 4359);
          *(v129 + 4326) = 2;
          if (== infix<A>(_:_:)())
          {
            v248 = *(v589 + 3872);
            v247 = *(v589 + 4268);
            v245 = *(v589 + 3696);
            v246 = *(v589 + 3536);

            v130 = swift_task_alloc();
            v131 = v245;
            v132 = v246;
            v133 = v247;
            v134 = v248;
            v135 = v589;
            v249 = v130;
            *(v589 + 4216) = v130;
            *(v130 + 16) = v131;
            *(v130 + 24) = v135 + 2848;
            *(v130 + 32) = v132;
            *(v130 + 40) = v133;
            *(v130 + 48) = v135 + 2720;
            *(v130 + 56) = v135 + 2728;
            *(v130 + 64) = v135 + 2736;
            *(v130 + 72) = v135 + 2744;
            *(v130 + 80) = v135 + 2808;
            *(v130 + 88) = v134;
            v136 = swift_task_alloc();
            *(v589 + 4224) = v136;
            v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_ABtMd);
            v138 = v589;
            v21 = v585;
            v22 = v249;
            v23 = v137;
            *v136 = *(v589 + 2632);
            v136[1] = NightingaleDPFLRunner.run(task:useCase:context:);
            v25 = v138 + 2436;
            v26 = 9;
            v27 = 1;

            return NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(v25, v26, v27, v21, v22, v23);
          }

          v236 = *(v589 + 3952);
          v237 = *(v589 + 3872);
          v238 = *(v589 + 3856);
          v239 = *(v589 + 3760);
          v240 = *(v589 + 3736);
          v241 = *(v589 + 3712);
          v242 = *(v589 + 3696);
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v243 = swift_allocError();
          *v139 = 69;
          swift_willThrow();

          outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          MEMORY[0x277D82BD8](v240);
          MEMORY[0x277D82BD8](v241);

          v244 = v243;
        }
      }
    }

LABEL_70:
    v148 = *(v589 + 3664);
    v149 = *(v589 + 3640);
    v150 = *(v589 + 3632);
    v151 = *(v589 + 3608);
    v152 = *(v589 + 3600);
    v153 = *(v589 + 3576);
    v154 = *(v589 + 3568);
    v155 = *(v589 + 3560);

    v141 = v619;
    v142 = *(*(v589 + 2632) + 8);

    return v142(v141);
  }

  return result;
}