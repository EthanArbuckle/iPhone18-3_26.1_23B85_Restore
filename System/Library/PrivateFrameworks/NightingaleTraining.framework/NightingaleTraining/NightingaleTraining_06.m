uint64_t PregnancyFromFactor.init(factorStartDate:factorEndDate:startSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v51 = a4;
  v52 = a1;
  v65 = a2;
  v64 = a3;
  v85 = 0;
  memset(__b, 0, 0x2AuLL);
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v77 = 0;
  v74 = 0;
  v72 = 0;
  v58 = 0;
  v53 = type metadata accessor for Date();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v57 = &v20 - v56;
  v59 = type metadata accessor for Calendar();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v63 = &v20 - v62;
  v66 = type metadata accessor for DateComponents();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v70 = &v20 - v69;
  v85 = &v20 - v69;
  v83 = a1;
  v82 = v5;
  v81 = v6;
  *&v7 = Date.toJulianDay()();
  v80 = v7;
  v71 = v7;
  if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_16;
  }

  v50 = v71;
  LODWORD(v49) = v71;
  v79 = v71;
  *&v8 = Date.toJulianDay()();
  v78 = v8;
  HIDWORD(v49) = v8;
  if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_16;
  }

  v48 = HIDWORD(v49);
  v42 = HIDWORD(v49);
  v77 = HIDWORD(v49);
  __b[0] = v49;
  __b[2] = v64;
  LODWORD(__b[3]) = v49;
  __b[4] = 0;
  LOWORD(__b[5]) = 0;
  static Calendar.current.getter();
  v44 = type metadata accessor for Calendar.Component();
  v43 = _allocateUninitializedArray<A>(_:)();
  (*(*(v44 - 8) + 104))(v9, *MEMORY[0x277CC9988]);
  v10 = v43;
  _finalizeUninitializedArray<A>(_:)();
  v45 = v10;
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v46 = Set.init(arrayLiteral:)();
  Calendar.dateComponents(_:from:)();

  (*(v60 + 8))(v63, v59);
  v47 = DateComponents.year.getter();
  if ((v11 & 1) != 0 || (v41 = v47, v74 = v41, v41 <= 3000))
  {
    LOBYTE(__b[1]) = 0;
    HIDWORD(__b[3]) = v42;
    goto LABEL_15;
  }

  Date.init()();
  *&v12 = Date.toJulianDay()();
  v73 = v12;
  v39 = v12;
  v40 = BYTE4(v12);
  (*(v54 + 8))(v57, v53);
  if (v40)
  {
    (*(v67 + 8))(v70, v66);
LABEL_16:
    v21 = *(v54 + 8);
    v20 = v54 + 8;
    v21(v65, v53);
    result = (v21)(v52, v53);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 2;
    goto LABEL_17;
  }

  v38 = v39;
  v72 = v39;
  LOBYTE(__b[1]) = 1;
  HIDWORD(__b[3]) = v39;
LABEL_15:
  (*(v67 + 8))(v70, v66);
  v22 = __dst;
  v23 = 42;
  memcpy(__dst, __b, 0x2AuLL);
  memcpy(v76, __dst, 0x2AuLL);
  v26 = v76[0];
  v27 = v76[1];
  v28 = v76[2];
  v29 = v76[3];
  v30 = v76[4];
  v31 = LOWORD(v76[5]);
  v25 = *(v54 + 8);
  v24 = v54 + 8;
  v25(v65, v53);
  result = (v25)(v52, v53);
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
LABEL_17:
  v14 = v51;
  v15 = v33;
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  *v51 = v32;
  v14[1] = v15;
  v14[2] = v16;
  v14[3] = v17;
  v14[4] = v18;
  *(v14 + 20) = v19;
  return result;
}

uint64_t PregnancyFromTest.init(testDate:)(uint64_t a1)
{
  v10[9] = 0;
  *&v1 = Date.toJulianDay()();
  if ((v1 & 0x100000000) != 0)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 8))(a1);
    *&v5 = 0;
  }

  else
  {
    LODWORD(v9) = v1;
    v10[8] = 2;
    HIDWORD(v9) = v1;
    *v10 = 0;
    *v7 = v9;
    *&v7[10] = *&v10[2];
    *v8 = *v7;
    *&v8[10] = *&v10[2];
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(a1);
    return *v8;
  }

  return v5;
}

uint64_t PregnancySource.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyFactorWithEnd", 0x18uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyFactorWithoutEnd", 0x1BuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyTestPositive", 0x17uLL, 1)._countAndFlagsBits;
  }
}

Swift::Bool __swiftcall PregnancySource.isFactorType()()
{
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  if (== infix<A>(_:_:)())
  {
    v1 = 1;
  }

  else
  {
    v1 = == infix<A>(_:_:)();
  }

  return v1 & 1;
}

uint64_t SliceDeltaAnchor.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OvuEst", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LMP", 3uLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::PregnancySource_optional __swiftcall PregnancySource.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "HKPregnancyFactorWithEnd";
  *(v2 + 8) = 24;
  *(v2 + 16) = 2;
  *(v2 + 24) = "HKPregnancyFactorWithoutEnd";
  *(v2 + 32) = 27;
  *(v2 + 40) = 2;
  *(v2 + 48) = "HKPregnancyTestPositive";
  *(v2 + 56) = 23;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = NightingaleTraining_PregnancySource_pregnancyFactorWithEnd;
LABEL_8:

      return v5;
    case 1:
      v5.value = NightingaleTraining_PregnancySource_pregnancyFactorWithoutEnd;
      goto LABEL_8;
    case 2:
      v5.value = NightingaleTraining_PregnancySource_pregnancyTestPositive;
      goto LABEL_8;
  }

  return 3;
}

NightingaleTraining::PregnancySource_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PregnancySource@<W0>(Swift::String *a1@<X0>, NightingaleTraining::PregnancySource_optional *a2@<X8>)
{
  result.value = PregnancySource.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PregnancySource@<X0>(uint64_t *a1@<X8>)
{
  result = PregnancySource.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

NightingaleTraining::SliceDeltaAnchor_optional __swiftcall SliceDeltaAnchor.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "LMP";
  *(v2 + 8) = 3;
  *(v2 + 16) = 2;
  *(v2 + 24) = "OvuEst";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = NightingaleTraining_SliceDeltaAnchor_lmp;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = NightingaleTraining_SliceDeltaAnchor_ovuEst;
    goto LABEL_6;
  }

  return 2;
}

NightingaleTraining::OverlapPregnanciesStrategy_optional __swiftcall OverlapPregnanciesStrategy.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "NoOp";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  *(v2 + 24) = "Merge";
  *(v2 + 32) = 5;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = NightingaleTraining_OverlapPregnanciesStrategy_noOp;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = NightingaleTraining_OverlapPregnanciesStrategy_merge;
    goto LABEL_6;
  }

  return 2;
}

uint64_t OverlapPregnanciesStrategy.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Merge", 5uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NoOp", 4uLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::SliceDeltaAnchor_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SliceDeltaAnchor@<W0>(Swift::String *a1@<X0>, NightingaleTraining::SliceDeltaAnchor_optional *a2@<X8>)
{
  result.value = SliceDeltaAnchor.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SliceDeltaAnchor@<X0>(uint64_t *a1@<X8>)
{
  result = SliceDeltaAnchor.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

NightingaleTraining::OverlapPregnanciesStrategy_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OverlapPregnanciesStrategy@<W0>(Swift::String *a1@<X0>, NightingaleTraining::OverlapPregnanciesStrategy_optional *a2@<X8>)
{
  result.value = OverlapPregnanciesStrategy.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OverlapPregnanciesStrategy@<X0>(uint64_t *a1@<X8>)
{
  result = OverlapPregnanciesStrategy.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int __swiftcall Pregnancy.duration()()
{
  v5 = v0;
  v4 = v1;
  v6 = (*(v1 + 16))();
  result = (*(v4 + 8))(v5);
  if (!__OFSUB__(v6, result))
  {
    return v6 - result;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall Pregnancy.containsFlow(excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:)(Swift::Bool excludePregnanciesContainingFlow, Swift::UInt32 maxLMPTolerableFlowDelta, Swift::OpaquePointer flows)
{
  v14 = v3;
  v15 = v4;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  *(&v17 + 2) = 0;
  v28 = v3;
  v27 = excludePregnanciesContainingFlow;
  v26 = maxLMPTolerableFlowDelta;
  rawValue = flows._rawValue;
  if (excludePregnanciesContainingFlow)
  {
    v5 = (*(v4 + 40))();
    v10 = maxLMPTolerableFlowDelta + v5;
    if (__CFADD__(maxLMPTolerableFlowDelta, v5))
    {
      __break(1u);
    }

    else if (v10 != -1)
    {
      v9 = (*(v15 + 16))(v14);
      if (v9 < v10 + 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v20 = v10 + 1;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd);
      lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
      Collection<>.makeIterator()();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd);
        IndexingIterator.next()();
        if (v19)
        {
          break;
        }

        *(&v17 + 2) = v18;
        v16 = v18;
        MEMORY[0x25F8891D0](&v17, &v16, flows._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
        if ((v17 & 0x100) != 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = v17;
        }

        if (v8)
        {
          v11 = 1;
          goto LABEL_18;
        }
      }

      v11 = 0;
      goto LABEL_18;
    }

    __break(1u);
    return v5;
  }

  v11 = 0;
LABEL_18:
  LOBYTE(v5) = v11;
  return v5;
}

NightingaleTraining::PregnancyInvalidReason __swiftcall Pregnancy.checkDuration(minDuration:maxDuration:minLMPDelta:maxLMPDelta:)(Swift::Int minDuration, Swift::Int maxDuration, Swift::Int minLMPDelta, Swift::Int maxLMPDelta)
{
  v14 = v4;
  v15 = v5;
  v17 = (*(v5 + 104))();
  if (v17 < minDuration || maxDuration < v17)
  {
    return 1;
  }

  v8 = (*(v15 + 96))(v14);
  if (v8 < minLMPDelta || maxLMPDelta < v8)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t implicit closure #1 in mergePregnancies(pregnancies:strategy:)(uint64_t a1)
{
  outlined init with copy of HealthDataQuery(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v2 + 8))(v3);
}

uint64_t implicit closure #3 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v2 + 16))(v3);
}

void *closure #1 in mergePregnancies(pregnancies:strategy:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[5] = a1;
  outlined init with copy of Pregnancy?((a1 + 8), v4);
  if (!v4[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return outlined init with take of HealthDataQuery(v4, a2);
}

uint64_t closure #2 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v2 + 48))(v3);
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  return == infix<A>(_:_:)() & 1;
}

uint64_t closure #3 in mergePregnancies(pregnancies:strategy:)(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v2 + 48))(v3);
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  return (dispatch thunk of static Equatable.== infix(_:_:)() ^ 1) & 1;
}

uint64_t merge(pregnancies:tree:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = a1;
  v30 = 0;
  v51 = a1;
  v50 = a2;
  v44 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
  v29 = v31;
  v33 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  Sequence.min(by:)();
  v34 = v32;
  if (v32)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    if (!v46)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v25 = v34;
    outlined init with take of HealthDataQuery(v45, &__dst);
    v38 = v28;
    Sequence.max(by:)();
    v26 = v34;
    if (!v40)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v22 = v26;
    v5[2] = &v41;
    outlined init with take of HealthDataQuery(v39, &v41);
    v7 = v42;
    v6 = v43;
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    v10 = (*(v6 + 16))(v7);
    v8 = v48;
    v9 = v49;
    p_dst = &__dst;
    __swift_mutable_project_boxed_opaque_existential_1(&__dst, v48);
    (*(v9 + 24))(v10, v8);
    v15 = v48;
    v13 = v49;
    __swift_project_boxed_opaque_existential_1(&__dst, v48);
    v11 = *(v15 - 8);
    v14 = v11;
    v12 = v5;
    MEMORY[0x28223BE20](v5);
    v16 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = (*(v13 + 8))(v15);
    (*(v14 + 8))(v16, v15);
    v37 = v17;
    v19 = v48;
    v18 = v49;
    __swift_project_boxed_opaque_existential_1(p_dst, v48);
    v36 = (*(v18 + 16))(v19);
    v21 = v35;
    outlined init with copy of HealthDataQuery(p_dst, v35);
    v3 = v22;
    AugmentedIntervalTree.insert(start:end:context:)(&v37, &v36, v21);
    v23 = v3;
    v24 = v3;
    if (!v3)
    {
      v5[1] = 0;
      outlined destroy of Pregnancy?(v35);
      __swift_destroy_boxed_opaque_existential_1(&v41);
      return __swift_destroy_boxed_opaque_existential_1(&__dst);
    }
  }

  v5[0] = v24;
  outlined destroy of Pregnancy?(v35);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  return __swift_destroy_boxed_opaque_existential_1(&__dst);
}

void *closure #4 in mergePregnancies(pregnancies:strategy:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[5] = a1;
  outlined init with copy of Pregnancy?((a1 + 8), v4);
  if (!v4[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return outlined init with take of HealthDataQuery(v4, a2);
}

Swift::Int __swiftcall PregnancyFromTest.lmpDelta()()
{
  if (!__OFSUB__(result, HIDWORD(v1)))
  {
    return result - HIDWORD(v1);
  }

  __break(1u);
  return result;
}

NightingaleTraining::PregnancyInvalidReason __swiftcall PregnancyFromTest.ensureValid(minDuration:maxDuration:minLMPDelta:maxLMPDelta:excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:startSources:)(Swift::Int minDuration, Swift::Int maxDuration, Swift::Int minLMPDelta, Swift::Int maxLMPDelta, Swift::Bool excludePregnanciesContainingFlow, Swift::UInt32 maxLMPTolerableFlowDelta, Swift::OpaquePointer flows, Swift::OpaquePointer startSources)
{
  *v15 = v16;
  *&v15[16] = v17;
  *&v15[24] = v18;
  if (!(*&v15[10] >> 16))
  {
    return 4;
  }

  if (DWORD2(v16))
  {
    v10 = (*&v15[18] >> 16) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 5;
  }

  v9 = Pregnancy.checkDuration(minDuration:maxDuration:minLMPDelta:maxLMPDelta:)(minDuration, maxDuration, minLMPDelta, maxLMPDelta);
  if (!static PregnancyInvalidReason.== infix(_:_:)(v9, 0))
  {
    return v9;
  }

  if (Pregnancy.containsFlow(excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:)(excludePregnanciesContainingFlow, maxLMPTolerableFlowDelta, flows))
  {
    return 3;
  }

  return 0;
}

Swift::Void __swiftcall PregnancyFromTest.update(historicalPeriods:useSeahorseInferredStartdate:useInferredLMP:)(Swift::OpaquePointer historicalPeriods, Swift::Bool useSeahorseInferredStartdate, Swift::Bool useInferredLMP)
{
  rawValue = historicalPeriods._rawValue;
  v33 = useSeahorseInferredStartdate;
  v32 = useInferredLMP;
  v40 = 0;
  v43 = closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v13 - v38;
  v60 = MEMORY[0x28223BE20](rawValue);
  v59 = v4 & 1;
  v58 = v5 & 1;
  v57 = v3;
  v56 = v60;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v6 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v44 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v43, v40, v41, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v42);
  v29 = v44;
  v55 = v44;
  v7 = *v31 != 0;
  v30 = *v31 - 1;
  v8 = !v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v52 = v30;
    static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v29, &v52, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v53);
    v28 = v53;
    if (v54)
    {
      v25 = 0;
      v26 = 1;
    }

    else
    {
      v27 = v28;
      v25 = v28;
      v26 = 0;
    }

    v24 = v25;
    if (v26)
    {
      if (!v32)
      {
        goto LABEL_11;
      }

      v9 = v31;
      v31[3] = *v31;
      *(v9 + 24) = 1;
    }

    else
    {
      v23 = v24;
      v45 = v24;
      v31[3] = v24;
    }

    v7 = __CFADD__(*v31, 1);
    v22 = *v31 + 1;
    v10 = v7;
    if ((v10 & 1) == 0)
    {
      v49 = v22;
      static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v29, &v49, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v50);
      v21 = v50;
      if (v51)
      {
        v18 = 0;
        v19 = 1;
      }

      else
      {
        v20 = v21;
        v18 = v21;
        v19 = 0;
      }

      v17 = v18;
      if ((v19 & 1) == 0)
      {
        v16 = v17;
        v46 = v17;
        v31[2] = v17;
LABEL_25:
        v12 = v31;
        v31[1] = v31[3];
        v12[5] = v12[3];

        return;
      }

      Date.init()();
      *&v11 = Date.toJulianDay()();
      v48 = v11;
      v14 = v11;
      v15 = BYTE4(v11);
      (*(v36 + 8))(v39, v35);
      if ((v15 & 1) == 0)
      {
        v13[2] = v14;
        v47 = v14;
        v31[2] = v14;
        goto LABEL_25;
      }

LABEL_11:

      return;
    }
  }

  __break(1u);
}

uint64_t protocol witness for Pregnancy.endDay.getter in conformance PregnancyFromTest()
{
  *v2 = *v0;
  *&v2[10] = *(v0 + 10);
  return PregnancyFromTest.endDay.getter(*v0, *&v2[8]);
}

void (*protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PregnancyFromTest.endDay.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

void protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t protocol witness for Pregnancy.lmp.getter in conformance PregnancyFromTest()
{
  *v2 = *v0;
  *&v2[10] = *(v0 + 10);
  return PregnancyFromTest.lmp.getter(*v0, *&v2[8]);
}

uint64_t protocol witness for Pregnancy.source.getter in conformance PregnancyFromTest()
{
  *v2 = *v0;
  *&v2[10] = *(v0 + 10);
  return PregnancyFromTest.source.getter(*v0, *&v2[8], BYTE6(*(v0 + 10)));
}

uint64_t protocol witness for Pregnancy.sliceAnchorType.getter in conformance PregnancyFromTest()
{
  *v3 = *v0;
  *&v3[10] = *(v0 + 10);
  LOBYTE(v2) = BYTE6(*(v0 + 10));
  HIDWORD(v2) = *(v0 + 18) >> 16;
  return PregnancyFromTest.sliceAnchorType.getter(*v0, *&v3[8], v2, *&v3[24]) & 1;
}

uint64_t protocol witness for Pregnancy.sliceAnchor.getter in conformance PregnancyFromTest()
{
  *v3 = *v0;
  *&v3[10] = *(v0 + 10);
  LOBYTE(v2) = BYTE6(*(v0 + 10));
  HIDWORD(v2) = *(v0 + 18) >> 16;
  return PregnancyFromTest.sliceAnchor.getter(*v0, *&v3[8], v2);
}

uint64_t protocol witness for Pregnancy.inferredLMP.getter in conformance PregnancyFromTest()
{
  *v3 = *v0;
  *&v3[10] = *(v0 + 10);
  LOBYTE(v2) = BYTE6(*(v0 + 10));
  HIDWORD(v2) = *(v0 + 18) >> 16;
  return PregnancyFromTest.inferredLMP.getter(*v0, *&v3[8], v2, v3[24]) & 1;
}

void (*protocol witness for Pregnancy.inferredLMP.modify in conformance PregnancyFromTest(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PregnancyFromTest.inferredLMP.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

Swift::Void __swiftcall PregnancyFromFactor.update(historicalPeriods:useSeahorseInferredStartdate:useInferredLMP:)(Swift::OpaquePointer historicalPeriods, Swift::Bool useSeahorseInferredStartdate, Swift::Bool useInferredLMP)
{
  v17 = 0;
  rawValue = historicalPeriods._rawValue;
  v19 = useSeahorseInferredStartdate;
  v18 = useInferredLMP;
  v16 = historicalPeriods._rawValue;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v3 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v10, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v11);
  v12 = *(v9 + 24);
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v15, &v12, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v13);
  if (v14)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = v13;
    v6 = 0;
  }

  if (v6)
  {
    if (!useInferredLMP)
    {

      return;
    }

    *(v9 + 32) = *v9;
    *(v9 + 40) = 1;
  }

  else
  {
    *(v9 + 32) = v5;
  }

  if (useSeahorseInferredStartdate)
  {
    type metadata accessor for _HKPrivatePregnancyStartDateSource();
    lazy protocol witness table accessor for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource();
    v4 = == infix<A>(_:_:)();
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(v9 + 24) = *(v9 + 32);
  }

  *(v9 + 36) = *(v9 + 32);
}

NightingaleTraining::PregnancyInvalidReason __swiftcall PregnancyFromFactor.ensureValid(minDuration:maxDuration:minLMPDelta:maxLMPDelta:excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:startSources:)(Swift::Int minDuration, Swift::Int maxDuration, Swift::Int minLMPDelta, Swift::Int maxLMPDelta, Swift::Bool excludePregnanciesContainingFlow, Swift::UInt32 maxLMPTolerableFlowDelta, Swift::OpaquePointer flows, Swift::OpaquePointer startSources)
{
  v21 = NightingaleTraining_PregnancyInvalidReason_valid;
  v31 = minDuration;
  v30 = maxDuration;
  v29 = minLMPDelta;
  v28 = maxLMPDelta;
  v27 = excludePregnanciesContainingFlow;
  v26 = maxLMPTolerableFlowDelta;
  rawValue = flows._rawValue;
  v24 = startSources._rawValue;
  v23 = v8;
  if (!*(v8 + 32))
  {
    return 4;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v10 = Pregnancy.checkDuration(minDuration:maxDuration:minLMPDelta:maxLMPDelta:)(minDuration, maxDuration, minLMPDelta, maxLMPDelta);
  v21 = v10;
  if (!static PregnancyInvalidReason.== infix(_:_:)(v10, 0))
  {
    return v10;
  }

  memcpy(v20, __src, sizeof(v20));
  if (Pregnancy.containsFlow(excludePregnanciesContainingFlow:maxLMPTolerableFlowDelta:flows:)(excludePregnanciesContainingFlow, maxLMPTolerableFlowDelta, flows))
  {
    return 3;
  }

  v32 = __src[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd);
  lazy protocol witness table accessor for type [_HKPrivatePregnancyStartDateSource] and conformance [A]();
  lazy protocol witness table accessor for type _HKPrivatePregnancyStartDateSource and conformance _HKPrivatePregnancyStartDateSource();
  if (Sequence<>.contains(_:)())
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

Swift::Int __swiftcall PregnancyFromFactor.lmpDelta()()
{
  v1 = v0[8];
  if (!__OFSUB__(*v0, v1))
  {
    return *v0 - v1;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromFactor(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PregnancyFromFactor.endDay.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

void (*protocol witness for Pregnancy.inferredLMP.modify in conformance PregnancyFromFactor(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PregnancyFromFactor.inferredLMP.modify();
  return protocol witness for Pregnancy.endDay.modify in conformance PregnancyFromTest;
}

uint64_t outlined destroy of Interval<UInt32, Pregnancy>(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

  return a1;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of DefaultStringInterpolation();
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v6 = swift_allocObject();

    if (specialized Array._hoistableIsNativeTypeChecked()())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x25F8893A0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x28223BE20](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x28223BE20](v22);
    v15 = v28;
    v16 = v10;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in serialize<A>(_:at:), v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84F78]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v5 = MEMORY[0x277D84CC0];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type PregnancyInvalidReason and conformance PregnancyInvalidReason()
{
  v2 = lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason;
  if (!lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason;
  if (!lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PregnancyInvalidReason and conformance PregnancyInvalidReason);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy()
{
  v2 = lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy;
  if (!lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy;
  if (!lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OverlapPregnanciesStrategy and conformance OverlapPregnanciesStrategy);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [_HKPrivatePregnancyStartDateSource] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [_HKPrivatePregnancyStartDateSource] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PregnancySource(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PregnancySource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy26_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 10);
  *(a1 + 10) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyFromTest(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 24) & 0xFE) != 0)
      {
        v3 = (*(a1 + 24) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyFromTest(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 26);
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyFromFactor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 40) & 0xFE) != 0)
      {
        v3 = (*(a1 + 40) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyFromFactor(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 42);
  if (a2 > 0xFE)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

id static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = MEMORY[0x28223BE20](a1);
  v482 = v10;
  v501 = v12;
  v500 = v13;
  v499 = v14;
  v498 = v15;
  v497 = v16;
  v496 = v17;
  v19 = v18;
  v483 = v18;
  v503 = v11;
  v502 = a10;
  v484 = a10;
  v505 = a9;
  v485 = a9;
  v486 = 0;
  v600 = 0;
  v599 = 0;
  v598 = 0;
  v597 = 0;
  v596 = 0;
  v595 = 0;
  v594 = 0;
  v593 = 0;
  v592 = 0;
  v591 = 0;
  v538 = 0;
  v533 = 0;
  v532 = 0;
  v531 = 0;
  v530 = 0;
  v529 = 0;
  v520 = 0;
  v518 = 0;
  v513 = 0;
  v511 = 0;
  v487 = type metadata accessor for Logger();
  v488 = *(v487 - 8);
  v489 = v488;
  v492 = *(v488 + 64);
  v20 = MEMORY[0x28223BE20](0);
  v494 = (v492 + 15) & 0xFFFFFFFFFFFFFFF0;
  v490 = &v190[-v494];
  v21 = MEMORY[0x28223BE20](v20);
  v491 = &v190[-v494];
  v22 = MEMORY[0x28223BE20](v21);
  v493 = &v190[-v494];
  MEMORY[0x28223BE20](v22);
  v495 = &v190[-v494];
  v504 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  v23 = MEMORY[0x28223BE20](v503);
  v506 = &v190[-((v504 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v600 = v23;
  v599 = v19;
  v598 = v24;
  v597 = v25;
  v596 = v26;
  v595 = v27;
  v594 = v28;
  v593 = v29;
  v591 = v505;
  v592 = v30;
  v590 = HyperParams.metricsProcessEngine.getter() & 1;
  v589 = 1;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v475 = v482;
    goto LABEL_34;
  }

  HyperParams.morpheusMetricsProgramFileName.getter();
  v478 = v31;
  v32 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v481 = v33;
  v479 = v32;
  v480 = v33;

  if (!v481)
  {
    v475 = v482;
    goto LABEL_34;
  }

  v476 = v479;
  v477 = v480;
  v469 = v480;
  v468 = v479;
  v470 = v482;
  v532 = v479;
  v533 = v480;
  static String.Encoding.utf8.getter();
  v34 = v470;
  v35 = String.init(contentsOfFile:encoding:)();
  v471 = v34;
  v472 = v35;
  v473 = v36;
  v474 = v34;
  if (v34)
  {
    v230 = 0;
    v231 = 0;

    v465 = v230;
    v466 = v230;
    v467 = v231;
  }

  else
  {
    v465 = v472;
    v466 = v473;
    v467 = 0;
  }

  v462 = v467;
  v463 = v466;
  v464 = v465;
  if (!v466)
  {

    v475 = v462;
    goto LABEL_34;
  }

  v460 = v464;
  v461 = v463;
  v452 = v463;
  v453 = v464;
  v530 = v464;
  v531 = v463;
  static PFLLogging.plugin.getter();
  v458 = Logger.logObject.getter();
  v454 = v458;
  v457 = static os_log_type_t.debug.getter();
  v455 = v457;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
  v459 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v458, v457))
  {
    v450 = v462;
    v442 = static UnsafeMutablePointer.allocate(capacity:)();
    v438 = v442;
    v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v440 = 0;
    v443 = createStorage<A>(capacity:type:)(0);
    v441 = v443;
    v444 = createStorage<A>(capacity:type:)(v440);
    v510[0] = v442;
    v509 = v443;
    v508 = v444;
    v445 = 0;
    v446 = v510;
    serialize(_:at:)(0, v510);
    serialize(_:at:)(v445, v446);
    v507 = v459;
    v447 = v190;
    MEMORY[0x28223BE20](v190);
    v448 = &v190[-48];
    *&v190[-32] = v38;
    *&v190[-24] = &v509;
    *&v190[-16] = &v508;
    v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v39 = v450;
    Sequence.forEach(_:)();
    v451 = v39;
    if (v39)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v454, v455, "Using Morpheus to generate metrics.", v438, 2u);
      v436 = 0;
      destroyStorage<A>(_:count:)(v441, 0, v439);
      destroyStorage<A>(_:count:)(v444, v436, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v438, MEMORY[0x277D84B78]);

      v437 = v451;
    }
  }

  else
  {

    v437 = v462;
  }

  v432 = v437;

  v430 = *(v489 + 8);
  v431 = (v489 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v430(v495, v487);
  type metadata accessor for MorpheusProgram();
  v40 = v432;
  v41 = static MorpheusProgram.fromDSL(_:)();
  v433 = v40;
  v434 = v41;
  v435 = v40;
  if (!v40)
  {
    v423 = v434;
    v427 = 0;
    v520 = v434;
    v519 = v498;
    v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
    v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v424 = v426;
    v42 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
    v43 = v427;
    v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:), 0, v425, v426, MEMORY[0x277D84A98], v42, MEMORY[0x277D84AC0], v44);
    v428 = v43;
    v429 = v45;
    if (v43)
    {
      __break(1u);
    }

    else
    {
      v415 = v429;
      v420 = 0;
      v518 = v429;
      v46 = _allocateUninitializedArray<A>(_:)();
      v416 = v47;
      v412 = v46;
      v413 = v47;

      v418 = 0;
      v48 = type metadata accessor for HyperParams();
      v49 = v483;
      v50 = v416;
      v416[3] = v48;
      *v50 = v49;

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      v52 = v496;
      v53 = v416;
      v414 = v51;
      v416[7] = v51;
      v53[4] = v52;

      v54 = v497;
      v55 = v416;
      v416[11] = v414;
      v55[8] = v54;

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySiGGMd);
      v57 = v415;
      v58 = v416;
      v59 = v499;
      v416[15] = v56;
      v58[12] = v57;
      v417 = v58 + 16;
      v516[4] = v59;
      v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
      v60 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
      v61 = v420;
      v63 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:), v418, v419, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v60, MEMORY[0x277D84AC0], v62);
      v421 = v61;
      v422 = v63;
      if (!v61)
      {
        v64 = v417;
        v65 = v422;
        v406 = 0;
        v417[3] = v424;
        *v64 = v65;

        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
        v67 = v500;
        v68 = v501;
        v69 = v413;
        v70 = v66;
        v71 = v412;
        v413[23] = v70;
        v69[20] = v67;
        v69[27] = MEMORY[0x277D83B88];
        v69[24] = v68;
        v404 = MEMORY[0x277D84F70] + 8;
        _finalizeUninitializedArray<A>(_:)();
        v407 = v71;
        v402 = v71;
        v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
        _allocateUninitializedArray<A>(_:)();
        v408 = Dictionary.init(dictionaryLiteral:)();
        v405 = v408;
        v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("generate_metrics", 0x10uLL, 1);
        v73 = v406;
        object = v72._object;
        dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
        v410 = v73;
        v411 = v73;
        if (!v73)
        {

          v515[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
          v515[0] = swift_allocObject();
          outlined init with copy of Any?(v517, v515[0] + 16);
          v400 = v516;
          v399 = v515;
          static MorpheusUtils.unwrapMorpheusResult(result:)();
          __swift_destroy_boxed_opaque_existential_1(v399);
          v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
          if (swift_dynamicCast())
          {
            v398 = v514;
          }

          else
          {
            v398 = 0;
          }

          v397 = v398;
          if (v398)
          {
            v396 = v397;
            v389 = v397;
            v393 = v410;
            v513 = v397;

            v387 = 1;
            v388 = _allocateUninitializedArray<A>(_:)();
            v386 = v74;
            v75 = NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor();
            outlined init with copy of String(v75, v386);
            v76 = v386;
            v77 = v387;
            v386[5] = MEMORY[0x277D83B88];
            v76[2] = v77;
            _finalizeUninitializedArray<A>(_:)();
            v391 = MEMORY[0x277D84F70] + 8;
            v390 = MEMORY[0x277D837D0];
            v392 = MEMORY[0x277D837E0];
            Dictionary.init(dictionaryLiteral:)();
            v78 = v393;
            v79 = Dictionary.merging(_:uniquingKeysWith:)();
            v394 = v78;
            v395 = v79;
            if (v78)
            {
              __break(1u);
            }

            else
            {
              v383 = 0;
              v512 = v395;

              v379 = v190;
              v380 = 32;
              MEMORY[0x28223BE20](v190);
              v80 = v484;
              *&v190[-16] = v81;
              *&v190[-8] = v80;
              v381 = v190;
              MEMORY[0x28223BE20](v190);
              v382 = &v190[-32];
              *&v190[-16] = partial apply for closure #5 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:);
              *&v190[-8] = v82;
              v83 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();
              v84 = v383;
              v86 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed Any) -> (@owned String, @out Any), v382, v401, v403, MEMORY[0x277D84A98], v83, MEMORY[0x277D84AC0], v85);
              v384 = v84;
              v385 = v86;
              if (!v84)
              {
                v375 = v385;

                outlined destroy of [(start: UInt32, end: UInt32)]();
                v511 = v375;

                v510[1] = v375;
                v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_yptGMd);
                lazy protocol witness table accessor for type [(String, Any)] and conformance [A]();
                v376 = Dictionary.init<A>(uniqueKeysWithValues:)();

                outlined destroy of Pregnancy?(v517);

                v377 = v376;
                v378 = v384;
                return v377;
              }
            }

            __break(1u);
            goto LABEL_57;
          }

          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v369 = 0;
          v370 = swift_allocError();
          *v87 = 72;
          swift_willThrow();
          v371 = v369;
          outlined destroy of Pregnancy?(v517);

          v372 = v370;
          v373 = v371;
          goto LABEL_44;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_54:
    v191 = v411;
    v192 = 0;

    v372 = v191;
    v373 = v192;
    goto LABEL_44;
  }

  v372 = v435;
  v373 = 0;
LABEL_44:
  v172 = v490;
  v211 = v373;
  v343 = v372;
  v173 = v372;
  v529 = v343;
  v174 = Logging.default.unsafeMutableAddressor();
  v363 = *(v489 + 16);
  v362 = (v489 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v363(v172, v174, v487);
  v175 = v343;
  v219 = 7;
  v217 = swift_allocObject();
  *(v217 + 16) = v343;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v229 = Logger.logObject.getter();
  v212 = v229;
  v228 = static os_log_type_t.error.getter();
  v213 = v228;
  v214 = 17;
  v223 = swift_allocObject();
  v215 = v223;
  *(v223 + 16) = 64;
  v224 = swift_allocObject();
  v216 = v224;
  *(v224 + 16) = 8;
  v218 = 32;
  v176 = swift_allocObject();
  v177 = v217;
  v220 = v176;
  *(v176 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
  *(v176 + 24) = v177;
  v178 = swift_allocObject();
  v179 = v220;
  v221 = v178;
  *(v178 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v178 + 24) = v179;
  v180 = swift_allocObject();
  v181 = v221;
  v227 = v180;
  v222 = v180;
  *(v180 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v180 + 24) = v181;
  v225 = _allocateUninitializedArray<A>(_:)();
  v226 = v182;

  v183 = v223;
  v184 = v226;
  *v226 = partial apply for closure #1 in OSLogArguments.append(_:);
  v184[1] = v183;

  v185 = v224;
  v186 = v226;
  v226[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v186[3] = v185;

  v187 = v226;
  v188 = v227;
  v226[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v187[5] = v188;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v229, v228))
  {
    v208 = v211;
    v203 = static UnsafeMutablePointer.allocate(capacity:)();
    v200 = v203;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v206 = 1;
    v204 = createStorage<A>(capacity:type:)(1);
    v202 = v204;
    v205 = createStorage<A>(capacity:type:)(0);
    v525[0] = v203;
    v524 = v204;
    v523 = v205;
    v207 = v525;
    serialize(_:at:)(2, v525);
    serialize(_:at:)(v206, v207);
    v189 = v208;
    v521 = partial apply for closure #1 in OSLogArguments.append(_:);
    v522 = v215;
    closure #1 in osLogInternal(_:log:type:)(&v521, v207, &v524, &v523);
    v209 = v189;
    v210 = v189;
    if (v189)
    {
      v198 = 0;

      __break(1u);
    }

    else
    {
      v521 = partial apply for closure #1 in OSLogArguments.append(_:);
      v522 = v216;
      closure #1 in osLogInternal(_:log:type:)(&v521, v525, &v524, &v523);
      v196 = 0;
      v197 = 0;
      v521 = partial apply for closure #1 in OSLogArguments.append(_:);
      v522 = v222;
      closure #1 in osLogInternal(_:log:type:)(&v521, v525, &v524, &v523);
      v194 = 0;
      v195 = 0;
      _os_log_impl(&dword_25C4D8000, v212, v213, "Error executing Morpheus program for metrics: %@.", v200, 0xCu);
      destroyStorage<A>(_:count:)(v202, 1, v201);
      destroyStorage<A>(_:count:)(v205, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v200, MEMORY[0x277D84B78]);

      v199 = v194;
    }
  }

  else
  {

    v199 = v211;
  }

  v347 = v199;

  v430(v490, v487);
  if ((HyperParams.metricsProcessFallbackToNative.getter() & 1) == 0)
  {
    swift_willThrow();

    result = v343;
    v193 = v343;
    return result;
  }

  v88 = v493;
  v89 = Logging.default.unsafeMutableAddressor();
  v363(v88, v89, v487);
  v367 = Logger.logObject.getter();
  v364 = v367;
  v366 = static os_log_type_t.info.getter();
  v365 = v366;
  v368 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v367, v366))
  {
    v360 = v347;
    v352 = static UnsafeMutablePointer.allocate(capacity:)();
    v348 = v352;
    v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v350 = 0;
    v353 = createStorage<A>(capacity:type:)(0);
    v351 = v353;
    v354 = createStorage<A>(capacity:type:)(v350);
    v528 = v352;
    v527 = v353;
    v526 = v354;
    v355 = 0;
    v356 = &v528;
    serialize(_:at:)(0, &v528);
    serialize(_:at:)(v355, v356);
    v525[1] = v368;
    v357 = v190;
    MEMORY[0x28223BE20](v190);
    v358 = &v190[-48];
    *&v190[-32] = v90;
    *&v190[-24] = &v527;
    *&v190[-16] = &v526;
    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v91 = v360;
    Sequence.forEach(_:)();
    v361 = v91;
    if (v91)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v364, v365, "Fallback to generate metrics from native.", v348, 2u);
      v345 = 0;
      destroyStorage<A>(_:count:)(v351, 0, v349);
      destroyStorage<A>(_:count:)(v354, v345, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v348, MEMORY[0x277D84B78]);

      v346 = v361;
    }
  }

  else
  {

    v346 = v347;
  }

  v344 = v346;

  v430(v493, v487);

  v475 = v344;
LABEL_34:
  v337 = v475;
  static PFLLogging.plugin.getter();
  v341 = Logger.logObject.getter();
  v338 = v341;
  v340 = static os_log_type_t.debug.getter();
  v339 = v340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
  v342 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v341, v340))
  {
    v335 = v337;
    v327 = static UnsafeMutablePointer.allocate(capacity:)();
    v323 = v327;
    v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v325 = 0;
    v328 = createStorage<A>(capacity:type:)(0);
    v326 = v328;
    v329 = createStorage<A>(capacity:type:)(v325);
    v537[0] = v327;
    v536 = v328;
    v535 = v329;
    v330 = 0;
    v331 = v537;
    serialize(_:at:)(0, v537);
    serialize(_:at:)(v330, v331);
    v534 = v342;
    v332 = v190;
    MEMORY[0x28223BE20](v190);
    v333 = &v190[-48];
    *&v190[-32] = v92;
    *&v190[-24] = &v536;
    *&v190[-16] = &v535;
    v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v93 = v335;
    Sequence.forEach(_:)();
    v336 = v93;
    if (v93)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v338, v339, "Using native to generate metrics.", v323, 2u);
      v321 = 0;
      destroyStorage<A>(_:count:)(v326, 0, v324);
      destroyStorage<A>(_:count:)(v329, v321, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v323, MEMORY[0x277D84B78]);

      v322 = v336;
    }
  }

  else
  {

    v322 = v337;
  }

  v310 = v322;

  (*(v489 + 8))(v491, v487);
  v94 = v310;
  static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(v483, v496, v497, v498, v499, v500, v501, v588);
  v311 = v94;
  v312 = v588[0];
  v313 = v588[1];
  v314 = v588[2];
  v315 = v588[3];
  v316 = v588[4];
  v317 = v588[5];
  v318 = v588[6];
  v319 = v588[7];
  v320 = v94;
  if (v94)
  {
LABEL_57:
    result = v320;
    v193 = v320;
    return result;
  }

  v287 = v319;
  v288 = v318;
  v289 = v317;
  v290 = v316;
  v291 = v315;
  v292 = v314;
  v293 = v313;
  v294 = v312;
  v587[0] = v312;
  v587[1] = v313;
  v587[2] = v314;
  v587[3] = v315;
  v587[4] = v316;
  v587[5] = v317;
  v587[6] = v318;
  v587[7] = v319;
  static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)(v483, v496, v497, &v574);
  v295 = 0;
  v296 = v574;
  v297 = v575;
  v298 = v576;
  v299 = v577;
  v300 = v578;
  v301 = v579;
  v302 = v580;
  v303 = v581;
  v304 = v582;
  v305 = v583;
  v306 = v584;
  v307 = v585;
  v308 = v586;
  v309 = 0;
  v273 = v586;
  v274 = v585;
  v259 = v584;
  v256 = v583;
  v254 = v582;
  v269 = v581;
  v270 = v580;
  v271 = v579;
  v272 = v578;
  v275 = v577;
  v276 = v576;
  v245 = v575;
  v268 = v574;
  v284 = 0;
  v561 = v574;
  v562 = v575;
  v563 = v576;
  v564 = v577;
  v565 = v578;
  v566 = v579;
  v567 = v580;
  v568 = v581;
  v569 = v582;
  v570 = v583;
  v571 = v584;
  v572 = v585;
  v573 = v586;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  v267 = _allocateUninitializedArray<A>(_:)();
  v266 = v95;
  v96 = NightingaleDMetricsProcessor.keyMetricsCycleTP.unsafeMutableAddressor();
  outlined init with copy of String(v96, v266);
  v242 = v587;
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v587, &v560);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v98 = v266;
  v99 = v294;
  v263 = v97;
  v266[5] = v97;
  v98[2] = v99;
  v235 = v98 + 6;
  v100 = NightingaleDMetricsProcessor.keyMetricsCycleTPR.unsafeMutableAddressor();
  outlined init with copy of String(v100, v235);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v559);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v102 = v266;
  v103 = v293;
  v252 = v101;
  v266[11] = v101;
  v102[8] = v103;
  v236 = v102 + 12;
  v104 = NightingaleDMetricsProcessor.keyMetricsCycleFP.unsafeMutableAddressor();
  outlined init with copy of String(v104, v236);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v558);
  v105 = v266;
  v106 = v292;
  v266[17] = v263;
  v105[14] = v106;
  v237 = v105 + 18;
  v107 = NightingaleDMetricsProcessor.keyMetricsCycleFPR.unsafeMutableAddressor();
  outlined init with copy of String(v107, v237);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v557);
  v108 = v266;
  v109 = v291;
  v266[23] = v252;
  v108[20] = v109;
  v238 = v108 + 24;
  v110 = NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.unsafeMutableAddressor();
  outlined init with copy of String(v110, v238);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v556);
  v111 = v266;
  v112 = v290;
  v266[29] = v263;
  v111[26] = v112;
  v239 = v111 + 30;
  v113 = NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.unsafeMutableAddressor();
  outlined init with copy of String(v113, v239);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v555);
  v114 = v266;
  v115 = v289;
  v266[35] = v263;
  v114[32] = v115;
  v240 = v114 + 36;
  v116 = NightingaleDMetricsProcessor.keyMetricsCycleLatency.unsafeMutableAddressor();
  outlined init with copy of String(v116, v240);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v554);
  v117 = v266;
  v118 = v288;
  v266[41] = v252;
  v117[38] = v118;
  v241 = v117 + 42;
  v119 = NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.unsafeMutableAddressor();
  outlined init with copy of String(v119, v241);
  outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(v242, &v553);
  v120 = v266;
  v121 = v287;
  v266[47] = v263;
  v120[44] = v121;
  v243 = v120 + 48;
  v122 = NightingaleDMetricsProcessor.keyMetricsSliceROCScore.unsafeMutableAddressor();
  outlined init with copy of String(v122, v243);
  v262 = &v561;
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(&v561, &v552);
  v123 = v266;
  v124 = v268;
  v266[53] = v252;
  v123[50] = v124;
  v244 = v123 + 54;
  v125 = NightingaleDMetricsProcessor.keyMetricsSlicePRScore.unsafeMutableAddressor();
  outlined init with copy of String(v125, v244);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v551);
  v126 = v245;
  v127 = v266;
  v258 = MEMORY[0x277D83A90];
  v266[59] = MEMORY[0x277D83A90];
  *(v127 + 112) = v126;
  v246 = v127 + 60;
  v128 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.unsafeMutableAddressor();
  outlined init with copy of String(v128, v246);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v550);
  v129 = v266;
  v130 = v272;
  v266[65] = v252;
  v129[62] = v130;
  v247 = v129 + 66;
  v131 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.unsafeMutableAddressor();
  outlined init with copy of String(v131, v247);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v549);
  v132 = v266;
  v133 = v271;
  v266[71] = v252;
  v132[68] = v133;
  v248 = v132 + 72;
  v134 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.unsafeMutableAddressor();
  outlined init with copy of String(v134, v248);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v548);
  v135 = v266;
  v136 = v270;
  v266[77] = v252;
  v135[74] = v136;
  v249 = v135 + 78;
  v137 = NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.unsafeMutableAddressor();
  outlined init with copy of String(v137, v249);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v547);
  v138 = v266;
  v139 = v269;
  v266[83] = v252;
  v138[80] = v139;
  v250 = v138 + 84;
  v140 = NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.unsafeMutableAddressor();
  outlined init with copy of String(v140, v250);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v546);
  v141 = v266;
  v142 = v276;
  v266[89] = v252;
  v141[86] = v142;
  v251 = v141 + 90;
  v143 = NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.unsafeMutableAddressor();
  outlined init with copy of String(v143, v251);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v545);
  v144 = v266;
  v145 = v275;
  v266[95] = v252;
  v144[92] = v145;
  v253 = v144 + 96;
  v146 = NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.unsafeMutableAddressor();
  outlined init with copy of String(v146, v253);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v544);
  v147 = v254;
  v148 = v266;
  v265 = MEMORY[0x277D83B88];
  v266[101] = MEMORY[0x277D83B88];
  v148[98] = v147;
  v255 = v148 + 102;
  v149 = NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.unsafeMutableAddressor();
  outlined init with copy of String(v149, v255);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v543);
  v150 = v256;
  v151 = v266;
  v266[107] = v265;
  v151[104] = v150;
  v257 = v151 + 108;
  v152 = NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.unsafeMutableAddressor();
  outlined init with copy of String(v152, v257);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v542);
  v153 = v259;
  v154 = v266;
  v266[113] = v258;
  *(v154 + 220) = v153;
  v260 = v154 + 114;
  v155 = NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.unsafeMutableAddressor();
  outlined init with copy of String(v155, v260);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v541);
  v156 = v266;
  v157 = v273;
  v266[119] = v263;
  v156[116] = v157;
  v261 = v156 + 120;
  v158 = NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.unsafeMutableAddressor();
  outlined init with copy of String(v158, v261);
  outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(v262, &v540);
  v159 = v266;
  v160 = v274;
  v266[125] = v263;
  v159[122] = v160;
  v264 = v159 + 126;
  v161 = NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor();
  outlined init with copy of String(v161, v264);
  v162 = v266;
  v163 = v267;
  v266[131] = v265;
  v162[128] = 0;
  _finalizeUninitializedArray<A>(_:)();
  v277 = v163;

  v539 = Dictionary.init(dictionaryLiteral:)();

  v278 = v190;
  v279 = 32;
  MEMORY[0x28223BE20](v190);
  v164 = v484;
  *&v190[-16] = v165;
  *&v190[-8] = v164;
  v280 = v190;
  MEMORY[0x28223BE20](v190);
  v281 = &v190[-32];
  *&v190[-16] = partial apply for closure #5 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:);
  *&v190[-8] = v166;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  v167 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();
  v168 = v284;
  v170 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed Any) -> (@owned String, @out Any), v281, v282, v283, MEMORY[0x277D84A98], v167, MEMORY[0x277D84AC0], v169);
  v285 = v168;
  v286 = v170;
  if (!v168)
  {
    v233 = v286;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v538 = v233;

    v537[1] = v233;
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_yptGMd);
    lazy protocol witness table accessor for type [(String, Any)] and conformance [A]();
    v234 = Dictionary.init<A>(uniqueKeysWithValues:)();

    outlined destroy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])();
    outlined destroy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])();
    v377 = v234;
    v378 = v285;
    return v377;
  }

  __break(1u);
  return result;
}

NightingaleTraining::NightingaleDProcessEngine_optional __swiftcall NightingaleDProcessEngine.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "native";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  *(v2 + 24) = "morpheus";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = NightingaleTraining_NightingaleDProcessEngine_native;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = NightingaleTraining_NightingaleDProcessEngine_morpheus;
    goto LABEL_6;
  }

  return 2;
}

uint64_t NightingaleDProcessEngine.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("morpheus", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("native", 6uLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::NightingaleDProcessEngine_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingaleDProcessEngine@<W0>(Swift::String *a1@<X0>, NightingaleTraining::NightingaleDProcessEngine_optional *a2@<X8>)
{
  result.value = NightingaleDProcessEngine.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingaleDProcessEngine@<X0>(uint64_t *a1@<X8>)
{
  result = NightingaleDProcessEngine.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for keyMetricsNumberOfPositiveSamples()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfPositiveSamples", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfPositiveSamples != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfPositiveSamples.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfNegativeSamples()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfNegativeSamples", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfNegativeSamples != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfNegativeSamples.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsPositiveSamplesRatio()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PositiveSamplesRatio", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsPositiveSamplesRatio != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsPositiveSamplesRatio.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleTP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_TP", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleTP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleTP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleTP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleTP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleTP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleTP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleTPR()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_TPR", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleTPR = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleTPR.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleTPR != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleTPR;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleTPR.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleTPR.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleFP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_FP", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleFP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleFP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleFP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleFP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleFP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleFP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleFPR()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_FPR", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleFPR = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleFPR.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleFPR != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleFPR;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleFPR.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleFPR.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfPregnantCycles()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfPregnantCycles", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfPregnantCycles != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfPregnantCycles.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsNumberOfNonPregnantCycles()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumberOfNonPregnantCycles", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsNumberOfNonPregnantCycles != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsNumberOfNonPregnantCycles.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleLatency()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_Latency", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleLatency = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleLatency.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleLatency != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleLatency;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleLatency.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleLatency.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCycleLatencyBuckets()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cycle_LatencyBuckets", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCycleLatencyBuckets != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsCycleLatencyBuckets.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceROCScore()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ROCScore", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceROCScore = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceROCScore.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceROCScore != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceROCScore;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceROCScore.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceROCScore.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSlicePRScore()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_PRScore", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSlicePRScore = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSlicePRScore.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSlicePRScore != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSlicePRScore;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSlicePRScore.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSlicePRScore.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsTP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsTP", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsTP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsFP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsFP", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsFP != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsTN()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsTN", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsTN != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsTN.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceConfusionMatricsFN()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_ConfusionMatricsFN", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceConfusionMatricsFN != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceConfusionMatricsFN.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceTargetTPRs()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_TargetTPRs", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceTargetTPRs != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceTargetTPRs.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceTargetPrecisions()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_TargetPrecisions", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceTargetPrecisions != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceTargetPrecisions.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSlicePositiveSamplesOutputDist()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_PositiveSamplesOutputDist", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSlicePositiveSamplesOutputDist != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSlicePositiveSamplesOutputDist.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsSliceNegativeSamplesOutputDist()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Slice_NegativeSamplesOutputDist", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSliceNegativeSamplesOutputDist != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsSliceNegativeSamplesOutputDist.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsEngine()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MetricsEngine", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingaleDMetricsProcessor.keyMetricsEngine = v1;
  return result;
}

__int128 *NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsEngine != -1)
  {
    swift_once();
  }

  return &static NightingaleDMetricsProcessor.keyMetricsEngine;
}

uint64_t static NightingaleDMetricsProcessor.keyMetricsEngine.getter()
{
  v1 = *NightingaleDMetricsProcessor.keyMetricsEngine.unsafeMutableAddressor();

  return v1;
}

uint64_t closure #4 in static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v13 = v4;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v6);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v7);

  outlined destroy of DefaultStringInterpolation();
  v11 = MEMORY[0x25F889320](v12, v13);
  outlined init with copy of Any(a4, a1);
  return v11;
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed Any) -> (@owned String, @out Any)@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *, void, void, void *)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a3 + 2, *a1, a1[1], a1 + 2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v314 = a7;
  v322 = a6;
  v315 = a5;
  v316 = a4;
  v317 = a3;
  v318 = a2;
  v319 = a1;
  v320 = a8;
  v321 = 0;
  v446 = 0;
  v441 = 0;
  v440 = 0;
  v439 = 0;
  v437 = 0;
  v436 = 0;
  v435 = 0;
  v429 = 0;
  v428 = 0;
  v427 = 0;
  v426 = 0;
  v425 = 0;
  v424 = 0;
  v423 = 0;
  v422 = 0;
  v421 = 0;
  v420 = 0;
  v416 = 0;
  v415 = 0;
  v410 = 0;
  v409 = 0;
  v408 = 0;
  v400 = 0;
  v395 = 0;
  v390 = 0;
  v389 = 0;
  v387 = 0;
  v384 = 0;
  v377 = 0;
  v359 = 0;
  v358 = 0;
  v357 = 0;
  v338 = 0;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v334 = 0;
  v332 = 0;
  v454 = a1;
  v453 = a2;
  v452 = a3;
  v451 = a4;
  v450 = a5;
  v449 = a6;
  v448 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
  if (MEMORY[0x25F8895B0](v322, v8) < 1 || (v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd), MEMORY[0x25F8895B0](v316) < 1) || MEMORY[0x25F8895B0](v318, MEMORY[0x277D83A90]) < 1 || (v310 = MEMORY[0x277D83A90], v311 = MEMORY[0x25F8895B0](v318), v311 != MEMORY[0x25F8895B0](v317, v310)) || (v309 = MEMORY[0x25F8895B0](v318, MEMORY[0x277D83A90]), v309 != MEMORY[0x25F8895B0](v315, MEMORY[0x277D84CC0])))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v94 = 0;
    v95 = swift_allocError();
    *v83 = 63;
    swift_willThrow();
    result = v95;
    v96 = v95;
    return result;
  }

  v305 = v313;
  v447 = v322;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
  v303 = v304;
  v306 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  v307 = v313;
  v308 = Sequence.sorted(by:)();
  if (v313)
  {
    __break(1u);
    __break(1u);
    goto LABEL_119;
  }

  v293 = v308;
  v299 = 0;
  v446 = v308;
  v444 = v317;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v294 = v295;
  v296 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  MEMORY[0x25F889420](&v445, v295);
  v443 = v445;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd);
  v297 = v298;
  v300 = lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
  v301 = 0;
  v302 = Sequence.filter(_:)();
  v289 = 0;
  v442 = v302;

  v285 = &v89;
  MEMORY[0x28223BE20](&v89);
  v287 = v88;
  v88[2] = v9;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd);
  v286 = v288;
  v10 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
  v11 = v289;
  v290 = v10;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), v287, v288, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v12);
  v291 = v11;
  v292 = v13;
  if (v11)
  {
LABEL_119:

    __break(1u);
    goto LABEL_120;
  }

  v279 = v292;
  v280 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v441 = v279;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
  v440 = Array.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMd);
  v14 = AugmentedIntervalTree.__allocating_init()();
  v15 = v280;
  v282 = v14;
  v281 = v14;
  v439 = v14;
  v438 = v293;

  Sequence.forEach(_:)();
  v283 = v15;
  v284 = v15;
  if (v15)
  {
LABEL_120:
    v93 = v284;

    outlined destroy of [(start: UInt32, end: UInt32)]();

    result = v93;
    v96 = v93;
    return result;
  }

  v278 = MEMORY[0x25F8895B0](v316, v312);
  if (v278 < 0)
  {
    LODWORD(v86) = 0;
    v85 = 760;
    v84[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v433 = 0;
  v434 = v278;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (i = v283; ; i = v255)
  {
    v274 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    IndexingIterator.next()();
    v275 = v431;
    if (v432)
    {
      break;
    }

    v273 = v275;
    v266 = v275;
    v267 = v274;
    v334 = v275;
    Array.subscript.getter();
    v16 = v267;
    v269 = v333;
    v268 = v333;
    v332 = v333;
    v330 = v293;
    v270 = v88;
    MEMORY[0x28223BE20](v88);
    v86 = __PAIR64__(v17, v269);
    Sequence.first(where:)();
    v271 = v16;
    v272 = v270;
    if (v16)
    {
      __break(1u);
LABEL_122:
      v92 = v262;
      outlined destroy of Pregnancy?(v323);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      result = v92;
      v96 = v92;
      return result;
    }

    v265 = v331[3] == 0;
    v264 = v265;
    outlined destroy of Pregnancy?(v331);
    if (v264)
    {
      result = MEMORY[0x25F8895B0](v316, v312);
      v19 = __OFSUB__(result, 1);
      v263 = result - 1;
      if (v19)
      {
        goto LABEL_137;
      }

      if (v266 == v263)
      {
        v20 = v271;
        v325 = v268;
        v324 = v314;
        memset(v323, 0, sizeof(v323));
        AugmentedIntervalTree.insert(start:end:context:)(&v325, &v324, v323);
        v261 = v20;
        v262 = v20;
        if (v20)
        {
          goto LABEL_122;
        }

        outlined destroy of Pregnancy?(v323);
        v260 = v261;
      }

      else
      {
        v329 = v268;
        result = v266 + 1;
        v21 = __OFADD__(v266, 1);
        v259 = v266 + 1;
        if (v21)
        {
          goto LABEL_138;
        }

        result = Array.subscript.getter();
        v258 = v328 - 1;
        if (!v328)
        {
          goto LABEL_139;
        }

        v22 = v271;
        v327 = v258;
        memset(v326, 0, sizeof(v326));
        AugmentedIntervalTree.insert(start:end:context:)(&v329, &v327, v326);
        v256 = v22;
        v257 = v22;
        if (v22)
        {
          v91 = v257;
          outlined destroy of Pregnancy?(v326);

          outlined destroy of [(start: UInt32, end: UInt32)]();

          result = v91;
          v96 = v91;
          return result;
        }

        outlined destroy of Pregnancy?(v326);
        v260 = v256;
      }

      v255 = v260;
    }

    else
    {
      v255 = v271;
    }
  }

  v252 = v274;
  v430 = v315;

  v249 = v88;
  MEMORY[0x28223BE20](v88);
  v250 = v84;
  v86 = v23;
  v87 = &v440;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v24 = v252;
  Sequence.forEach(_:)();
  v253 = v24;
  v254 = v24;
  if (v24)
  {
    v90 = v254;

    outlined destroy of [(start: UInt32, end: UInt32)]();

    result = v90;
    v96 = v90;
    return result;
  }

  v247 = MEMORY[0x277D83B88];
  v429 = Array.init()();
  v246 = MEMORY[0x277D83A90];
  v428 = Array.init()();
  v427 = Array.init()();
  v426 = Array.init()();
  v425 = Array.init()();
  v424 = Array.init()();
  v423 = Array.init()();
  v422 = Array.init()();
  v419 = HyperParams.outputPostProcThresholds.getter();
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  Collection<>.makeIterator()();
  for (j = v253; ; j = v106)
  {
    v244 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd);
    IndexingIterator.next()();
    v245 = v417;
    if (v418)
    {
      v105 = v244;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v97 = v429;

      v98 = v428;

      v99 = v427;

      v100 = v426;

      v101 = v425;

      v102 = v424;

      v103 = v423;

      v104 = v422;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      v75 = v98;
      v76 = v99;
      v77 = v100;
      v78 = v101;
      v79 = v102;
      v80 = v103;
      v81 = v320;
      v82 = v104;
      *v320 = v97;
      v81[1] = v75;
      v81[2] = v76;
      v81[3] = v77;
      v81[4] = v78;
      v81[5] = v79;
      v81[6] = v80;
      v81[7] = v82;
      return result;
    }

    v243 = v245;
    v237 = v245;
    v238 = v244;
    v416 = v245;
    v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytMd);
    v415 = Array.init()();
    v413 = v318;
    MEMORY[0x25F889420](&v414, v294, v296);
    v25 = v238;
    v412 = v414;
    v239 = v88;
    MEMORY[0x28223BE20](v88);
    LODWORD(v86) = v26;
    v27 = Sequence.filter(_:)();
    v240 = v25;
    v241 = v27;
    v242 = v239;
    if (v25)
    {
      __break(1u);

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
      result = 0;
      __break(1u);
      return result;
    }

    v411 = v241;

    v233 = v88;
    MEMORY[0x28223BE20](v88);
    v86 = v28;
    v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), v84, v29, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);
    v234 = 0;
    v235 = v32;
    v229 = v32;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v410 = v229;
    v230 = v440;

    v407 = v230;
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySNys6UInt32VGGMd);
    lazy protocol witness table accessor for type [ClosedRange<UInt32>] and conformance [A]();
    Collection<>.makeIterator()();
    for (k = v234; ; k = v195)
    {
      v227 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySNys6UInt32VGGGMd);
      IndexingIterator.next()();
      v228 = v405;
      if (v406)
      {
        break;
      }

      v226 = v228;
      v223 = HIDWORD(v228);
      v224 = v228;
      v359 = v228;
      v358 = 0;
      v357 = 0;
      v355 = 0;
      v356 = 1;
      v353 = 0;
      v354 = 1;
      v351 = 0;
      v352 = 1;
      v348 = v228;
      static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v229, &v348, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v349);
      v225 = v349;
      if (v350)
      {
        v221 = 0x100000000;
      }

      else
      {
        v222 = v225;
        v221 = v225;
      }

      v220 = v221;
      if ((v221 & 0x100000000) != 0)
      {
        v217 = 0;
        v218 = 0x100000000;
      }

      else
      {
        v219 = v220;
        v216 = v219;
        v335 = v219;
        if (v223 >= v219)
        {
          v357 = 1;
          v353 = v216;
          v354 = 0;
          v217 = 1;
          v218 = v216;
        }

        else
        {
          v217 = 0;
          v218 = 0x100000000;
        }
      }

      v212 = HIDWORD(v218);
      v213 = v218;
      v214 = v217;
      v345 = v224;
      static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(v279, &v345, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v346);
      v215 = v346;
      if (v347)
      {
        v210 = 0x100000000;
      }

      else
      {
        v211 = v215;
        v210 = v215;
      }

      v209 = v210;
      if ((v210 & 0x100000000) != 0)
      {
        v206 = 0;
        v207 = 0x100000000;
      }

      else
      {
        v208 = v209;
        v205 = v208;
        v336 = v208;
        if (v223 >= v208)
        {
          v358 = 1;
          v351 = v205;
          v352 = 0;
          v206 = 1;
          v207 = v205;
        }

        else
        {
          v206 = 0;
          v207 = 0x100000000;
        }
      }

      v202 = HIDWORD(v207);
      v203 = v207;
      v204 = v206;
      if (v212)
      {
        v199 = 0;
        v200 = 1;
      }

      else
      {
        v201 = v213;
        v198 = v201;
        v338 = v201;
        if (v202)
        {
          v199 = 0;
          v200 = 1;
        }

        else
        {
          v197 = v203;
          v337 = v203;
          v196 = v198 - v203;
          v355 = v196;
          v356 = 0;
          v199 = v196;
          v200 = 0;
        }
      }

      v195 = v227;
      v339 = v224;
      v340 = v223;
      v341 = v204;
      v342 = v214 & 1;
      v343 = v199;
      v344 = v200 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMd);
      Array.append(_:)();
    }

    v191 = v227;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v188 = v415;
    v187 = v415;

    v403 = v188;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endSi5labelSb6detectSiSg7latencytGMd);
    v189 = v190;
    v33 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32, label: Int, detect: Bool, latency: Int?)] and conformance [A]();
    v34 = v191;
    v192 = v33;
    v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #9 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v190, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v35);
    v193 = v34;
    v194 = v36;
    if (v34)
    {
      goto LABEL_126;
    }

    v180 = v194;
    v184 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v402 = v180;
    v182 = 0;
    v401 = 0;
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v181 = v183;
    v37 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v38 = v184;
    v185 = v37;
    Sequence.reduce<A>(_:_:)();
    v186 = v38;
    if (v38)
    {
      goto LABEL_127;
    }

    v176 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v39 = v176;
    v177 = v404;
    v400 = v404;

    v398 = v187;
    v41 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #10 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v189, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v192, MEMORY[0x277D84AC0], v40);
    v178 = v39;
    v179 = v41;
    if (v39)
    {
      goto LABEL_128;
    }

    v173 = v179;
    v174 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v42 = v174;
    v397 = v173;
    v396 = 0;
    Sequence.reduce<A>(_:_:)();
    v175 = v42;
    if (v42)
    {
      goto LABEL_129;
    }

    v169 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v43 = v169;
    v170 = v399;
    v395 = v399;

    v393 = v187;
    v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #11 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v189, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v192, MEMORY[0x277D84AC0], v44);
    v171 = v43;
    v172 = v45;
    if (v43)
    {
      goto LABEL_130;
    }

    v166 = v172;
    v167 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v46 = v167;
    v392 = v166;
    v391 = 0;
    Sequence.reduce<A>(_:_:)();
    v168 = v46;
    if (v46)
    {
      goto LABEL_131;
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v164 = v394;
    v163 = v394;
    v390 = v394;
    result = MEMORY[0x25F8895B0](v187, v236);
    v47 = __OFSUB__(result, v164);
    v165 = result - v164;
    if (v47)
    {
      break;
    }

    v160 = v168;
    v389 = v165;
    v388[3] = v187;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    v49 = v160;
    v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #12 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v189, v48, MEMORY[0x277D84A98], v192, MEMORY[0x277D84AC0], v50);
    v161 = v49;
    v162 = v51;
    if (v49)
    {
      goto LABEL_132;
    }

    v155 = v162;
    v157 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v388[2] = v155;
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiSgGMd);
    lazy protocol witness table accessor for type [Int?] and conformance [A]();
    v52 = v157;
    v53 = Sequence.compactMap<A>(_:)();
    v158 = v52;
    v159 = v53;
    if (v52)
    {
      goto LABEL_133;
    }

    v151 = v159;
    v152 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v388[1] = v151;
    v54 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v55 = v152;
    v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #14 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:), 0, v181, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v54, MEMORY[0x277D84AC0], v56);
    v153 = v55;
    v154 = v57;
    if (v55)
    {
      goto LABEL_134;
    }

    v146 = v154;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v388[0] = v146;
    v147 = v388;
    v149 = Sequence<>.sorted()();
    v148 = v149;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v387 = v149;
    v385 = 0.0;
    v386 = 1;
    result = MEMORY[0x25F8895B0]();
    v150 = result;
    v384 = result;
    if (result < 1)
    {
      v140 = 0.0;
      v141 = 1;
    }

    else
    {
      v58 = v150 & 1;
      if (v150 < 0)
      {
        v58 = -v58;
      }

      if (v58)
      {
        Array.subscript.getter();
        v385 = v360;
        v386 = 0;
        v144 = v360;
        v145 = 0;
      }

      else
      {
        v59 = __OFSUB__(v150, 1);
        v143 = v150 - 1;
        if (v59)
        {
          goto LABEL_136;
        }

        Array.subscript.getter();
        v142 = v362;
        Array.subscript.getter();
        v385 = (v142 + v361) * 0.5;
        v386 = 0;
        v144 = v385;
        v145 = 0;
      }

      v140 = v144;
      v141 = v145;
    }

    v138 = v141;
    v139 = v140;
    v382 = 0.0;
    v383 = 1;
    v380 = 0.0;
    v381 = 1;
    if (v163 < 1)
    {
      v136 = 0.0;
      v137 = 1;
    }

    else
    {
      v382 = v177 / v163;
      v383 = 0;
      v136 = v382;
      v137 = 0;
    }

    v134 = v137;
    v135 = v136;
    if (v165 < 1)
    {
      v132 = 0.0;
      v133 = 1;
    }

    else
    {
      v380 = v170 / v165;
      v381 = 0;
      v132 = v380;
      v133 = 0;
    }

    v130 = v133;
    v131 = v132;
    v378 = v139;
    v379 = v138 & 1;
    if (v138)
    {
      v129 = -2000.0;
    }

    else
    {
      v129 = v378;
    }

    v125 = v129;
    v126 = HyperParams.latencyBuckets.getter();
    v128 = static MetricsUtils.bucketize(value:buckets:)(v126, v125);
    v127 = v128;

    v377 = v128;
    v376 = v177;
    Array.append(_:)();
    v374 = v135;
    v375 = v134 & 1;
    v124 = (v134 & 1) != 0;
    if (v134)
    {
      v122 = MEMORY[0x277D83A90];
      v60 = _allocateUninitializedArray<A>(_:)();
      *v61 = 0;
      v61[1] = 1065353216;
      _finalizeUninitializedArray<A>(_:)();
      v123 = v60;
    }

    else
    {
      v120 = _allocateUninitializedArray<A>(_:)();
      v121 = v62;
      if (v134)
      {
        LODWORD(v86) = 0;
        v85 = 214;
        v84[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v119 = v135;
      }

      v63 = v120;
      v64 = v121;
      *v121 = v119;
      v64[1] = 0;
      _finalizeUninitializedArray<A>(_:)();
      v123 = v63;
    }

    v373 = v123;
    Array.append<A>(contentsOf:)();
    v372 = v170;
    Array.append(_:)();
    v370 = v131;
    v371 = v130 & 1;
    v118 = (v130 & 1) != 0;
    if (v130)
    {
      v116 = MEMORY[0x277D83A90];
      v65 = _allocateUninitializedArray<A>(_:)();
      *v66 = 0;
      v66[1] = 1065353216;
      _finalizeUninitializedArray<A>(_:)();
      v117 = v65;
    }

    else
    {
      v114 = _allocateUninitializedArray<A>(_:)();
      v115 = v67;
      if (v130)
      {
        LODWORD(v86) = 0;
        v85 = 216;
        v84[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v113 = v131;
      }

      v68 = v114;
      v69 = v115;
      *v115 = v113;
      v69[1] = 0;
      _finalizeUninitializedArray<A>(_:)();
      v117 = v68;
    }

    v369 = v117;
    Array.append<A>(contentsOf:)();
    v368 = v163;
    Array.append(_:)();
    v367 = v165;
    Array.append(_:)();
    v365 = v139;
    v366 = v138 & 1;
    v112 = (v138 & 1) != 0;
    if (v138)
    {
      v110 = MEMORY[0x277D83A90];
      v70 = _allocateUninitializedArray<A>(_:)();
      *v71 = 0;
      v71[1] = 1065353216;
      _finalizeUninitializedArray<A>(_:)();
      v111 = v70;
    }

    else
    {
      v108 = _allocateUninitializedArray<A>(_:)();
      v109 = v72;
      if (v138)
      {
        LODWORD(v86) = 0;
        v85 = 219;
        v84[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v107 = v139;
      }

      v73 = v108;
      v74 = v109;
      *v109 = v107;
      v74[1] = 0;
      _finalizeUninitializedArray<A>(_:)();
      v111 = v73;
    }

    v106 = v153;
    v364 = v111;
    Array.append<A>(contentsOf:)();

    v363 = v127;
    Array.append<A>(contentsOf:)();

    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  __break(1u);
LABEL_136:
  __break(1u);
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v165 = a3;
  v166 = a2;
  v167 = a1;
  v168 = a4;
  v173 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v226 = 0u;
  v225 = 0u;
  v221 = 0;
  v218 = 0;
  v213 = 0;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v201 = 0;
  v200 = 0;
  v196 = 0.0;
  v187 = 0;
  v186 = 0;
  v182 = 0.0;
  v181 = 0;
  v252 = a1;
  v251 = a2;
  v250 = a3;
  v171 = static AUC.rocCurve(outputs:labels:)(a2, a3);
  v169 = v171;
  v170 = v4;
  v249 = v171;
  v248 = v4;

  v247 = v171;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v172 = v174;
  v176 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v177 = v175;
  v178 = Sequence.contains(where:)();
  if (v175)
  {
    __break(1u);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    result = v153;
    v52 = v153;
    return result;
  }

  v164 = v178;

  if (v178)
  {
    v162 = 1;
    v163 = v177;
  }

  else
  {
    v246 = v170;
    v160 = v177;
    v161 = Sequence.contains(where:)();
    v162 = v161;
    v163 = 0;
  }

  v158 = v163;
  v159 = v162;

  v245 = v162 & 1;
  v244 = _allocateUninitializedArray<A>(_:)();
  if (v162)
  {
    v145 = HyperParams.maxFPRs.getter();
    v147 = MEMORY[0x25F8895B0](v145, MEMORY[0x277D83A90]);
    v146 = v147;

    if (v147 < 0)
    {
      LODWORD(v49) = 0;
      v48 = 760;
      v47 = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v239 = 0;
    v240 = v146;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v158; ; i = v142)
    {
      v142 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
      IndexingIterator.next()();
      if (v238)
      {
        break;
      }

      v141 = v142;
      v189 = 0;
      v140 = &v244;
      Array.append(_:)();
      v188 = 1065353216;
      Array.append(_:)();
    }

    v148 = v142;
  }

  else
  {
    v185 = HyperParams.maxFPRs.getter();
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    for (j = v158; ; j = 0)
    {
      v155 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd);
      IndexingIterator.next()();
      v156 = v183;
      if (v184)
      {
        break;
      }

      v154 = v156;
      v182 = v156;
      static AUC.rocAUCScore(tpr:fpr:maxFPR:)(v169, v170, v156);
      v151 = v155;
      v152 = v5;
      v153 = v155;
      v150 = 0;
      v181 = v5;
      v180 = v5;
      v149 = &v244;
      Array.append(_:)();
      v179 = 0;
      Array.append(_:)();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v148 = v155;
  }

  v131 = v148;
  v135 = static AUC.precisionRecallCurve(outputs:labels:)(v166, v165);
  v136 = v6;
  v132 = v135;
  v133 = v6;
  v134 = v7;
  v237 = v135;
  v236 = v6;
  v235 = v7;

  static AUC.prAUCScore(precison:recall:)(v135, v136);
  v137 = v8;
  v234 = v8;
  v139 = MEMORY[0x277D83A90];
  v138 = 0;
  v233 = _allocateUninitializedArray<A>(_:)();
  v232 = _allocateUninitializedArray<A>(_:)();
  if (v159)
  {
    v229 = HyperParams.targetFPRs.getter();
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    for (k = v131; ; k = v106)
    {
      v106 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd);
      IndexingIterator.next()();
      v107 = v227;
      if (v228)
      {
        break;
      }

      v105 = v106;
      v102 = 0;
      v205 = 0;
      v101 = &v233;
      Array.append(_:)();
      v104 = 1065353216;
      v204 = 1065353216;
      Array.append(_:)();
      v203 = 0;
      v103 = &v232;
      Array.append(_:)();
      v202 = 1065353216;
      Array.append(_:)();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v109 = v106;
  }

  else
  {
    v199 = HyperParams.targetFPRs.getter();
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection<>.makeIterator()();
    for (m = v131; ; m = 0)
    {
      v128 = m;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd);
      IndexingIterator.next()();
      v129 = v197;
      if (v198)
      {
        break;
      }

      v127 = v129;
      v123 = v129;
      v196 = v129;
      v124 = v128;
      v125 = static AUC.tpr(at:tpr:fpr:)(v169, v170, v129);
      v126 = v128;
      v114 = 0;
      v195 = v125;
      v113 = &v233;
      Array.append(_:)();
      v194 = 0;
      Array.append(_:)();

      v193 = v132;
      v115 = Sequence.reversed()();
      v116 = v115;

      v192 = v134;
      v117 = Sequence.reversed()();
      v118 = 0;
      v119 = static AUC.tpr(at:tpr:fpr:)(v115, v117, v129);
      v120 = v115;
      v121 = v117;
      v122 = 0;
      v110 = v119;
      v112 = 0;

      v191 = v119;
      v111 = &v232;
      Array.append(_:)();
      v190 = 0;
      Array.append(_:)();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v109 = v128;
  }

  v95 = v109;
  v9 = HyperParams.confusionMatrixNumThresholds.getter();
  v96 = static AUC.bucketConfusionMatrix(outputs:labels:numThresholds:)(v166, v165, v9);
  v97 = v10;
  v98 = v11;
  v99 = v12;
  *&v225 = v96;
  *(&v225 + 1) = v10;
  *&v226 = v11;
  *(&v226 + 1) = v12;
  v223 = v165;
  v222 = 0;
  Sequence.reduce<A>(_:_:)();
  v100 = v109;
  v94 = v224;
  if ((LODWORD(v224) >> 23) == 255)
  {
    LODWORD(v49) = 0;
    v48 = 8763;
    v47 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v94 <= -9.2234e18)
  {
    LODWORD(v49) = 0;
    v48 = 8766;
    v47 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v94 >= 9.2234e18)
  {
    LODWORD(v49) = 0;
    v48 = 8769;
    v47 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v92 = v94;
  v221 = v94;
  v93 = HyperParams.modelOutputNumberOfBuckets.getter();
  if (v93 < 0)
  {
    LODWORD(v49) = 0;
    v48 = 760;
    v47 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v89 = v100;
  v219 = 0;
  v220 = v93;

  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  v13 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v90 = v100;
  v91 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:), v167, v88, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
  v81 = v91;
  v84 = 0;

  v218 = v91;
  v216 = v165;
  MEMORY[0x25F889420](&v217, v172, v176);
  v215 = v217;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySfGGMd);
  v82 = v83;
  v85 = lazy protocol witness table accessor for type EnumeratedSequence<[Float]> and conformance EnumeratedSequence<A>();
  v86 = 0;
  v87 = Sequence.filter(_:)();
  v77 = 0;
  v214 = v87;

  v73 = v50;
  MEMORY[0x28223BE20](v50);
  v75 = &v47;
  v49 = v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_Sf7elementtGMd);
  v74 = v76;
  v16 = lazy protocol witness table accessor for type [(offset: Int, element: Float)] and conformance [A]();
  v17 = v77;
  v78 = v16;
  v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:), v75, v76, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v18);
  v79 = v17;
  v80 = v19;
  if (v17)
  {

    __break(1u);
    goto LABEL_48;
  }

  v69 = v80;
  v70 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v213 = v69;
  v211 = v165;
  MEMORY[0x25F889420](&v212, v172, v176);
  v20 = v70;
  v210 = v212;
  v21 = Sequence.filter(_:)();
  v71 = v20;
  v72 = v21;
  if (v20)
  {
LABEL_48:
    __break(1u);

    __break(1u);
    return result;
  }

  v209 = v72;

  v66 = &v47;
  MEMORY[0x28223BE20](&v47);
  *(&v47 - 2) = v22;
  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:), (&v47 - 32), v23, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);
  v67 = 0;
  v68 = v26;
  v63 = v26;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v208 = v63;
  v62 = MEMORY[0x277D83A90];
  v64 = MEMORY[0x25F8895B0](v69);
  v27 = MEMORY[0x25F8895B0](v63, v62);
  result = v64;
  v29 = v64 + v27;
  v30 = __OFADD__(v64, v27);
  v65 = v29;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x25F8895B0](v166, MEMORY[0x277D83A90]);
    if (v65 != v31)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v50[5] = 0;
      v51 = swift_allocError();
      *v46 = 103;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      result = v51;
      v52 = v51;
      return result;
    }

    v56 = static MetricsUtils.bucketize(values:buckets:)(v69, v81);
    v207 = v56;
    v57 = static MetricsUtils.bucketize(values:buckets:)(v63, v81);
    v206 = v57;
    v58 = v244;

    v59 = v233;

    v60 = v232;

    result = MEMORY[0x25F8895B0](v165, MEMORY[0x277D83A90]);
    v32 = __OFSUB__(result, v92);
    v61 = result - v92;
    if (!v32)
    {
      v55 = v67;
      v53 = v92;
      v33 = MEMORY[0x25F8895B0](v165, MEMORY[0x277D83A90]);
      v54 = v53 / v33;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      v34 = v137;
      result = v59;
      v35 = v60;
      v36 = v96;
      v37 = v97;
      v38 = v98;
      v39 = v99;
      v40 = v92;
      v41 = v61;
      v42 = v54;
      v43 = v57;
      v44 = v168;
      v45 = v56;
      *v168 = v58;
      *(v44 + 2) = v34;
      v44[2] = result;
      v44[3] = v35;
      v44[4] = v36;
      v44[5] = v37;
      v44[6] = v38;
      v44[7] = v39;
      v44[8] = v40;
      v44[9] = v41;
      *(v44 + 20) = v42;
      v44[11] = v43;
      v44[12] = v45;
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL closure #2 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)()
{
  abs<A>(_:)();
  static Float.ulpOfOne.getter();
  return v2 <= v0;
}

uint64_t closure #4 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(void *a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v10 = (*(v3 + 40))(v4);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v6 + 16))(v7);
  memset(v8, 0, sizeof(v8));
  AugmentedIntervalTree.insert(start:end:context:)(&v10, &v9, v8);
  return outlined destroy of Pregnancy?(v8);
}

BOOL closure #5 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(void *a1, int a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return a2 == (*(v3 + 40))(v4);
}

uint64_t closure #6 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(int *a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v19 = 0;
  v24 = *a1;
  v23 = a2;
  v22 = a3;
  v21 = v24;
  v20 = v24;
  v15 = v3;
  v16 = AugmentedIntervalTree.search(start:end:)(&v21, &v20);
  v17 = v3;
  if (v3)
  {
    return 0;
  }

  v8[2] = v16;
  v12 = 0;
  v19 = v16;
  v18 = v16;
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v7;
  v7[2] = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VypGGMd);
  lazy protocol witness table accessor for type [Interval<UInt32, Any>] and conformance [A]();
  v5 = v12;
  Sequence.forEach(_:)();
  v13 = v5;
  if (v5)
  {
    result = v9;
    __break(1u);
  }

  else
  {
    v8[1] = 0;
  }

  return result;
}

uint64_t closure #1 in closure #6 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)(_DWORD *a1)
{

  if (a1[1] < *a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySNys6UInt32VGGMd);
  lazy protocol witness table accessor for type [ClosedRange<UInt32>] and conformance [A]();
  lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance ClosedRange<A>();
  v2 = Sequence<>.contains(_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  result = v2;
  if ((v2 & 1) == 0)
  {
    if (a1[1] < *a1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return Array.append(_:)();
  }

  return result;
}

uint64_t closure #9 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  v3 = *(a1 + 4);
  v10 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  HIDWORD(__b[0]) = v3;
  __b[1] = v10;
  LOBYTE(__b[2]) = v4;
  __b[3] = v5;
  LOBYTE(__b[4]) = v6 & 1;
  v7 = (v4 & 1) != 0 && v10 == 1;
  *a2 = v7;
  return result;
}

void *implicit closure #1 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

uint64_t closure #10 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  v3 = *(a1 + 4);
  v10 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  HIDWORD(__b[0]) = v3;
  __b[1] = v10;
  LOBYTE(__b[2]) = v4;
  __b[3] = v5;
  LOBYTE(__b[4]) = v6 & 1;
  v7 = (v4 & 1) != 0 && v10 == 0;
  *a2 = v7;
  return result;
}

uint64_t closure #11 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  *a2 = *(a1 + 8) == 1;
  return result;
}

uint64_t closure #12 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x21uLL);
  result = a1;
  v3 = *(a1 + 32);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t closure #13 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

float closure #14 in static NightingaleDMetricsProcessor.generateCycleMetrics(hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:)@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float closure #3 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  result = v3 / HyperParams.modelOutputNumberOfBuckets.getter();
  *a2 = result;
  return result;
}

BOOL closure #6 in static NightingaleDMetricsProcessor.generateSliceMetrics(hyperParams:outputs:labels:)()
{
  abs<A>(_:)();
  static Float.ulpOfOne.getter();
  return v2 <= v0;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])()
{
}

void *outlined init with copy of (tp: [Int], tpr: [Float], fp: [Int], fpr: [Float], numberOfPregnantCycles: [Int], numberOfNonPregnantCycles: [Int], latency: [Float], latencyBuckets: [Int])(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v10 = a1[6];

  a2[6] = v10;
  v12 = a1[7];

  result = a2;
  a2[7] = v12;
  return result;
}

uint64_t outlined init with copy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = *(a1 + 2);
  v4 = a1[2];

  *(a2 + 16) = v4;
  v5 = a1[3];

  *(a2 + 24) = v5;
  v6 = a1[4];

  *(a2 + 32) = v6;
  v7 = a1[5];

  *(a2 + 40) = v7;
  v8 = a1[6];

  *(a2 + 48) = v8;
  v9 = a1[7];

  *(a2 + 56) = v9;
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  *(a2 + 80) = *(a1 + 20);
  v11 = a1[11];

  *(a2 + 88) = v11;
  v13 = a1[12];

  result = a2;
  *(a2 + 96) = v13;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of (rocScores: [Float], prScore: Float, targetTPRs: [Float], targetPrecisions: [Float], confusionMatrics: (tp: [Float], fp: [Float], tn: [Float], fn: [Float]), numPostiveSamples: Int, numNegativeSamples: Int, postiveSamplesRatio: Float, negativeSamplesOutputDistribution: [Int], positiveSamplesOutputDistribution: [Int])()
{
}

unint64_t lazy protocol witness table accessor for type [ClosedRange<UInt32>] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySNys6UInt32VGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySNys6UInt32VGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [ClosedRange<UInt32>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Int?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNys6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t Interval.start.setter(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = *(a2 + 16);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v3 - v4;
  (*(v7 + 16))();
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t Interval.end.setter(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 44), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

void *Interval.context.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 24);
  v3 = type metadata accessor for Optional();
  return outlined init with copy of B?((v2 + v5), a2, v6, v3);
}

uint64_t Interval.context.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v8 = a2;
  v10 = *(a2 + 24);
  v11 = type metadata accessor for Optional();
  v7 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v12);
  v9 = &v7 - v7;
  outlined init with copy of B?(v3, &v7 - v7, v4, v5);
  outlined assign with take of B?(v9, (v2 + *(v8 + 48)), v10, v11);
  return outlined destroy of B?(v12, v10);
}

uint64_t Interval.init(start:end:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  v39 = a1;
  v40 = a2;
  v34 = a3;
  v41 = a4;
  v35 = a5;
  v42 = a6;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v48 = a4;
  v47 = a5;
  v26 = 0;
  v27 = type metadata accessor for Optional();
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](0);
  v29 = v16 - v28;
  v30 = *(v8 - 8);
  v31 = v8 - 8;
  v32 = (v30[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v33 = v16 - v32;
  v36 = type metadata accessor for Interval();
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v36);
  v38 = v16 - v37;
  v46 = v16 - v37;
  v45 = v10;
  v44 = v11;
  v43 = v12;
  (*(*(v13 - 8) + 56))(v16 + *(v9 + 48) - v37, 1);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v20 = v30[2];
    v19 = v30 + 2;
    v20(v33, v39, v41);
    v22 = v30[4];
    v21 = v30 + 4;
    v22(v38, v33, v41);
    v20(v33, v40, v41);
    v22(v38 + *(v36 + 44), v33, v41);
    outlined init with copy of B?(v34, v29, v35, v27);
    outlined assign with take of B?(v29, (v38 + *(v36 + 48)), v35, v27);
    outlined init with copy of Interval<A, B>(v38, v25, v41, v35, v27, v36);
    outlined destroy of B?(v34, v35);
    v24 = v30[1];
    v23 = v30 + 1;
    v24(v40, v41);
    v24(v39, v41);
    return outlined destroy of Interval<A, B>(v38, v41, v35, v27, v36);
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v18 = swift_allocError();
    *v15 = 48;
    swift_willThrow();
    outlined destroy of B?(v34, v35);
    v17 = v30[1];
    v16[2] = v30 + 1;
    v17(v40, v41);
    v17(v39, v41);
    return outlined destroy of B?(v38 + *(v36 + 48), v35);
  }
}

uint64_t Interval.overlaps(with:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v14 = a2;
  v26 = 0;
  v24 = 0;
  v20 = *(a2 + 16);
  v27 = v20;
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v9 = v16[8];
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v18 = &v5 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](&v5 - v8);
  v19 = &v5 - v10;
  v26 = v11;
  v25 = *(v3 + 24);
  v24 = v2;
  v13 = v16[2];
  v12 = v16 + 2;
  v13();
  (v13)(v18, v11, v20);
  v15 = *(v14 + 32);
  v23 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v22 = v16[1];
  v21 = v16 + 1;
  v22(v18, v20);
  v22(v19, v20);
  if (v23)
  {
    (v13)(v19, v7, v20);
    (v13)(v18, v11 + *(v14 + 44), v20);
    v5 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v22(v18, v20);
    v22(v19, v20);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t Interval.description.getter(uint64_t a1)
{
  v15 = a1;
  v32 = 0;
  v20 = *(a1 + 16);
  v33 = v20;
  v11 = *(v20 - 8);
  v12 = v20 - 8;
  v9 = (v11[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v8 - v9;
  v32 = v1;
  v31 = *(MEMORY[0x28223BE20](a1) + 24);
  v13 = 2;
  v2 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = &v29;
  v29 = v2;
  v30 = v3;
  v23 = 1;
  v24 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  object = v4._object;
  MEMORY[0x25F889DE0](v4._countAndFlagsBits);

  v18 = v11[2];
  v17 = v11 + 2;
  v18(v19, v16, v20);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v22 = v11[1];
  v21 = v11 + 1;
  v22(v19, v20);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", v13, v24 & 1);
  v14 = v5._object;
  MEMORY[0x25F889DE0](v5._countAndFlagsBits);

  v18(v19, v16 + *(v15 + 44), v20);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v22(v19, v20);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("]", v23, v24 & 1);
  v25 = v6._object;
  MEMORY[0x25F889DE0](v6._countAndFlagsBits);

  v28 = v29;
  v27 = v30;

  outlined destroy of DefaultStringInterpolation();
  return MEMORY[0x25F889320](v28, v27);
}

uint64_t static Interval.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  v15 = a2;
  v24 = a3;
  v11 = a4;
  v18 = a5;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v30 = a4;
  v20 = *(a3 - 8);
  v21 = a3 - 8;
  v13 = v20[8];
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v22 = &v7 - v12;
  v14 = v12;
  MEMORY[0x28223BE20](&v7 - v12);
  v23 = &v7 - v14;
  v29 = v5;
  v28 = v15;
  v17 = v20[2];
  v16 = v20 + 2;
  v17();
  (v17)(v22, v15, v24);
  v19 = *(v18 + 8);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = v20[1];
  v25 = v20 + 1;
  v26(v22, v24);
  v26(v23, v24);
  if (v27)
  {
    v7 = type metadata accessor for Interval();
    (v17)(v23, v10 + *(v7 + 44), v24);
    (v17)(v22, v15 + *(v7 + 44), v24);
    v8 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26(v22, v24);
    v26(v23, v24);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL static Interval.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v16 = a2;
  v24 = a3;
  v12 = a4;
  v19 = a5;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v30 = a4;
  v20 = *(a3 - 8);
  v21 = a3 - 8;
  v14 = v20[8];
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v22 = &v7 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](&v7 - v13);
  v23 = &v7 - v15;
  v29 = v5;
  v28 = v16;
  v18 = v20[2];
  v17 = v20 + 2;
  v18();
  (v18)(v22, v16, v24);
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  v26 = v20[1];
  v25 = v20 + 1;
  v26(v22, v24);
  v26(v23, v24);
  if (v27)
  {
    return 1;
  }

  else
  {
    (v18)(v23, v11, v24);
    (v18)(v22, v16, v24);
    v9 = dispatch thunk of static Comparable.> infix(_:_:)();
    v26(v22, v24);
    v26(v23, v24);
    if (v9)
    {
      return 0;
    }

    else
    {
      v7 = type metadata accessor for Interval();
      (v18)(v23, v11 + *(v7 + 44), v24);
      (v18)(v22, v16 + *(v7 + 44), v24);
      v8 = dispatch thunk of static Comparable.< infix(_:_:)();
      v26(v22, v24);
      v26(v23, v24);
      return (v8 & 1) != 0;
    }
  }
}

BOOL static Interval.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v16 = a2;
  v24 = a3;
  v12 = a4;
  v19 = a5;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v30 = a4;
  v20 = *(a3 - 8);
  v21 = a3 - 8;
  v14 = v20[8];
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v22 = &v7 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](&v7 - v13);
  v23 = &v7 - v15;
  v29 = v5;
  v28 = v16;
  v18 = v20[2];
  v17 = v20 + 2;
  v18();
  (v18)(v22, v16, v24);
  v27 = dispatch thunk of static Comparable.> infix(_:_:)();
  v26 = v20[1];
  v25 = v20 + 1;
  v26(v22, v24);
  v26(v23, v24);
  if (v27)
  {
    return 1;
  }

  else
  {
    (v18)(v23, v11, v24);
    (v18)(v22, v16, v24);
    v9 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26(v22, v24);
    v26(v23, v24);
    if (v9)
    {
      return 0;
    }

    else
    {
      v7 = type metadata accessor for Interval();
      (v18)(v23, v11 + *(v7 + 44), v24);
      (v18)(v22, v16 + *(v7 + 44), v24);
      v8 = dispatch thunk of static Comparable.> infix(_:_:)();
      v26(v22, v24);
      v26(v23, v24);
      return (v8 & 1) != 0;
    }
  }
}

uint64_t AVLTreeNode.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v9 = v1 + *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for Optional();
  v2 = type metadata accessor for Interval();
  outlined init with copy of Interval<A, B>(v9, a1, v5, v6, v7, v2);
  return swift_endAccess();
}

uint64_t AVLTreeNode.interval.setter(uint64_t a1)
{
  v8 = a1;
  v3[0] = *v1;
  v9 = *(v3[0] + 80);
  v10 = *(v3[0] + 88);
  v3[1] = 0;
  v12 = type metadata accessor for Interval();
  v4 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = v3 - v4;
  v11 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v8, v5, v9, v10, v11, v12);
  v6 = v1 + *(*v1 + 104);
  v7 = &v13;
  swift_beginAccess();
  outlined assign with take of Interval<A, B>(v5, v6, v9, v10, v11, v12);
  swift_endAccess();
  return outlined destroy of Interval<A, B>(v8, v9, v10, v11, v12);
}

uint64_t AVLTreeNode.maxEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1 + *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t AVLTreeNode.maxEnd.setter(uint64_t a1)
{
  v10 = a1;
  v11 = *(*v1 + 80);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + *(*v1 + 112);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t AVLTreeNode.minStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1 + *(*v1 + 120);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t AVLTreeNode.minStart.setter(uint64_t a1)
{
  v10 = a1;
  v11 = *(*v1 + 80);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + *(*v1 + 120);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t AVLTreeNode.left.getter()
{
  v2 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AVLTreeNode.left.setter(uint64_t a1)
{

  v3 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t AVLTreeNode.right.getter()
{
  v2 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AVLTreeNode.right.setter(uint64_t a1)
{

  v3 = (v1 + *(*v1 + 136));
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t AVLTreeNode.height.getter()
{
  v2 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t AVLTreeNode.height.setter(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t AVLTreeNode.init(interval:)(uint64_t a1)
{
  v28 = a1;
  v31 = 0;
  v30 = 0;
  v13 = *v1;
  v24 = *(v13 + 80);
  v33 = v24;
  v18 = *(v24 - 8);
  v17 = v24 - 8;
  v12 = (v18[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v21 = &v12 - v12;
  v25 = *(v13 + 88);
  v32 = v25;
  v14 = 0;
  v27 = type metadata accessor for Interval();
  v15 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v16 = &v12 - v15;
  v31 = v3;
  v30 = v1;
  *(v1 + *(*v1 + 128)) = v2;
  *(v1 + *(*v1 + 136)) = v2;
  v26 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v28, v16, v24, v25, v26, v27);
  outlined init with take of Interval<A, B>(v16, v1 + *(*v1 + 104), v24, v25, v26, v27);
  v4 = *(v27 + 44);
  v20 = v18[2];
  v19 = v18 + 2;
  v20(v21, v28 + v4, v24);
  v5 = *(*v1 + 112);
  v23 = v18[4];
  v22 = v18 + 4;
  v23(v1 + v5, v21, v24);
  v20(v21, v28, v24);
  v23(v1 + *(*v1 + 120), v21, v24);
  v6 = v24;
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  *(v1 + *(*v1 + 144)) = 1;
  outlined destroy of Interval<A, B>(v10, v6, v7, v8, v9);
  return v29;
}

Swift::Void __swiftcall AVLTreeNode.updateMaxEnd()()
{
  v87 = 0;
  v86 = 0;
  v84 = 0;
  v44 = *v0;
  v30 = v0;
  v64 = v44[10];
  v88 = v64;
  v47 = 0;
  v31 = type metadata accessor for Optional();
  v33 = *(*(v31 - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0);
  v34 = v8 - v32;
  v35 = v32;
  v2 = MEMORY[0x28223BE20](v1);
  v36 = v8 - v35;
  v61 = *(v3 - 8);
  v62 = v3 - 8;
  v42 = *(v61 + 64);
  v37 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v38 = v8 - v37;
  v87 = v8 - v37;
  v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v40 = v8 - v39;
  v86 = v8 - v39;
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v57 = v8 - v41;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v63 = v8 - v43;
  v50 = v44[11];
  v85 = v50;
  v45 = v44[12];
  v52 = type metadata accessor for Interval();
  v46 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v53 = v8 - v46;
  v84 = v0;
  v48 = v0 + *(*v0 + 104);
  v49 = &v83;
  v67 = 32;
  v68 = 0;
  swift_beginAccess();
  v51 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v48, v53, v64, v50, v51, v52);
  swift_endAccess();
  v7 = *(v52 + 44);
  v55 = *(v61 + 16);
  v54 = v61 + 16;
  v55(v63, v53 + v7, v64);
  outlined destroy of Interval<A, B>(v53, v64, v50, v51, v52);
  v55(v57, v63, v64);
  v56 = v0 + *(*v0 + 112);
  v60 = &v82;
  swift_beginAccess();
  v58 = *(v61 + 40);
  v59 = v61 + 40;
  v58(v56, v57, v64);
  swift_endAccess();
  v65 = *(v61 + 8);
  v66 = v61 + 8;
  v65(v63, v64);
  v69 = (v0 + *(*v0 + 128));
  v70 = &v80;
  swift_beginAccess();
  v71 = *v69;

  swift_endAccess();
  v81 = v71;
  if (v71)
  {
    v25 = &v81;
    v28 = v81;

    outlined destroy of ContiguousArray<A1>();
    v26 = v28 + *(*v28 + 112);
    v27 = &v72;
    swift_beginAccess();
    v55(v36, v26, v64);
    swift_endAccess();

    (*(v61 + 56))(v36, 0, 1, v64);
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    (*(v61 + 56))(v36, 1, 1, v64);
  }

  v23 = *(v61 + 48);
  v24 = v61 + 48;
  if (v23(v36, 1, v64) == 1)
  {
    outlined destroy of B?(v36, v64);
  }

  else
  {
    (*(v61 + 32))(v40, v36, v64);
    v18 = v29 + *(*v29 + 112);
    v19 = &v74;
    v20 = 0;
    swift_beginAccess();
    v55(v57, v18, v64);
    swift_endAccess();
    max<A>(_:_:)();
    v65(v57, v64);
    v55(v57, v63, v64);
    v21 = v29 + *(*v29 + 112);
    v22 = &v73;
    swift_beginAccess();
    v58(v21, v57, v64);
    swift_endAccess();
    v65(v63, v64);
    v65(v40, v64);
  }

  v15 = (v29 + *(*v29 + 136));
  v16 = &v78;
  swift_beginAccess();
  v17 = *v15;

  swift_endAccess();
  v79 = v17;
  if (v17)
  {
    v11 = &v79;
    v14 = v79;

    outlined destroy of ContiguousArray<A1>();
    v12 = v14 + *(*v14 + 112);
    v13 = &v75;
    swift_beginAccess();
    v55(v34, v12, v64);
    swift_endAccess();

    (*(v61 + 56))(v34, 0, 1, v64);
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    (*(v61 + 56))(v34, 1, 1, v64);
  }

  if (v23(v34, 1, v64) == 1)
  {
    outlined destroy of B?(v34, v64);
  }

  else
  {
    (*(v61 + 32))(v38, v34, v64);
    v8[0] = v29 + *(*v29 + 112);
    v8[1] = &v77;
    v8[2] = 0;
    swift_beginAccess();
    v55(v57, v8[0], v64);
    swift_endAccess();
    max<A>(_:_:)();
    v65(v57, v64);
    v55(v57, v63, v64);
    v9 = v29 + *(*v29 + 112);
    v10 = &v76;
    swift_beginAccess();
    v58(v9, v57, v64);
    swift_endAccess();
    v65(v63, v64);
    v65(v38, v64);
  }
}

Swift::Void __swiftcall AVLTreeNode.updateMinStart()()
{
  v59 = 0;
  v57 = 0;
  v22 = *v0;
  v13 = v0;
  v42 = v22[10];
  v60 = v42;
  v25 = 0;
  v14 = type metadata accessor for Optional();
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0);
  v16 = v5 - v15;
  v39 = *(v2 - 8);
  v40 = v2 - 8;
  v20 = *(v39 + 64);
  v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1);
  v18 = v5 - v17;
  v59 = v5 - v17;
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v35 = v5 - v19;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v41 = v5 - v21;
  v28 = v22[11];
  v58 = v28;
  v23 = v22[12];
  v30 = type metadata accessor for Interval();
  v24 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v31 = v5 - v24;
  v57 = v0;
  v26 = v0 + *(*v0 + 104);
  v27 = &v56;
  v45 = 32;
  v46 = 0;
  swift_beginAccess();
  v29 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v26, v31, v42, v28, v29, v30);
  swift_endAccess();
  v33 = *(v39 + 16);
  v32 = v39 + 16;
  v33(v41, v31, v42);
  outlined destroy of Interval<A, B>(v31, v42, v28, v29, v30);
  v33(v35, v41, v42);
  v34 = v0 + *(*v0 + 120);
  v38 = &v55;
  swift_beginAccess();
  v36 = *(v39 + 40);
  v37 = v39 + 40;
  v36(v34, v35, v42);
  swift_endAccess();
  v43 = *(v39 + 8);
  v44 = v39 + 8;
  v43(v41, v42);
  v47 = (v0 + *(*v0 + 128));
  v48 = &v53;
  swift_beginAccess();
  v49 = *v47;

  swift_endAccess();
  v54 = v49;
  if (v49)
  {
    v8 = &v54;
    v11 = v54;

    outlined destroy of ContiguousArray<A1>();
    v9 = v11 + *(*v11 + 120);
    v10 = &v50;
    swift_beginAccess();
    v33(v16, v9, v42);
    swift_endAccess();

    (*(v39 + 56))(v16, 0, 1, v42);
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    (*(v39 + 56))(v16, 1, 1, v42);
  }

  if ((*(v39 + 48))(v16, 1, v42) == 1)
  {
    outlined destroy of B?(v16, v42);
  }

  else
  {
    (*(v39 + 32))(v18, v16, v42);
    v5[0] = v12 + *(*v12 + 120);
    v5[1] = &v52;
    v5[2] = 0;
    swift_beginAccess();
    v33(v35, v5[0], v42);
    swift_endAccess();
    min<A>(_:_:)();
    v43(v35, v42);
    v33(v35, v41, v42);
    v6 = v12 + *(*v12 + 120);
    v7 = &v51;
    swift_beginAccess();
    v36(v6, v35, v42);
    swift_endAccess();
    v43(v41, v42);
    v43(v18, v42);
  }
}

uint64_t AVLTreeNode.description.getter(uint64_t a1)
{
  v50 = 0;
  v10 = *v1;
  v28 = *(v10 + 80);
  v52 = v28;
  v16 = *(v28 - 8);
  v17 = v28 - 8;
  v9 = (v16[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v27 = &v9 - v9;
  v23 = *(v10 + 88);
  v51 = v23;
  v13 = 0;
  v25 = type metadata accessor for Interval();
  v11 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v26 = &v9 - v11;
  v50 = v1;
  v2 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v41 = &v48;
  v48 = v2;
  v49 = v3;
  v38 = 1;
  v39 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  object = v4._object;
  MEMORY[0x25F889DE0](v4._countAndFlagsBits);

  v14 = v32 + *(*v32 + 104);
  v15 = &v47;
  v33 = 32;
  v34 = 0;
  swift_beginAccess();
  v24 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v14, v26, v28, v23, v24, v25);
  swift_endAccess();
  v22 = v16[2];
  v21 = v16 + 2;
  v22(v27, v26, v28);
  outlined destroy of Interval<A, B>(v26, v28, v23, v24, v25);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v30 = v16[1];
  v29 = v16 + 1;
  v30(v27, v28);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", v38, v39 & 1);
  v18 = v5._object;
  MEMORY[0x25F889DE0](v5._countAndFlagsBits);

  v19 = v32 + *(*v32 + 104);
  v20 = &v46;
  swift_beginAccess();
  outlined init with copy of Interval<A, B>(v19, v26, v28, v23, v24, v25);
  swift_endAccess();
  v22(v27, v26 + *(v25 + 44), v28);
  outlined destroy of Interval<A, B>(v26, v28, v23, v24, v25);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v30(v27, v28);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("](", 2uLL, v39 & 1);
  v31 = v6._object;
  MEMORY[0x25F889DE0](v6._countAndFlagsBits);

  v35 = (v32 + *(*v32 + 144));
  v36 = &v45;
  swift_beginAccess();
  v37 = *v35;
  swift_endAccess();
  v44 = v37;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")", v38, v39 & 1);
  v40 = v7._object;
  MEMORY[0x25F889DE0](v7._countAndFlagsBits);

  v43 = v48;
  v42 = v49;

  outlined destroy of DefaultStringInterpolation();
  return MEMORY[0x25F889320](v43, v42);
}

BOOL AVLTreeNode.isLeaf.getter()
{
  v6 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  outlined destroy of ContiguousArray<A1>();

  if (v7)
  {
    v2 = 0;
  }

  else
  {
    v3 = (v5 + *(*v5 + 136));
    swift_beginAccess();
    v4 = *v3;

    swift_endAccess();
    outlined destroy of ContiguousArray<A1>();
    v2 = v4 == 0;
  }

  return v2;
}

uint64_t AVLTreeNode.deinit()
{
  v6 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  v5 = type metadata accessor for Optional();
  v1 = type metadata accessor for Interval();
  outlined destroy of Interval<A, B>(v0 + v3, v6, v4, v5, v1);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + *(*v0 + 112));
  (v7)(v0 + *(*v0 + 120), v6);
  outlined destroy of ContiguousArray<A1>();
  outlined destroy of ContiguousArray<A1>();
  return v8;
}

uint64_t AugmentedIntervalTree.root.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t AugmentedIntervalTree.root.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t AugmentedIntervalTree.numNodes.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2;
}

uint64_t AugmentedIntervalTree.numNodes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t AugmentedIntervalTree.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  swift_beginAccess();
  *(v0 + 16) = 0;

  swift_endAccess();
  return v2;
}

void *outlined assign with take of B?(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 48);
  if (v10())
  {
    if ((v10)(a1, 1, a3))
    {
      memcpy(a2, a1, *(*(a4 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, a3);
      (*(v9 + 56))(a2, 0, 1, a3);
    }
  }

  else if ((v10)(a1, 1, a3))
  {
    (*(v9 + 8))(a2, a3);
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, a3);
  }

  return a2;
}

uint64_t outlined init with copy of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 16);
  v10();
  (v10)(a2 + *(a6 + 44), a1 + *(a6 + 44), a3);
  v14 = *(a6 + 48);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(a1 + v14, 1))
  {
    memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(a2 + v14, 0, 1, a4);
  }

  return a2;
}

uint64_t outlined destroy of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a2 - 8) + 8);
  v7();
  (v7)(a1 + *(a5 + 44), a2);
  v11 = *(a5 + 48);
  v12 = *(a3 - 8);
  if (!(*(v12 + 48))(a1 + v11, 1))
  {
    (*(v12 + 8))(a1 + v11, a3);
  }

  return a1;
}

uint64_t outlined assign with take of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 40);
  v10();
  (v10)(a2 + *(a6 + 44), a1 + *(a6 + 44), a3);
  v14 = *(a6 + 48);
  v15 = *(a4 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2 + v14, 1))
  {
    if (v16(a1 + v14, 1, a4))
    {
      memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
    }

    else
    {
      (*(v15 + 32))();
      (*(v15 + 56))(a2 + v14, 0, 1, a4);
    }
  }

  else if (v16(a1 + v14, 1, a4))
  {
    (*(v15 + 8))();
    memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
  }

  else
  {
    (*(v15 + 40))(a2 + v14, a1 + v14, a4);
  }

  return a2;
}

uint64_t outlined init with take of Interval<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 32);
  v10();
  (v10)(a2 + *(a6 + 44), a1 + *(a6 + 44), a3);
  v14 = *(a6 + 48);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(a1 + v14, 1))
  {
    memcpy((a2 + v14), (a1 + v14), *(*(a5 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))();
    (*(v15 + 56))(a2 + v14, 0, 1, a4);
  }

  return a2;
}

uint64_t AugmentedIntervalTree.height.getter()
{
  swift_beginAccess();
  v7 = *(v0 + 16);

  swift_endAccess();
  if (v7)
  {

    outlined destroy of ContiguousArray<A1>();
    v3 = (v7 + *(*v7 + 144));
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    outlined destroy of ContiguousArray<A1>();
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t AugmentedIntervalTree.insert(start:end:context:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v30 = a1;
  v37 = a2;
  v41 = a3;
  v35 = v3;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v28 = *v3;
  v22 = v3;
  v46 = v28[11];
  v61 = v46;
  v23 = 0;
  v40 = type metadata accessor for Optional();
  v24 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](0);
  v44 = &v15 - v24;
  v45 = v28[10];
  v60 = v45;
  v36 = *(v45 - 8);
  v29 = v45 - 8;
  v26 = *(v36 + 64);
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v43 = &v15 - v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v49 = &v15 - v27;
  v47 = v28[12];
  v31 = type metadata accessor for Interval();
  v33 = *(*(v31 - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v49);
  v34 = &v15 - v32;
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v15 - v8;
  v59 = &v15 - v8;
  v58 = v9;
  v57 = v37;
  v56 = v41;
  v55 = v35;
  v39 = *(v36 + 16);
  v38 = v36 + 16;
  v39(v7);
  (v39)(v43, v37, v45);
  outlined init with copy of B?(v41, v44, v46, v40);
  v10 = v48;
  result = Interval.init(start:end:context:)(v49, v43, v44, v45, v46, v47, v42);
  v50 = v10;
  v51 = v10;
  if (!v10)
  {
    type metadata accessor for AVLTreeNode();
    outlined init with copy of Interval<A, B>(v42, v34, v45, v46, v40, v31);
    v20 = AVLTreeNode.__allocating_init(interval:)(v34);
    v54 = v20;
    result = swift_beginAccess();
    v12 = v35[3];
    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      v14 = v35;
      v35[3] = v21;
      swift_endAccess();
      v15 = &v53;
      v17 = 0;
      swift_beginAccess();
      v16 = v14[2];

      swift_endAccess();
      v19 = AugmentedIntervalTree.insertNode(_:_:)(v16, v20);

      v18 = &v52;
      swift_beginAccess();
      v35[2] = v19;

      swift_endAccess();

      return outlined destroy of Interval<A, B>(v42, v45, v46, v40, v31);
    }
  }

  return result;
}

uint64_t *AugmentedIntervalTree.delete(interval:)(uint64_t a1)
{
  v16 = 0;
  v13 = 0;
  v6 = *v1;
  v16 = a1;
  v15 = *(v6 + 80);
  v14 = *(v6 + 88);
  v13 = v1;
  swift_beginAccess();
  v9 = v1[2];

  swift_endAccess();
  v10 = AugmentedIntervalTree.deleteInterval(_:_:)(v9, a1);

  swift_beginAccess();
  *(v8 + 16) = v10;

  swift_endAccess();

  swift_beginAccess();
  v11 = *(v8 + 16);

  swift_endAccess();
  v12 = v11;
  result = &v12;
  outlined destroy of ContiguousArray<A1>();
  if (v11)
  {
    result = swift_beginAccess();
    v3 = *(v8 + 24);
    v5 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 24) = v5;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t AugmentedIntervalTree.overlap(start:end:)(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v67 = v2;
  v56 = MEMORY[0x277D83988];
  v57 = MEMORY[0x277D83990];
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v103 = 0;
  v99 = 0;
  v95 = 0;
  v91 = 0;
  v66 = *v2;
  v58 = v2;
  v85 = v66[11];
  v113 = v85;
  v68 = 0;
  v59 = type metadata accessor for Optional();
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v83 = &v13 - v60;
  v84 = v66[10];
  v112 = v84;
  v74 = *(v84 - 8);
  v75 = v84 - 8;
  v64 = v74[8];
  v61 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v62 = &v13 - v61;
  v63 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v82 = &v13 - v63;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v81 = &v13 - v65;
  v86 = v66[12];
  v69 = type metadata accessor for Interval();
  v71 = *(*(v69 - 8) + 64);
  v70 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v68);
  v72 = &v13 - v70;
  MEMORY[0x28223BE20](v6);
  v80 = &v13 - v7;
  v111 = &v13 - v7;
  v110 = v76;
  v109 = v77;
  v108 = v8;
  v73 = type metadata accessor for AVLTreeNode();
  v107 = Array.init()();
  v79 = v74[2];
  v78 = v74 + 2;
  v79(v81, v76, v84);
  v79(v82, v77, v84);
  (*(*(v85 - 8) + 56))(v83, 1);
  v9 = v87;
  Interval.init(start:end:context:)(v81, v82, v83, v84, v85, v86, v80);
  v88 = v9;
  v89 = v9;
  if (v9)
  {
    v13 = v89;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v12 & 1;
  }

  else
  {
    v54 = &v106;
    swift_beginAccess();
    v55 = v67[2];

    swift_endAccess();
    if (v55)
    {
      v53 = v55;
      v52 = v55;
      v91 = v55;

      v51 = &v90;
      v90 = v52;
      type metadata accessor for Array();
      Array.append(_:)();
    }

    for (i = v88; ; i = v46)
    {
      v46 = i;
      v48 = v107;

      v105 = v48;
      v47 = type metadata accessor for Array();
      swift_getWitnessTable();
      v49 = Collection.isEmpty.getter();

      if (v49)
      {
        break;
      }

      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      v10 = v72;
      v43 = v104;
      v103 = v104;
      v41 = v104 + *(*v104 + 104);
      v42 = &v102;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v41, v10, v84, v85, v59, v69);
      swift_endAccess();
      v44 = Interval.overlaps(with:)(v80, v69);
      outlined destroy of Interval<A, B>(v72, v84, v85, v59, v69);
      v45 = v43;
      if (v44)
      {

        outlined destroy of Interval<A, B>(v80, v84, v85, v59, v69);
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v40 = 1;
        return v40 & 1;
      }

      v37 = (v43 + *(*v43 + 128));
      v38 = &v101;
      swift_beginAccess();
      v39 = *v37;

      swift_endAccess();
      if (v39)
      {
        v36 = v39;
        v30 = v39;
        v95 = v39;
        v31 = v36 + *(*v36 + 112);
        v32 = &v94;
        swift_beginAccess();
        v79(v62, v31, v84);
        swift_endAccess();
        v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v33 = v74[1];
        v34 = v74 + 1;
        v33(v62, v84);
        if (v35)
        {
          v27 = v30 + *(*v30 + 120);
          v28 = &v93;
          swift_beginAccess();
          v79(v62, v27, v84);
          swift_endAccess();
          v29 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v33(v62, v84);
          if (v29)
          {

            v92 = v30;
            Array.append(_:)();
          }
        }
      }

      v24 = (v43 + *(*v43 + 136));
      v25 = &v100;
      swift_beginAccess();
      v26 = *v24;

      swift_endAccess();
      if (v26)
      {
        v23 = v26;
        v17 = v26;
        v99 = v26;
        v18 = v23 + *(*v23 + 112);
        v19 = &v98;
        swift_beginAccess();
        v79(v62, v18, v84);
        swift_endAccess();
        v22 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v20 = v74[1];
        v21 = v74 + 1;
        v20(v62, v84);
        if (v22)
        {
          v14 = v17 + *(*v17 + 120);
          v15 = &v97;
          swift_beginAccess();
          v79(v62, v14, v84);
          swift_endAccess();
          v16 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v20(v62, v84);
          if (v16)
          {

            v96 = v17;
            Array.append(_:)();
          }
        }
      }
    }

    outlined destroy of Interval<A, B>(v80, v84, v85, v59, v69);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v40 = 0;
    return v40 & 1;
  }
}

uint64_t AugmentedIntervalTree.search(start:end:)(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v78 = a2;
  v69 = v2;
  v58 = MEMORY[0x277D83988];
  v59 = MEMORY[0x277D83990];
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v104 = 0;
  v100 = 0;
  v96 = 0;
  v92 = 0;
  v68 = *v2;
  v60 = v2;
  v86 = v68[11];
  v115 = v86;
  v70 = 0;
  v61 = type metadata accessor for Optional();
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v84 = v12 - v62;
  v85 = v68[10];
  v114 = v85;
  v75 = *(v85 - 8);
  v76 = v85 - 8;
  v66 = v75[8];
  v63 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v64 = v12 - v63;
  v65 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v83 = v12 - v65;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v82 = v12 - v67;
  v87 = v68[12];
  v71 = type metadata accessor for Interval();
  v73 = *(*(v71 - 8) + 64);
  v72 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v70);
  v74 = v12 - v72;
  MEMORY[0x28223BE20](v6);
  v81 = v12 - v7;
  v113 = v12 - v7;
  v112 = v77;
  v111 = v78;
  v110 = v8;
  v109 = _allocateUninitializedArray<A>(_:)();
  v80 = v75[2];
  v79 = v75 + 2;
  v80(v82, v77, v85);
  v80(v83, v78, v85);
  (*(*(v86 - 8) + 56))(v84, 1);
  v9 = v88;
  Interval.init(start:end:context:)(v82, v83, v84, v85, v86, v87, v81);
  v89 = v9;
  v90 = v9;
  if (v9)
  {
    v12[0] = v90;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v47;
  }

  else
  {
    v55 = type metadata accessor for AVLTreeNode();
    v108 = Array.init()();
    v56 = &v107;
    swift_beginAccess();
    v57 = v69[2];

    swift_endAccess();
    if (v57)
    {
      v54 = v57;
      v53 = v57;
      v92 = v57;

      v52 = &v91;
      v91 = v53;
      type metadata accessor for Array();
      Array.append(_:)();
    }

    for (i = v89; ; i = v46)
    {
      v46 = i;
      v49 = v108;

      v106 = v49;
      v48 = type metadata accessor for Array();
      swift_getWitnessTable();
      v50 = Collection.isEmpty.getter();

      if (v50)
      {
        break;
      }

      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      v10 = v74;
      v42 = v105;
      v104 = v105;
      v43 = v105 + *(*v105 + 104);
      v44 = &v103;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v43, v10, v85, v86, v61, v71);
      swift_endAccess();
      v45 = Interval.overlaps(with:)(v81, v71);
      outlined destroy of Interval<A, B>(v74, v85, v86, v61, v71);
      if (v45)
      {
        v40 = v42 + *(*v42 + 104);
        v41 = v93;
        swift_beginAccess();
        outlined init with copy of Interval<A, B>(v40, v74, v85, v86, v61, v71);
        swift_endAccess();
        type metadata accessor for Array();
        Array.append(_:)();
      }

      v37 = (v42 + *(*v42 + 128));
      v38 = &v102;
      swift_beginAccess();
      v39 = *v37;

      swift_endAccess();
      if (v39)
      {
        v36 = v39;
        v30 = v39;
        v96 = v39;
        v31 = v36 + *(*v36 + 112);
        v32 = &v95;
        swift_beginAccess();
        v80(v64, v31, v85);
        swift_endAccess();
        v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v33 = v75[1];
        v34 = v75 + 1;
        v33(v64, v85);
        if (v35)
        {
          v27 = v30 + *(*v30 + 120);
          v28 = &v94;
          swift_beginAccess();
          v80(v64, v27, v85);
          swift_endAccess();
          v29 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v33(v64, v85);
          if (v29)
          {

            v93[3] = v30;
            Array.append(_:)();
          }
        }
      }

      v24 = (v42 + *(*v42 + 136));
      v25 = &v101;
      swift_beginAccess();
      v26 = *v24;

      swift_endAccess();
      if (v26)
      {
        v23 = v26;
        v17 = v26;
        v100 = v26;
        v18 = v23 + *(*v23 + 112);
        v19 = &v99;
        swift_beginAccess();
        v80(v64, v18, v85);
        swift_endAccess();
        v22 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v20 = v75[1];
        v21 = v75 + 1;
        v20(v64, v85);
        if (v22)
        {
          v14 = v17 + *(*v17 + 120);
          v15 = &v98;
          swift_beginAccess();
          v80(v64, v14, v85);
          swift_endAccess();
          v16 = dispatch thunk of static Comparable.<= infix(_:_:)();
          v20(v64, v85);
          if (v16)
          {

            v97 = v17;
            Array.append(_:)();
          }
        }
      }
    }

    v12[1] = &v109;
    v13 = v109;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of Interval<A, B>(v81, v85, v86, v61, v71);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v13;
  }
}

uint64_t AugmentedIntervalTree.description.getter()
{
  v84 = 0;
  v77 = MEMORY[0x277D83988];
  v78 = MEMORY[0x277D83990];
  v79 = &protocol conformance descriptor for Interval<A, B>;
  v117 = 0;
  v115 = 0;
  v114._countAndFlagsBits = 0;
  v114._object = 0;
  v113 = 0;
  v109 = 0;
  v108 = 0;
  v107._countAndFlagsBits = 0;
  v107._object = 0;
  v105 = 0;
  v106 = 0;
  v95 = 0;
  v92 = 0;
  v82 = *v0;
  v80 = v82[10];
  v119 = v80;
  v81 = v82[11];
  v118 = v81;
  v83 = v82[12];
  v85 = type metadata accessor for Interval();
  v86 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v87 = &v20 - v86;
  v117 = v0;
  v88 = &v116;
  swift_beginAccess();
  v89 = v0[2];

  swift_endAccess();
  if (!v89)
  {
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Empty tree", 0xAuLL, 1);
    return v22._countAndFlagsBits;
  }

  v76 = v89;
  v73 = v89;
  v115 = v89;
  v71 = 0;
  v114 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  type metadata accessor for AVLTreeNode();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = _allocateUninitializedArray<A>(_:)();
  v74 = v1;

  v2 = v72;
  v3 = v74;
  *v74 = v73;
  v3[1] = 0;
  _finalizeUninitializedArray<A>(_:)();
  v113 = v2;
  while (1)
  {
    v69 = v113;

    v112 = v69;
    v68 = type metadata accessor for Array();
    swift_getWitnessTable();
    v70 = Collection.isEmpty.getter();

    if (v70)
    {
      v20 = &v114;
      v21 = v114;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of DefaultStringInterpolation();

      v22 = v21;
      return v22._countAndFlagsBits;
    }

    v64 = &v110;
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v65 = v110;
    v66 = v111;
    v109 = v110;
    v108 = v111;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("    ", 4uLL, 1);
    v67 = String.init(repeating:count:)(v4, v66);
    v107 = v67;
    if (AVLTreeNode.isLeaf.getter())
    {
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("└──", 9uLL, 0);
      object = v7._object;
      countAndFlagsBits = v7._countAndFlagsBits;
    }

    else
    {
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("├──", 9uLL, 0);
      object = v8._object;
      countAndFlagsBits = v8._countAndFlagsBits;
    }

    v62 = countAndFlagsBits;
    v63 = object;
    v36 = object;
    v35 = countAndFlagsBits;
    v105 = countAndFlagsBits;
    v106 = object;
    v9 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v52 = &v103;
    v103 = v9;
    v104 = v10;
    v33 = "";
    v41 = 0;
    v50 = 1;
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v32 = v11._object;
    MEMORY[0x25F889DE0](v11._countAndFlagsBits);

    v102 = v67;
    v37 = MEMORY[0x277D837D0];
    v38 = MEMORY[0x277D83838];
    v39 = MEMORY[0x277D83830];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v41, v50 & 1);
    v34 = v12._object;
    MEMORY[0x25F889DE0](v12._countAndFlagsBits);

    v100 = v35;
    v101 = v36;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, v50 & 1);
    v40 = v13._object;
    MEMORY[0x25F889DE0](v13._countAndFlagsBits);

    v42 = v65 + *(*v65 + 104);
    v43 = &v99;
    v57 = 32;
    v58 = 0;
    swift_beginAccess();
    v44 = type metadata accessor for Optional();
    outlined init with copy of Interval<A, B>(v42, v87, v80, v81, v44, v85);
    swift_endAccess();
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of Interval<A, B>(v87, v80, v81, v44, v85);
    v49 = 2;
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" (", 2uLL, v50 & 1);
    v45 = v14._object;
    MEMORY[0x25F889DE0](v14._countAndFlagsBits);

    v46 = (v65 + *(*v65 + 144));
    v47 = &v98;
    swift_beginAccess();
    v48 = *v46;
    swift_endAccess();
    v97[3] = v48;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")\n", v49, v50 & 1);
    v51 = v15._object;
    MEMORY[0x25F889DE0](v15._countAndFlagsBits);

    v54 = v103;
    v53 = v104;

    outlined destroy of DefaultStringInterpolation();
    v55 = MEMORY[0x25F889320](v54, v53);
    v56 = v16;
    static String.+= infix(_:_:)();

    v59 = (v65 + *(*v65 + 128));
    v60 = v97;
    swift_beginAccess();
    v61 = *v59;

    swift_endAccess();
    if (v61)
    {
      v31 = v61;
      v29 = v61;
      v92 = v61;

      v30 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_28;
      }

      v90 = v29;
      v91 = v30;
      Array.append(_:)();
    }

    v26 = (v65 + *(*v65 + 136));
    v27 = &v96;
    swift_beginAccess();
    v28 = *v26;

    swift_endAccess();
    if (v28)
    {
      break;
    }

LABEL_23:
  }

  v25 = v28;
  v23 = v28;
  v95 = v28;

  v24 = v66 + 1;
  if (!__OFADD__(v66, 1))
  {
    v93 = v23;
    v94 = v24;
    Array.append(_:)();

    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.insertNode(_:_:)(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v106 = a2;
  v99 = "Fatal error";
  v100 = "Unexpectedly found nil while unwrapping an Optional value";
  v101 = "NightingaleTraining/AugmentedTree.swift";
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v139 = 0;
  v129 = 0;
  v104 = *v2;
  v102 = v104[10];
  v145 = v102;
  v103 = v104[11];
  v144 = v103;
  v105 = v104[12];
  v107 = type metadata accessor for Interval();
  v108 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v116);
  v109 = v13 - v108;
  v110 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v111 = v13 - v110;
  v112 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v113 = v13 - v112;
  v114 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v115 = v13 - v114;
  v143 = v9;
  v142 = v10;
  v141 = v2;

  if (!v116)
  {
    v13[0] = v106 + *(*v106 + 144);
    v13[1] = &v140;
    swift_beginAccess();
    *v13[0] = 1;
    swift_endAccess();

    return v106;
  }

  v98 = v116;
  v91 = v116;
  v139 = v116;
  v89 = v106 + *(*v106 + 104);
  v90 = &v138;
  v92 = 32;
  v93 = 0;
  swift_beginAccess();
  v96 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v89, v115, v102, v103, v96, v107);
  swift_endAccess();
  v94 = v91 + *(*v91 + 104);
  v95 = &v137;
  swift_beginAccess();
  outlined init with copy of Interval<A, B>(v94, v113, v102, v103, v96, v107);
  swift_endAccess();
  v97 = static Interval.< infix(_:_:)(v115, v113, v102, v103, v105);
  outlined destroy of Interval<A, B>(v113, v102, v103, v96, v107);
  outlined destroy of Interval<A, B>(v115, v102, v103, v96, v107);
  if (v97)
  {
    v82 = (v91 + *(*v91 + 128));
    v83 = &v118;
    v85 = 0;
    swift_beginAccess();
    v84 = *v82;

    swift_endAccess();
    v88 = AugmentedIntervalTree.insertNode(_:_:)(v84, v106);

    v86 = (v91 + *(*v91 + 128));
    v87 = &v117;
    swift_beginAccess();
    *v86 = v88;
  }

  else
  {
    v75 = (v91 + *(*v91 + 136));
    v76 = &v136;
    v78 = 0;
    swift_beginAccess();
    v77 = *v75;

    swift_endAccess();
    v81 = AugmentedIntervalTree.insertNode(_:_:)(v77, v106);

    v79 = (v91 + *(*v91 + 136));
    v80 = &v135;
    swift_beginAccess();
    *v79 = v81;
  }

  swift_endAccess();

  v63 = (v91 + *(*v91 + 128));
  v64 = &v133;
  v67 = 32;
  v68 = 0;
  swift_beginAccess();
  v65 = *v63;

  swift_endAccess();
  v66 = AugmentedIntervalTree.height(_:)(v65);

  v73 = &v132;
  v132 = v66;
  v69 = (v91 + *(*v91 + 136));
  v70 = &v131;
  swift_beginAccess();
  v71 = *v69;

  swift_endAccess();
  v72 = AugmentedIntervalTree.height(_:)(v71);

  v130[3] = v72;
  result = max<A>(_:_:)();
  v74 = v134 + 1;
  if (!__OFADD__(v134, 1))
  {
    v59 = (v91 + *(*v91 + 144));
    v60 = v130;
    swift_beginAccess();
    *v59 = v74;
    swift_endAccess();
    AVLTreeNode.updateMaxEnd()();
    AVLTreeNode.updateMinStart()();

    v61 = v91;
    v62 = AugmentedIntervalTree.balance(_:)(v91);

    v129 = v62;
    if (v62 <= 1)
    {
      if (v62 < -1)
      {
        v29 = v106 + *(*v106 + 104);
        v30 = &v128;
        v31 = 32;
        v32 = 0;
        swift_beginAccess();
        outlined init with copy of Interval<A, B>(v29, v109, v102, v103, v96, v107);
        swift_endAccess();
        v33 = (v91 + *(*v91 + 136));
        v34 = &v127;
        swift_beginAccess();
        v35 = *v33;

        swift_endAccess();
        if (v35)
        {
          v28 = v35;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v26 = v28;
        v24 = v28 + *(*v28 + 104);
        v25 = &v126;
        swift_beginAccess();
        outlined init with copy of Interval<A, B>(v24, v115, v102, v103, v96, v107);
        swift_endAccess();

        v27 = static Interval.< infix(_:_:)(v109, v115, v102, v103, v105);
        outlined destroy of Interval<A, B>(v115, v102, v103, v96, v107);
        outlined destroy of Interval<A, B>(v109, v102, v103, v96, v107);
        if (v27)
        {
          v21 = (v91 + *(*v91 + 136));
          v22 = &v125;
          swift_beginAccess();
          v23 = *v21;

          swift_endAccess();
          if (v23)
          {
            v20 = v23;
          }

          else
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v15 = v20;
          v18 = AugmentedIntervalTree.rotateRight(_:)(v20);

          v16 = (v91 + *(*v91 + 136));
          v17 = &v124;
          swift_beginAccess();
          *v16 = v18;

          swift_endAccess();

          v19 = AugmentedIntervalTree.rotateLeft(_:)(v91);

          return v19;
        }

        else
        {
          v14 = AugmentedIntervalTree.rotateLeft(_:)(v91);

          return v14;
        }
      }

      else
      {
        return v91;
      }
    }

    else
    {
      v52 = v106 + *(*v106 + 104);
      v53 = &v123;
      v54 = 32;
      v55 = 0;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v52, v111, v102, v103, v96, v107);
      swift_endAccess();
      v56 = (v91 + *(*v91 + 128));
      v57 = &v122;
      swift_beginAccess();
      v58 = *v56;

      swift_endAccess();
      if (v58)
      {
        v51 = v58;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v49 = v51;
      v47 = v51 + *(*v51 + 104);
      v48 = &v121;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v47, v115, v102, v103, v96, v107);
      swift_endAccess();

      v50 = static Interval.< infix(_:_:)(v111, v115, v102, v103, v105);
      outlined destroy of Interval<A, B>(v115, v102, v103, v96, v107);
      outlined destroy of Interval<A, B>(v111, v102, v103, v96, v107);
      if (v50)
      {
        v45 = AugmentedIntervalTree.rotateRight(_:)(v91);

        return v45;
      }

      else
      {
        v42 = (v91 + *(*v91 + 128));
        v43 = &v120;
        swift_beginAccess();
        v44 = *v42;

        swift_endAccess();
        if (v44)
        {
          v41 = v44;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v36 = v41;
        v39 = AugmentedIntervalTree.rotateLeft(_:)(v41);

        v37 = (v91 + *(*v91 + 128));
        v38 = &v119;
        swift_beginAccess();
        *v37 = v39;

        swift_endAccess();

        v40 = AugmentedIntervalTree.rotateRight(_:)(v91);

        return v40;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.rotateLeft(_:)(uint64_t a1)
{
  v20 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v21 = *v20;

  swift_endAccess();
  if (v21)
  {
    v18 = v21;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v10 = (v18 + *(*v18 + 128));
  swift_beginAccess();
  v13 = *v10;

  swift_endAccess();

  v11 = (v18 + *(*v18 + 128));
  swift_beginAccess();
  *v11 = a1;

  swift_endAccess();

  v12 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  *v12 = v13;

  swift_endAccess();

  v14 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v15 = *v14;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v15);

  v16 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v17 = *v16;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v17);

  result = max<A>(_:_:)();
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = (a1 + *(*a1 + 144));
    swift_beginAccess();
    *v5 = v23 + 1;
    swift_endAccess();
    v6 = (v18 + *(*v18 + 128));
    swift_beginAccess();
    v7 = *v6;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v7);

    v8 = (v18 + *(*v18 + 136));
    swift_beginAccess();
    v9 = *v8;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v9);

    result = max<A>(_:_:)();
    if (!__OFADD__(v22, 1))
    {
      v4 = (v18 + *(*v18 + 144));
      swift_beginAccess();
      *v4 = v22 + 1;
      swift_endAccess();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMinStart()();

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.rotateRight(_:)(uint64_t a1)
{
  v20 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v21 = *v20;

  swift_endAccess();
  if (v21)
  {
    v18 = v21;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v10 = (v18 + *(*v18 + 136));
  swift_beginAccess();
  v13 = *v10;

  swift_endAccess();

  v11 = (v18 + *(*v18 + 136));
  swift_beginAccess();
  *v11 = a1;

  swift_endAccess();

  v12 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  *v12 = v13;

  swift_endAccess();

  v14 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v15 = *v14;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v15);

  v16 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v17 = *v16;

  swift_endAccess();
  AugmentedIntervalTree.height(_:)(v17);

  result = max<A>(_:_:)();
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = (a1 + *(*a1 + 144));
    swift_beginAccess();
    *v5 = v23 + 1;
    swift_endAccess();
    v6 = (v18 + *(*v18 + 128));
    swift_beginAccess();
    v7 = *v6;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v7);

    v8 = (v18 + *(*v18 + 136));
    swift_beginAccess();
    v9 = *v8;

    swift_endAccess();
    AugmentedIntervalTree.height(_:)(v9);

    result = max<A>(_:_:)();
    if (!__OFADD__(v22, 1))
    {
      v4 = (v18 + *(*v18 + 144));
      swift_beginAccess();
      *v4 = v22 + 1;
      swift_endAccess();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMaxEnd()();
      AVLTreeNode.updateMinStart()();

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.balance(_:)(uint64_t a1)
{

  if (a1)
  {
    v8 = (a1 + *(*a1 + 128));
    swift_beginAccess();
    v9 = *v8;

    swift_endAccess();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v7 = AugmentedIntervalTree.height(_:)(v10);

  if (a1)
  {
    v4 = (a1 + *(*a1 + 136));
    swift_beginAccess();
    v5 = *v4;

    swift_endAccess();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3 = AugmentedIntervalTree.height(_:)(v6);

  result = v3;
  if (!__OFSUB__(v7, v3))
  {
    return v7 - v3;
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.height(_:)(uint64_t a1)
{

  if (a1)
  {
    v3 = (a1 + *(*a1 + 144));
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t AugmentedIntervalTree.deleteInterval(_:_:)(uint64_t a1, uint64_t a2)
{
  v152 = a1;
  v146 = a2;
  v132 = "Fatal error";
  v133 = "Unexpectedly found nil while unwrapping an Optional value";
  v134 = "NightingaleTraining/AugmentedTree.swift";
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v183 = 0;
  v170 = 0;
  v157 = 0;
  v144 = *v2;
  v135 = v144[10];
  v196 = v135;
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  v139 = *(v136 + 64);
  v138 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v140 = v9 - v138;
  v141 = v138;
  MEMORY[0x28223BE20](v9 - v138);
  v142 = v9 - v141;
  v143 = v144[11];
  v195 = v143;
  v145 = v144[12];
  v147 = type metadata accessor for Interval();
  v148 = (*(*(v147 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v152);
  v149 = v9 - v148;
  v150 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v151 = v9 - v150;
  v194 = v5;
  v193 = v6;
  v192 = v2;

  if (!v152)
  {
    return 0;
  }

  v131 = v152;
  v126 = v152;
  v191 = v152;
  v127 = v131 + *(*v131 + 104);
  v128 = &v190;
  swift_beginAccess();
  v129 = type metadata accessor for Optional();
  outlined init with copy of Interval<A, B>(v127, v151, v135, v143, v129, v147);
  swift_endAccess();
  v130 = static Interval.< infix(_:_:)(v146, v151, v135, v143, v145);
  outlined destroy of Interval<A, B>(v151, v135, v143, v129, v147);
  if (v130)
  {
    v119 = (v126 + *(*v126 + 128));
    v120 = &v154;
    v122 = 0;
    swift_beginAccess();
    v121 = *v119;

    swift_endAccess();
    v125 = AugmentedIntervalTree.deleteInterval(_:_:)(v121, v146);

    v123 = (v126 + *(*v126 + 128));
    v124 = &v153;
    swift_beginAccess();
    *v123 = v125;

    swift_endAccess();
  }

  else
  {
    v116 = v126 + *(*v126 + 104);
    v117 = &v189;
    swift_beginAccess();
    outlined init with copy of Interval<A, B>(v116, v151, v135, v143, v129, v147);
    swift_endAccess();
    v118 = static Interval.> infix(_:_:)(v146, v151, v135, v143, v145);
    outlined destroy of Interval<A, B>(v151, v135, v143, v129, v147);
    if (v118)
    {
      v109 = (v126 + *(*v126 + 136));
      v110 = v156;
      v112 = 0;
      swift_beginAccess();
      v111 = *v109;

      swift_endAccess();
      v115 = AugmentedIntervalTree.deleteInterval(_:_:)(v111, v146);

      v113 = (v126 + *(*v126 + 136));
      v114 = &v155;
      swift_beginAccess();
      *v113 = v115;

      swift_endAccess();
    }

    else
    {
      v106 = (v126 + *(*v126 + 128));
      v107 = &v188;
      swift_beginAccess();
      v108 = *v106;

      swift_endAccess();
      v187 = v108;
      v105 = v108 == 0;
      v104 = v105;
      outlined destroy of ContiguousArray<A1>();

      if (v104)
      {
        v103 = 1;
      }

      else
      {
        v100 = (v126 + *(*v126 + 136));
        v101 = &v186;
        swift_beginAccess();
        v102 = *v100;

        swift_endAccess();
        v185 = v102;
        v99 = v102 == 0;
        v98 = v99;
        outlined destroy of ContiguousArray<A1>();
        v103 = v98;
      }

      v97 = v103;

      if (v97)
      {
        v94 = (v126 + *(*v126 + 128));
        v95 = &v160;
        swift_beginAccess();
        v96 = *v94;

        swift_endAccess();
        v159 = v96;

        if (v159)
        {
          v161 = v159;
        }

        else
        {
          v91 = (v126 + *(*v126 + 136));
          v92 = &v158;
          swift_beginAccess();
          v93 = *v91;

          swift_endAccess();
          v161 = v93;
          if (v159)
          {
            outlined destroy of ContiguousArray<A1>();
          }
        }

        v90 = v161;
        v157 = v161;
        v156[3] = v161;
        if (v161 == 0)
        {

          return 0;
        }

        else
        {

          return v90;
        }
      }

      v85 = (v126 + *(*v126 + 136));
      v86 = &v184;
      swift_beginAccess();
      v87 = *v85;

      swift_endAccess();
      if (v87)
      {
        v84 = v87;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v61 = v84;
      v83 = AugmentedIntervalTree.minValueNode(_:)(v84);

      v183 = v83;
      v62 = v183 + *(*v183 + 104);
      v63 = &v182;
      v74 = 32;
      v79 = 0;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v62, v151, v135, v143, v129, v147);
      swift_endAccess();
      outlined init with copy of Interval<A, B>(v151, v149, v135, v143, v129, v147);
      v64 = v126 + *(*v126 + 104);
      v65 = &v181;
      v78 = 33;
      swift_beginAccess();
      outlined assign with take of Interval<A, B>(v149, v64, v135, v143, v129, v147);
      swift_endAccess();
      outlined destroy of Interval<A, B>(v151, v135, v143, v129, v147);
      v66 = v83 + *(*v83 + 112);
      v67 = &v180;
      swift_beginAccess();
      v69 = *(v136 + 16);
      v68 = v136 + 16;
      v69(v142, v66, v135);
      swift_endAccess();
      v69(v140, v142, v135);
      v70 = v126 + *(*v126 + 112);
      v71 = &v179;
      swift_beginAccess();
      (*(v136 + 40))(v70, v140, v135);
      swift_endAccess();
      (*(v136 + 8))(v142, v135);
      v72 = (v126 + *(*v126 + 136));
      v73 = &v178;
      swift_beginAccess();
      v77 = *v72;

      swift_endAccess();
      v75 = v83 + *(*v83 + 104);
      v76 = &v177;
      swift_beginAccess();
      outlined init with copy of Interval<A, B>(v75, v151, v135, v143, v129, v147);
      swift_endAccess();
      v82 = AugmentedIntervalTree.deleteInterval(_:_:)(v77, v151);
      outlined destroy of Interval<A, B>(v151, v135, v143, v129, v147);

      v80 = (v126 + *(*v126 + 136));
      v81 = &v176;
      swift_beginAccess();
      *v80 = v82;

      swift_endAccess();
    }
  }

  v49 = (v126 + *(*v126 + 128));
  v50 = &v174;
  v53 = 32;
  v54 = 0;
  swift_beginAccess();
  v51 = *v49;

  swift_endAccess();
  v52 = AugmentedIntervalTree.height(_:)(v51);

  v59 = &v173;
  v173 = v52;
  v55 = (v126 + *(*v126 + 136));
  v56 = &v172;
  swift_beginAccess();
  v57 = *v55;

  swift_endAccess();
  v58 = AugmentedIntervalTree.height(_:)(v57);

  v171[3] = v58;
  result = max<A>(_:_:)();
  v60 = v175 + 1;
  if (!__OFADD__(v175, 1))
  {
    v45 = (v126 + *(*v126 + 144));
    v46 = v171;
    swift_beginAccess();
    *v45 = v60;
    swift_endAccess();
    AVLTreeNode.updateMaxEnd()();
    AVLTreeNode.updateMinStart()();

    v47 = v126;
    v48 = AugmentedIntervalTree.balance(_:)(v126);

    v170 = v48;
    if (v48 <= 1 || (v41 = (v126 + *(*v126 + 128)), v42 = &v162, swift_beginAccess(), v43 = *v41, , swift_endAccess(), v44 = AugmentedIntervalTree.balance(_:)(v43), , v44 < 0))
    {
      if (v48 > 1 && (v36 = (v126 + *(*v126 + 128)), v37 = &v165, swift_beginAccess(), v38 = *v36, , swift_endAccess(), v39 = AugmentedIntervalTree.balance(_:)(v38), , v39 < 0))
      {
        v33 = (v126 + *(*v126 + 128));
        v34 = &v164;
        swift_beginAccess();
        v35 = *v33;

        swift_endAccess();
        if (v35)
        {
          v32 = v35;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v27 = v32;
        v30 = AugmentedIntervalTree.rotateLeft(_:)(v32);

        v28 = (v126 + *(*v126 + 128));
        v29 = &v163;
        swift_beginAccess();
        *v28 = v30;

        swift_endAccess();

        v31 = AugmentedIntervalTree.rotateRight(_:)(v126);

        return v31;
      }

      else if (v48 >= -1 || (v23 = (v126 + *(*v126 + 136)), v24 = &v166, swift_beginAccess(), v25 = *v23, , swift_endAccess(), v26 = AugmentedIntervalTree.balance(_:)(v25), , v26 > 0))
      {
        if (v48 >= -1)
        {
          return v126;
        }

        v18 = (v126 + *(*v126 + 136));
        v19 = &v169;
        swift_beginAccess();
        v20 = *v18;

        swift_endAccess();
        v21 = AugmentedIntervalTree.balance(_:)(v20);

        if (v21 <= 0)
        {
          return v126;
        }

        else
        {
          v15 = (v126 + *(*v126 + 136));
          v16 = &v168;
          swift_beginAccess();
          v17 = *v15;

          swift_endAccess();
          if (v17)
          {
            v14 = v17;
          }

          else
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v9[1] = v14;
          v12 = AugmentedIntervalTree.rotateRight(_:)(v14);

          v10 = (v126 + *(*v126 + 136));
          v11 = &v167;
          swift_beginAccess();
          *v10 = v12;

          swift_endAccess();

          v13 = AugmentedIntervalTree.rotateLeft(_:)(v126);

          return v13;
        }
      }

      else
      {
        v22 = AugmentedIntervalTree.rotateLeft(_:)(v126);

        return v22;
      }
    }

    else
    {
      v40 = AugmentedIntervalTree.rotateRight(_:)(v126);

      return v40;
    }
  }

  __break(1u);
  return result;
}

uint64_t AugmentedIntervalTree.minValueNode(_:)(uint64_t a1)
{

  v10 = a1;
  while (1)
  {
    if (v10)
    {

      v6 = (v10 + *(*v10 + 128));
      swift_beginAccess();
      v7 = *v6;

      swift_endAccess();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    outlined destroy of ContiguousArray<A1>();
    if (!v8)
    {
      break;
    }

    if (v10)
    {

      v3 = (v10 + *(*v10 + 128));
      swift_beginAccess();
      v4 = *v3;

      swift_endAccess();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
  }

  if (v10)
  {
    v2 = v10;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of ContiguousArray<A1>();
  return v2;
}

uint64_t AugmentedIntervalTree.allIntervals()()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  v3 = AugmentedIntervalTree.allIntervals(root:)(v2);

  return v3;
}

uint64_t AugmentedIntervalTree.allIntervals(root:)(uint64_t a1)
{
  v36 = a1;
  v28 = MEMORY[0x277D83970];
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v31 = *v1;
  v29 = *(v31 + 80);
  v47 = v29;
  v30 = *(v31 + 88);
  v46 = v30;
  v32 = 0;
  v33 = type metadata accessor for Interval();
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = v5 - v34;
  v45 = v2;
  v44 = v1;
  v43 = _allocateUninitializedArray<A>(_:)();

  if (v36)
  {
    v27 = v36;
    v23 = v36;
    v42 = v36;
    v7 = (v27 + *(*v27 + 128));
    v8 = &v41;
    v15 = 32;
    v16 = 0;
    swift_beginAccess();
    v9 = *v7;

    swift_endAccess();
    v10 = AugmentedIntervalTree.allIntervals(root:)(v9);

    v11 = &v40;
    v40 = v10;
    v12 = 0;
    v21 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v24 = &v43;
    Array.append<A>(contentsOf:)();
    v13 = v23 + *(*v23 + 104);
    v14 = &v39;
    swift_beginAccess();
    v3 = type metadata accessor for Optional();
    outlined init with copy of Interval<A, B>(v13, v35, v29, v30, v3, v33);
    swift_endAccess();
    Array.append(_:)();
    v17 = (v23 + *(*v23 + 136));
    v18 = &v38;
    swift_beginAccess();
    v19 = *v17;

    swift_endAccess();
    v20 = AugmentedIntervalTree.allIntervals(root:)(v19);

    v37 = v20;
    Array.append<A>(contentsOf:)();
    v25 = v43;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v25;
  }

  else
  {
    v5[1] = &v43;
    v6 = v43;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v6;
  }
}

uint64_t type metadata completion function for Interval()
{
  v3 = swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t type metadata completion function for AVLTreeNode()
{
  inited = type metadata accessor for Interval();
  if (v0 <= 0x3F)
  {
    inited = swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (!inited)
      {
        return 0;
      }
    }
  }

  return inited;
}

uint64_t type metadata completion function for AugmentedIntervalTree()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t HIDPFLError.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 9701;
      break;
    case 2:
      v2 = 9702;
      break;
    case 3:
      v2 = 9703;
      break;
    case 4:
      v2 = 9704;
      break;
    case 5:
      v2 = 9705;
      break;
    case 6:
      v2 = 9706;
      break;
    case 7:
      v2 = 9707;
      break;
    case 8:
      v2 = 9708;
      break;
    case 9:
      v2 = 9712;
      break;
    case 10:
      v2 = 9713;
      break;
    case 11:
      v2 = 9714;
      break;
    case 12:
      v2 = 9715;
      break;
    case 13:
      v2 = 9716;
      break;
    case 14:
      v2 = 9717;
      break;
    case 15:
      v2 = 9718;
      break;
    case 16:
      v2 = 9719;
      break;
    case 17:
      v2 = 9720;
      break;
    case 18:
      v2 = 9721;
      break;
    case 19:
      v2 = 9722;
      break;
    case 20:
      v2 = 9723;
      break;
    case 21:
      v2 = 9724;
      break;
    case 22:
      v2 = 9725;
      break;
    case 23:
      v2 = 9726;
      break;
    case 24:
      v2 = 9727;
      break;
    case 25:
      v2 = 9728;
      break;
    case 26:
      v2 = 9729;
      break;
    case 27:
      v2 = 9730;
      break;
    case 28:
      v2 = 9731;
      break;
    case 29:
      v2 = 9732;
      break;
    case 30:
      v2 = 9733;
      break;
    case 31:
      v2 = 9734;
      break;
    case 32:
      v2 = 9735;
      break;
    case 33:
      v2 = 9736;
      break;
    case 34:
      v2 = 9737;
      break;
    case 35:
      v2 = 9738;
      break;
    case 36:
      v2 = 9739;
      break;
    case 37:
      v2 = 9740;
      break;
    case 38:
      v2 = 9741;
      break;
    case 39:
      v2 = 9742;
      break;
    case 40:
      v2 = 9743;
      break;
    case 41:
      v2 = 9744;
      break;
    case 42:
      v2 = 9745;
      break;
    case 43:
      v2 = 9746;
      break;
    case 44:
      v2 = 9747;
      break;
    case 45:
      v2 = 9748;
      break;
    case 46:
      v2 = 9749;
      break;
    case 47:
      v2 = 9750;
      break;
    case 48:
      v2 = 9751;
      break;
    case 49:
      v2 = 9752;
      break;
    case 50:
      v2 = 9753;
      break;
    case 51:
      v2 = 9754;
      break;
    case 52:
      v2 = 9755;
      break;
    case 53:
      v2 = 9756;
      break;
    case 54:
      v2 = 9757;
      break;
    case 55:
      v2 = 9799;
      break;
    case 56:
      v2 = 9800;
      break;
    case 57:
      v2 = 9801;
      break;
    case 58:
      v2 = 9802;
      break;
    case 59:
      v2 = 9803;
      break;
    case 60:
      v2 = 9804;
      break;
    case 61:
      v2 = 9805;
      break;
    case 62:
      v2 = 9806;
      break;
    case 63:
      v2 = 9807;
      break;
    case 64:
      v2 = 9808;
      break;
    case 65:
      v2 = 9809;
      break;
    case 66:
      v2 = 9810;
      break;
    case 67:
      v2 = 9811;
      break;
    case 68:
      v2 = 9812;
      break;
    case 69:
      v2 = 9813;
      break;
    case 70:
      v2 = 9814;
      break;
    case 71:
      v2 = 9815;
      break;
    case 72:
      v2 = 9816;
      break;
    case 73:
      v2 = 9817;
      break;
    case 74:
      v2 = 9818;
      break;
    case 75:
      v2 = 9819;
      break;
    case 76:
      v2 = 9820;
      break;
    case 77:
      v2 = 9821;
      break;
    case 78:
      v2 = 9822;
      break;
    case 79:
      v2 = 9823;
      break;
    case 80:
      v2 = 9824;
      break;
    case 81:
      v2 = 9825;
      break;
    case 82:
      v2 = 9826;
      break;
    case 83:
      v2 = 9827;
      break;
    case 84:
      v2 = 9828;
      break;
    case 85:
      v2 = 9829;
      break;
    case 86:
      v2 = 9830;
      break;
    case 87:
      v2 = 9831;
      break;
    case 88:
      v2 = 9832;
      break;
    case 89:
      v2 = 9833;
      break;
    case 90:
      v2 = 9834;
      break;
    case 91:
      v2 = 9835;
      break;
    case 92:
      v2 = 9836;
      break;
    case 93:
      v2 = 9837;
      break;
    case 94:
      v2 = 9838;
      break;
    case 95:
      v2 = 9839;
      break;
    case 96:
      v2 = 9840;
      break;
    case 97:
      v2 = 9841;
      break;
    case 98:
      v2 = 9842;
      break;
    case 99:
      v2 = 9843;
      break;
    case 100:
      v2 = 9844;
      break;
    case 101:
      v2 = 9845;
      break;
    case 102:
      v2 = 9846;
      break;
    case 103:
      v2 = 9847;
      break;
    case 104:
      v2 = 9848;
      break;
    case 105:
      v2 = 9849;
      break;
    case 106:
      v2 = 9850;
      break;
    case 107:
      v2 = 9851;
      break;
    case 108:
      v2 = 9852;
      break;
    case 109:
      v2 = 9853;
      break;
    default:
      v2 = 9700;
      break;
  }

  return v2;
}

NightingaleTraining::HIDPFLError_optional __swiftcall HIDPFLError.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 9700:
      return 0;
    case 9701:
      return 1;
    case 9702:
      return 2;
    case 9703:
      return 3;
    case 9704:
      return 4;
    case 9705:
      return 5;
    case 9706:
      return 6;
    case 9707:
      return 7;
    case 9708:
      return 8;
    case 9712:
      return 9;
    case 9713:
      return 10;
    case 9714:
      return 11;
    case 9715:
      return 12;
    case 9716:
      return 13;
    case 9717:
      return 14;
    case 9718:
      return 15;
    case 9719:
      return 16;
    case 9720:
      return 17;
    case 9721:
      return 18;
    case 9722:
      return 19;
    case 9723:
      return 20;
    case 9724:
      return 21;
    case 9725:
      return 22;
    case 9726:
      return 23;
    case 9727:
      return 24;
    case 9728:
      return 25;
    case 9729:
      return 26;
    case 9730:
      return 27;
    case 9731:
      return 28;
    case 9732:
      return 29;
    case 9733:
      return 30;
    case 9734:
      return 31;
    case 9735:
      return 32;
    case 9736:
      return 33;
    case 9737:
      return 34;
    case 9738:
      return 35;
    case 9739:
      return 36;
    case 9740:
      return 37;
    case 9741:
      return 38;
    case 9742:
      return 39;
    case 9743:
      return 40;
    case 9744:
      return 41;
    case 9745:
      return 42;
    case 9746:
      return 43;
    case 9747:
      return 44;
    case 9748:
      return 45;
    case 9749:
      return 46;
    case 9750:
      return 47;
    case 9751:
      return 48;
    case 9752:
      return 49;
    case 9753:
      return 50;
    case 9754:
      return 51;
    case 9755:
      return 52;
    case 9756:
      return 53;
    case 9757:
      return 54;
    case 9799:
      return 55;
    case 9800:
      return 56;
    case 9801:
      return 57;
    case 9802:
      return 58;
    case 9803:
      return 59;
    case 9804:
      return 60;
    case 9805:
      return 61;
    case 9806:
      return 62;
    case 9807:
      return 63;
    case 9808:
      return 64;
    case 9809:
      return 65;
    case 9810:
      return 66;
    case 9811:
      return 67;
    case 9812:
      return 68;
    case 9813:
      return 69;
    case 9814:
      return 70;
    case 9815:
      return 71;
    case 9816:
      return 72;
    case 9817:
      return 73;
    case 9818:
      return 74;
    case 9819:
      return 75;
    case 9820:
      return 76;
    case 9821:
      return 77;
    case 9822:
      return 78;
    case 9823:
      return 79;
    case 9824:
      return 80;
    case 9825:
      return 81;
    case 9826:
      return 82;
    case 9827:
      return 83;
    case 9828:
      return 84;
    case 9829:
      return 85;
    case 9830:
      return 86;
    case 9831:
      return 87;
    case 9832:
      return 88;
    case 9833:
      return 89;
    case 9834:
      return 90;
    case 9835:
      return 91;
    case 9836:
      return 92;
    case 9837:
      return 93;
    case 9838:
      return 94;
    case 9839:
      return 95;
    case 9840:
      return 96;
    case 9841:
      return 97;
    case 9842:
      return 98;
    case 9843:
      return 99;
    case 9844:
      return 100;
    case 9845:
      return 101;
    case 9846:
      return 102;
    case 9847:
      return 103;
    case 9848:
      return 104;
    case 9849:
      return 105;
    case 9850:
      return 106;
    case 9851:
      return 107;
    case 9852:
      return 108;
    case 9853:
      return 109;
  }

  return 110;
}

NightingaleTraining::HIDPFLError_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HIDPFLError@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::HIDPFLError_optional *a2@<X8>)
{
  result.value = HIDPFLError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HIDPFLError@<X0>(uint64_t *a1@<X8>)
{
  result = HIDPFLError.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance HIDPFLError()
{
  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
  lazy protocol witness table accessor for type Int and conformance Int();
  return Error<>._code.getter();
}

uint64_t getEnumTagSinglePayload for HIDPFLError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0x92)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 109) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 146;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 110;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDPFLError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0x92)
  {
    v5 = ((a3 + 109) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0x92)
  {
    v4 = ((a2 - 147) >> 8) + 1;
    *result = a2 + 109;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 109;
    }
  }

  return result;
}

uint64_t calculateAge(components:birthDateRequired:)(uint64_t a1, int a2)
{
  v24 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0.0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v15 = v10 - v14;
  v21 = 0;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v20 = v10 - v19;
  v37 = v10 - v19;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v31 = v10 - v22;
  v30 = type metadata accessor for DateComponents();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v25 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v24);
  v26 = v10 - v25;
  v36 = v10 - v25;
  v35 = v3;
  v29 = 1;
  v34 = v4 & 1;
  outlined init with copy of DateComponents?(v3, v5);
  if ((*(v27 + 48))(v31, v29, v30) == 1)
  {
    outlined destroy of DateComponents?(v31);
  }

  else
  {
    (*(v27 + 32))(v26, v31, v30);
    DateComponents.date.getter();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v20, v15, v16);
      v6 = Date.timeIntervalSinceNow.getter();
      v32 = v7 / -31557600.0;
      v11 = MEMORY[0x25F8897B0](v6);
      (*(v17 + 8))(v20, v16);
      (*(v27 + 8))(v26, v30);
      v12 = v11;
      v13 = 0;
      goto LABEL_9;
    }

    outlined destroy of Date?(v15);
    (*(v27 + 8))(v26, v30);
  }

  if (v23)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v10[2] = swift_allocError();
    *v8 = 19;
    swift_willThrow();
    return v10[1];
  }

  v12 = 0.0;
  v13 = 1;
LABEL_9:
  *&v33 = v12;
  BYTE4(v33) = v13 & 1;
  return v33;
}

uint64_t NightingalePFLModelType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

NightingaleTraining::NightingalePFLModelType_optional __swiftcall NightingalePFLModelType.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
  }

  return 4;
}

Swift::Bool __swiftcall isSleepingWTNeeded(_:)(NightingaleTraining::NightingalePFLModelType a1)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = == infix<A>(_:_:)();
  }

  return v2 & 1;
}

Swift::Bool __swiftcall isSHRNeeded(_:)(NightingaleTraining::NightingalePFLModelType a1)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = == infix<A>(_:_:)();
  }

  return v2 & 1;
}

Swift::Double __swiftcall calculateDummyPeriodLength(urCycleLength:urPeriodLength:)(Swift::Double_optional urCycleLength, Swift::Double_optional urPeriodLength)
{
  if (urPeriodLength.is_nil || (v3 & 1) != 0 || v2 >= *&urCycleLength.is_nil)
  {
    return 4.0;
  }

  else
  {
    return v2;
  }
}

Swift::Int __swiftcall NightingalePFLModelType.numFeatures()()
{
  if (!v0 || v0 == 1)
  {
    return 5;
  }

  if (v0 == 2)
  {
    return 1;
  }

  return 4;
}

Swift::Int_optional __swiftcall featureIndex(_:_:)(NightingaleTraining::NightingaleModelFeatureType a1, NightingaleTraining::NightingalePFLModelType a2)
{
  if (a1)
  {
    switch(a1)
    {
      case NightingaleTraining_NightingaleModelFeatureType_SWT:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v9 = 1;
        }

        else
        {
          v9 = == infix<A>(_:_:)();
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_48;
        }

        v10 = 0;
        v11 = 0;
        break;
      case NightingaleTraining_NightingaleModelFeatureType_DaySHR10:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v8 = 1;
        }

        else
        {
          v8 = == infix<A>(_:_:)();
        }

        if ((v8 & 1) == 0)
        {
          goto LABEL_48;
        }

        v10 = 0;
        v11 = 0;
        break;
      case NightingaleTraining_NightingaleModelFeatureType_NightSHR10:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v7 = 1;
        }

        else
        {
          v7 = == infix<A>(_:_:)();
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_48;
        }

        v10 = 1;
        v11 = 0;
        break;
      case NightingaleTraining_NightingaleModelFeatureType_PSM:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        if (== infix<A>(_:_:)())
        {
          v6 = 1;
        }

        else
        {
          v6 = == infix<A>(_:_:)();
        }

        if (v6)
        {
          v10 = 3;
          v11 = 0;
        }

        else
        {
          if ((== infix<A>(_:_:)() & 1) == 0)
          {
            goto LABEL_48;
          }

          v10 = 2;
          v11 = 0;
        }

        break;
      default:
        lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
        v2 = == infix<A>(_:_:)();
        if (v2)
        {
          v5 = 1;
        }

        else
        {
          v5 = == infix<A>(_:_:)();
        }

        if (v5)
        {
          v10 = 4;
          v11 = 0;
          break;
        }

        if (== infix<A>(_:_:)())
        {
          v10 = 3;
          v11 = 0;
          break;
        }

LABEL_48:
        v10 = 0;
        v11 = 1;
        break;
    }
  }

  else
  {
    lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
    if (== infix<A>(_:_:)())
    {
      v12 = 1;
    }

    else
    {
      v12 = == infix<A>(_:_:)();
    }

    if (v12)
    {
      v10 = 2;
      v11 = 0;
    }

    else
    {
      if ((== infix<A>(_:_:)() & 1) == 0)
      {
        goto LABEL_48;
      }

      v10 = 1;
      v11 = 0;
    }
  }

  v3 = v10;
  v4 = v11 & 1;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

NightingaleTraining::NightingaleModelFeatureType_optional __swiftcall NightingaleModelFeatureType.init(rawValue:)(Swift::Int rawValue)
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
  }

  return 6;
}

uint64_t NightingaleModelFeatureType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
  }

  return 6;
}