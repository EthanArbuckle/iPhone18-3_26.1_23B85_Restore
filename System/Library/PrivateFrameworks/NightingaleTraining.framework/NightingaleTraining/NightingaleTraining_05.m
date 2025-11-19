uint64_t protocol witness for UnsafeMutableMemoryAccessible.withUnsafeMutableBufferPointer<A>(_:) in conformance [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@inout UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error), v10, a4, a3, v5, MEMORY[0x277D84950], &v15, a5);
}

uint64_t thunk for @callee_guaranteed (@inout UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = a2();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t protocol witness for UnsafeMutableMemoryAccessible.withUnsafeMutableBufferPointer<A>(_:) in conformance ArraySlice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@inout UnsafeMutableBufferPointer<A>) -> (@out A1, @error @owned Error), v10, a4, a3, v5, MEMORY[0x277D84950], &v15, a5);
}

uint64_t _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF@<X0>(void (*a1)(void *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11[1] = a8;
  v12 = a1;
  v13 = a2;
  v26 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeMutableBufferPointer with negative count";
  v21 = "Swift/UnsafeBufferPointer.swift";
  v33[4] = a4;
  v33[3] = a5;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v25 = v11 - v24;
  v28 = *(v8 + 16);
  v33[2] = v28;
  v29 = ArraySlice.count.getter();
  ArraySlice._makeMutableAndUnique()();
  v30 = *(v27 + 8);
  v31 = *(v27 + 16) * *(*(v28 - 8) + 72);
  v32 = v30 + v31;
  if (v29 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v17;
    v33[0] = v32;
    v33[1] = v29;
    v12(v33, v25);
    v11[0] = v9;
    if (v9)
    {
      (*(v22 + 32))(v18, v25, v15);
    }

    return _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v33, v30 + v31, v29);
  }

  return result;
}

NightingaleTraining::FeatureStatsOption_optional __swiftcall FeatureStatsOption.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "none";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  *(v2 + 24) = "perSlice";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "allSlices";
  *(v2 + 56) = 9;
  *(v2 + 64) = 2;
  *(v2 + 72) = "deviceMean";
  *(v2 + 80) = 10;
  *(v2 + 88) = 2;
  *(v2 + 96) = "deviceMedian";
  *(v2 + 104) = 12;
  *(v2 + 112) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = NightingaleTraining_FeatureStatsOption_none;
LABEL_12:

      return v5;
    case 1:
      v5.value = NightingaleTraining_FeatureStatsOption_perSlice;
      goto LABEL_12;
    case 2:
      v5.value = NightingaleTraining_FeatureStatsOption_allSlices;
      goto LABEL_12;
    case 3:
      v5.value = NightingaleTraining_FeatureStatsOption_deviceMean;
      goto LABEL_12;
    case 4:
      v5.value = NightingaleTraining_FeatureStatsOption_deviceMedian;
      goto LABEL_12;
  }

  return 5;
}

NightingaleTraining::FeatureStatsOption_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FeatureStatsOption@<W0>(Swift::String *a1@<X0>, NightingaleTraining::FeatureStatsOption_optional *a2@<X8>)
{
  result.value = FeatureStatsOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FeatureStatsOption@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureStatsOption.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:)(Swift::tuple_flow_OpaquePointer_daySHR10_OpaquePointer_nightSHR10_OpaquePointer_periodStartMean_OpaquePointer_periodStartStd_OpaquePointer_labels_OpaquePointer_cycleStats_tuple_size_Float_mean_Float_std_Float_daySHR10CountStats_tuple_mean_Float_optional_std_Float *__return_ptr retstr, Swift::OpaquePointer *flows, Swift::OpaquePointer *daySHR10s, Swift::OpaquePointer *nightSHR10s, Swift::OpaquePointer *calendarPeriodPredictions, Swift::OpaquePointer *historicalPeriods, Swift::OpaquePointer *cycleFactors, Swift::UInt32 dummyPeriodLength, Swift::UInt32 sliceSize, Swift::UInt32 maxNumDaysToNextPeriod, Swift::UInt32 minNumDaysToNextPeriod, Swift::Int minNumOfDaySHRPerSlice)
{
  v335 = retstr;
  v355 = flows;
  v354 = daySHR10s;
  v347 = nightSHR10s;
  v348 = calendarPeriodPredictions;
  v353 = historicalPeriods;
  v349 = cycleFactors;
  v350 = dummyPeriodLength;
  v351 = sliceSize;
  v359 = maxNumDaysToNextPeriod;
  v360 = minNumDaysToNextPeriod;
  v352 = minNumOfDaySHRPerSlice;
  v337 = implicit closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v338 = implicit closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v339 = implicit closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v340 = closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v341 = partial apply for closure #2 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:);
  v342 = "Fatal error";
  v343 = "Range requires lowerBound <= upperBound";
  v344 = "Swift/Range.swift";
  v345 = "Unexpectedly found nil while unwrapping an Optional value";
  v346 = "NightingaleTraining/Featurizer.swift";
  v520 = 0;
  v519 = 0;
  v518 = 0;
  v517 = 0;
  v516 = 0;
  v515 = 0;
  v514 = 0;
  v513 = 0;
  v512 = 0;
  v511 = 0;
  v510 = 0;
  v509 = 0;
  v508 = 0;
  v506 = 0;
  v504 = 0;
  v502 = 0;
  v500 = 0;
  v490 = 0;
  v488 = 0;
  v487 = 0;
  v486._rawValue = 0;
  v485 = 0;
  v477 = 0;
  v473 = 0;
  v472 = 0;
  v471 = 0;
  memset(v470, 0, sizeof(v470));
  v467 = 0;
  v466 = 0;
  v463 = 0;
  v464 = 0;
  v465 = 0;
  v458 = 0.0;
  v454 = 0.0;
  v455 = 0;
  v453 = 0.0;
  v452 = 0;
  v451 = 0;
  v450._rawValue = 0;
  v449._rawValue = 0;
  v448._rawValue = 0;
  v447._rawValue = 0;
  v446._rawValue = 0;
  v445 = 0;
  v444 = 0;
  v441 = 0;
  v436 = 0;
  v432 = 0;
  v430 = 0;
  v429 = 0;
  v427 = 0;
  v428 = 0;
  v422 = 0;
  v421 = 0;
  v419 = 0;
  v420 = 0;
  v414 = 0.0;
  v404 = 0;
  v403 = 0.0;
  v402 = 0.0;
  v401 = 0.0;
  v400 = 0.0;
  v390 = 0;
  v391 = 0;
  v392 = 0.0;
  v388 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v378 = 0.0;
  v376 = 0;
  v368 = 0;
  v367 = 0;
  v365 = 0;
  v356 = type metadata accessor for PFLStats.StdMethod();
  v357 = *(v356 - 8);
  v358 = v356 - 8;
  v13 = MEMORY[0x28223BE20](v355);
  v361 = &v78 - v14;
  v520 = v13;
  v519 = v15;
  v518 = v16;
  v517 = v17;
  v516 = v18;
  v515 = v19;
  v514 = v20;
  v513 = v21;
  v512 = maxNumDaysToNextPeriod;
  v511 = minNumDaysToNextPeriod;
  v510 = v22;
  v509 = v12;
  v363 = *v18;

  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd);
  v364 = MEMORY[0x25F8895B0](v363);
  v508 = v364;

  if (v365 >= v364)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v84 = swift_allocError();
    *v77 = 49;
    swift_willThrow();
    v92 = v84;
    return;
  }

  rawValue = v348->_rawValue;

  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd);
  v334 = MEMORY[0x25F889170](rawValue, MEMORY[0x277D84CC0]);

  if (v334)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v85 = swift_allocError();
    *v76 = 50;
    swift_willThrow();
    v92 = v85;
    return;
  }

  v330 = v354->_rawValue;

  v331 = MEMORY[0x25F889170](v330, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);

  if (v331)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v86 = swift_allocError();
    *v75 = 51;
    swift_willThrow();
    v92 = v86;
    return;
  }

  v324 = v354->_rawValue;

  v507 = v325;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd);
  v23 = lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  v24 = v336;
  v327 = v23;
  v25 = Sequence.sorted(by:)();
  v328 = v24;
  v329 = v25;
  if (v24)
  {
    __break(1u);
    goto LABEL_146;
  }

  v319 = v329;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v506 = v319;
  v320 = v347->_rawValue;

  v26 = v328;
  v505 = v321;
  v27 = Sequence.sorted(by:)();
  v322 = v26;
  v323 = v27;
  if (v26)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v313 = v323;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v504 = v313;
  v314 = v348->_rawValue;

  v503 = v315;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf15periodStartMean_Sf0cD3Stdt_GMd);
  lazy protocol witness table accessor for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)].Keys and conformance [A : B].Keys();
  v28 = v322;
  v29 = Sequence.sorted(by:)();
  v317 = v28;
  v318 = v29;
  if (v28)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v307 = v318;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v502 = v307;
  v308 = v353->_rawValue;

  v501 = v308;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v30 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v31 = v317;
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v340, 0, v309, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v310);
  v311 = v31;
  v312 = v32;
  if (v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    v83 = v263;
    v82 = v262;

    outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v83;
    return;
  }

  v303._rawValue = v312;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v500 = v303._rawValue;
  v498 = v319;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  v305 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  Collection.first.getter();
  v306 = v496;
  if (v497)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v302 = v306;
  }

  v495 = v302;
  v494 = v307;
  Collection.first.getter();
  v301 = v492;
  if (v493)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v300 = v301;
  }

  v491 = v300;
  max<A>(_:_:)();
  v298 = v499;
  v490 = v499;
  v299 = v364 - 1;
  if (__OFSUB__(v364, 1))
  {
    __break(1u);
    goto LABEL_154;
  }

  Array.subscript.getter();
  v297 = v489;
  v488 = v489;
  if (v298 >= v489)
  {
LABEL_142:
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v87 = swift_allocError();
    *v74 = 52;
    swift_willThrow();

    v92 = v87;
    return;
  }

  v296 = v297 - v298;
  if (v297 < v298)
  {
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v296 < v351)
  {
    goto LABEL_142;
  }

  v487 = findDaysNeedingDummyFlow(_:_:)(v353, v350);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V4flow_Sf8daySHR10Sf05nightD0Sf15periodStartMeanSf0fG3StdtMd);
  v294 = MEMORY[0x277D84CC0];
  v486._rawValue = Dictionary.init()();
  v482 = v298;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v319, &v482, v294, MEMORY[0x277D84CD8], &v483);
  v295 = v483;
  if (v484)
  {
    v290 = 0;
    v291 = 1;
  }

  else
  {
    v292 = v295;
    v290 = v295;
    v291 = 0;
  }

  v289 = v290;
  if (v291)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v88 = swift_allocError();
    *v73 = 55;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v88;
    return;
  }

  v288 = v289;
  v485 = v289;
  v478 = v298;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v313, &v478, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v479);
  v287 = v479;
  if (v480)
  {
    v481.value = 0;
    v481.is_nil = 1;
  }

  else
  {
    v286 = v287;
    v481.value = v287;
    v481.is_nil = 0;
  }

  v474 = v298;
  static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v307, &v474, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v475);
  v285 = v475;
  if (v476)
  {
    v282 = 0;
    v283 = 1;
  }

  else
  {
    v284 = v285;
    v282 = v285;
    v283 = 0;
  }

  v281 = v282;
  if (v283)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v89 = swift_allocError();
    *v72 = 55;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v89;
    return;
  }

  v280 = v281;
  v477 = v281;
  v522 = findPeriodPredictionLabel(_:_:_:_:)(v303, v298, v351, v360);
  value = v522.value;
  if (v522.value._1)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v90 = swift_allocError();
    *v71 = 53;
    swift_willThrow();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v90;
    return;
  }

  v278 = value;
  v271 = value._1;
  v472 = value._1;
  v272 = value._0;
  v473 = value._0;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMd);
  v274 = AugmentedIntervalTree.__allocating_init()();
  v471 = v274;
  v275 = v349->_rawValue;

  v276 = &v521;
  Dictionary.makeIterator()();
  memcpy(v470, v276, sizeof(v470));
  for (i = v311; ; i = v259)
  {
    v268 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVys5UInt8VSays6UInt32V5start_AF3endtG_GMd);
    Dictionary.Iterator.next()();
    v269 = v468;
    v270 = v469;
    if (!v469)
    {
      break;
    }

    v266 = v269;
    v267 = v270;
    v264 = v270;
    v265 = v269;
    v368 = v269;
    v367 = v270;
    if (v265 == NgtMenstrualAlgorithmsPhase.rawValue.getter(8))
    {
      v260 = v268;
    }

    else
    {
      v366 = v264;

      lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
      v34 = v268;
      Sequence.forEach(_:)();
      v261 = v34;
      v262 = v264;
      v263 = v34;
      if (v34)
      {
        goto LABEL_149;
      }

      v260 = v261;
    }

    v259 = v260;
  }

  outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator();
  v467 = Array.init()();
  v255 = AugmentedIntervalTree.__allocating_init()();
  v466 = v255;
  v256 = v353->_rawValue;

  v257 = MEMORY[0x25F8895B0](v256, v362);

  v258 = v257 - 1;
  if (__OFSUB__(v257, 1))
  {
    goto LABEL_155;
  }

  if (v258 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v461 = 0;
  v462 = v258;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (j = v268; ; j = v240)
  {
    v251 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    IndexingIterator.next()();
    v252 = v459;
    if (v460)
    {
      break;
    }

    v250 = v252;
    v247 = v252;
    v380 = v252;
    Array.subscript.getter();
    v248 = v379;
    v378 = v379;
    v249 = v247 + 1;
    if (__OFADD__(v247, 1))
    {
      goto LABEL_166;
    }

    Array.subscript.getter();
    v246 = v377 - 1;
    if (!v377)
    {
      goto LABEL_167;
    }

    v37 = v251;
    v376 = v246;
    v375 = v248;
    v374 = v246;
    v38 = AugmentedIntervalTree.overlap(start:end:)(&v375, &v374);
    v243 = v37;
    v244 = v38;
    v245 = v37;
    if (v37)
    {
      v81 = v245;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v92 = v81;
      return;
    }

    if (v244)
    {
      v39 = v243;
      v371 = v248;
      v370 = v246;
      memset(v369, 0, 32);
      AugmentedIntervalTree.insert(start:end:context:)(&v371, &v370, v369);
      v241 = v39;
      v242 = v39;
      outlined destroy of Pregnancy?(v369);
      v240 = v241;
    }

    else
    {
      v235 = &v373;
      v373 = v246;
      v237 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v236 = MEMORY[0x277D84CC0];
      Float.init<A>(_:)();
      v238 = v40;
      v372[1] = v248;
      Float.init<A>(_:)();
      v239 = v372;
      v372[0] = v238 - v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      Array.append(_:)();
      v240 = v243;
    }
  }

  v233 = v467;

  v234 = MEMORY[0x25F8895B0](v233, MEMORY[0x277D83A90]);

  if (v234 <= 0)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v91 = swift_allocError();
    *v70 = 54;
    swift_willThrow();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v91;
    return;
  }

  v228 = v467;

  v223 = MEMORY[0x25F8895B0](v228, MEMORY[0x277D83A90]);
  v458 = v223;
  v42 = *MEMORY[0x277D41410];
  v224 = *(v357 + 104);
  v225 = v357 + 104;
  v224(v361, v42, v356);
  v456 = static PFLStats.meanAndStd(_:_:)();
  v457 = v43;
  v229 = *&v456;
  v230 = BYTE4(v456);
  v231 = v43;
  v226 = *(v357 + 8);
  v227 = v357 + 8;
  v226(v361, v356);

  v454 = v229;
  v455 = v230 & 1;
  v453 = v231;
  v452 = v298;
  v232 = v297 - v351;
  if (v297 < v351)
  {
    goto LABEL_156;
  }

  v451 = v232;
  v220 = MEMORY[0x277D83A90];
  v450._rawValue = Array.init()();
  v449._rawValue = Array.init()();
  v448._rawValue = Array.init()();
  v447._rawValue = Array.init()();
  v446._rawValue = Array.init()();
  v445 = Array.init()();
  v444 = Array.init()();
  v221 = __PAIR64__(v271, v272);
  v222 = v251;
  while (2)
  {
    v218 = v221;
    for (k = v222; ; k = v215)
    {
      v215 = k;
      v216 = HIDWORD(v218);
      v217 = v452;
      if (v232 < v452)
      {
        v194 = v215;
        goto LABEL_128;
      }

      v213 = *&v216;
      v214 = v217;
      if (v216 < v359)
      {
        break;
      }

      v212 = v216 - v359;
      v211 = v212 + 1;
      if (v212 == -1)
      {
        goto LABEL_163;
      }

      v210 = v217 + v211;
      if (__CFADD__(v217, v211))
      {
        goto LABEL_164;
      }

      v381 = v210;
      evictCaches(_:_:_:)(v217, v210, &v486);
      v452 = v210;
      v209 = v359 - 1;
      if (!v359)
      {
        goto LABEL_165;
      }

      v472 = v209;
      HIDWORD(v218) = v209;
    }

    v45 = v215;
    v204 = v214;
    v205 = v213;
    v438 = v214;
    v437 = v218;
    v46 = AugmentedIntervalTree.search(start:end:)(&v438, &v437);
    v206 = v45;
    v207 = v46;
    v208 = v45;
    if (v45)
    {
      v80 = v208;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v92 = v80;
      return;
    }

    v201._rawValue = v207;
    v436 = v207;
    v435 = v207;
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VypGGMd);
    v203 = lazy protocol witness table accessor for type [Interval<UInt32, Any>] and conformance [A]();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v523 = findPeriodPredictionLabel(disqualifyingDays:currentSliceStart:featureCaches:historicalPeriodsStartDays:sliceSize:minLabel:)(v201, &v452, &v486, v303, v351, v360);
      v199 = v523.value;
      v200 = v201._rawValue;
      if ((v523.value._1 & 1) == 0)
      {
        v198 = v199;
        v195 = v199;
        v382 = v199._1;
        v472 = v199._1;
        v383 = v199._0;
        v473 = v199._0;

        v196 = v195;
        v197 = v206;
LABEL_127:
        v221 = v196;
        v222 = v197;
        continue;
      }

      v194 = v206;
      goto LABEL_128;
    }

    break;
  }

  v47 = v206;
  v434 = v204;
  v433 = v204;
  v48 = AugmentedIntervalTree.search(start:end:)(&v434, &v433);
  v190 = v47;
  v191 = v48;
  v192 = v201._rawValue;
  v193 = v47;
  if (v47)
  {
    v79 = v193;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v92 = v79;
    return;
  }

  v189._rawValue = v191;
  v432 = v191;
  v431 = v191;
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v524 = findPeriodPredictionLabel(disqualifyingDays:currentSliceStart:featureCaches:historicalPeriodsStartDays:sliceSize:minLabel:)(v189, &v452, &v486, v303, v351, v360);
    v186 = v524.value;
    v187 = v201._rawValue;
    v188 = v189._rawValue;
    if ((v524.value._1 & 1) == 0)
    {
      v185 = v186;
      v184 = v186;
      v384 = v186._1;
      v472 = v186._1;
      v385 = v186._0;
      v473 = v186._0;

      v196 = v184;
      v197 = v190;
      goto LABEL_127;
    }

    v183 = v187;

    v194 = v190;
    goto LABEL_128;
  }

  v430 = 0;
  v429 = 1;
  v182 = v204 + v351;
  if (__CFADD__(v204, v351))
  {
    goto LABEL_157;
  }

  if (v182 < v204)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v425 = v204;
  v426 = v182;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd);
  v178 = lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  v179 = 0;
  v180 = 0;
  for (m = v190; ; m = v170)
  {
    v170 = m;
    v171 = v180;
    v172 = v179;
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd);
    IndexingIterator.next()();
    v174 = v423[7];
    v175 = v172;
    v176 = v173;
    if (v424)
    {
      break;
    }

    v169 = v174;
    v388 = v174;
    v50 = v354->_rawValue;
    v386 = v174;
    MEMORY[0x25F8891D0](&v387, &v386, v50, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
    if ((v387 & 0x100000000) != 0)
    {
      v167 = v172;
      v168 = v171;
    }

    else
    {
      v166 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        goto LABEL_161;
      }

      v430 = v166;
      v167 = v166;
      v168 = v166;
    }

    v179 = v167;
    v180 = v168;
  }

  v164 = v176;
  v165 = v175;
  if (v175 < v352)
  {
    v429 = 0;
    v163 = 0;
  }

  else
  {
    v163 = 1;
  }

  if (v163)
  {
    v162 = v204 + v351;
    if (__CFADD__(v204, v351))
    {
      goto LABEL_160;
    }

    if (v162 < v204)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v417 = v204;
    v418 = v162;
    Collection<>.makeIterator()();
    for (n = v170; ; n = v159)
    {
      v159 = n;
      IndexingIterator.next()();
      v160 = v415[2];
      if (v416)
      {
        break;
      }

      v158 = v160;
      v154 = LODWORD(v160);
      v414 = v160;
      v410 = v160;
      MEMORY[0x25F8891D0](v411, &v410, v486._rawValue, MEMORY[0x277D84CC0], v293, MEMORY[0x277D84CD0]);
      v155 = v411[0];
      v156 = v411[1];
      v157 = v412;
      if (v413)
      {
        v54 = v355->_rawValue;
        v407 = v154;
        MEMORY[0x25F8891D0](&v408, &v407, v54, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
        v405 = v408;
        v406 = v409 & 1;
        if (v409)
        {
          v146 = 0;
        }

        else
        {
          v146 = v405;
        }

        v143 = 0;
        v138 = static Imputation.imputeFlow(flow:day:days:flowImputed:imputeValue:)(v146, v154, &v487, 0, 2u);
        v404 = v138;
        v131 = &v403;
        v133 = 0.0;
        v403 = 0.0;
        v132._rawValue = v354->_rawValue;

        Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:cache:)(v132, &v485, v154, v131);

        v134 = &v402;
        v402 = v133;
        v135._rawValue = v347->_rawValue;

        Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:defaultValue:cache:)(v135, &v481, v154, 64.88, v134);

        v136 = v348->_rawValue;

        v140 = static Imputation.imputeCalendarPrediction(calendarPeriodPredictions:target:lastPredictionDay:)(v136, v154, &v477);
        v142 = v55;

        v401 = v140;
        v400 = v142;
        v137 = &v399;
        v399 = v138;
        lazy protocol witness table accessor for type UInt8 and conformance UInt8();
        Float.init<A>(_:)();
        v139 = LODWORD(v403);
        v141 = LODWORD(v402);
        appendFeature(_:_:_:_:_:_:_:_:_:_:)(v56, &v450, v403, &v449, v402, &v448, v140, &v447, v142, &v446);
        v145 = &v394;
        v394 = v138;
        v395 = v139;
        v396 = v141 | (LODWORD(v140) << 32);
        v397 = v142;
        v398 = v143 & 1;
        v144 = &v393;
        v393 = v154;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMd);
        Dictionary.subscript.setter();
      }

      else
      {
        v151 = v155;
        v152 = v156;
        v153 = v157;
        v150 = v157;
        v149 = v156;
        v148 = *(&v155 + 1);
        LOBYTE(v390) = v155;
        HIDWORD(v390) = HIDWORD(v155);
        v391 = v156;
        v392 = v157;
        v147 = &v389;
        v389 = v155;
        lazy protocol witness table accessor for type UInt8 and conformance UInt8();
        Float.init<A>(_:)();
        appendFeature(_:_:_:_:_:_:_:_:_:_:)(v53, &v450, v148, &v449, *&v149, &v448, *(&v149 + 1), &v447, v150, &v446);
      }
    }

    v415[1] = v205;
    Array.append(_:)();
    v127 = v415;
    v415[0] = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
    v128 = v205;
    v129 = v204;
    v130 = v159;
  }

  else
  {
    v128 = v205;
    v129 = v204;
    v130 = v170;
  }

  v122 = v130;
  v125 = v129;
  v123 = v128;
  v124 = v423;
  v423[0] = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMd);
  Dictionary.removeValue(forKey:)();
  v126 = v125 + 1;
  if (v125 == -1)
  {
    goto LABEL_158;
  }

  v452 = v126;
  v121 = LODWORD(v123) - 1;
  if (v123 != 0.0)
  {
    v472 = v121;
    if (v121 >= v360)
    {
      v116 = __PAIR64__(v121, v218);
    }

    else
    {
      v525 = findPeriodPredictionLabel(_:_:_:_:)(v303, v126, v351, v360);
      v118 = v525.value;
      v119 = v201._rawValue;
      v120 = v189._rawValue;
      if (v525.value._1)
      {
        v115 = v119;

        v194 = v122;
LABEL_128:
        v111 = v194;
        v442 = 0.0;
        v443 = 1;
        v441 = 0;
        v112 = v444;

        v113 = MEMORY[0x25F8895B0](v112, MEMORY[0x277D83A90]);

        if (v113 <= 0)
        {
          v108 = 0.0;
          v109 = 0.0;
          v110 = 1;
        }

        else
        {
          v104 = v444;

          v224(v361, *MEMORY[0x277D41410], v356);
          v439 = static PFLStats.meanAndStd(_:_:)();
          v440 = v57;
          v107 = *&v439;
          v105 = BYTE4(v439);
          v106 = v57;
          v226(v361, v356);

          v442 = v107;
          v443 = v105 & 1;
          v441 = v106;
          v108 = *&v106;
          v109 = v107;
          v110 = v105;
        }

        v95 = v110;
        v96 = v109;
        v97 = v108;
        v98 = v450._rawValue;

        v99 = v449._rawValue;

        v100 = v448._rawValue;

        v101 = v447._rawValue;

        v102 = v446._rawValue;

        v103 = v445;

        if (v230)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        else
        {
          v94 = v229;
        }

        v93 = v94;
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        v58 = v99;
        v59 = v100;
        v60 = v101;
        v61 = v102;
        v62 = v103;
        v63 = v223;
        v64 = v93;
        v65 = v231;
        v66 = v96;
        v67 = v95;
        v68 = v335;
        v69 = v97;
        v335->flow._rawValue = v98;
        v68->daySHR10._rawValue = v58;
        v68->nightSHR10._rawValue = v59;
        v68->periodStartMean._rawValue = v60;
        v68->periodStartStd._rawValue = v61;
        v68->labels._rawValue = v62;
        v68->cycleStats.size = v63;
        v68->cycleStats.mean = v64;
        v68->cycleStats.std = v65;
        v68->daySHR10CountStats.mean.value = v66;
        v68->daySHR10CountStats.mean.is_nil = v67 & 1;
        v68->daySHR10CountStats.std = v69;
        return;
      }

      v117 = v118;
      v421 = v118._1;
      v472 = v118._1;
      v422 = v118._0;
      v473 = v118._0;
      v116 = v118;
    }

    v114 = v116;

    v196 = v114;
    v197 = v122;
    goto LABEL_127;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
}

uint64_t findDaysNeedingDummyFlow(_:_:)(void *a1, int a2)
{
  v20 = a2;
  v23 = 0;
  v32 = a1;
  v31 = a2;
  v21 = *a1;

  v30 = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v22 = v24;
  lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v25 = 0;
  v26 = _ArrayProtocol.filter(_:)();
  v29 = v26;
  v14 = &v8;
  MEMORY[0x28223BE20](&v8);
  v16 = v7;
  v7[4] = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  v15 = v17;
  v3 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in findDaysNeedingDummyFlow(_:_:), v16, v22, v17, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v4);
  v18 = 0;
  v19 = v5;
  v9 = v5;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v28 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySays6UInt32VGGMd);
  v11 = lazy protocol witness table accessor for type [[UInt32]] and conformance [A]();
  v12 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v13 = Sequence.flatMap<A>(_:)();
  v8 = v13;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v27 = v8;
  return Set.init<A>(_:)();
}

Swift::tuple_UInt32_UInt32_optional __swiftcall findPeriodPredictionLabel(_:_:_:_:)(Swift::OpaquePointer a1, Swift::UInt32 a2, Swift::UInt32 a3, Swift::UInt32 a4)
{
  v13 = a2;
  rawValue = a1._rawValue;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v15 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v15 + a4;
  if (__CFADD__(v15, a4))
  {
    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v12 - 1;
  LODWORD(a1._rawValue) = static HIDPFLUtils.findClosest<A>(_:greaterOrEqualThan:)(a1._rawValue, &v16, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v17);
  if (v18)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = v17;
    v11 = 0;
  }

  if (v11)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_22;
  }

  v9 = v13 + a3;
  if (__CFADD__(v13, a3))
  {
    goto LABEL_26;
  }

  if (v10 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 - v9 == -1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = v10;
  v8 = 0;
LABEL_22:
  LODWORD(a1._rawValue) = v7;
  a2 = v8 & 1;
LABEL_29:
  result.value._0 = a1._rawValue;
  result.is_nil = a3;
  result.value._1 = a2;
  return result;
}

uint64_t closure #2 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:)(_DWORD *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v2 = a1[1];
  LODWORD(v8) = *a1;
  HIDWORD(v8) = v2;
  v7 = a2;
  v6 = v8;
  v5 = v2;
  memset(v4, 0, sizeof(v4));
  AugmentedIntervalTree.insert(start:end:context:)(&v6, &v5, v4);
  return outlined destroy of Pregnancy?(v4);
}

Swift::Void __swiftcall evictCaches(_:_:_:)(Swift::UInt32 a1, Swift::UInt32 a2, Swift::OpaquePointer *a3)
{
  if (a2 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd);
  lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd);
    IndexingIterator.next()();
    if (v3)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8V4flow_Sf8daySHR10Sf05nightE0Sf15periodStartMeanSf0gH3StdtGMd);
    Dictionary.removeValue(forKey:)();
  }
}

{
  if (a2 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd);
  lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnys6UInt32VGGMd);
    IndexingIterator.next()();
    if (v3)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf8daySHR10_Sf05nightC0Sf15periodStartMeanSf0eF3StdSf019daysSinceLastPeriodF0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tGMd);
    Dictionary.removeValue(forKey:)();
  }
}

Swift::tuple_UInt32_UInt32_optional __swiftcall findPeriodPredictionLabel(disqualifyingDays:currentSliceStart:featureCaches:historicalPeriodsStartDays:sliceSize:minLabel:)(Swift::OpaquePointer disqualifyingDays, Swift::UInt32 *currentSliceStart, Swift::OpaquePointer *featureCaches, Swift::OpaquePointer historicalPeriodsStartDays, Swift::UInt32 sliceSize, Swift::UInt32 minLabel)
{
  v6 = maxEnd<A>(_:)(disqualifyingDays._rawValue, MEMORY[0x277D84F70] + 8);
  v15 = v6 + 1;
  if (v6 == -1)
  {
    __break(1u);
  }

  else
  {
    evictCaches(_:_:_:)(*currentSliceStart, v15, featureCaches);
    *currentSliceStart = v15;
    *&v6 = findPeriodPredictionLabel(_:_:_:_:)(historicalPeriodsStartDays, *currentSliceStart, sliceSize, minLabel);
    v7 = v9 & 1;
  }

  result.value._1 = v7;
  result.value._0 = v6;
  result.is_nil = v8;
  return result;
}

Swift::Void __swiftcall appendFeature(_:_:_:_:_:_:_:_:_:_:)(Swift::Float a1, Swift::OpaquePointer *a2, Swift::Float a3, Swift::OpaquePointer *a4, Swift::Float a5, Swift::OpaquePointer *a6, Swift::Float a7, Swift::OpaquePointer *a8, Swift::Float a9, Swift::OpaquePointer *a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  Array.append(_:)();
  Array.append(_:)();
  Array.append(_:)();
  Array.append(_:)();
  Array.append(_:)();
}

uint64_t Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(char a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v27 = a4;
  v28 = a2;
  v29 = a5;
  v35 = 0;
  v30 = 0;
  v32 = 0.0;
  v41 = a3;
  v31 = a3;
  v40 = a1;
  v39 = a5;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  if ((a1 & 1) == 0)
  {
    v25 = 1;
    v26 = v30;
    return v25 & 1;
  }

  v5 = v30;

  v34 = v28;
  v20 = &v13;
  MEMORY[0x28223BE20](&v13);
  v21 = v12;
  v12[4] = v31;
  v12[5] = v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v7 = _ArrayProtocol.filter(_:)();
  v23 = v5;
  v24 = v7;
  v16 = v7;
  v17 = MEMORY[0x25F8895B0]();

  result = v17;
  v18 = v17;
  v19 = HIDWORD(v31) - v31;
  if (HIDWORD(v31) < v31)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v19 + 1;
  if (v19 == -1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v15;
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  result = Double.init<A>(_:)();
  v32 = v18 / v9;
  if (v18 / v9 >= v29)
  {
    v25 = 1;
    v26 = v23;
    return v25 & 1;
  }

  v10 = __OFADD__(*v27, 1);
  v14 = *v27 + 1;
  if (!v10)
  {
    v11 = v23;
    *v27 = v14;
    v25 = 0;
    v26 = v11;
    return v25 & 1;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:cache:)(Swift::OpaquePointer feature, Swift::UInt32 *lastDayHasFeature, Swift::UInt32 currentDay, Swift::Float *cache)
{
  v12[1] = 0;
  rawValue = feature._rawValue;
  v14 = lastDayHasFeature;
  v13 = currentDay;
  v12[2] = cache;
  v11 = currentDay;
  MEMORY[0x25F8891D0](v12, &v11, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v12[0] & 0x100000000) == 0)
  {
    *lastDayHasFeature = currentDay;
  }

  v9 = *lastDayHasFeature;
  MEMORY[0x25F8891D0](&v10, &v9, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v10 & 0x100000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v10;
  }

  *cache = v4;
}

Swift::Void __swiftcall Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(Swift::Bool required, Swift::OpaquePointer feature, Swift::UInt32_optional *lastDay, Swift::OpaquePointer *to, Swift::UInt32 currentDay, Swift::Float *cache)
{
  if (required)
  {
    if (lastDay->is_nil)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:cache:)(feature, &lastDay->value, currentDay, cache);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }
}

Swift::Void __swiftcall Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:defaultValue:cache:)(Swift::OpaquePointer feature, Swift::UInt32_optional *lastDayHasFeature, Swift::UInt32 currentDay, Swift::Float defaultValue, Swift::Float *cache)
{
  v21 = 0;
  v17 = 0;
  v16 = 0;
  rawValue = feature._rawValue;
  v25 = lastDayHasFeature;
  v24 = currentDay;
  v23 = defaultValue;
  v22 = cache;
  v20 = defaultValue;
  value = lastDayHasFeature->value;
  if (lastDayHasFeature->is_nil)
  {
    v8 = defaultValue;
  }

  else
  {
    v16 = lastDayHasFeature->value;
    v14 = value;
    MEMORY[0x25F8891D0](&v15, &v14, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
    if ((v15 & 0x100000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v7 = *&v15;
    }

    v20 = v7;
    v8 = v7;
  }

  v18 = currentDay;
  MEMORY[0x25F8891D0](&v19, &v18, feature._rawValue, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  v6 = *&v19;
  if ((v19 & 0x100000000) != 0)
  {
    v5 = v8;
  }

  else
  {
    v17 = v19;
    lastDayHasFeature->value = currentDay;
    lastDayHasFeature->is_nil = 0;
    v20 = v6;
    v5 = v6;
  }

  *cache = v5;
}

Swift::Void __swiftcall Featurizer.updateFeature(required:feature:lastDayHasFeature:to:currentDay:defaultValue:cache:)(Swift::Bool required, Swift::OpaquePointer feature, Swift::UInt32_optional *lastDayHasFeature, Swift::OpaquePointer *to, Swift::UInt32 currentDay, Swift::Float defaultValue, Swift::Float *cache)
{
  if (required)
  {
    Featurizer.updateFeature(feature:lastDayHasFeature:currentDay:defaultValue:cache:)(feature, lastDayHasFeature, currentDay, defaultValue, cache);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }
}

uint64_t Featurizer.featureArrayWithNan(feature:)(uint64_t a1)
{
  v26 = 0;
  v19 = 0;
  v15 = 0;
  v14[0] = 0;
  *(v14 + 5) = 0;
  v9 = 0;
  v27 = a1;
  v25 = Array.init()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd);
  lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  v6 = Sequence<>.sorted()();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v23 = v6;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  Collection.first.getter();
  if (v21 & 1) != 0 || (v19 = v20, v18 = v6, lazy protocol witness table accessor for type [UInt32] and conformance [A](), BidirectionalCollection.last.getter(), (v17))
  {
    v2 = _allocateUninitializedArray<A>(_:)();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v2;
  }

  else
  {
    v15 = v16;
    if (v16 < v20)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v12 = v20;
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
    lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNys6UInt32VGGMd);
      IndexingIterator.next()();
      if (v11)
      {
        break;
      }

      v9 = v10;
      v7 = v10;
      MEMORY[0x25F8891D0](&v8, &v7, a1, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
      if ((v8 & 0x100000000) != 0)
      {
        static Float.nan.getter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      Array.append(_:)();
    }

    v3 = v25;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v3;
  }
}

id Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  v15 = MEMORY[0x28223BE20](a1);
  v1070 = v14;
  v1094 = v13;
  v1092 = v16;
  v1091 = v17;
  v1090 = v18;
  v1089 = v19;
  v1088 = v20;
  v1087 = v21;
  v1096 = v22;
  v1095 = v15;
  v1071 = v23;
  v1099 = a13;
  v1072 = a13;
  v1073 = a12;
  v1098 = a11;
  v1074 = a11;
  v1097 = a10;
  v1075 = a10;
  v1093 = a9;
  v1076 = a9;
  v1077 = 0;
  v1212 = 0;
  v1211 = 0;
  v1210 = 0;
  v1209 = 0;
  v1208 = 0;
  v1207 = 0;
  v1206 = 0;
  v1205 = 0;
  v1204 = 0;
  v1203 = 0;
  v1202 = 0;
  v1201 = 0;
  v1200 = 0;
  v1199 = 0;
  v1192 = 0;
  v1191 = 0;
  v1190 = 0;
  v1189 = 0;
  v1188 = 0;
  v1179 = 0;
  v1176 = 0;
  v1173 = 0;
  v1168 = 0;
  v1165 = 0;
  v1162 = 0;
  v1159 = 0;
  v1156 = 0;
  v1153 = 0;
  v1150 = 0;
  v1147 = 0;
  v1144 = 0;
  v1141 = 0;
  v1138 = 0;
  v1135 = 0;
  v1132 = 0;
  v1129 = 0;
  v1126 = 0;
  v1123 = 0;
  v1120 = 0;
  v1117 = 0;
  v1114 = 0;
  v1111 = 0;
  v1108 = 0;
  v1105 = 0;
  v1078 = type metadata accessor for Logger();
  v1079 = *(v1078 - 8);
  v1080 = v1079;
  v1083 = *(v1079 + 64);
  v24 = MEMORY[0x28223BE20](0);
  v1085 = (v1083 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1081 = &v329 - v1085;
  v25 = MEMORY[0x28223BE20](v24);
  v1082 = &v329 - v1085;
  v26 = MEMORY[0x28223BE20](v25);
  v1084 = &v329 - v1085;
  MEMORY[0x28223BE20](v26);
  v1086 = &v329 - v1085;
  type metadata accessor for String.Encoding();
  v27 = MEMORY[0x28223BE20](v1095);
  v1100 = &v329 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1212 = v27;
  v1211 = v29;
  v1210 = v30;
  v1209 = v31;
  v1208 = v32;
  v1207 = v33;
  v1206 = v34;
  v1205 = v35;
  v1204 = v36;
  v1203 = v1097;
  v1202 = v1098;
  v1201 = a12;
  v1200 = v1099;
  v1199 = v37;
  v1198 = HyperParams.featurizerEngine.getter() & 1;
  v1197 = 1;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    v1063 = v1070;
LABEL_293:
    v411 = v1063;
    static PFLLogging.plugin.getter();
    v415 = Logger.logObject.getter();
    v412 = v415;
    v414 = static os_log_type_t.debug.getter();
    v413 = v414;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
    v416 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v415, v414))
    {
      v409 = v411;
      v401 = static UnsafeMutablePointer.allocate(capacity:)();
      v397 = v401;
      v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      v399 = 0;
      v402 = createStorage<A>(capacity:type:)(0);
      v400 = v402;
      v403 = createStorage<A>(capacity:type:)(v399);
      v1196[0] = v401;
      v1195 = v402;
      v1194 = v403;
      v404 = 0;
      v405 = v1196;
      serialize(_:at:)(0, v1196);
      serialize(_:at:)(v404, v405);
      v1193 = v416;
      v406 = &v329;
      MEMORY[0x28223BE20](&v329);
      v407 = &v329 - 6;
      v325 = v283;
      v326 = &v1195;
      v327 = &v1194;
      v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      v284 = v409;
      Sequence.forEach(_:)();
      v410 = v284;
      if (v284)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25C4D8000, v412, v413, "Using native to featurize.", v397, 2u);
        v395 = 0;
        destroyStorage<A>(_:count:)(v400, 0, v398);
        destroyStorage<A>(_:count:)(v403, v395, MEMORY[0x277D84F70] + 8);
        MEMORY[0x25F8899D0](v397, MEMORY[0x277D84B78]);

        v396 = v410;
      }
    }

    else
    {

      v396 = v411;
    }

    v371 = v396;

    (*(v1080 + 8))(v1082, v1078);
    v285 = v371;
    Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(v1096, v1087, v1088, v1089, v1090, v1091, v1092, v1076, v1075, v1074, v1073, v1072);
    v372 = v285;
    v373 = v1196[43];
    v374 = v1196[44];
    v375 = v1196[45];
    v376 = v1196[46];
    v377 = v1196[47];
    v378 = v1196[48];
    v379 = v1196[49];
    v380 = v1196[50];
    v381 = v1196[51];
    v382 = v1196[52];
    v383 = v1196[53];
    v384 = v1196[54];
    v385 = v1196[55];
    v386 = v1196[56];
    v387 = v1196[57];
    v388 = v1196[58];
    v389 = v1196[59];
    v390 = v1196[60];
    v391 = v1196[61];
    v392 = v1196[62];
    v393 = v1196[63];
    v394 = v285;
    if (!v285)
    {
      v1196[22] = v373;
      v1196[23] = v374;
      v1196[24] = v375;
      v1196[25] = v376;
      v1196[26] = v377;
      v1196[27] = v378;
      v1196[28] = v379;
      v1196[29] = v380;
      v1196[30] = v381;
      v1196[31] = v382;
      v1196[32] = v383;
      v1196[33] = v384;
      v1196[34] = v385;
      v1196[35] = v386;
      v1196[36] = v387;
      v1196[37] = v388;
      v1196[38] = v389;
      v1196[39] = v390;
      v1196[40] = v391;
      v1196[41] = v392;
      v1196[42] = v393;
      v512 = v373;
      v513 = v374;
      v514 = v375;
      v515 = v376;
      v516 = v377;
      v517 = v378;
      v518 = v379;
      v519 = v380;
      v520 = v381;
      v521 = v382;
      v522 = v383;
      v523 = v384;
      v524 = v385;
      v525 = v386;
      v526 = v387;
      v527 = v388;
      v528 = v389;
      v529 = v390;
      v530 = v391;
      v531 = v392;
      v532 = v393;
      v533 = 0;
      goto LABEL_300;
    }

    return v394;
  }

  HyperParams.morpheusFeaturizerProgramFileName.getter();
  v1066 = v38;
  v39 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v1069 = v40;
  v1067 = v39;
  v1068 = v40;

  if (!v1069)
  {
    v1063 = v1070;
    goto LABEL_293;
  }

  v1064 = v1067;
  v1065 = v1068;
  v1057 = v1068;
  v1056 = v1067;
  v1058 = v1070;
  v1191 = v1067;
  v1192 = v1068;
  static String.Encoding.utf8.getter();
  v41 = v1058;
  v42 = String.init(contentsOfFile:encoding:)();
  v1059 = v41;
  v1060 = v42;
  v1061 = v43;
  v1062 = v41;
  if (v41)
  {
    v369 = 0;
    v370 = 0;

    v1053 = v369;
    v1054 = v369;
    v1055 = v370;
  }

  else
  {
    v1053 = v1060;
    v1054 = v1061;
    v1055 = 0;
  }

  v1050 = v1055;
  v1051 = v1054;
  v1052 = v1053;
  if (!v1054)
  {

    v1063 = v1050;
    goto LABEL_293;
  }

  v1048 = v1052;
  v1049 = v1051;
  v1040 = v1051;
  v1041 = v1052;
  v1189 = v1052;
  v1190 = v1051;
  static PFLLogging.plugin.getter();
  v1046 = Logger.logObject.getter();
  v1042 = v1046;
  v1045 = static os_log_type_t.debug.getter();
  v1043 = v1045;
  v1044 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
  v1047 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v1046, v1045))
  {
    v1038 = v1050;
    v1030 = static UnsafeMutablePointer.allocate(capacity:)();
    v1026 = v1030;
    v1027 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    v1028 = 0;
    v1031 = createStorage<A>(capacity:type:)(0);
    v1029 = v1031;
    v1032 = createStorage<A>(capacity:type:)(v1028);
    v1104[0] = v1030;
    v1103 = v1031;
    v1102 = v1032;
    v1033 = 0;
    v1034 = v1104;
    serialize(_:at:)(0, v1104);
    serialize(_:at:)(v1033, v1034);
    v1101 = v1047;
    v1035 = &v329;
    MEMORY[0x28223BE20](&v329);
    v1036 = &v329 - 6;
    v325 = v45;
    v326 = &v1103;
    v327 = &v1102;
    v1037 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v46 = v1038;
    Sequence.forEach(_:)();
    v1039 = v46;
    if (v46)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_25C4D8000, v1042, v1043, "Using Morpheus to featurize.", v1026, 2u);
      v1024 = 0;
      destroyStorage<A>(_:count:)(v1029, 0, v1027);
      destroyStorage<A>(_:count:)(v1032, v1024, MEMORY[0x277D84F70] + 8);
      MEMORY[0x25F8899D0](v1026, MEMORY[0x277D84B78]);

      v1025 = v1039;
    }
  }

  else
  {

    v1025 = v1050;
  }

  v1020 = v1025;

  v1018 = *(v1080 + 8);
  v1019 = (v1080 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1018(v1086, v1078);
  type metadata accessor for MorpheusProgram();
  v47 = v1020;
  v48 = static MorpheusProgram.fromDSL(_:)();
  v1021 = v47;
  v1022 = v48;
  v1023 = v47;
  if (v47)
  {
    v509 = v1023;
    v510 = 0;
    goto LABEL_302;
  }

  v1010 = v1022;
  v1015 = 0;
  v1179 = v1022;
  v1178 = v1074;
  v1011 = &v329;
  MEMORY[0x28223BE20](&v329);
  v1012 = &v325;
  v327 = closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v1013 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
  v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SaySaySiGGtMd);
  v49 = lazy protocol witness table accessor for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B]();
  v50 = v1015;
  v52 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt8, @guaranteed [(start: UInt32, end: UInt32)]) -> (@unowned Int, @owned [[Int]]), v1012, v1013, v1014, MEMORY[0x277D84A98], v49, MEMORY[0x277D84AC0], v51);
  v1016 = v50;
  v1017 = v52;
  if (v50)
  {
    __break(1u);
    goto LABEL_311;
  }

  v1007 = 0;
  v1177 = v1017;
  v1000 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySiGGMd);
  v999 = v1000;
  v1001 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SaySaySiGGtGMd);
  lazy protocol witness table accessor for type [(Int, [[Int]])] and conformance [A]();
  v1002 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v1176 = v1002;
  v1175 = v1076;
  v1003 = &v329;
  MEMORY[0x28223BE20](&v329);
  v1004 = &v325;
  v327 = closure #2 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v1005 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMd);
  v1006 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SaySfGtMd);
  v53 = lazy protocol witness table accessor for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)] and conformance [A : B]();
  v54 = v1007;
  v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float) -> (@unowned Int, @owned [Float]), v1004, v1005, v1006, MEMORY[0x277D84A98], v53, MEMORY[0x277D84AC0], v55);
  v1008 = v54;
  v1009 = v56;
  if (v54)
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  v995 = 0;
  v1174 = v1009;
  v982 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v981 = v982;
  v983 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SaySfGtGMd);
  lazy protocol witness table accessor for type [(Int, [Float])] and conformance [A]();
  v984 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v1173 = v984;
  v57 = _allocateUninitializedArray<A>(_:)();
  v987 = v58;
  v985 = v57;
  v986 = v58;

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
  v60 = v1096;
  v61 = v987;
  v62 = v1087;
  v987[3] = v59;
  *v61 = v60;
  v988 = v61 + 4;
  v1171[16] = v62;
  v989 = &v329;
  MEMORY[0x28223BE20](&v329);
  v992 = &v325;
  v327 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v993 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
  v990 = v993;
  v994 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SftMd);
  v991 = v994;
  v63 = lazy protocol witness table accessor for type [UInt32 : Float] and conformance [A : B]();
  v64 = v995;
  v996 = v63;
  v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), v992, v993, v994, MEMORY[0x277D84A98], v63, MEMORY[0x277D84AC0], v65);
  v997 = v64;
  v998 = v66;
  if (v64)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v976 = 0;
  v1171[15] = v998;
  v972 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_SftGMd);
  v971 = v972;
  v973 = lazy protocol witness table accessor for type [(Int, Float)] and conformance [A]();
  v974 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSfGMd);
  v68 = v988;
  v69 = v974;
  v70 = v67;
  v71 = v1087;
  v975 = v70;
  v988[3] = v70;
  *v68 = v69;
  v72 = Featurizer.featureArrayWithNan(feature:)(v71);
  v73 = v986;
  v74 = v1088;
  v75 = v976;
  v986[11] = v981;
  v73[8] = v72;
  v977 = v73 + 12;
  v1171[14] = v74;
  v978 = &v329;
  MEMORY[0x28223BE20](&v329);
  v327 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v325, v76, v77, MEMORY[0x277D84A98], v78, MEMORY[0x277D84AC0], v79);
  v979 = v75;
  v980 = v80;
  if (v75)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v966 = 0;
  v1171[13] = v980;
  v81 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v82 = v977;
  v83 = v81;
  v84 = v1088;
  v977[3] = v975;
  *v82 = v83;
  v85 = Featurizer.featureArrayWithNan(feature:)(v84);
  v86 = v986;
  v87 = v1089;
  v88 = v966;
  v986[19] = v981;
  v86[16] = v85;
  v967 = v86 + 20;
  v1171[12] = v87;
  v968 = &v329;
  MEMORY[0x28223BE20](&v329);
  v327 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v93 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v325, v89, v90, MEMORY[0x277D84A98], v91, MEMORY[0x277D84AC0], v92);
  v969 = v88;
  v970 = v93;
  if (v88)
  {
LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

  v961 = 0;
  v1171[11] = v970;
  v94 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v95 = v967;
  v96 = v94;
  v97 = v1089;
  v967[3] = v975;
  *v95 = v96;
  v98 = Featurizer.featureArrayWithNan(feature:)(v97);
  v99 = v986;
  v100 = v1090;
  v101 = v961;
  v986[27] = v981;
  v99[24] = v98;
  v962 = v99 + 28;
  v1171[10] = v100;
  v963 = &v329;
  MEMORY[0x28223BE20](&v329);
  v327 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v106 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v325, v102, v103, MEMORY[0x277D84A98], v104, MEMORY[0x277D84AC0], v105);
  v964 = v101;
  v965 = v106;
  if (v101)
  {
LABEL_315:
    __break(1u);
    goto LABEL_316;
  }

  v956 = 0;
  v1171[9] = v965;
  v107 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v108 = v962;
  v109 = v107;
  v110 = v1090;
  v962[3] = v975;
  *v108 = v109;
  v111 = Featurizer.featureArrayWithNan(feature:)(v110);
  v112 = v986;
  v113 = v1091;
  v114 = v956;
  v986[35] = v981;
  v112[32] = v111;
  v957 = v112 + 36;
  v1171[8] = v113;
  v958 = &v329;
  MEMORY[0x28223BE20](&v329);
  v327 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v119 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v325, v115, v116, MEMORY[0x277D84A98], v117, MEMORY[0x277D84AC0], v118);
  v959 = v114;
  v960 = v119;
  if (v114)
  {
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v951 = 0;
  v1171[7] = v960;
  v120 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v121 = v957;
  v122 = v120;
  v123 = v1091;
  v957[3] = v975;
  *v121 = v122;
  v124 = Featurizer.featureArrayWithNan(feature:)(v123);
  v125 = v986;
  v126 = v1092;
  v127 = v951;
  v986[43] = v981;
  v125[40] = v124;
  v952 = v125 + 44;
  v1171[6] = v126;
  v953 = &v329;
  MEMORY[0x28223BE20](&v329);
  v327 = closure #3 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:);
  v328 = 0;
  v132 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float), &v325, v128, v129, MEMORY[0x277D84A98], v130, MEMORY[0x277D84AC0], v131);
  v954 = v127;
  v955 = v132;
  if (v127)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v947 = 0;
  v1171[5] = v955;
  v946 = MEMORY[0x277D83A90];
  v133 = Dictionary.init<A>(uniqueKeysWithValues:)();
  v134 = v952;
  v135 = v133;
  v136 = v1092;
  v952[3] = v975;
  *v134 = v135;
  v137 = Featurizer.featureArrayWithNan(feature:)(v136);
  v138 = v986;
  v986[51] = v981;
  v138[48] = v137;

  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSaySfGGMd);
  v140 = v984;
  v141 = v986;
  v986[55] = v139;
  v141[52] = v140;
  v943 = v141 + 56;
  KeyPath = swift_getKeyPath();
  v944 = KeyPath;

  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd);
  v143 = v947;
  v948 = v142;
  v144 = Dictionary.mapValues<A>(_:)();
  v949 = v143;
  v950 = v144;
  if (v143)
  {
LABEL_318:

    __break(1u);
    goto LABEL_319;
  }

  v935 = v950;
  v938 = 0;

  v936 = Featurizer.featureArrayWithNan(feature:)(v935);

  v145 = v943;
  v146 = v936;
  v147 = v986;
  v943[3] = v981;
  *v145 = v146;
  v937 = v147 + 60;
  v148 = swift_getKeyPath();
  v149 = v938;
  v940 = v148;
  v939 = v148;

  v150 = Dictionary.mapValues<A>(_:)();
  v941 = v149;
  v942 = v150;
  if (v149)
  {
LABEL_319:

    __break(1u);
    goto LABEL_320;
  }

  v927 = v942;
  v932 = 0;

  v928 = Featurizer.featureArrayWithNan(feature:)(v927);

  v151 = v937;
  v152 = v928;
  v153 = v986;
  v154 = v1075;
  v937[3] = v981;
  *v151 = v152;
  v929 = v153 + 64;
  v1171[4] = v154;
  v930 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v155 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v156 = v932;
  v158 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:), 0, v930, v931, MEMORY[0x277D84A98], v155, MEMORY[0x277D84AC0], v157);
  v933 = v156;
  v934 = v158;
  if (v156)
  {
LABEL_320:
    __break(1u);
    goto LABEL_321;
  }

  v159 = v929;
  v160 = v934;
  v921 = 0;
  v929[3] = v999;
  *v159 = v160;

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSaySaySiGGGMd);
  v162 = v1002;
  v163 = v986;
  v986[71] = v161;
  v163[68] = v162;

  v918 = 0;
  v164 = type metadata accessor for HyperParams();
  v165 = v1073;
  v166 = v1072;
  v167 = v986;
  v168 = v164;
  v169 = v985;
  v986[75] = v168;
  v167[72] = v165;
  v167[79] = MEMORY[0x277D83B88];
  v167[76] = v166;
  v919 = MEMORY[0x277D84F70] + 8;
  _finalizeUninitializedArray<A>(_:)();
  v922 = v169;
  v917 = v169;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  _allocateUninitializedArray<A>(_:)();
  v923 = Dictionary.init(dictionaryLiteral:)();
  v920 = v923;
  v170 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurize", 9uLL, 1);
  v171 = v921;
  object = v170._object;
  dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
  v925 = v171;
  v926 = v171;
  if (v171)
  {
LABEL_321:
    v330 = v926;
    v331 = 0;

    v509 = v330;
    v510 = v331;
    goto LABEL_302;
  }

  v1170[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v1170[0] = swift_allocObject();
  outlined init with copy of Any?(v1172, v1170[0] + 16);
  v916 = v1171;
  v915 = v1170;
  static MorpheusUtils.unwrapMorpheusResult(result:)();
  __swift_destroy_boxed_opaque_existential_1(v915);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  if (swift_dynamicCast())
  {
    v914 = v1169;
  }

  else
  {
    v914 = 0;
  }

  v913 = v914;
  if (!v914)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v443 = 0;
    v444 = swift_allocError();
    *v278 = 73;
    swift_willThrow();
    v445 = v443;
    outlined destroy of Pregnancy?(v1172);

    v509 = v444;
    v510 = v445;
    goto LABEL_302;
  }

  v912 = v913;
  v910 = v913;
  v1168 = v913;
  v1166 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10", 0xFuLL, 1);
  v911 = &v1166;
  MEMORY[0x25F8891D0](v1167);
  outlined destroy of DefaultStringInterpolation();
  if (v1167[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v909 = v1104[1];
    }

    else
    {
      v909 = 0;
    }

    v908 = v909;
  }

  else
  {
    outlined destroy of Pregnancy?(v1167);
    v908 = 0;
  }

  v907 = v908;
  if (v908)
  {
    v906 = v907;
    v903 = v925;
    v1104[2] = v907;
    v901 = swift_getKeyPath();
    v900 = v901;

    v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v172 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v173 = v903;
    v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v901, v902, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v172, MEMORY[0x277D84AC0], v174);
    v904 = v173;
    v905 = v175;
    if (v173)
    {

      __break(1u);
      goto LABEL_323;
    }

    v897 = v905;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v898 = v897;
    v899 = v904;
  }

  else
  {
    v898 = 0;
    v899 = v925;
  }

  v895 = v899;
  v896 = v898;
  if (!v898)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v446 = 0;
    v447 = swift_allocError();
    *v277 = 74;
    swift_willThrow();
    v448 = v446;

    outlined destroy of Pregnancy?(v1172);

    v509 = v447;
    v510 = v448;
    goto LABEL_302;
  }

  v894 = v896;
  v892 = v896;
  v1165 = v896;
  v1163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10Stats", 0x14uLL, 1);
  v893 = &v1163;
  MEMORY[0x25F8891D0](v1164);
  outlined destroy of DefaultStringInterpolation();
  if (v1164[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v891 = v1104[3];
    }

    else
    {
      v891 = 0;
    }

    v890 = v891;
  }

  else
  {
    outlined destroy of Pregnancy?(v1164);
    v890 = 0;
  }

  v889 = v890;
  if (v890)
  {
    v888 = v889;
    v885 = v895;
    v1104[4] = v889;
    v883 = swift_getKeyPath();
    v882 = v883;

    v884 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v176 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v177 = v885;
    v179 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v883, v884, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v176, MEMORY[0x277D84AC0], v178);
    v886 = v177;
    v887 = v179;
    if (!v177)
    {
      v879 = v887;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v880 = v879;
      v881 = v886;
      goto LABEL_49;
    }

LABEL_323:

    __break(1u);
    goto LABEL_324;
  }

  v880 = 0;
  v881 = v895;
LABEL_49:
  v877 = v881;
  v878 = v880;
  if (!v880)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v449 = 0;
    v450 = swift_allocError();
    *v276 = 74;
    swift_willThrow();
    v451 = v449;

    outlined destroy of Pregnancy?(v1172);

    v509 = v450;
    v510 = v451;
    goto LABEL_302;
  }

  v876 = v878;
  v874 = v878;
  v1162 = v878;
  v1160 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10", 0x11uLL, 1);
  v875 = &v1160;
  MEMORY[0x25F8891D0](v1161);
  outlined destroy of DefaultStringInterpolation();
  if (v1161[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v873 = v1104[5];
    }

    else
    {
      v873 = 0;
    }

    v872 = v873;
  }

  else
  {
    outlined destroy of Pregnancy?(v1161);
    v872 = 0;
  }

  v871 = v872;
  if (v872)
  {
    v870 = v871;
    v867 = v877;
    v1104[6] = v871;
    v865 = swift_getKeyPath();
    v864 = v865;

    v866 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v180 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v181 = v867;
    v183 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v865, v866, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v180, MEMORY[0x277D84AC0], v182);
    v868 = v181;
    v869 = v183;
    if (!v181)
    {
      v861 = v869;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v862 = v861;
      v863 = v868;
      goto LABEL_58;
    }

LABEL_324:

    __break(1u);
    goto LABEL_325;
  }

  v862 = 0;
  v863 = v877;
LABEL_58:
  v859 = v863;
  v860 = v862;
  if (!v862)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v452 = 0;
    v453 = swift_allocError();
    *v275 = 75;
    swift_willThrow();
    v454 = v452;

    outlined destroy of Pregnancy?(v1172);

    v509 = v453;
    v510 = v454;
    goto LABEL_302;
  }

  v858 = v860;
  v856 = v860;
  v1159 = v860;
  v1157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10Stats", 0x16uLL, 1);
  v857 = &v1157;
  MEMORY[0x25F8891D0](v1158);
  outlined destroy of DefaultStringInterpolation();
  if (v1158[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v855 = v1104[7];
    }

    else
    {
      v855 = 0;
    }

    v854 = v855;
  }

  else
  {
    outlined destroy of Pregnancy?(v1158);
    v854 = 0;
  }

  v853 = v854;
  if (v854)
  {
    v852 = v853;
    v849 = v859;
    v1104[8] = v853;
    v847 = swift_getKeyPath();
    v846 = v847;

    v848 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v184 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v185 = v849;
    v187 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v847, v848, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v184, MEMORY[0x277D84AC0], v186);
    v850 = v185;
    v851 = v187;
    if (!v185)
    {
      v843 = v851;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v844 = v843;
      v845 = v850;
      goto LABEL_67;
    }

LABEL_325:

    __break(1u);
    goto LABEL_326;
  }

  v844 = 0;
  v845 = v859;
LABEL_67:
  v841 = v845;
  v842 = v844;
  if (!v844)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v455 = 0;
    v456 = swift_allocError();
    *v274 = 75;
    swift_willThrow();
    v457 = v455;

    outlined destroy of Pregnancy?(v1172);

    v509 = v456;
    v510 = v457;
    goto LABEL_302;
  }

  v840 = v842;
  v838 = v842;
  v1156 = v842;
  v1154 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSM", 0xAuLL, 1);
  v839 = &v1154;
  MEMORY[0x25F8891D0](v1155);
  outlined destroy of DefaultStringInterpolation();
  if (v1155[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v837 = v1104[9];
    }

    else
    {
      v837 = 0;
    }

    v836 = v837;
  }

  else
  {
    outlined destroy of Pregnancy?(v1155);
    v836 = 0;
  }

  v835 = v836;
  if (v836)
  {
    v834 = v835;
    v831 = v841;
    v1104[10] = v835;
    v829 = swift_getKeyPath();
    v828 = v829;

    v830 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v188 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v189 = v831;
    v191 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v829, v830, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v188, MEMORY[0x277D84AC0], v190);
    v832 = v189;
    v833 = v191;
    if (!v189)
    {
      v825 = v833;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v826 = v825;
      v827 = v832;
      goto LABEL_76;
    }

LABEL_326:

    __break(1u);
    goto LABEL_327;
  }

  v826 = 0;
  v827 = v841;
LABEL_76:
  v823 = v827;
  v824 = v826;
  if (!v826)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v458 = 0;
    v459 = swift_allocError();
    *v273 = 76;
    swift_willThrow();
    v460 = v458;

    outlined destroy of Pregnancy?(v1172);

    v509 = v459;
    v510 = v460;
    goto LABEL_302;
  }

  v822 = v824;
  v820 = v824;
  v1153 = v824;
  v1151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSMStats", 0xFuLL, 1);
  v821 = &v1151;
  MEMORY[0x25F8891D0](v1152);
  outlined destroy of DefaultStringInterpolation();
  if (v1152[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v819 = v1104[11];
    }

    else
    {
      v819 = 0;
    }

    v818 = v819;
  }

  else
  {
    outlined destroy of Pregnancy?(v1152);
    v818 = 0;
  }

  v817 = v818;
  if (v818)
  {
    v816 = v817;
    v813 = v823;
    v1104[12] = v817;
    v811 = swift_getKeyPath();
    v810 = v811;

    v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v192 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v193 = v813;
    v195 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v811, v812, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v192, MEMORY[0x277D84AC0], v194);
    v814 = v193;
    v815 = v195;
    if (!v193)
    {
      v807 = v815;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v808 = v807;
      v809 = v814;
      goto LABEL_85;
    }

LABEL_327:

    __break(1u);
    goto LABEL_328;
  }

  v808 = 0;
  v809 = v823;
LABEL_85:
  v805 = v809;
  v806 = v808;
  if (!v808)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v461 = 0;
    v462 = swift_allocError();
    *v272 = 76;
    swift_willThrow();
    v463 = v461;

    outlined destroy of Pregnancy?(v1172);

    v509 = v462;
    v510 = v463;
    goto LABEL_302;
  }

  v804 = v806;
  v802 = v806;
  v1150 = v806;
  v1148 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSS", 0xAuLL, 1);
  v803 = &v1148;
  MEMORY[0x25F8891D0](v1149);
  outlined destroy of DefaultStringInterpolation();
  if (v1149[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v801 = v1104[13];
    }

    else
    {
      v801 = 0;
    }

    v800 = v801;
  }

  else
  {
    outlined destroy of Pregnancy?(v1149);
    v800 = 0;
  }

  v799 = v800;
  if (v800)
  {
    v798 = v799;
    v795 = v805;
    v1104[14] = v799;
    v793 = swift_getKeyPath();
    v792 = v793;

    v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v196 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v197 = v795;
    v199 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v793, v794, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v196, MEMORY[0x277D84AC0], v198);
    v796 = v197;
    v797 = v199;
    if (!v197)
    {
      v789 = v797;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v790 = v789;
      v791 = v796;
      goto LABEL_94;
    }

LABEL_328:

    __break(1u);
    goto LABEL_329;
  }

  v790 = 0;
  v791 = v805;
LABEL_94:
  v787 = v791;
  v788 = v790;
  if (!v790)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v464 = 0;
    v465 = swift_allocError();
    *v271 = 77;
    swift_willThrow();
    v466 = v464;

    outlined destroy of Pregnancy?(v1172);

    v509 = v465;
    v510 = v466;
    goto LABEL_302;
  }

  v786 = v788;
  v784 = v788;
  v1147 = v788;
  v1145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSSStats", 0xFuLL, 1);
  v785 = &v1145;
  MEMORY[0x25F8891D0](v1146);
  outlined destroy of DefaultStringInterpolation();
  if (v1146[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v783 = v1104[15];
    }

    else
    {
      v783 = 0;
    }

    v782 = v783;
  }

  else
  {
    outlined destroy of Pregnancy?(v1146);
    v782 = 0;
  }

  v781 = v782;
  if (v782)
  {
    v780 = v781;
    v777 = v787;
    v1104[16] = v781;
    v775 = swift_getKeyPath();
    v774 = v775;

    v776 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v200 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v201 = v777;
    v203 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v775, v776, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v200, MEMORY[0x277D84AC0], v202);
    v778 = v201;
    v779 = v203;
    if (!v201)
    {
      v771 = v779;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v772 = v771;
      v773 = v778;
      goto LABEL_103;
    }

LABEL_329:

    __break(1u);
    goto LABEL_330;
  }

  v772 = 0;
  v773 = v787;
LABEL_103:
  v769 = v773;
  v770 = v772;
  if (!v772)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v467 = 0;
    v468 = swift_allocError();
    *v270 = 77;
    swift_willThrow();
    v469 = v467;

    outlined destroy of Pregnancy?(v1172);

    v509 = v468;
    v510 = v469;
    goto LABEL_302;
  }

  v768 = v770;
  v766 = v770;
  v1144 = v770;
  v1142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStart", 0x1FuLL, 1);
  v767 = &v1142;
  MEMORY[0x25F8891D0](v1143);
  outlined destroy of DefaultStringInterpolation();
  if (v1143[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v765 = v1104[17];
    }

    else
    {
      v765 = 0;
    }

    v764 = v765;
  }

  else
  {
    outlined destroy of Pregnancy?(v1143);
    v764 = 0;
  }

  v763 = v764;
  if (v764)
  {
    v762 = v763;
    v759 = v769;
    v1104[18] = v763;
    v757 = swift_getKeyPath();
    v756 = v757;

    v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v204 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v205 = v759;
    v207 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v757, v758, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v204, MEMORY[0x277D84AC0], v206);
    v760 = v205;
    v761 = v207;
    if (!v205)
    {
      v753 = v761;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v754 = v753;
      v755 = v760;
      goto LABEL_112;
    }

LABEL_330:

    __break(1u);
    goto LABEL_331;
  }

  v754 = 0;
  v755 = v769;
LABEL_112:
  v751 = v755;
  v752 = v754;
  if (!v754)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v470 = 0;
    v471 = swift_allocError();
    *v269 = 78;
    swift_willThrow();
    v472 = v470;

    outlined destroy of Pregnancy?(v1172);

    v509 = v471;
    v510 = v472;
    goto LABEL_302;
  }

  v750 = v752;
  v748 = v752;
  v1141 = v752;
  v1139 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStartStats", 0x24uLL, 1);
  v749 = &v1139;
  MEMORY[0x25F8891D0](v1140);
  outlined destroy of DefaultStringInterpolation();
  if (v1140[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v747 = v1104[19];
    }

    else
    {
      v747 = 0;
    }

    v746 = v747;
  }

  else
  {
    outlined destroy of Pregnancy?(v1140);
    v746 = 0;
  }

  v745 = v746;
  if (v746)
  {
    v744 = v745;
    v741 = v751;
    v1104[20] = v745;
    v739 = swift_getKeyPath();
    v738 = v739;

    v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v208 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v209 = v741;
    v211 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v739, v740, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v208, MEMORY[0x277D84AC0], v210);
    v742 = v209;
    v743 = v211;
    if (!v209)
    {
      v735 = v743;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v736 = v735;
      v737 = v742;
      goto LABEL_121;
    }

LABEL_331:

    __break(1u);
    goto LABEL_332;
  }

  v736 = 0;
  v737 = v751;
LABEL_121:
  v733 = v737;
  v734 = v736;
  if (!v736)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v473 = 0;
    v474 = swift_allocError();
    *v268 = 78;
    swift_willThrow();
    v475 = v473;

    outlined destroy of Pregnancy?(v1172);

    v509 = v474;
    v510 = v475;
    goto LABEL_302;
  }

  v732 = v734;
  v730 = v734;
  v1138 = v734;
  v1136 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWT", 0xAuLL, 1);
  v731 = &v1136;
  MEMORY[0x25F8891D0](v1137);
  outlined destroy of DefaultStringInterpolation();
  if (v1137[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v729 = v1104[21];
    }

    else
    {
      v729 = 0;
    }

    v728 = v729;
  }

  else
  {
    outlined destroy of Pregnancy?(v1137);
    v728 = 0;
  }

  v727 = v728;
  if (v728)
  {
    v726 = v727;
    v723 = v733;
    v1104[22] = v727;
    v721 = swift_getKeyPath();
    v720 = v721;

    v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v212 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v213 = v723;
    v215 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v721, v722, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v212, MEMORY[0x277D84AC0], v214);
    v724 = v213;
    v725 = v215;
    if (!v213)
    {
      v717 = v725;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v718 = v717;
      v719 = v724;
      goto LABEL_130;
    }

LABEL_332:

    __break(1u);
    goto LABEL_333;
  }

  v718 = 0;
  v719 = v733;
LABEL_130:
  v715 = v719;
  v716 = v718;
  if (!v718)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v476 = 0;
    v477 = swift_allocError();
    *v267 = 79;
    swift_willThrow();
    v478 = v476;

    outlined destroy of Pregnancy?(v1172);

    v509 = v477;
    v510 = v478;
    goto LABEL_302;
  }

  v714 = v716;
  v712 = v716;
  v1135 = v716;
  v1133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWTStats", 0xFuLL, 1);
  v713 = &v1133;
  MEMORY[0x25F8891D0](v1134);
  outlined destroy of DefaultStringInterpolation();
  if (v1134[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v711 = v1104[23];
    }

    else
    {
      v711 = 0;
    }

    v710 = v711;
  }

  else
  {
    outlined destroy of Pregnancy?(v1134);
    v710 = 0;
  }

  v709 = v710;
  if (v710)
  {
    v708 = v709;
    v705 = v715;
    v1104[24] = v709;
    v703 = swift_getKeyPath();
    v702 = v703;

    v704 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v216 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v217 = v705;
    v219 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v703, v704, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v216, MEMORY[0x277D84AC0], v218);
    v706 = v217;
    v707 = v219;
    if (!v217)
    {
      v699 = v707;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v700 = v699;
      v701 = v706;
      goto LABEL_139;
    }

LABEL_333:

    __break(1u);
    goto LABEL_334;
  }

  v700 = 0;
  v701 = v715;
LABEL_139:
  v697 = v701;
  v698 = v700;
  if (!v700)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v479 = 0;
    v480 = swift_allocError();
    *v266 = 79;
    swift_willThrow();
    v481 = v479;

    outlined destroy of Pregnancy?(v1172);

    v509 = v480;
    v510 = v481;
    goto LABEL_302;
  }

  v696 = v698;
  v694 = v698;
  v1132 = v698;
  v1130 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRV", 0xAuLL, 1);
  v695 = &v1130;
  MEMORY[0x25F8891D0](v1131);
  outlined destroy of DefaultStringInterpolation();
  if (v1131[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v693 = v1104[25];
    }

    else
    {
      v693 = 0;
    }

    v692 = v693;
  }

  else
  {
    outlined destroy of Pregnancy?(v1131);
    v692 = 0;
  }

  v691 = v692;
  if (v692)
  {
    v690 = v691;
    v687 = v697;
    v1104[26] = v691;
    v685 = swift_getKeyPath();
    v684 = v685;

    v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v220 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v221 = v687;
    v223 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v685, v686, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v220, MEMORY[0x277D84AC0], v222);
    v688 = v221;
    v689 = v223;
    if (!v221)
    {
      v681 = v689;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v682 = v681;
      v683 = v688;
      goto LABEL_148;
    }

LABEL_334:

    __break(1u);
    goto LABEL_335;
  }

  v682 = 0;
  v683 = v697;
LABEL_148:
  v679 = v683;
  v680 = v682;
  if (!v682)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v482 = 0;
    v483 = swift_allocError();
    *v265 = 80;
    swift_willThrow();
    v484 = v482;

    outlined destroy of Pregnancy?(v1172);

    v509 = v483;
    v510 = v484;
    goto LABEL_302;
  }

  v678 = v680;
  v676 = v680;
  v1129 = v680;
  v1127 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRVStats", 0xFuLL, 1);
  v677 = &v1127;
  MEMORY[0x25F8891D0](v1128);
  outlined destroy of DefaultStringInterpolation();
  if (v1128[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v675 = v1104[27];
    }

    else
    {
      v675 = 0;
    }

    v674 = v675;
  }

  else
  {
    outlined destroy of Pregnancy?(v1128);
    v674 = 0;
  }

  v673 = v674;
  if (v674)
  {
    v672 = v673;
    v669 = v679;
    v1104[28] = v673;
    v667 = swift_getKeyPath();
    v666 = v667;

    v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v224 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v225 = v669;
    v227 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v667, v668, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v224, MEMORY[0x277D84AC0], v226);
    v670 = v225;
    v671 = v227;
    if (!v225)
    {
      v663 = v671;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v664 = v663;
      v665 = v670;
      goto LABEL_157;
    }

LABEL_335:

    __break(1u);
    goto LABEL_336;
  }

  v664 = 0;
  v665 = v679;
LABEL_157:
  v661 = v665;
  v662 = v664;
  if (!v664)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v485 = 0;
    v486 = swift_allocError();
    *v264 = 80;
    swift_willThrow();
    v487 = v485;

    outlined destroy of Pregnancy?(v1172);

    v509 = v486;
    v510 = v487;
    goto LABEL_302;
  }

  v660 = v662;
  v658 = v662;
  v1126 = v662;
  v1124 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRate", 0x16uLL, 1);
  v659 = &v1124;
  MEMORY[0x25F8891D0](v1125);
  outlined destroy of DefaultStringInterpolation();
  if (v1125[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v657 = v1104[29];
    }

    else
    {
      v657 = 0;
    }

    v656 = v657;
  }

  else
  {
    outlined destroy of Pregnancy?(v1125);
    v656 = 0;
  }

  v655 = v656;
  if (v656)
  {
    v654 = v655;
    v651 = v661;
    v1104[30] = v655;
    v649 = swift_getKeyPath();
    v648 = v649;

    v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v228 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v229 = v651;
    v231 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v649, v650, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v228, MEMORY[0x277D84AC0], v230);
    v652 = v229;
    v653 = v231;
    if (!v229)
    {
      v645 = v653;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v646 = v645;
      v647 = v652;
      goto LABEL_166;
    }

LABEL_336:

    __break(1u);
    goto LABEL_337;
  }

  v646 = 0;
  v647 = v661;
LABEL_166:
  v643 = v647;
  v644 = v646;
  if (!v646)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v488 = 0;
    v489 = swift_allocError();
    *v263 = 81;
    swift_willThrow();
    v490 = v488;

    outlined destroy of Pregnancy?(v1172);

    v509 = v489;
    v510 = v490;
    goto LABEL_302;
  }

  v642 = v644;
  v640 = v644;
  v1123 = v644;
  v1121 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRateStats", 0x1BuLL, 1);
  v641 = &v1121;
  MEMORY[0x25F8891D0](v1122);
  outlined destroy of DefaultStringInterpolation();
  if (v1122[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v639 = v1104[31];
    }

    else
    {
      v639 = 0;
    }

    v638 = v639;
  }

  else
  {
    outlined destroy of Pregnancy?(v1122);
    v638 = 0;
  }

  v637 = v638;
  if (v638)
  {
    v636 = v637;
    v633 = v643;
    v1104[32] = v637;
    v631 = swift_getKeyPath();
    v630 = v631;

    v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v232 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v233 = v633;
    v235 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v631, v632, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v232, MEMORY[0x277D84AC0], v234);
    v634 = v233;
    v635 = v235;
    if (!v233)
    {
      v627 = v635;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v628 = v627;
      v629 = v634;
      goto LABEL_175;
    }

LABEL_337:

    __break(1u);
    goto LABEL_338;
  }

  v628 = 0;
  v629 = v643;
LABEL_175:
  v625 = v629;
  v626 = v628;
  if (!v628)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v491 = 0;
    v492 = swift_allocError();
    *v262 = 81;
    swift_willThrow();
    v493 = v491;

    outlined destroy of Pregnancy?(v1172);

    v509 = v492;
    v510 = v493;
    goto LABEL_302;
  }

  v624 = v626;
  v622 = v626;
  v1120 = v626;
  v1118 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2", 0xBuLL, 1);
  v623 = &v1118;
  MEMORY[0x25F8891D0](v1119);
  outlined destroy of DefaultStringInterpolation();
  if (v1119[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v621 = v1104[33];
    }

    else
    {
      v621 = 0;
    }

    v620 = v621;
  }

  else
  {
    outlined destroy of Pregnancy?(v1119);
    v620 = 0;
  }

  v619 = v620;
  if (v620)
  {
    v618 = v619;
    v615 = v625;
    v1104[34] = v619;
    v613 = swift_getKeyPath();
    v612 = v613;

    v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v236 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v237 = v615;
    v239 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v613, v614, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v236, MEMORY[0x277D84AC0], v238);
    v616 = v237;
    v617 = v239;
    if (!v237)
    {
      v609 = v617;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v610 = v609;
      v611 = v616;
      goto LABEL_184;
    }

LABEL_338:

    __break(1u);
    goto LABEL_339;
  }

  v610 = 0;
  v611 = v625;
LABEL_184:
  v607 = v611;
  v608 = v610;
  if (!v610)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v494 = 0;
    v495 = swift_allocError();
    *v261 = 82;
    swift_willThrow();
    v496 = v494;

    outlined destroy of Pregnancy?(v1172);

    v509 = v495;
    v510 = v496;
    goto LABEL_302;
  }

  v606 = v608;
  v604 = v608;
  v1117 = v608;
  v1115 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2Stats", 0x10uLL, 1);
  v605 = &v1115;
  MEMORY[0x25F8891D0](v1116);
  outlined destroy of DefaultStringInterpolation();
  if (v1116[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v603 = v1104[35];
    }

    else
    {
      v603 = 0;
    }

    v602 = v603;
  }

  else
  {
    outlined destroy of Pregnancy?(v1116);
    v602 = 0;
  }

  v601 = v602;
  if (v602)
  {
    v600 = v601;
    v597 = v607;
    v1104[36] = v601;
    v595 = swift_getKeyPath();
    v594 = v595;

    v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v240 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v241 = v597;
    v243 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v595, v596, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v240, MEMORY[0x277D84AC0], v242);
    v598 = v241;
    v599 = v243;
    if (!v241)
    {
      v591 = v599;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v592 = v591;
      v593 = v598;
      goto LABEL_193;
    }

LABEL_339:

    __break(1u);
    goto LABEL_340;
  }

  v592 = 0;
  v593 = v607;
LABEL_193:
  v589 = v593;
  v590 = v592;
  if (!v592)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v497 = 0;
    v498 = swift_allocError();
    *v260 = 82;
    swift_willThrow();
    v499 = v497;

    outlined destroy of Pregnancy?(v1172);

    v509 = v498;
    v510 = v499;
    goto LABEL_302;
  }

  v588 = v590;
  v586 = v590;
  v1114 = v590;
  v1112 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, 1);
  v587 = &v1112;
  MEMORY[0x25F8891D0](v1113);
  outlined destroy of DefaultStringInterpolation();
  if (v1113[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v585 = v1104[37];
    }

    else
    {
      v585 = 0;
    }

    v584 = v585;
  }

  else
  {
    outlined destroy of Pregnancy?(v1113);
    v584 = 0;
  }

  v583 = v584;
  if (v584)
  {
    v582 = v583;
    v579 = v589;
    v1104[38] = v583;
    v577 = swift_getKeyPath();
    v576 = v577;

    v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v244 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v245 = v579;
    v247 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v577, v578, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v244, MEMORY[0x277D84AC0], v246);
    v580 = v245;
    v581 = v247;
    if (!v245)
    {
      v573 = v581;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v574 = v573;
      v575 = v580;
      goto LABEL_202;
    }

LABEL_340:

    __break(1u);
    goto LABEL_341;
  }

  v574 = 0;
  v575 = v589;
LABEL_202:
  v571 = v575;
  v572 = v574;
  if (!v574)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v500 = 0;
    v501 = swift_allocError();
    *v259 = 83;
    swift_willThrow();
    v502 = v500;

    outlined destroy of Pregnancy?(v1172);

    v509 = v501;
    v510 = v502;
    goto LABEL_302;
  }

  v570 = v572;
  v568 = v572;
  v1111 = v572;
  v1109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, 1);
  v569 = &v1109;
  MEMORY[0x25F8891D0](v1110);
  outlined destroy of DefaultStringInterpolation();
  if (v1110[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v567 = v1104[39];
    }

    else
    {
      v567 = 0;
    }

    v566 = v567;
  }

  else
  {
    outlined destroy of Pregnancy?(v1110);
    v566 = 0;
  }

  v565 = v566;
  if (v566)
  {
    v564 = v565;
    v561 = v571;
    v1104[40] = v565;
    v559 = swift_getKeyPath();
    v558 = v559;

    v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v248 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
    v249 = v561;
    v251 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v559, v560, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v248, MEMORY[0x277D84AC0], v250);
    v562 = v249;
    v563 = v251;
    if (!v249)
    {
      v555 = v563;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v556 = v555;
      v557 = v562;
      goto LABEL_211;
    }

LABEL_341:

    __break(1u);
    goto LABEL_342;
  }

  v556 = 0;
  v557 = v571;
LABEL_211:
  v553 = v557;
  v554 = v556;
  if (!v556)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v503 = 0;
    v504 = swift_allocError();
    *v258 = 84;
    swift_willThrow();
    v505 = v503;

    outlined destroy of Pregnancy?(v1172);

    v509 = v504;
    v510 = v505;
LABEL_302:
    v307 = v1081;
    v350 = v510;
    v417 = v509;
    v308 = v509;
    v1188 = v417;
    v309 = Logging.default.unsafeMutableAddressor();
    v437 = *(v1080 + 16);
    v436 = (v1080 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v437(v307, v309, v1078);
    v310 = v417;
    v358 = 7;
    v356 = swift_allocObject();
    *(v356 + 16) = v417;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v368 = Logger.logObject.getter();
    v351 = v368;
    v367 = static os_log_type_t.error.getter();
    v352 = v367;
    v353 = 17;
    v362 = swift_allocObject();
    v354 = v362;
    *(v362 + 16) = 64;
    v363 = swift_allocObject();
    v355 = v363;
    *(v363 + 16) = 8;
    v357 = 32;
    v311 = swift_allocObject();
    v312 = v356;
    v359 = v311;
    *(v311 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
    *(v311 + 24) = v312;
    v313 = swift_allocObject();
    v314 = v359;
    v360 = v313;
    *(v313 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v313 + 24) = v314;
    v315 = swift_allocObject();
    v316 = v360;
    v366 = v315;
    v361 = v315;
    *(v315 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v315 + 24) = v316;
    v364 = _allocateUninitializedArray<A>(_:)();
    v365 = v317;

    v318 = v362;
    v319 = v365;
    *v365 = partial apply for closure #1 in OSLogArguments.append(_:);
    v319[1] = v318;

    v320 = v363;
    v321 = v365;
    v365[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v321[3] = v320;

    v322 = v365;
    v323 = v366;
    v365[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v322[5] = v323;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v368, v367))
    {
      v347 = v350;
      v342 = static UnsafeMutablePointer.allocate(capacity:)();
      v339 = v342;
      v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      v345 = 1;
      v343 = createStorage<A>(capacity:type:)(1);
      v341 = v343;
      v344 = createStorage<A>(capacity:type:)(0);
      v1184[0] = v342;
      v1183 = v343;
      v1182 = v344;
      v346 = v1184;
      serialize(_:at:)(2, v1184);
      serialize(_:at:)(v345, v346);
      v324 = v347;
      v1180 = partial apply for closure #1 in OSLogArguments.append(_:);
      v1181 = v354;
      closure #1 in osLogInternal(_:log:type:)(&v1180, v346, &v1183, &v1182);
      v348 = v324;
      v349 = v324;
      if (v324)
      {
        v337 = 0;

        __break(1u);
      }

      else
      {
        v1180 = partial apply for closure #1 in OSLogArguments.append(_:);
        v1181 = v355;
        closure #1 in osLogInternal(_:log:type:)(&v1180, v1184, &v1183, &v1182);
        v335 = 0;
        v336 = 0;
        v1180 = partial apply for closure #1 in OSLogArguments.append(_:);
        v1181 = v361;
        closure #1 in osLogInternal(_:log:type:)(&v1180, v1184, &v1183, &v1182);
        v333 = 0;
        v334 = 0;
        _os_log_impl(&dword_25C4D8000, v351, v352, "Error executing Morpheus program for featurize: %@.", v339, 0xCu);
        destroyStorage<A>(_:count:)(v341, 1, v340);
        destroyStorage<A>(_:count:)(v344, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x25F8899D0](v339, MEMORY[0x277D84B78]);

        v338 = v333;
      }
    }

    else
    {

      v338 = v350;
    }

    v421 = v338;

    v1018(v1081, v1078);
    if ((HyperParams.featurizerFallbackToNative.getter() & 1) == 0)
    {
      swift_willThrow();

      result = v417;
      v332 = v417;
      return result;
    }

    v279 = v1084;
    v280 = Logging.default.unsafeMutableAddressor();
    v437(v279, v280, v1078);
    v441 = Logger.logObject.getter();
    v438 = v441;
    v440 = static os_log_type_t.info.getter();
    v439 = v440;
    v442 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v441, v440))
    {
      v434 = v421;
      v426 = static UnsafeMutablePointer.allocate(capacity:)();
      v422 = v426;
      v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      v424 = 0;
      v427 = createStorage<A>(capacity:type:)(0);
      v425 = v427;
      v428 = createStorage<A>(capacity:type:)(v424);
      v1187 = v426;
      v1186 = v427;
      v1185 = v428;
      v429 = 0;
      v430 = &v1187;
      serialize(_:at:)(0, &v1187);
      serialize(_:at:)(v429, v430);
      v1184[1] = v442;
      v431 = &v329;
      MEMORY[0x28223BE20](&v329);
      v432 = &v329 - 6;
      v325 = v281;
      v326 = &v1186;
      v327 = &v1185;
      v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      v282 = v434;
      Sequence.forEach(_:)();
      v435 = v282;
      if (v282)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_25C4D8000, v438, v439, "Fallback to featurize from native.", v422, 2u);
        v419 = 0;
        destroyStorage<A>(_:count:)(v425, 0, v423);
        destroyStorage<A>(_:count:)(v428, v419, MEMORY[0x277D84F70] + 8);
        MEMORY[0x25F8899D0](v422, MEMORY[0x277D84B78]);

        v420 = v435;
      }
    }

    else
    {

      v420 = v421;
    }

    v418 = v420;

    v1018(v1084, v1078);

    v1063 = v418;
    goto LABEL_293;
  }

  v552 = v554;
  v550 = v554;
  v1108 = v554;
  v1106 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("metrics", 7uLL, 1);
  v551 = &v1106;
  MEMORY[0x25F8891D0](v1107);
  outlined destroy of DefaultStringInterpolation();
  if (v1107[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd);
    if (swift_dynamicCast())
    {
      v549 = v1104[41];
    }

    else
    {
      v549 = 0;
    }

    v548 = v549;
  }

  else
  {
    outlined destroy of Pregnancy?(v1107);
    v548 = 0;
  }

  v547 = v548;
  if (!v548)
  {
    v538 = 0;
    v539 = v553;
    goto LABEL_220;
  }

  v546 = v547;
  v541 = v547;
  v542 = v553;
  v543 = swift_getKeyPath();
  v540 = v543;

  type metadata accessor for NSNumber();
  v252 = v542;
  v253 = Dictionary.mapValues<A>(_:)();
  v544 = v252;
  v545 = v253;
  if (!v252)
  {
    v537 = v545;

    v538 = v537;
    v539 = v544;
LABEL_220:
    v535 = v539;
    v536 = v538;
    if (v538)
    {
      v534 = v536;
      v254 = v856;
      v255 = v874;
      v256 = v892;
      v511 = v536;
      v1105 = v536;

      outlined destroy of Pregnancy?(v1172);

      v512 = v256;
      v513 = v255;
      v514 = v254;
      v515 = v838;
      v516 = v820;
      v517 = v802;
      v518 = v784;
      v519 = v766;
      v520 = v748;
      v521 = v730;
      v522 = v712;
      v523 = v694;
      v524 = v676;
      v525 = v658;
      v526 = v640;
      v527 = v622;
      v528 = v604;
      v529 = v586;
      v530 = v568;
      v531 = v550;
      v532 = v511;
      v533 = v535;
LABEL_300:
      v286 = v1071;
      v1196[1] = v512;
      v1196[2] = v513;
      v1196[3] = v514;
      v1196[4] = v515;
      v1196[5] = v516;
      v1196[6] = v517;
      v1196[7] = v518;
      v1196[8] = v519;
      v1196[9] = v520;
      v1196[10] = v521;
      v1196[11] = v522;
      v1196[12] = v523;
      v1196[13] = v524;
      v1196[14] = v525;
      v1196[15] = v526;
      v1196[16] = v527;
      v1196[17] = v528;
      v1196[18] = v529;
      v1196[19] = v530;
      v1196[20] = v531;
      v1196[21] = v532;
      v287 = v513;
      v288 = v514;
      v289 = v515;
      v290 = v516;
      v291 = v517;
      v292 = v518;
      v293 = v519;
      v294 = v520;
      v295 = v521;
      v296 = v522;
      result = v523;
      v298 = v524;
      v299 = v525;
      v300 = v526;
      v301 = v527;
      v302 = v528;
      v303 = v529;
      v304 = v530;
      v305 = v531;
      v306 = v532;
      *v1071 = v512;
      v286[1] = v287;
      v286[2] = v288;
      v286[3] = v289;
      v286[4] = v290;
      v286[5] = v291;
      v286[6] = v292;
      v286[7] = v293;
      v286[8] = v294;
      v286[9] = v295;
      v286[10] = v296;
      v286[11] = result;
      v286[12] = v298;
      v286[13] = v299;
      v286[14] = v300;
      v286[15] = v301;
      v286[16] = v302;
      v286[17] = v303;
      v286[18] = v304;
      v286[19] = v305;
      v286[20] = v306;
      return result;
    }

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v506 = 0;
    v507 = swift_allocError();
    *v257 = 85;
    swift_willThrow();
    v508 = v506;

    outlined destroy of Pregnancy?(v1172);

    v509 = v507;
    v510 = v508;
    goto LABEL_302;
  }

LABEL_342:

  __break(1u);
  return v394;
}

uint64_t closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(unsigned __int8 a1)
{

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v1 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:), 0, v4, v5, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v6);
  return a1;
}

uint64_t closure #1 in closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = _allocateUninitializedArray<A>(_:)();
  *v3 = v4;
  v3[1] = v5;
  _finalizeUninitializedArray<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t closure #2 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(unsigned int a1, float a2, float a3)
{
  v7 = a1;
  _allocateUninitializedArray<A>(_:)();
  *v3 = a2;
  v3[1] = a3;
  _finalizeUninitializedArray<A>(_:)();
  return v7;
}

uint64_t thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float) -> (@unowned Int, @owned [Float])@<X0>(float *a1@<X0>, uint64_t (*a2)(void, float, float)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t thunk for @callee_guaranteed (@unowned UInt32, @unowned Float) -> (@unowned Int, @unowned Float)@<X0>(float *a1@<X0>, uint64_t (*a2)(void, float)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t implicit closure #1 in Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)()
{

  swift_getAtKeyPath();
}

uint64_t key path getter for NSNumber.intValue : NSNumber@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 integerValue];
  return MEMORY[0x277D82BD8](v3);
}

void Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v14 = MEMORY[0x28223BE20](a1);
  v527 = v625;
  v550 = v13;
  v528 = v12;
  v529 = v15;
  v530._rawValue = v16;
  v546._rawValue = v17;
  v531._rawValue = v18;
  v532._rawValue = v19;
  v533._rawValue = v20;
  v534._rawValue = v21;
  v535 = v14;
  v536 = v22;
  v537 = a12;
  v538 = a11;
  v539 = a10;
  v540 = a9;
  v548 = 0;
  v541 = 0;
  to._rawValue = 0;
  v801._rawValue = 0;
  v800 = 0;
  v799 = 0;
  v798 = 0;
  v797._rawValue = 0;
  v796._rawValue = 0;
  v795._rawValue = 0;
  v794._rawValue = 0;
  v793 = 0;
  v792 = 0;
  v791 = 0;
  v790 = 0;
  v789 = 0;
  v788 = 0;
  v787 = 0;
  v786 = 0;
  v785 = 0;
  v784 = 0;
  v783 = 0;
  v782 = 0;
  v781._rawValue = 0;
  v779 = 0;
  v777 = 0;
  v775 = 0;
  v773 = 0;
  v771 = 0;
  v769 = 0;
  v767 = 0;
  v764 = 0;
  v763 = 0;
  v762 = 0;
  v761 = 0;
  v760 = 0u;
  v759 = 0u;
  v757[0] = 0;
  v756 = 0;
  v755 = 0;
  v754 = 0;
  v753 = 0;
  v752 = 0;
  v751 = 0;
  v750 = 0;
  v749 = 0;
  v748 = 0;
  v747 = 0;
  v746 = 0;
  v745 = 0;
  v744 = 0;
  v743[7] = 0;
  v743[6] = 0;
  v721 = 0;
  v715 = 0;
  v712 = 0;
  v709 = 0;
  v704 = 0;
  v695 = 0;
  v694 = 0;
  v679 = 0;
  v678 = 0;
  v677 = 0;
  v673 = 0;
  *(v672 + 5) = 0;
  v672[0] = 0;
  v663 = 0;
  v658 = 0;
  v614 = 0;
  v612 = 0.0;
  v611 = 0;
  v564 = 0;
  v563 = 0;
  v557 = 0;
  v556 = 0;
  v815 = v14;
  v814 = v21;
  v813 = v20;
  v812 = v19;
  v811 = v18;
  v810 = v17;
  v809 = v16;
  v808 = v15;
  v807 = a9;
  v806 = a10;
  v805 = a11;
  v804 = a12;
  v803 = v12;
  v544 = MEMORY[0x277D83A90];
  to._rawValue = Array.init()();
  v801._rawValue = Array.init()();
  v800 = Array.init()();
  v799 = Array.init()();
  v798 = Array.init()();
  v797._rawValue = Array.init()();
  v796._rawValue = Array.init()();
  v795._rawValue = Array.init()();
  v794._rawValue = Array.init()();
  v793 = Array.init()();
  v543 = MEMORY[0x277D84CC0];
  v792 = Array.init()();
  v545 = MEMORY[0x277D84CD0];
  v791 = Dictionary.init()();
  v790 = Array.init()();
  v789 = Array.init()();
  v788 = Array.init()();
  v787 = Array.init()();
  v786 = Array.init()();
  v785 = Array.init()();
  v784 = Array.init()();
  v783 = Array.init()();
  v782 = Array.init()();
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf8daySHR10_Sf05nightB0Sf15periodStartMeanSf0dE3StdSf019daysSinceLastPeriodE0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tMd);
  v781._rawValue = Dictionary.init()();

  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd);
  v547 = v549;
  v551 = lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  v552 = v13;
  v553 = Sequence.sorted(by:)();
  if (v13)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    v190 = v478;

    outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v191 = v479;
    return;
  }

  v523 = v553;
  v524 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v779 = v553;

  v525 = 0;
  v526 = Sequence.sorted(by:)();
  v519 = v526;
  v520 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v777 = v526;

  v521 = 0;
  v522 = Sequence.sorted(by:)();
  v515 = v522;
  v516 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v775 = v522;

  v517 = 0;
  v518 = Sequence.sorted(by:)();
  v511 = v518;
  v512 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v773 = v518;

  v513 = 0;
  v514 = Sequence.sorted(by:)();
  v507 = v514;
  v508 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v771 = v514;

  v509 = 0;
  v510 = Sequence.sorted(by:)();
  v501 = v510;
  v504 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v769 = v510;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf15periodStartMean_Sf0aB3StdtMd);

  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf15periodStartMean_Sf0cD3Stdt_GMd);
  lazy protocol witness table accessor for type [UInt32 : (periodStartMean: Float, periodStartStd: Float)].Keys and conformance [A : B].Keys();
  v505 = 0;
  v506 = Sequence.sorted(by:)();
  v494 = v506;
  v497 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v767 = v506;
  v766 = v540;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v495 = v496;
  v498 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v499 = 0;
  v500 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v496, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v498, MEMORY[0x277D84AC0], v23);
  v765 = v500;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  v488 = v489;
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  v490 = Set.init<A>(_:)();
  v764 = v490;
  v491 = HyperParams.sliceSize.getter();
  v763 = v491;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VAA9Pregnancy_pGMd);
  v492 = AugmentedIntervalTree.__allocating_init()();
  v762 = v492;

  Dictionary.makeIterator()();
  v24 = v527;
  v25 = v816;
  v761 = v818;
  v527[62] = v817;
  v24[61] = v25;
  for (i = 0; ; i = v468)
  {
    v485 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8IteratorVys5UInt8VSays6UInt32V5start_AF3endtG_GMd);
    Dictionary.Iterator.next()();
    v486 = v757[1];
    v487 = v758;
    if (!v758)
    {
      break;
    }

    v483 = v486;
    v484 = v487;
    v480 = v487;
    v481 = v486;
    v557 = v486;
    v482 = v486;
    v556 = v487;
    if (v486 == NgtMenstrualAlgorithmsPhase.rawValue.getter(8))
    {
      v468 = v485;
    }

    else if (v481 == NgtMenstrualAlgorithmsPhase.rawValue.getter(0))
    {
      v468 = v485;
    }

    else
    {
      if (v481 == NgtMenstrualAlgorithmsPhase.rawValue.getter(1))
      {
        if (HyperParams.excludeLactationSlices.getter())
        {
          v476 = v485;
          v554 = v480;

          lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
          Sequence.forEach(_:)();
          v477 = v485;
          v478 = v480;
          v479 = v485;

          v475 = 0;
        }

        else
        {
          v475 = v485;
        }

        v474 = v475;
      }

      else
      {
        if (HyperParams.excludeContraceptionSlices.getter())
        {
          v470 = v485;
          v555 = v480;

          lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
          Sequence.forEach(_:)();
          v471 = v485;
          v472 = v480;
          v473 = v485;

          v469 = 0;
        }

        else
        {
          v469 = v485;
        }

        v474 = v469;
      }

      v468 = v474;
    }

    v467 = v468;
  }

  outlined destroy of [UInt8 : [(start: UInt32, end: UInt32)]].Iterator();
  if (HyperParams.excludeOtherPregnancySlices.getter())
  {
    v464 = v485;
    v558 = v535;

    v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Sequence.forEach(_:)();
    v465 = v485;
    v466 = v485;

    v462 = 0;
  }

  else
  {
    v462 = v485;
  }

  v460 = v462;
  v458 = 0;
  v757[0] = 0;
  v756 = 0;
  v755 = 0;
  v754 = 0;
  v753 = 0;
  v752 = 0;
  v751 = 0;
  v750 = 0;
  v749 = 0;
  v748 = 0;
  v747 = 0;
  v746 = 0;
  v745 = 0;
  v744 = 0;

  v743[5] = v535;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
  lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
  Collection<>.makeIterator()();
  for (j = v462; ; j = v429)
  {
    v457 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMd);
    IndexingIterator.next()();
    if (!v743[3])
    {
      v292 = v457;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v78 = HyperParams.daySHRStatsOption.getter();
      v79 = v292;
      v294 = v78;
      v295 = v792;
      v293 = v792;

      v80 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v294, v295, v546._rawValue, v491);
      v296 = v79;
      v297 = v80;
      v298 = v79;
      if (v79)
      {
LABEL_212:
        v188 = v298;

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v191 = v188;
        return;
      }

      v284 = v297;
      v285 = 0;

      v790 = v284;

      v81 = HyperParams.nightSHRStatsOption.getter();
      v82 = v285;
      v287 = v81;
      v288 = v792;
      v286 = v792;

      v83 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v287, v288, v530._rawValue, v491);
      v289 = v82;
      v290 = v83;
      v291 = v82;
      if (v82)
      {
        v187 = v291;

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v191 = v187;
        return;
      }

      v276 = v290;
      v279 = 0;

      v789 = v276;

      v277 = HyperParams.pSMStatsOption.getter();
      v278 = v792;

      KeyPath = swift_getKeyPath();
      v85 = v279;
      v281 = KeyPath;
      v280 = KeyPath;

      v86 = Dictionary.mapValues<A>(_:)();
      v282 = v85;
      v283 = v86;
      if (v85)
      {

        __break(1u);
      }

      else
      {
        v271 = v283;
        v272 = 0;

        v87 = v272;
        v88 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v277, v278, v271, v491);
        v273 = v87;
        v274 = v88;
        v275 = v87;
        if (!v87)
        {
          v263 = v274;
          v266 = 0;

          v788 = v263;

          v264 = HyperParams.pSSStatsOption.getter();
          v265 = v792;

          v89 = swift_getKeyPath();
          v90 = v266;
          v268 = v89;
          v267 = v89;

          v91 = Dictionary.mapValues<A>(_:)();
          v269 = v90;
          v270 = v91;
          if (v90)
          {

            __break(1u);
          }

          else
          {
            v258 = v270;
            v259 = 0;

            v92 = v259;
            v93 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v264, v265, v258, v491);
            v260 = v92;
            v261 = v93;
            v262 = v92;
            if (!v92)
            {
              v248 = v261;
              v249 = 0;

              v787 = v248;

              PeriodStartStats = HyperParams.daysSinceLastPeriodStartStatsOption.getter();
              v95 = v249;
              v252 = PeriodStartStats;
              v253 = v792;
              v250 = v792;

              v254 = v791;
              v251 = v791;

              v96 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v252, v253, v254, v491);
              v255 = v95;
              v256 = v96;
              v257 = v95;
              if (v95)
              {
                v184 = v257;

                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();
                v191 = v184;
              }

              else
              {
                v240 = v256;
                v241 = 0;

                v786 = v240;

                v97 = HyperParams.sWTStatsOption.getter();
                v98 = v241;
                v243 = v97;
                v244 = v792;
                v242 = v792;

                v99 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v243, v244, v534._rawValue, v491);
                v245 = v98;
                v246 = v99;
                v247 = v98;
                if (v98)
                {
                  v183 = v247;

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  v191 = v183;
                }

                else
                {
                  v232 = v246;
                  v233 = 0;

                  v785 = v232;

                  v100 = HyperParams.hrvStatsOption.getter();
                  v101 = v233;
                  v235 = v100;
                  v236 = v792;
                  v234 = v792;

                  v102 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v235, v236, v533._rawValue, v491);
                  v237 = v101;
                  v238 = v102;
                  v239 = v101;
                  if (v101)
                  {
                    v182 = v239;

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    v191 = v182;
                  }

                  else
                  {
                    v224 = v238;
                    v225 = 0;

                    v784 = v224;

                    v103 = HyperParams.respiratoryRateStatsOption.getter();
                    v104 = v225;
                    v227 = v103;
                    v228 = v792;
                    v226 = v792;

                    v105 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v227, v228, v532._rawValue, v491);
                    v229 = v104;
                    v230 = v105;
                    v231 = v104;
                    if (v104)
                    {
                      v181 = v231;

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      v191 = v181;
                    }

                    else
                    {
                      v216 = v230;
                      v217 = 0;

                      v783 = v216;

                      v106 = HyperParams.spO2StatsOption.getter();
                      v107 = v217;
                      v219 = v106;
                      v220 = v792;
                      v218 = v792;

                      v108 = Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(v219, v220, v531._rawValue, v491);
                      v221 = v107;
                      v222 = v108;
                      v223 = v107;
                      if (v107)
                      {
                        v180 = v223;

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        v191 = v180;
                      }

                      else
                      {
                        v211 = v222;
                        v214 = 0;

                        v782 = v211;

                        v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
                        v196 = _allocateUninitializedArray<A>(_:)();
                        v195 = v109;
                        v193 = 1;
                        v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastCalendarPeriodPredictionDay", 0x26uLL, 1);
                        v111 = v193;
                        v112 = v195;
                        *v195 = v110;
                        *(v112 + 16) = v757[0];
                        v113 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastHistoricalPeriodStartDay", 0x23uLL, v111);
                        v114 = v193;
                        v115 = v195;
                        *(v195 + 24) = v113;
                        *(v115 + 40) = v756;
                        v116 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastDaySHRDay", 0x14uLL, v114);
                        v117 = v193;
                        v118 = v195;
                        *(v195 + 48) = v116;
                        *(v118 + 64) = v755;
                        v192 = 17;
                        v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastSWTDay", 0x11uLL, v117);
                        v120 = v193;
                        v121 = v195;
                        v122 = v192;
                        *(v195 + 72) = v119;
                        *(v121 + 88) = v754;
                        v123 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastHRVDay", v122, v120);
                        v124 = v193;
                        v125 = v195;
                        *(v195 + 96) = v123;
                        *(v125 + 112) = v753;
                        v126 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastRespiratoryRateDay", 0x1DuLL, v124);
                        v127 = v193;
                        v128 = v195;
                        *(v195 + 120) = v126;
                        *(v128 + 136) = v752;
                        v129 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MissingLastSpO2Day", 0x12uLL, v127);
                        v130 = v193;
                        v131 = v195;
                        *(v195 + 144) = v129;
                        *(v131 + 160) = v751;
                        v132 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedDaySHRAvailability", 0x18uLL, v130);
                        v133 = v193;
                        v134 = v195;
                        *(v195 + 168) = v132;
                        *(v134 + 184) = v750;
                        v135 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedNightSHRAvailability", 0x1AuLL, v133);
                        v136 = v193;
                        v137 = v195;
                        *(v195 + 192) = v135;
                        *(v137 + 208) = v749;
                        v194 = 21;
                        v138 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedSWTAvailability", 0x15uLL, v136);
                        v139 = v193;
                        v140 = v195;
                        v141 = v194;
                        *(v195 + 216) = v138;
                        *(v140 + 232) = v748;
                        v142 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedHRVAvailability", v141, v139);
                        v143 = v193;
                        v144 = v195;
                        *(v195 + 240) = v142;
                        *(v144 + 256) = v747;
                        v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedRespiratoryRateAvailability", 0x21uLL, v143);
                        v146 = v193;
                        v147 = v195;
                        *(v195 + 264) = v145;
                        *(v147 + 280) = v746;
                        v148 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FailedSpO2Availability", 0x16uLL, v146);
                        v149 = v193;
                        v150 = v195;
                        v151 = v194;
                        *(v195 + 288) = v148;
                        *(v150 + 304) = v745;
                        v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ExcludedSlicesDueToCF", v151, v149);
                        v153 = v195;
                        *(v195 + 312) = v152;
                        *(v153 + 328) = v744;
                        _finalizeUninitializedArray<A>(_:)();
                        v215 = Dictionary.init(dictionaryLiteral:)();
                        v721 = v215;
                        rawValue = to._rawValue;

                        v155 = v790;

                        v156 = v801._rawValue;

                        v157 = v789;

                        v198 = v800;

                        v199 = v788;

                        v200 = v799;

                        v201 = v787;

                        v202 = v798;

                        v203 = v786;

                        v204 = v797._rawValue;

                        v205 = v785;

                        v206 = v796._rawValue;

                        v207 = v784;

                        v208 = v795._rawValue;

                        v209 = v783;

                        v210 = v794._rawValue;

                        v212 = v792;

                        v213 = v793;

                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        outlined destroy of [(start: UInt32, end: UInt32)]();
                        v158 = v536;
                        v722 = rawValue;
                        v723 = v155;
                        v724 = v156;
                        v725 = v157;
                        v726 = v198;
                        v727 = v199;
                        v728 = v200;
                        v729 = v201;
                        v730 = v202;
                        v731 = v203;
                        v732 = v204;
                        v733 = v205;
                        v734 = v206;
                        v735 = v207;
                        v736 = v208;
                        v737 = v209;
                        v738 = v210;
                        v739 = v211;
                        v740 = v212;
                        v741 = v213;
                        v742 = v215;
                        v159 = v198;
                        v160 = v199;
                        v161 = v200;
                        v162 = v201;
                        v163 = v202;
                        v164 = v203;
                        v165 = v204;
                        v166 = v205;
                        v167 = v206;
                        v168 = v207;
                        v169 = v208;
                        v170 = v209;
                        v171 = v210;
                        v172 = v211;
                        v173 = v212;
                        v174 = v213;
                        v175 = v215;
                        *v536 = rawValue;
                        v158[1] = v155;
                        v158[2] = v156;
                        v158[3] = v157;
                        v158[4] = v159;
                        v158[5] = v160;
                        v158[6] = v161;
                        v158[7] = v162;
                        v158[8] = v163;
                        v158[9] = v164;
                        v158[10] = v165;
                        v158[11] = v166;
                        v158[12] = v167;
                        v158[13] = v168;
                        v158[14] = v169;
                        v158[15] = v170;
                        v158[16] = v171;
                        v158[17] = v172;
                        v158[18] = v173;
                        v158[19] = v174;
                        v158[20] = v175;
                      }
                    }
                  }
                }
              }

              return;
            }
          }

          v185 = v262;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          v191 = v185;
          return;
        }
      }

      v186 = v275;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v191 = v186;
      return;
    }

    v453 = v718;
    outlined init with take of HealthDataQuery(v743, v718);
    v455 = v719;
    v454 = v720;
    __swift_project_boxed_opaque_existential_1(v453, v719);
    v717 = (*(v454 + 56))(v455) & 1;
    v716 = 1;
    v456 = lazy protocol witness table accessor for type SliceDeltaAnchor and conformance SliceDeltaAnchor();
    v452 = (== infix<A>(_:_:)() & 1) != 0 ? HyperParams.minSliceAnchorDelta.getter() : HyperParams.lmpMinSliceAnchorDelta.getter();
    v449 = v452;
    v715 = v452;
    v451 = v719;
    v450 = v720;
    __swift_project_boxed_opaque_existential_1(v718, v719);
    v714 = (*(v450 + 56))(v451) & 1;
    v713 = 1;
    v448 = (== infix<A>(_:_:)() & 1) != 0 ? HyperParams.maxSliceAnchorDelta.getter() : HyperParams.lmpMaxSliceAnchorDelta.getter();
    v445 = v448;
    v712 = v448;
    v447 = v719;
    v446 = v720;
    __swift_project_boxed_opaque_existential_1(v718, v719);
    v711 = (*(v446 + 56))(v447) & 1;
    v710 = 1;
    v444 = (== infix<A>(_:_:)() & 1) != 0 ? HyperParams.pregLabelStartAnchorDelta.getter() : HyperParams.lmpPregLabelStartAnchorDelta.getter();
    v440 = v444;
    v709 = v444;
    v442 = v719;
    v441 = v720;
    __swift_project_boxed_opaque_existential_1(v718, v719);
    v708 = (*(v441 + 64))(v442);
    v26 = __OFADD__(v708, v449);
    v443 = v708 + v449;
    if (v26)
    {
      break;
    }

    v707 = v491;
    v27 = __OFSUB__(v443, v491);
    v439 = v443 - v491;
    if (v27)
    {
      goto LABEL_224;
    }

    v28 = __OFADD__(v439, 1);
    v438 = v439 + 1;
    if (v28)
    {
      goto LABEL_225;
    }

    v706 = v438;
    if (v438 < 0)
    {
      LODWORD(v178) = 0;
      v177 = 3049;
      LOBYTE(v176) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v705 = -1;
    if (v706 > 0xFFFFFFFFLL)
    {
      LODWORD(v178) = 0;
      v177 = 3053;
      LOBYTE(v176) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_63:
      LODWORD(v178) = 0;
      v177 = 3049;
      LOBYTE(v176) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_64;
    }

    v434 = v706;
    v704 = v706;
    v436 = v719;
    v435 = v720;
    __swift_project_boxed_opaque_existential_1(v718, v719);
    v702 = (*(v435 + 64))(v436);
    v29 = __OFADD__(v702, v445);
    v437 = v702 + v445;
    if (v29)
    {
      goto LABEL_226;
    }

    v701 = v437;
    v700 = v537;
    v699 = v537;
    min<A>(_:_:)();
    v698 = v491;
    v30 = __OFSUB__(v703, v491);
    v433 = v703 - v491;
    if (v30)
    {
      goto LABEL_227;
    }

    v31 = __OFADD__(v433, 1);
    v432 = v433 + 1;
    if (v31)
    {
      goto LABEL_228;
    }

    v697 = v432;
    if (v432 < 0)
    {
      goto LABEL_63;
    }

LABEL_64:
    v696 = -1;
    if (v697 > 0xFFFFFFFFLL)
    {
      LODWORD(v178) = 0;
      v177 = 3053;
      LOBYTE(v176) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_68:
      __swift_destroy_boxed_opaque_existential_1(v718);
      v429 = v457;
      continue;
    }

    v430 = v697;
    v695 = v697;
    v694 = v434;
    v431 = 0;
    v692 = 0;
    v693 = 1;
    v690 = 0;
    v691 = 1;
    v689.value = 0;
    v689.is_nil = 1;
    v688.value = 0;
    v688.is_nil = 1;
    v687.value = 0;
    v687.is_nil = 1;
    v686.value = 0;
    v686.is_nil = 1;
    v685.value = 0;
    v685.is_nil = 1;
    v32 = HyperParams.isCalendarPeriodPredictionRequired()();
    if ((static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v32, v494, v434, v431, v757, &v692) & 1) == 0)
    {
      goto LABEL_68;
    }

    v425 = v457;
    PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
    v34 = v425;
    v426 = PeriodStart;
    v684 = v540;
    v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v495, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v498, MEMORY[0x277D84AC0], v35);
    v427 = v34;
    v428 = v36;
    if (v34)
    {
      __break(1u);
LABEL_209:
      v189 = v413;
      __swift_destroy_boxed_opaque_existential_1(v718);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v191 = v189;
      return;
    }

    v423 = v428;
    v424 = v434 - 1;
    if (!v434)
    {
      goto LABEL_229;
    }

    v422 = static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v426, v423, v424, 0, &v756, &v690);

    if (v422)
    {
      v37 = HyperParams.isDaySHRRequired()();
      if (static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v37, v523, v434, 1, &v755, &v689))
      {
        v38 = HyperParams.isSWTRequired()();
        if (static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v38, v515, v434, 1, &v754, &v688))
        {
          v39 = HyperParams.isHRVRequired()();
          if (static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v39, v511, v434, 1, &v753, &v687))
          {
            v40 = HyperParams.isRespiratoryRateRequired()();
            if (static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v40, v501, v434, 1, &v752, &v686))
            {
              v41 = HyperParams.isSpO2Required()();
              if (static Imputation.ensureImputation(required:available:target:strategy:missingCounter:imputedDay:)(v41, v507, v434, 1, &v751, &v685))
              {
                v680 = v434;
                static HIDPFLUtils.findClosest<A>(_:lessOrEqualThan:)(v519, &v680, MEMORY[0x277D84CC0], MEMORY[0x277D84CD8], &v681);
                v421 = v681;
                if (v682)
                {
                  v683.value = 0;
                  v683.is_nil = 1;
                }

                else
                {
                  v420 = v421;
                  v683.value = v421;
                  v683.is_nil = 0;
                }

                for (k = v427; ; k = v336)
                {
                  v417 = k;
                  v418 = v694;
                  if (v430 < v694)
                  {
                    __swift_destroy_boxed_opaque_existential_1(v718);
                    v429 = v417;
                    goto LABEL_193;
                  }

                  v416 = v418 + 1;
                  if (v418 == -1)
                  {
                    goto LABEL_230;
                  }

                  v679 = v416;
                  v678 = 1;
                  v42 = __CFADD__(v694, v491);
                  v415 = v694 + v491;
                  if (v42)
                  {
                    goto LABEL_231;
                  }

                  v414 = v415 - 1;
                  if (!v415)
                  {
                    goto LABEL_232;
                  }

                  v43 = v417;
                  v677 = v414;
                  v676 = v694;
                  v675 = v414;
                  v44 = AugmentedIntervalTree.search(start:end:)(&v676, &v675);
                  v411 = v43;
                  v412 = v44;
                  v413 = v43;
                  if (v43)
                  {
                    goto LABEL_209;
                  }

                  v406 = 0;
                  v674 = v412;
                  v407 = &v179;
                  MEMORY[0x28223BE20](&v179);
                  v404 = &v176;
                  v178 = v718;
                  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMd);
                  v403 = v405;
                  lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
                  v45 = v406;
                  v46 = _ArrayProtocol.filter(_:)();
                  v408 = v45;
                  v409 = v46;
                  v410 = v407;
                  if (v45)
                  {
                    break;
                  }

                  v402 = v409;
                  v673 = v409;
                  v672[2] = v409;
                  lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
                  if ((Collection.isEmpty.getter() & 1) == 0)
                  {
                    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
                    v48 = maxEnd<A>(_:)(v402, v47);
                    v401 = v48 + 1;
                    if (v48 == -1)
                    {
                      goto LABEL_243;
                    }

                    v679 = v401;
                    v560 = v401;
                    v559 = v694;
                    v400 = v401 - v694;
                    v49 = __OFADD__(v744, v400);
                    v399 = v744 + v400;
                    if (v49)
                    {
                      goto LABEL_244;
                    }

                    v744 = v399;
                    v678 = 0;
                  }

                  if (v678 == 1)
                  {
                    v398 = v719;
                    v397 = v720;
                    __swift_project_boxed_opaque_existential_1(v718, v719);
                    if ((*(v397 + 72))(v398))
                    {
                      v395 = v719;
                      v394 = v720;
                      __swift_project_boxed_opaque_existential_1(v718, v719);
                      v566 = (*(v394 + 64))(v395);
                      v50 = __OFADD__(v566, v440);
                      v396 = v566 + v440;
                      if (v50)
                      {
                        goto LABEL_240;
                      }

                      v565 = v414;
                      v51 = __OFSUB__(v396, v414);
                      v393 = v396 - v414;
                      if (v51)
                      {
                        goto LABEL_241;
                      }

                      v564 = v393;
                      v392 = v719;
                      v391 = v720;
                      __swift_project_boxed_opaque_existential_1(v718, v719);
                      (*(v391 + 48))(v392);
                      if (PregnancySource.isFactorType()())
                      {
                        v390 = HyperParams.dropNegativeSlicesForInferredFactorLMP.getter();
                      }

                      else
                      {
                        v390 = HyperParams.dropNegativeSlicesForInferredTestLMP.getter();
                      }

                      v389 = v390;
                      v563 = v390;
                      if (v393 >= 1)
                      {
                        v678 = v389 < v393;
                        if (v389 >= v393)
                        {
                          v388 = v694;
                          v562 = v393;
                          if (v393 < 0)
                          {
                            LODWORD(v178) = 0;
                            v177 = 3049;
                            LOBYTE(v176) = 2;
                            _assertionFailure(_:_:file:line:flags:)();
                            __break(1u);
                          }

                          v561 = -1;
                          if (v562 > 0xFFFFFFFFLL)
                          {
                            LODWORD(v178) = 0;
                            v177 = 3053;
                            LOBYTE(v176) = 2;
                            _assertionFailure(_:_:file:line:flags:)();
                            __break(1u);
                          }

                          else
                          {
                            v52 = __CFADD__(v388, v562);
                            v387 = v388 + v562;
                            if (v52)
                            {
                              goto LABEL_242;
                            }

                            v679 = v387;
                          }
                        }
                      }
                    }
                  }

                  v386 = v678;

                  if (v386 == 1)
                  {
                    v382 = HyperParams.isDaySHRRequired()();
                    v383 = HyperParams.minDaySHRAvailability.getter();
                    v384 = MEMORY[0x277D84CC0];

                    v385 = Array.init<A>(_:)();
                    v571 = v694;
                    v570 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v568 = v571;
                    v569 = v570;
                    v567 = __PAIR64__(v570, v571);
                    v380 = Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v382, v385, __SPAIR64__(v570, v571), &v750, v383);

                    v381 = v380;
                  }

                  else
                  {
                    v381 = 0;
                  }

                  v379 = v381;

                  v678 = v379 & 1;

                  if (v379)
                  {
                    v375 = HyperParams.isNightSHRRequired()();
                    v376 = HyperParams.minNightSHRAvailability.getter();
                    v377 = MEMORY[0x277D84CC0];

                    v378 = Array.init<A>(_:)();
                    v577 = v694;
                    v576 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v574 = v577;
                    v575 = v576;
                    v573 = __PAIR64__(v576, v577);
                    v373 = Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v375, v378, __SPAIR64__(v576, v577), &v749, v376);

                    v374 = v373;
                  }

                  else
                  {
                    v374 = 0;
                  }

                  v372 = v374;

                  v678 = v372 & 1;

                  if (v372)
                  {
                    v368 = HyperParams.isSWTRequired()();
                    v369 = HyperParams.minWristTempAvailability.getter();
                    v370 = MEMORY[0x277D84CC0];

                    v371 = Array.init<A>(_:)();
                    v583 = v694;
                    v582 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v580 = v583;
                    v581 = v582;
                    v579 = __PAIR64__(v582, v583);
                    v366 = Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v368, v371, __SPAIR64__(v582, v583), &v748, v369);

                    v367 = v366;
                  }

                  else
                  {
                    v367 = 0;
                  }

                  v365 = v367;

                  v678 = v365 & 1;

                  if (v365)
                  {
                    v361 = HyperParams.isHRVRequired()();
                    v362 = HyperParams.minHRVAvailability.getter();
                    v363 = MEMORY[0x277D84CC0];

                    v364 = Array.init<A>(_:)();
                    v589 = v694;
                    v588 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v586 = v589;
                    v587 = v588;
                    v585 = __PAIR64__(v588, v589);
                    v359 = Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v361, v364, __SPAIR64__(v588, v589), &v747, v362);

                    v360 = v359;
                  }

                  else
                  {
                    v360 = 0;
                  }

                  v358 = v360;

                  v678 = v358 & 1;

                  if (v358)
                  {
                    v354 = HyperParams.isSpO2Required()();
                    v355 = HyperParams.minSpO2Availability.getter();
                    v356 = MEMORY[0x277D84CC0];

                    v357 = Array.init<A>(_:)();
                    v595 = v694;
                    v594 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v592 = v595;
                    v593 = v594;
                    v591 = __PAIR64__(v594, v595);
                    v352 = Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v354, v357, __SPAIR64__(v594, v595), &v745, v355);

                    v353 = v352;
                  }

                  else
                  {
                    v353 = 0;
                  }

                  v351 = v353;

                  v678 = v351 & 1;

                  if (v351)
                  {
                    v347 = HyperParams.isRespiratoryRateRequired()();
                    v348 = HyperParams.minRespiratoryRateAvailability.getter();
                    v349 = MEMORY[0x277D84CC0];

                    v350 = Array.init<A>(_:)();
                    v601 = v694;
                    v600 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v598 = v601;
                    v599 = v600;
                    v597 = __PAIR64__(v600, v601);
                    v345 = Featurizer.ensureAvailability(required:minAvailability:available:range:failedCounter:)(v347, v350, __SPAIR64__(v600, v601), &v746, v348);

                    v346 = v345;
                  }

                  else
                  {
                    v346 = 0;
                  }

                  v344 = v346;

                  v678 = v344 & 1;
                  if (v344)
                  {
                    v671 = v694;
                    v670 = v414;
                    if (v414 < v694)
                    {
                      LODWORD(v178) = 0;
                      v177 = 409;
                      LOBYTE(v176) = 2;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
                    }

                    v668 = v671;
                    v669 = v670;
                    v666 = v671;
                    v667 = v670;
                    v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
                    lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
                    Collection<>.makeIterator()();
                    for (m = v408; ; m = v330)
                    {
                      v330 = m;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNys6UInt32VGGMd);
                      IndexingIterator.next()();
                      v331 = v664;
                      if (v665)
                      {
                        break;
                      }

                      v329 = v331;
                      v323 = v331;
                      v658 = v331;
                      v654 = v331;
                      MEMORY[0x25F8891D0](v655, &v654, v781._rawValue, MEMORY[0x277D84CC0], v542, MEMORY[0x277D84CD0]);
                      v324 = v655[0];
                      v325 = v655[1];
                      v326 = v655[2];
                      v327 = v655[3];
                      v328 = v656;
                      if (v657)
                      {
                        v317 = 0;
                        v646[0] = 0.0;
                        v646[1] = 0.0;
                        v647 = 0.0;
                        v648 = 0;
                        v649 = 0;
                        v650 = 0;
                        v651 = 0;
                        v652 = 0;
                        v653 = 0;
                        if (HyperParams.isCalendarPeriodPredictionRequired()())
                        {
                          if (v693 == 1)
                          {
                            LODWORD(v178) = 0;
                            v177 = 782;
                            LOBYTE(v176) = 2;
                            _assertionFailure(_:_:file:line:flags:)();
                            __break(1u);
                          }

                          v315 = static Imputation.imputeCalendarPrediction(calendarPeriodPredictions:target:lastPredictionDay:)(v529, v323, &v692);
                          v316 = v63;
                          v612 = v315;
                          v611 = v63;
                          if (HyperParams.isPSMRequired()())
                          {
                            v609 = v315;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
                            Array.append(_:)();
                            v647 = v315;
                          }

                          if (HyperParams.isPSSRequired()())
                          {
                            v610 = v316;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
                            Array.append(_:)();
                            v648 = v316;
                          }
                        }

                        if (HyperParams.isDaysSinceLastPeriodStartRequired()())
                        {
                          v314 = v323 - 1;
                          if (!v323)
                          {
                            goto LABEL_236;
                          }

                          v616[0] = v314;
                          if (MEMORY[0x25F8897F0](v616, v490, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]))
                          {
                            v313 = v323 - 1;
                            if (!v323)
                            {
                              goto LABEL_238;
                            }

                            v690 = v313;
                            v691 = 0;
                          }

                          v312 = v690;
                          if (v691)
                          {
                            LODWORD(v178) = 0;
                            v177 = 797;
                            LOBYTE(v176) = 2;
                            _assertionFailure(_:_:file:line:flags:)();
                            __break(1u);
                          }

                          else
                          {
                            v311 = v312;
                          }

                          v310 = v323 - v311;
                          if (v323 < v311)
                          {
                            goto LABEL_237;
                          }

                          v615 = v310;
                          lazy protocol witness table accessor for type UInt32 and conformance UInt32();
                          Float.init<A>(_:)();
                          v309 = v64;
                          v614 = v64;
                          v613 = v64;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
                          Array.append(_:)();
                          v649 = v309;
                        }

                        v65 = HyperParams.isDaySHRRequired()();
                        v306 = v646;
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v65, v546, &v689, &to, v323, v646);
                        v66 = HyperParams.isNightSHRRequired()();
                        Featurizer.updateFeature(required:feature:lastDayHasFeature:to:currentDay:defaultValue:cache:)(v66, v530, &v683, &v801, v323, 64.88, v306 + 1);
                        v67 = HyperParams.isSWTRequired()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v67, v534, &v688, &v797, v323, v306 + 5);
                        v68 = HyperParams.isHRVRequired()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v68, v533, &v687, &v796, v323, v306 + 6);
                        v69 = HyperParams.isRespiratoryRateRequired()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v69, v532, &v686, &v795, v323, v306 + 7);
                        v70 = HyperParams.isSpO2Required()();
                        Featurizer.updateFeature(required:feature:lastDay:to:currentDay:cache:)(v70, v531, &v685, &v794, v323, v306 + 8);
                        v71 = v527;
                        v72 = v323;
                        v73 = v527[8];
                        v74 = v527[9];
                        v630 = v653;
                        v527[1] = v74;
                        *v71 = v73;
                        v307 = v626;
                        v631 = v625[0];
                        v632 = v625[1];
                        v633 = v625[2];
                        v634 = v625[3];
                        v635 = v626;
                        v636 = v627;
                        v637 = v628;
                        v638 = v629;
                        v639 = v630;
                        v75 = *(v71 + 44);
                        v76 = *(v71 + 60);
                        v644 = v630;
                        v71[6] = v76;
                        v71[5] = v75;
                        v308 = 0;
                        v645 = 0;
                        v619 = v640;
                        v620 = v641;
                        v621 = v642;
                        v622 = v643;
                        v623 = v644;
                        v624 = 0;
                        v618 = v72;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf8daySHR10_Sf05nightC0Sf15periodStartMeanSf0eF3StdSf019daysSinceLastPeriodF0Sf3swtSf3hrvSf15respiratoryRateSf4spo2tGMd);
                        Dictionary.subscript.setter();
                        v616[2] = v307;
                        v617 = v308;
                        v616[1] = v323;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
                        Dictionary.subscript.setter();
                      }

                      else
                      {
                        v318 = v324;
                        v319 = v325;
                        v320 = v326;
                        v321 = v327;
                        v322 = v328;
                        v604 = v324;
                        v605 = v325;
                        v606 = v326;
                        v607 = v327;
                        v608 = v328;
                        v178 = &v794;
                        v177 = &v795;
                        v176 = v328;
                        appendFeature(hyperParams:_:_:_:_:_:_:_:_:_:_:)();
                      }
                    }

                    v663 = 0;
                    v662 = v414;
                    v302 = v414;
                    v304 = v719;
                    v303 = v720;
                    __swift_project_boxed_opaque_existential_1(v718, v719);
                    v661 = (*(v303 + 64))(v304);
                    v77 = __OFADD__(v661, v440);
                    v305 = v661 + v440;
                    if (v77)
                    {
                      goto LABEL_233;
                    }

                    if (v302 >= v305)
                    {
                      v663 = 1065353216;
                    }

                    v660 = v663;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
                    Array.append(_:)();
                    v659 = v414;
                    Array.append(_:)();
                    v300 = v694;
                    v301 = v694 + 1;
                    if (v694 == -1)
                    {
                      goto LABEL_234;
                    }

                    evictCaches(_:_:_:)(v300, v301, &v781);
                    v299 = v694 + 1;
                    if (v694 == -1)
                    {
                      goto LABEL_235;
                    }

                    v694 = v299;

                    v336 = v330;
                  }

                  else
                  {
                    v340 = v408;
                    v339 = v679;
                    evictCaches(_:_:_:)(v694, v679, &v781);
                    v694 = v339;
                    v53 = HyperParams.isCalendarPeriodPredictionRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v53, v494, v339, 0, &v692);
                    v54 = HyperParams.isDaysSinceLastPeriodStartRequired()();
                    v55 = v340;
                    v341 = v54;
                    v603 = v540;
                    v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in Featurizer.featurizeHRPeriodPrediction(flows:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:dummyPeriodLength:sliceSize:maxNumDaysToNextPeriod:minNumDaysToNextPeriod:minNumOfDaySHRPerSlice:), 0, v495, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v498, MEMORY[0x277D84AC0], v56);
                    v342 = v55;
                    v343 = v57;
                    if (v55)
                    {
                      goto LABEL_211;
                    }

                    v337 = v343;
                    v338 = v679 - 1;
                    if (!v679)
                    {
                      goto LABEL_239;
                    }

                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v341, v337, v338, 0, &v690);

                    v58 = HyperParams.isDaySHRRequired()();
                    v334 = v679;
                    v335 = 1;
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v58, v523, v679, 1, &v689);
                    v59 = HyperParams.isSWTRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v59, v515, v334, v335, &v688);
                    v60 = HyperParams.isHRVRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v60, v511, v334, v335, &v687);
                    v61 = HyperParams.isRespiratoryRateRequired()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v61, v501, v334, v335, &v686);
                    v62 = HyperParams.isSpO2Required()();
                    static Imputation.impute(required:available:target:strategy:imputedDay:)(v62, v507, v334, v335, &v685);

                    v336 = v342;
                  }
                }

                __break(1u);
LABEL_211:
                __break(1u);
                goto LABEL_212;
              }
            }
          }
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v718);
    v429 = v427;
LABEL_193:
    ;
  }

  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
  __break(1u);
LABEL_244:
  __break(1u);
}

uint64_t closure #2 in Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(_DWORD *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v2 = a1[1];
  LODWORD(v8) = *a1;
  HIDWORD(v8) = v2;
  v7 = a2;
  v6 = v8;
  v5 = v2;
  memset(v4, 0, sizeof(v4));
  AugmentedIntervalTree.insert(start:end:context:)(&v6, &v5, v4);
  return outlined destroy of Pregnancy?(v4);
}

uint64_t closure #4 in Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(void *a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v10 = (*(v3 + 8))(v4);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = (*(v5 + 16))(v6);
  outlined init with copy of HealthDataQuery(a1, v8);
  AugmentedIntervalTree.insert(start:end:context:)(&v10, &v9, v8);
  return outlined destroy of Pregnancy?(v8);
}

uint64_t closure #6 in Featurizer.featurizeNightingaleDNative(pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(uint64_t a1, void *a2)
{
  v20 = a1;
  v19 = a2;
  outlined init with copy of Pregnancy?((a1 + 8), v15);
  if (!v15[3])
  {
    outlined destroy of Pregnancy?(v15);
LABEL_7:
    v3 = 1;
    return v3 & 1;
  }

  outlined init with take of HealthDataQuery(v15, __dst);
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v13 = (*(v9 + 8))(v10);
  v12 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(__dst, v17);
  if (v13 != (*(v11 + 8))(v12) || (v5 = a2[3], v4 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v5), v8 = (*(v4 + 16))(v5), v7 = v17, v6 = v18, __swift_project_boxed_opaque_existential_1(__dst, v17), v8 != (*(v6 + 16))(v7)))
  {
    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v3 = 0;
  return v3 & 1;
}

uint64_t maxEnd<A>(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v11 = a2;
  v21 = MEMORY[0x277D83988];
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v22 = v31;
  v31[0] = 0;
  v31[1] = 0;
  v35 = a2;
  v18 = 0;
  v20 = type metadata accessor for Interval();
  v12 = *(v20 - 8);
  v13 = v20 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v5[-v14];
  v34 = &v5[-v14];
  v16 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v19);
  v17 = &v5[-v16];
  v33 = v2;
  v25 = 0;
  v32 = 0;

  v30 = v19;
  v23 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  Collection<>.makeIterator()();
  for (i = v25; ; i = v8)
  {
    v9 = i;
    type metadata accessor for IndexingIterator();
    IndexingIterator.next()();
    v3 = (*(v12 + 48))(v17, 1, v20);
    v10 = v9;
    if (v3 == 1)
    {
      break;
    }

    v7 = type metadata accessor for Optional();
    outlined init with take of Interval<UInt32, A>(v17, v15, v11, v7, v20);
    v28 = v9;
    v27 = *(v15 + 1);
    max<A>(_:_:)();
    v8 = v29;
    v32 = v29;
    outlined destroy of Interval<UInt32, A>(v15, v11, v7, v20);
  }

  v6 = v10;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v6;
}

uint64_t appendFeature(hyperParams:_:_:_:_:_:_:_:_:_:_:)()
{
  if (HyperParams.isDaySHRRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isNightSHRRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isPSMRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isPSSRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isDaysSinceLastPeriodStartRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isSWTRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isHRVRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  if (HyperParams.isRespiratoryRateRequired()())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    Array.append(_:)();
  }

  result = HyperParams.isSpO2Required()();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    return Array.append(_:)();
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Featurizer.cycleStats(pregnancies:periods:earliestPregrancyLMP:latestPregrancyEndDay:)(Swift::tuple_prePregCycleStats_tuple_count_Float_mean_Float_optional_std_Float_pregCycleStats_tuple_count_Float_mean_Float_optional_std_Float_postPregCycleStats_tuple_count_Float_mean_Float_optional_std_Float *__return_ptr retstr, Swift::OpaquePointer pregnancies, Swift::OpaquePointer periods, Swift::UInt32 earliestPregrancyLMP, Swift::UInt32 latestPregrancyEndDay)
{
  v169 = latestPregrancyEndDay;
  v176 = earliestPregrancyLMP;
  rawValue = periods._rawValue;
  v168 = pregnancies._rawValue;
  v166 = retstr;
  v167 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v259 = 0;
  v257 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v246 = 0;
  v245 = 0;
  v244[7] = 0;
  v244[6] = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v226 = 0.0;
  v225 = 0;
  v222 = 0.0;
  v221 = 0;
  v218 = 0.0;
  v217 = 0;
  v216 = 0;
  v210 = 0;
  v208 = 0;
  v193 = 0;
  v191 = 0;
  v170 = type metadata accessor for PFLStats.StdMethod();
  v171 = *(v170 - 8);
  v172 = v171;
  v173 = *(v171 + 64);
  v6 = MEMORY[0x28223BE20](rawValue);
  v174 = &v57 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = v7;
  v264 = v6;
  v263 = v8;
  v262 = v9;
  v261 = v5;

  v260 = rawValue;
  v183 = v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd);
  v177 = v178;
  v10 = lazy protocol witness table accessor for type [(start: UInt32, end: UInt32)] and conformance [A]();
  v11 = v179;
  v180 = v10;
  v12 = _ArrayProtocol.filter(_:)();
  v181 = v11;
  v182 = v12;
  if (v11)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_71:
    v59 = v130;
    outlined destroy of Pregnancy?(v194);
    __swift_destroy_boxed_opaque_existential_1(v197);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    v60 = v59;
  }

  else
  {
    v162 = v182;
    v259 = v182;

    v258 = rawValue;
    v163 = &v57;
    MEMORY[0x28223BE20](&v57);
    v13 = _ArrayProtocol.filter(_:)();
    v164 = 0;
    v165 = v13;
    v158 = v165;
    v257 = v165;

    v256 = rawValue;
    v159 = &v57;
    MEMORY[0x28223BE20](&v57);
    v14 = _ArrayProtocol.filter(_:)();
    v160 = 0;
    v161 = v14;
    v155 = v161;
    v255 = v161;
    v254 = Array.init()();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd);
    v157 = MEMORY[0x25F8895B0](v162);
    if (v157 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v249 = 0;
    v250 = v157;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    v151 = v152;
    v153 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v160; ; i = v147)
    {
      v147 = i;
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
      IndexingIterator.next()();
      v149 = v247;
      v150 = v148;
      if (v248)
      {
        break;
      }

      v146 = v149;
      v143 = v149;
      v193 = v149;
      Array.subscript.getter();
      v144 = v192;
      v191 = v192;
      v15 = MEMORY[0x25F8895B0](v162, v156);
      v16 = __OFSUB__(v15, 1);
      v145 = v15 - 1;
      if (v16)
      {
        goto LABEL_82;
      }

      if (v143 == v145)
      {
        v186 = v176;
        v141 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v140 = MEMORY[0x277D84CC0];
        Float.init<A>(_:)();
        v142 = v17;
        v185 = v144;
        Float.init<A>(_:)();
        v184 = v142 - v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
        Array.append(_:)();
      }

      else
      {
        v19 = __OFADD__(v143, 1);
        v139 = v143 + 1;
        if (v19)
        {
          goto LABEL_83;
        }

        Array.subscript.getter();
        v189 = v190;
        v137 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v136 = MEMORY[0x277D84CC0];
        Float.init<A>(_:)();
        v138 = v20;
        v188 = v144;
        Float.init<A>(_:)();
        v187 = v138 - v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
        Array.append(_:)();
      }
    }

    v132 = v150;
    v246 = Array.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VypGMd);
    v133 = AugmentedIntervalTree.__allocating_init()();
    v245 = v133;

    v244[5] = v168;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Collection<>.makeIterator()();
    for (j = v147; ; j = v122)
    {
      v131 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMd);
      IndexingIterator.next()();
      if (!v244[3])
      {
        break;
      }

      v128 = v131;
      v125 = v197;
      outlined init with take of HealthDataQuery(v244, v197);
      v124 = v198;
      v123 = v199;
      __swift_project_boxed_opaque_existential_1(v125, v198);
      v196 = (*(v123 + 40))(v124);
      v127 = v198;
      v126 = v199;
      __swift_project_boxed_opaque_existential_1(v125, v198);
      v22 = (*(v126 + 16))(v127);
      v23 = v128;
      v195 = v22;
      memset(v194, 0, sizeof(v194));
      AugmentedIntervalTree.insert(start:end:context:)(&v196, &v195, v194);
      v129 = v23;
      v130 = v23;
      if (v23)
      {
        goto LABEL_71;
      }

      v122 = 0;
      outlined destroy of Pregnancy?(v194);
      __swift_destroy_boxed_opaque_existential_1(v197);
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v121 = MEMORY[0x25F8895B0](v158, v156);
    if (v121 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v239 = 0;
    v240 = v121;
    Collection<>.makeIterator()();
    for (k = v131; ; k = v106)
    {
      v118 = k;
      IndexingIterator.next()();
      v119 = v237;
      if (v238)
      {
        break;
      }

      v117 = v119;
      v114 = v119;
      v210 = v119;
      Array.subscript.getter();
      v115 = v209;
      v208 = v209;
      v24 = MEMORY[0x25F8895B0](v158, v156);
      v25 = __OFSUB__(v24, 1);
      v116 = v24 - 1;
      if (v25)
      {
        goto LABEL_77;
      }

      if (v114 == v116)
      {
        v204[0] = v115;
        v113 = v169 + 1;
        if (v169 == -1)
        {
          goto LABEL_81;
        }

        v26 = v118;
        v203 = v113;
        v27 = AugmentedIntervalTree.overlap(start:end:)(v204, &v203);
        v110 = v26;
        v111 = v27;
        v112 = v26;
        if (v26)
        {
          v58 = v112;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v60 = v58;
          return;
        }

        if ((v111 & 1) == 0)
        {
          v202 = v169;
          v108 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
          v107 = MEMORY[0x277D84CC0];
          Float.init<A>(_:)();
          v109 = v28;
          v201 = v115;
          Float.init<A>(_:)();
          v200 = (v109 - v29) + 1.0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
          Array.append(_:)();
        }

        v106 = v110;
      }

      else
      {
        v207 = v115;
        v30 = __OFADD__(v114, 1);
        v105 = v114 + 1;
        if (v30)
        {
          goto LABEL_78;
        }

        Array.subscript.getter();
        v104 = v206 - 1;
        if (!v206)
        {
          goto LABEL_79;
        }

        v31 = v118;
        v205 = v104;
        v32 = AugmentedIntervalTree.overlap(start:end:)(&v207, &v205);
        v101 = v31;
        v102 = v32;
        v103 = v31;
        if (v31)
        {
          v57 = v103;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v60 = v57;
          return;
        }

        if ((v102 & 1) == 0)
        {
          v33 = __OFADD__(v114, 1);
          v100 = v114 + 1;
          if (v33)
          {
            goto LABEL_80;
          }

          Array.subscript.getter();
          v204[3] = v204[4];
          v98 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
          v97 = MEMORY[0x277D84CC0];
          Float.init<A>(_:)();
          v99 = v34;
          v204[2] = v115;
          Float.init<A>(_:)();
          *&v204[1] = v99 - v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
          Array.append(_:)();
        }

        v106 = v101;
      }
    }

    v236 = Array.init()();
    v96 = MEMORY[0x25F8895B0](v155, v156);
    if (v96 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v231 = 0;
    v232 = v96;
    Collection<>.makeIterator()();
    for (m = v118; ; m = v93)
    {
      v93 = m;
      IndexingIterator.next()();
      v94 = v229;
      if (v230)
      {
        v85 = v93;
        v66 = v254;

        v61 = MEMORY[0x277D41408];
        v41 = *MEMORY[0x277D41408];
        v63 = *(v172 + 104);
        v62 = v172 + 104;
        v63(v174, v41, v170);
        v227 = static PFLStats.meanAndStd(_:_:)();
        v228 = v42;
        v74 = *&v227;
        v75 = BYTE4(v227);
        v76 = v42;
        v65 = *(v172 + 8);
        v64 = v172 + 8;
        v65(v174, v170);
        *&v225 = v74;
        BYTE4(v225) = v75;
        v226 = v76;
        v68 = v246;

        v63(v174, *v61, v170);
        v223 = static PFLStats.meanAndStd(_:_:)();
        v224 = v43;
        v78 = *&v223;
        v79 = BYTE4(v223);
        v80 = v43;
        v65(v174, v170);
        *&v221 = v78;
        BYTE4(v221) = v79;
        v222 = v80;
        v71 = v236;

        v63(v174, *v61, v170);
        v219 = static PFLStats.meanAndStd(_:_:)();
        v220 = v44;
        v82 = *&v219;
        v83 = BYTE4(v219);
        v84 = v44;
        v65(v174, v170);
        *&v217 = v82;
        BYTE4(v217) = v83;
        v218 = v84;
        v70 = MEMORY[0x277D83A90];
        v67 = MEMORY[0x25F8895B0](v66);

        v73 = v67;
        v69 = MEMORY[0x25F8895B0](v68, v70);

        v77 = v69;
        v72 = MEMORY[0x25F8895B0](v71, v70);

        v81 = v72;
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        v45 = v74;
        v46 = v75;
        v47 = v76;
        v48 = v77;
        v49 = v78;
        v50 = v79;
        v51 = v80;
        v52 = v81;
        v53 = v82;
        v54 = v83;
        v55 = v166;
        v56 = v84;
        v166->prePregCycleStats.count = v73;
        v55->prePregCycleStats.mean.value = v45;
        v55->prePregCycleStats.mean.is_nil = v46;
        v55->prePregCycleStats.std = v47;
        v55->pregCycleStats.count = v48;
        v55->pregCycleStats.mean.value = v49;
        v55->pregCycleStats.mean.is_nil = v50;
        v55->pregCycleStats.std = v51;
        v55->postPregCycleStats.count = v52;
        v55->postPregCycleStats.mean.value = v53;
        v55->postPregCycleStats.mean.is_nil = v54;
        v55->postPregCycleStats.std = v56;
        return;
      }

      v92 = v94;
      v90 = v94;
      v216 = v94;
      v36 = MEMORY[0x25F8895B0](v155, v156);
      v37 = __OFSUB__(v36, 1);
      v91 = v36 - 1;
      if (v37)
      {
        break;
      }

      if (v90 != v91)
      {
        v38 = __OFADD__(v90, 1);
        v89 = v90 + 1;
        if (v38)
        {
          goto LABEL_76;
        }

        Array.subscript.getter();
        v214 = v215;
        v87 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        v86 = MEMORY[0x277D84CC0];
        Float.init<A>(_:)();
        v88 = v39;
        Array.subscript.getter();
        v212 = v213;
        Float.init<A>(_:)();
        v211 = v88 - v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
        Array.append(_:)();
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }
}

uint64_t Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v251 = a4;
  v250 = a3;
  v253 = a2;
  v258 = a1;
  v248 = a1;
  v252 = 0;
  v354 = 0;
  v249 = 0;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v349 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v340 = 0;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v326 = 0;
  v323 = 0;
  v319 = 0;
  v314 = 0;
  v313 = 0.0;
  v312 = 0;
  v310 = 0;
  v309 = 0;
  v308 = 0;
  v303 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  v283 = 0;
  memset(&v280[1], 0, 24);
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v254 = type metadata accessor for PFLStats.StdMethod();
  v255 = *(v254 - 8);
  v256 = v255;
  v257 = *(v255 + 64);
  v259 = v81 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = v258;
  v353 = MEMORY[0x28223BE20](v253);
  v352 = v5;
  v351 = v6;
  v350 = v4;
  v348 = v7;
  v8 = MEMORY[0x25F8895B0](v353, MEMORY[0x277D84CC0]);
  v9 = __OFADD__(v8, v8);
  result = 2 * v8;
  v11 = v9;
  v260 = result;
  if ((v11 & 1) == 0)
  {
    v349 = Array.init(repeating:count:)();
    if (!v248)
    {
      v246 = v247;
LABEL_115:
      v81[1] = v246;
      v82 = v349;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v82;
    }

    switch(v248)
    {
      case 1u:
        v279 = v253;
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
        v12 = lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        MEMORY[0x25F889420](v280, v244, v12);
        v278 = v280[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySays6UInt32VGGMd);
        EnumeratedSequence.makeIterator()();
        for (i = v247; ; i = v207)
        {
          v241 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySays6UInt32VG_GMd);
          EnumeratedSequence.Iterator.next()();
          v242 = v275;
          v243 = v276;
          if (v277)
          {
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v246 = v241;
            goto LABEL_115;
          }

          v239 = v242;
          v240 = v243;
          v237 = v243;
          v236 = v242;
          v274 = v242;
          v273 = v243;
          result = Set.init()();
          v272 = result;
          v238 = v237 - v251;
          if (v237 < v251)
          {
            goto LABEL_135;
          }

          v235 = v238 + 1;
          if (v238 == -1)
          {
            goto LABEL_136;
          }

          if (v237 < v235)
          {
            LODWORD(v80) = 0;
            v79 = 409;
            v78 = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v229 = v241;
          v270 = v235;
          v271 = v237;
          v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd);
          v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
          lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
          v230 = &v272;
          Set.formUnion<A>(_:)();
          v13 = v229;

          v231 = v81;
          MEMORY[0x28223BE20](v81);
          v80 = v14;
          v15 = Dictionary.filter(_:)();
          v232 = v13;
          v233 = v15;
          v234 = v231;
          if (v13)
          {
            break;
          }

          v224 = 0;
          v269[1] = v233;
          v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
          v16 = lazy protocol witness table accessor for type [UInt32 : Float] and conformance [A : B]();
          v17 = v224;
          v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:), 0, v223, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v18);
          v225 = v17;
          v226 = v19;
          if (v17)
          {
            goto LABEL_117;
          }

          v214 = v226;
          outlined destroy of [(start: UInt32, end: UInt32)]();
          v269[0] = v214;
          v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
          v215 = v216;
          lazy protocol witness table accessor for type [Float] and conformance [A]();
          v217 = v269;
          v219 = Sequence<>.sorted()();
          outlined destroy of [(start: UInt32, end: UInt32)]();
          (*(v256 + 104))(v259, *MEMORY[0x277D41408], v254);
          v267 = static PFLStats.meanAndStd(_:_:)();
          v268 = v20;
          v220 = v267;
          v218 = v267;
          v222 = BYTE4(v267);
          v221 = v20;
          (*(v256 + 8))(v259, v254);

          v265 = v220;
          v266 = v222;
          v264 = v221;
          if (v222)
          {
            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v203 = 0;
            v204 = swift_allocError();
            *v30 = 62;
            swift_willThrow();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            result = v204;
            v205 = v204;
            return result;
          }

          v213 = v218;
          v211 = v218;
          v263 = v218;
          result = 2 * v236;
          v21 = __OFADD__(v236, v236);
          v212 = 2 * v236;
          if (v21)
          {
            goto LABEL_137;
          }

          v209 = &v262;
          v22 = Array.subscript.modify();
          v23 = v209;
          *v24 = v211;
          result = v22(v23, 0);
          v25 = __OFADD__(v236, v236);
          v210 = 2 * v236;
          if (v25)
          {
            goto LABEL_138;
          }

          result = v210 + 1;
          v26 = __OFADD__(v210, 1);
          v208 = v210 + 1;
          if (v26)
          {
            goto LABEL_139;
          }

          v207 = v225;
          v206 = &v261;
          v27 = Array.subscript.modify();
          v28 = v206;
          *v29 = v221;
          v27(v28, 0);
          outlined destroy of [(start: UInt32, end: UInt32)]();
        }

        __break(1u);
LABEL_117:
        __break(1u);
        break;
      case 2u:
        v347 = Set.init()();

        v344 = v253;
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
        lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        Collection<>.makeIterator()();
        for (j = v247; ; j = v120)
        {
          v125 = j;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays6UInt32VGGMd);
          IndexingIterator.next()();
          result = v342;
          v126 = v342;
          if (v343)
          {
            break;
          }

          v124 = v126;
          v122 = v126;
          v323 = v126;
          v123 = v126 - v251;
          if (v126 < v251)
          {
            goto LABEL_126;
          }

          v121 = v123 + 1;
          if (v123 == -1)
          {
            goto LABEL_127;
          }

          if (v122 < v121)
          {
            LODWORD(v80) = 0;
            v79 = 409;
            v78 = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v120 = v125;
          v321 = v121;
          v322 = v122;
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd);
          v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNys6UInt32VGMd);
          lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>();
          Set.formUnion<A>(_:)();
        }

        v114 = v125;
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v61 = v114;

        v115 = v81;
        MEMORY[0x28223BE20](v81);
        v80 = &v347;
        v62 = Dictionary.filter(_:)();
        v116 = v61;
        v117 = v62;
        if (!v61)
        {
          v111 = 0;
          v341[1] = v117;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd);
          v63 = lazy protocol witness table accessor for type [UInt32 : Float] and conformance [A : B]();
          v64 = v111;
          v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #6 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:), 0, v110, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v63, MEMORY[0x277D84AC0], v65);
          v112 = v64;
          v113 = v66;
          if (!v64)
          {
            v100 = v113;
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v341[0] = v100;
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
            v101 = v102;
            lazy protocol witness table accessor for type [Float] and conformance [A]();
            v103 = v341;
            v105 = Sequence<>.sorted()();
            v104 = v105;
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v340 = v105;
            (*(v256 + 104))(v259, *MEMORY[0x277D41408], v254);
            v338 = static PFLStats.meanAndStd(_:_:)();
            v339 = v67;
            v107 = v338;
            v106 = v338;
            v109 = BYTE4(v338);
            v108 = v67;
            (*(v256 + 8))(v259, v254);
            v336 = v107;
            v337 = v109;
            v335 = v108;
            if (v109)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v83 = 0;
              v84 = swift_allocError();
              *v77 = 62;
              swift_willThrow();

              outlined destroy of [(start: UInt32, end: UInt32)]();
              outlined destroy of [(start: UInt32, end: UInt32)]();
              result = v84;
              v205 = v84;
              return result;
            }

            v99 = v106;
            v97 = v106;
            v334 = v106;
            v98 = MEMORY[0x25F8895B0](v253, MEMORY[0x277D84CC0]);
            if (v98 < 0)
            {
              LODWORD(v80) = 0;
              v79 = 760;
              v78 = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            v329 = 0;
            v330 = v98;
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
            lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
            Collection<>.makeIterator()();
            for (k = v112; ; k = v86)
            {
              v93 = k;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
              IndexingIterator.next()();
              v94 = v327;
              if (v328)
              {
                break;
              }

              v92 = v94;
              v90 = v94;
              v326 = v94;
              result = 2 * v94;
              v68 = __OFADD__(v90, v90);
              v91 = 2 * v94;
              if (v68)
              {
                goto LABEL_123;
              }

              v88 = &v325;
              v69 = Array.subscript.modify();
              v70 = v88;
              *v71 = v97;
              result = v69(v70, 0);
              v72 = __OFADD__(v90, v90);
              v89 = 2 * v90;
              if (v72)
              {
                goto LABEL_124;
              }

              result = v89 + 1;
              v73 = __OFADD__(v89, 1);
              v87 = v89 + 1;
              if (v73)
              {
                goto LABEL_125;
              }

              v86 = v93;
              v85 = &v324;
              v74 = Array.subscript.modify();
              v75 = v85;
              *v76 = v108;
              v74(v75, 0);
            }

            outlined destroy of [(start: UInt32, end: UInt32)]();
            v246 = v93;
            goto LABEL_115;
          }

          goto LABEL_121;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        result = 0;
        __break(1u);
        return result;
      case 3u:
        v200 = v247;
        v199 = MEMORY[0x277D83A90];

        v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd);
        lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
        v194 = &v298;
        v195 = Sequence<>.sorted()();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v297 = v195;

        v196 = v81;
        MEMORY[0x28223BE20](v81);
        v197 = &v78;
        v80 = v31;
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
        lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        v32 = v200;
        v33 = Sequence.compactMap<A>(_:)();
        v201 = v32;
        v202 = v33;
        if (!v32)
        {
          v189 = v202;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          (*(v256 + 104))(v259, *MEMORY[0x277D41408], v254);
          v295 = static PFLStats.meanAndStd(_:_:)();
          v296 = v34;
          v190 = v295;
          v188 = v295;
          v192 = BYTE4(v295);
          v191 = v34;
          (*(v256 + 8))(v259, v254);

          v293 = v190;
          v294 = v192;
          v292 = v191;
          if (v192)
          {
            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v170 = 0;
            v171 = swift_allocError();
            *v44 = 62;
            swift_willThrow();
            outlined destroy of [(start: UInt32, end: UInt32)]();
            result = v171;
            v205 = v171;
            return result;
          }

          v187 = v188;
          v185 = v188;
          v291 = v188;
          v186 = MEMORY[0x25F8895B0](v253, MEMORY[0x277D84CC0]);
          if (v186 < 0)
          {
            LODWORD(v80) = 0;
            v79 = 760;
            v78 = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v286 = 0;
          v287 = v186;
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
          lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
          Collection<>.makeIterator()();
          for (m = v201; ; m = v173)
          {
            v181 = m;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
            IndexingIterator.next()();
            v182 = v284;
            if (v285)
            {
              break;
            }

            v180 = v182;
            v178 = v182;
            v283 = v182;
            result = 2 * v182;
            v35 = __OFADD__(v178, v178);
            v179 = 2 * v182;
            if (v35)
            {
              goto LABEL_132;
            }

            v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
            v176 = &v282;
            v36 = Array.subscript.modify();
            v37 = v176;
            *v38 = v185;
            result = v36(v37, 0);
            v39 = __OFADD__(v178, v178);
            v177 = 2 * v178;
            if (v39)
            {
              goto LABEL_133;
            }

            result = v177 + 1;
            v40 = __OFADD__(v177, 1);
            v174 = v177 + 1;
            if (v40)
            {
              goto LABEL_134;
            }

            v173 = v181;
            v172 = &v281;
            v41 = Array.subscript.modify();
            v42 = v172;
            *v43 = v191;
            v41(v42, 0);
          }

          v246 = v181;
          goto LABEL_115;
        }

        break;
      default:
        v168 = MEMORY[0x277D83A90];
        v320 = Dictionary.values.getter();
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVys6UInt32VSf_GMd);
        lazy protocol witness table accessor for type [UInt32 : Float].Values and conformance [A : B].Values();
        v166 = &v320;
        v169 = Sequence<>.sorted()();
        v167 = v169;
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v319 = v169;
        if (MEMORY[0x25F8895B0]() < 1)
        {
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v129 = 0;
          v130 = swift_allocError();
          *v60 = 62;
          swift_willThrow();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          result = v130;
          v205 = v130;
          return result;
        }

        v162 = v247;
        v161 = MEMORY[0x277D83A90];

        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd);
        lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
        v156 = &v318;
        v157 = Sequence<>.sorted()();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v317 = v157;

        v158 = v81;
        MEMORY[0x28223BE20](v81);
        v159 = &v78;
        v80 = v45;
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
        lazy protocol witness table accessor for type [UInt32] and conformance [A]();
        v46 = v162;
        v47 = Sequence.compactMap<A>(_:)();
        v163 = v46;
        v164 = v47;
        if (!v46)
        {
          v152 = v164;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          (*(v256 + 104))(v259, *MEMORY[0x277D41408], v254);
          v315 = static PFLStats.meanAndStd(_:_:)();
          v316 = v48;
          v153 = v48;
          (*(v256 + 8))(v259, v254);

          v314 = v153;
          v313 = 0.0;
          v154 = MEMORY[0x25F8895B0](v167, MEMORY[0x277D83A90]);
          v150 = v154 / 2;
          v312 = v154 / 2;
          v151 = MEMORY[0x25F8895B0](v167, MEMORY[0x277D83A90]);
          v49 = v151 & 1;
          if (v151 < 0)
          {
            v49 = -v49;
          }

          if (v49)
          {
            Array.subscript.getter();
            v313 = v311;
            v148 = v311;
LABEL_67:
            v144 = v148;
            v145 = MEMORY[0x25F8895B0](v253, MEMORY[0x277D84CC0]);
            if (v145 < 0)
            {
              LODWORD(v80) = 0;
              v79 = 760;
              v78 = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            v306 = 0;
            v307 = v145;
            v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
            lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
            Collection<>.makeIterator()();
            for (n = v163; ; n = v132)
            {
              v140 = n;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
              IndexingIterator.next()();
              v141 = v304;
              if (v305)
              {
                break;
              }

              v139 = v141;
              v137 = v141;
              v303 = v141;
              result = 2 * v141;
              v51 = __OFADD__(v137, v137);
              v138 = 2 * v141;
              if (v51)
              {
                goto LABEL_128;
              }

              v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
              v135 = &v302;
              v52 = Array.subscript.modify();
              v53 = v135;
              *v54 = v144;
              result = v52(v53, 0);
              v55 = __OFADD__(v137, v137);
              v136 = 2 * v137;
              if (v55)
              {
                goto LABEL_129;
              }

              result = v136 + 1;
              v56 = __OFADD__(v136, 1);
              v133 = v136 + 1;
              if (v56)
              {
                goto LABEL_130;
              }

              v132 = v140;
              v131 = &v301;
              v57 = Array.subscript.modify();
              v58 = v131;
              *v59 = v153;
              v57(v58, 0);
            }

            v246 = v140;
            goto LABEL_115;
          }

          result = v150 - 1;
          v50 = __OFSUB__(v150, 1);
          v149 = v150 - 1;
          if (!v50)
          {
            v146 = MEMORY[0x277D83A90];
            Array.subscript.getter();
            v147 = v300;
            Array.subscript.getter();
            v313 = (v147 + v299) * 0.5;
            v148 = v313;
            goto LABEL_67;
          }

          goto LABEL_131;
        }

        goto LABEL_119;
    }

    __break(1u);
LABEL_119:

    __break(1u);
    goto LABEL_120;
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
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t closure #1 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(_DWORD *a1, int *a2, void *a3)
{
  v9 = 0;
  v8 = 0;
  v3 = *a2;
  LODWORD(v9) = *a1;
  HIDWORD(v9) = v3;
  v8 = a3;
  v5 = *a3;

  v7 = v9;
  v6 = MEMORY[0x25F8897F0](&v7, v5, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);

  return v6 & 1;
}

float closure #2 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:)@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

uint64_t closure #3 in Featurizer.stats(option:sliceEndDays:feature:sliceSize:)(int *a1, uint64_t a2)
{
  v5 = 0;
  v4 = 0;
  v5 = *a1;
  v4 = a2;
  v3 = v5;
  return MEMORY[0x25F8891D0](&v3, a2, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
}

void __swiftcall Featurizer.featurizeWTPeriodPrediction(_:_:_:_:_:_:_:_:)(Swift::tuple_flow_OpaquePointer_swt_OpaquePointer_periodStartMean_OpaquePointer_periodStartStd_OpaquePointer_labels_OpaquePointer *__return_ptr retstr, Swift::OpaquePointer *a2, Swift::OpaquePointer *a3, Swift::OpaquePointer *a4, Swift::OpaquePointer *a5, Swift::OpaquePointer *a6, Swift::UInt32 a7, Swift::UInt32 a8, Swift::UInt32 a9)
{
  v10 = _allocateUninitializedArray<A>(_:)();
  v11 = _allocateUninitializedArray<A>(_:)();
  v12 = _allocateUninitializedArray<A>(_:)();
  v13 = _allocateUninitializedArray<A>(_:)();
  v9 = _allocateUninitializedArray<A>(_:)();
  retstr->flow._rawValue = v10;
  retstr->swt._rawValue = v11;
  retstr->periodStartMean._rawValue = v12;
  retstr->periodStartStd._rawValue = v13;
  retstr->labels._rawValue = v9;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Featurizer.standardize(flow:daySHR:nightSHR:psm:pss:swt:modelType:sliceSize:)(Swift::OpaquePointer *flow, Swift::OpaquePointer *daySHR, Swift::OpaquePointer *nightSHR, Swift::OpaquePointer *psm, Swift::OpaquePointer *pss, Swift::OpaquePointer *swt, NightingaleTraining::NightingalePFLModelType modelType, Swift::UInt32 sliceSize)
{
  standardizeFlow(_:_:)(flow, modelType);
  if (!v8)
  {
    standardizeDaySHR(_:_:)(daySHR, modelType);
    if (!v9)
    {
      standardizeNightSHR(_:_:)(nightSHR, modelType);
      if (!v10)
      {
        standardizePSM(_:_:)(psm, modelType);
        if (!v11)
        {
          standardizePSS(_:_:)(pss, modelType);
          if (!v12)
          {
            centerSWT(_:_:_:)(swt, modelType, sliceSize);
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizeFlow(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
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
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v5, v2);
  }

  else if (== infix<A>(_:_:)())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v3 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizeDaySHR(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v4 = 1;
  }

  else
  {
    v4 = == infix<A>(_:_:)();
  }

  if (v4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v3, v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizeNightSHR(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v4 = 1;
  }

  else
  {
    v4 = == infix<A>(_:_:)();
  }

  if (v4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v3, v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizePSM(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
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
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v5, v2);
  }

  else if (== infix<A>(_:_:)())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v3 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> standardizePSS(_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2)
{
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
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v2 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v5, v2);
  }

  else if (== infix<A>(_:_:)())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v3 = lazy protocol witness table accessor for type [Float] and conformance [A]();
    standardize<A>(values:mean:std:)(a1, v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> centerSWT(_:_:_:)(Swift::OpaquePointer *a1, NightingaleTraining::NightingalePFLModelType a2, Swift::UInt32 a3)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v29 = 0;
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v26 = a3;
  v41 = a3;
  v40 = a2;
  v39 = 3;
  lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    v22 = 1;
  }

  else
  {
    v38 = a2;
    v37 = 2;
    v22 = == infix<A>(_:_:)();
  }

  if (v22)
  {
    rawValue = a1->_rawValue;

    v21 = MEMORY[0x25F8895B0](rawValue, MEMORY[0x277D83A90]);

    if (!v26)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v21 % v26)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v11 = 7;
      swift_willThrow();
    }

    else
    {
      v18 = a1->_rawValue;

      v19 = MEMORY[0x25F8895B0](v18, MEMORY[0x277D83A90]);

      if (!v26)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (v19 / v26 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v32 = 0;
      v33 = v19 / v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      Collection<>.makeIterator()();
      for (i = v25; ; i = 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
        IndexingIterator.next()();
        v16 = v30;
        if (v31)
        {
          break;
        }

        v29 = v30;
        if ((v29 * v26) >> 64 != (v29 * v26) >> 63)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v15 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_37;
        }

        if ((v15 * v26) >> 64 != (v15 * v26) >> 63)
        {
          goto LABEL_38;
        }

        if (v15 * v26 < v30 * v26)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v28[0] = Array.subscript.getter();
        v28[1] = v4;
        v28[2] = v5;
        v28[3] = v6;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd);
        v14 = lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
        standardize<A>(values:mean:std:)(v28, v13, v14);
        if (i)
        {
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
          Array.subscript.setter();
          outlined destroy of IndexingIterator<ArraySlice<(start: UInt32, end: UInt32)>>();
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
        Array.subscript.setter();
        if ((v16 * v26) >> 64 != (v16 * v26) >> 63)
        {
          goto LABEL_39;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_40;
        }

        if ((v12 * v26) >> 64 != (v12 * v26) >> 63)
        {
          goto LABEL_41;
        }

        if (v12 * v26 < v16 * v26)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v27[0] = Array.subscript.getter();
        v27[1] = v8;
        v27[2] = v9;
        v27[3] = v10;
        center<A>(values:)(v27, v13, v14);
        Array.subscript.setter();
      }
    }
  }
}

uint64_t *closure #2 in findDaysNeedingDummyFlow(_:_:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v27 = 0;
  v26 = 0;
  v23 = *a1;
  v27 = v23;
  v26 = a2;
  if (!a2)
  {
    v11 = 0;
    v10 = 760;
    v9 = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v17 = v20;
  v24 = 1;
  v25 = v21;
  v14 = &v13;
  MEMORY[0x28223BE20](&v13);
  v15 = &v9;
  v11 = v23;
  v12 = v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnys6UInt32VGMd);
  v4 = lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>();
  v5 = v17;
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #2 in findDaysNeedingDummyFlow(_:_:), v15, v16, MEMORY[0x277D84CC0], MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v6);
  v18 = v5;
  v19 = v7;
  if (v5)
  {
    result = 0;
    __break(1u);
  }

  else
  {
    result = v14;
    *v22 = v19;
  }

  return result;
}

_DWORD *closure #1 in closure #2 in findDaysNeedingDummyFlow(_:_:)@<X0>(_DWORD *result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  if (__CFADD__(a2, *result))
  {
    __break(1u);
  }

  else
  {
    *a3 = a2 + *result;
  }

  return result;
}

uint64_t *standardize<A>(values:mean:std:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v21 = a2;
  v17 = a1;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v31 = a2;
  v18 = *(a2 - 8);
  v20 = v18;
  MEMORY[0x28223BE20](a1);
  v22 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4;
  v29 = v5;
  v28 = v6;
  v27 = v5;
  v26 = v6;
  (*(v18 + 16))(v22);
  v24 = (*(v19 + 24))(v21);
  v23 = v24;
  v25 = v24;
  (*(v20 + 8))(v22, v21);
  if (v24 < 1)
  {
    result = v16;
    v12 = v16;
  }

  else
  {
    v7 = v16;
    v13 = &v11;
    MEMORY[0x28223BE20](&v11);
    *(&v11 - 4) = v8;
    *(&v11 - 3) = &v27;
    *(&v11 - 2) = &v26;
    (*(v9 + 16))(partial apply for closure #1 in standardize<A>(values:mean:std:));
    v14 = v7;
    v15 = v7;
    if (v7)
    {
      return v13;
    }

    else
    {
      result = 0;
      v12 = 0;
    }
  }

  return result;
}

void closure #1 in standardize<A>(values:mean:std:)(uint64_t a1, uint64_t a2, uint64_t a3, const float *a4)
{
  v7 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v7)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    cblas_saxpy_NEWLAPACK();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    lazy protocol witness table accessor for type UInt and conformance UInt();
    numericCast<A, B>(_:)();
    vDSP_vsdiv(v7, v10, a4, v7, v9, v8);
  }

  else
  {
    v5 = type metadata accessor for PFLError();
    lazy protocol witness table accessor for type PFLError and conformance PFLError();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v4, *MEMORY[0x277D413E8]);
    swift_willThrow();
  }
}

void *center<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v19 = a2;
  v14 = a1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v26 = a2;
  v15 = *(a2 - 8);
  v18 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v20 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v3;
  v24 = v4;
  (*(v15 + 16))(v20);
  v22 = (*(v17 + 24))(v19);
  v21 = v22;
  v23 = v22;
  (*(v18 + 8))(v20, v19);
  if (v22 < 1)
  {
    result = v13;
    v9 = v13;
  }

  else
  {
    v5 = v13;
    v10 = &v9;
    MEMORY[0x28223BE20](&v9);
    *(&v9 - 2) = &v24;
    *(&v9 - 1) = v6;
    (*(v7 + 16))(partial apply for closure #1 in center<A>(values:));
    v11 = v5;
    v12 = v5;
    if (v5)
    {
      return v10;
    }

    else
    {
      result = 0;
      v9 = 0;
    }
  }

  return result;
}

uint64_t closure #1 in center<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v30 = 0;
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v24 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v24)
  {
    v20 = v24;
    v5 = v21;
    v15 = v24;
    v30 = v24;
    v14 = v10;
    v6 = MEMORY[0x28223BE20](v23);
    v9[2] = v15;
    v9[3] = v7;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in closure #1 in center<A>(values:), v9, MEMORY[0x277D83A90], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v8);
    v16 = v5;
    if (v5)
    {
      result = 0;
      __break(1u);
    }

    else
    {
      v13 = 0;
      v28 = v22;
      v10[3] = lazy protocol witness table accessor for type Int and conformance Int();
      v10[4] = lazy protocol witness table accessor for type Int32 and conformance Int32();
      v10[1] = MEMORY[0x277D83B88];
      v10[2] = MEMORY[0x277D849A8];
      numericCast<A, B>(_:)();
      v11 = v29;
      v26 = 0;
      numericCast<A, B>(_:)();
      v12 = v27;
      v25 = 1;
      numericCast<A, B>(_:)();
      return cblas_saxpy_NEWLAPACK();
    }
  }

  else
  {
    v18 = 0;
    v17 = type metadata accessor for PFLError();
    lazy protocol witness table accessor for type PFLError and conformance PFLError();
    v19 = swift_allocError();
    (*(*(v17 - 8) + 104))(v3, *MEMORY[0x277D413E8]);
    swift_willThrow();
    return 0;
  }

  return result;
}

void closure #1 in closure #1 in center<A>(values:)(float *a1, const float *a2)
{
  lazy protocol witness table accessor for type Int and conformance Int();
  numericCast<A, B>(_:)();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  numericCast<A, B>(_:)();
  vDSP_meanv(a2, v5, a1, v4);
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t closure #1 in transferFeatureToMLInputs(_:_:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (UnsafeMutableBufferPointer.baseAddress.getter())
  {
    v7 = *a2;

    MEMORY[0x25F8895B0](v7, MEMORY[0x277D83A90]);

    lazy protocol witness table accessor for type Int and conformance Int();
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    numericCast<A, B>(_:)();
    numericCast<A, B>(_:)();
    NightingalePFLModelType.numFeatures()();
    numericCast<A, B>(_:)();

    cblas_scopy_NEWLAPACK();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = type metadata accessor for PFLError();
    lazy protocol witness table accessor for type PFLError and conformance PFLError();
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v5, *MEMORY[0x277D413E8]);
    swift_willThrow();
    result = v9;
    *a5 = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureStatsOption and conformance FeatureStatsOption()
{
  v2 = lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption;
  if (!lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption;
  if (!lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureStatsOption and conformance FeatureStatsOption);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Range<UInt32> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<UInt32> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<UInt32> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnys6UInt32VGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<UInt32> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  v2 = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [[UInt32]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[UInt32]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[UInt32]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySays6UInt32VGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[UInt32]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t _ss10ArraySliceV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1 || *a1 != a2 || a1[1] != a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  type metadata accessor for ArraySlice();
  Array._endMutation()();
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type [(Int, [[Int]])] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(Int, [[Int]])] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(Int, [[Int]])] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi_SaySaySiGGtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(Int, [[Int]])] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(Int, [Float])] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(Int, [Float])] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(Int, [Float])] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi_SaySfGtGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(Int, [Float])] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

char *outlined init with take of Interval<UInt32, A>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v10 = *(a5 + 48);
  v11 = *(a3 - 8);
  if ((*(v11 + 48))(&a1[v10], 1))
  {
    memcpy(&a2[v10], &a1[v10], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(&a2[v10], 0, 1, a3);
  }

  return a2;
}

uint64_t outlined destroy of Interval<UInt32, A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 48);
  v8 = *(a2 - 8);
  if (!(*(v8 + 48))(a1 + v7, 1))
  {
    (*(v8 + 8))(a1 + v7, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for FeatureStatsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
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

_BYTE *storeEnumTagSinglePayload for FeatureStatsOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
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

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PFLError and conformance PFLError()
{
  v2 = lazy protocol witness table cache variable for type PFLError and conformance PFLError;
  if (!lazy protocol witness table cache variable for type PFLError and conformance PFLError)
  {
    type metadata accessor for PFLError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PFLError and conformance PFLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t mergePregnancies(pregnancies:strategy:)(uint64_t a1, int a2)
{
  v309 = a1;
  v308 = a2;
  v289 = closure #1 in mergePregnancies(pregnancies:strategy:);
  v290 = closure #2 in mergePregnancies(pregnancies:strategy:);
  v291 = closure #3 in mergePregnancies(pregnancies:strategy:);
  v292 = partial apply for implicit closure #1 in mergePregnancies(pregnancies:strategy:);
  v293 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v294 = partial apply for implicit closure #2 in mergePregnancies(pregnancies:strategy:);
  v295 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt32);
  v296 = partial apply for implicit closure #3 in mergePregnancies(pregnancies:strategy:);
  v297 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt32);
  v298 = partial apply for closure #1 in OSLogArguments.append(_:);
  v299 = partial apply for closure #1 in OSLogArguments.append(_:);
  v300 = partial apply for closure #1 in OSLogArguments.append(_:);
  v301 = partial apply for closure #1 in OSLogArguments.append(_:);
  v302 = partial apply for closure #1 in OSLogArguments.append(_:);
  v303 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v304 = partial apply for closure #1 in OSLogArguments.append(_:);
  v305 = partial apply for closure #1 in OSLogArguments.append(_:);
  v306 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v307 = closure #4 in mergePregnancies(pregnancies:strategy:);
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v344 = 0;
  v345 = 0;
  v334 = 0;
  v333[7] = 0;
  v333[8] = 0;
  v332 = 0;
  v329 = 0;
  v327 = 0;
  memset(v326, 0, sizeof(v326));
  v310 = type metadata accessor for Logger();
  v311 = *(v310 - 8);
  v312 = v310 - 8;
  v313 = (*(v311 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v314 = v57 - v313;
  v348 = MEMORY[0x28223BE20](v309);
  v347 = v2 & 1;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21AugmentedIntervalTreeCys6UInt32VAA9Pregnancy_pGMd);
    v283 = AugmentedIntervalTree.__allocating_init()();
    v346 = v283;

    v343 = v309;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Collection<>.makeIterator()();
    for (i = v288; ; i = v130)
    {
      v282 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining9Pregnancy_pGGMd);
      IndexingIterator.next()();
      if (!v342)
      {
        break;
      }

      v278 = __dst;
      outlined init with take of HealthDataQuery(v341, __dst);
      v277 = v338;
      v276 = v339;
      __swift_project_boxed_opaque_existential_1(v278, v338);
      v281 = (*(v276 + 8))(v277);
      v280 = v338;
      v279 = v339;
      __swift_project_boxed_opaque_existential_1(v278, v338);
      v4 = (*(v279 + 16))(v280);
      if (v4 >= v281)
      {
        v122 = __dst;
        v121 = v338;
        v120 = v339;
        __swift_project_boxed_opaque_existential_1(__dst, v338);
        v37 = (*(v120 + 8))(v121);
        v125 = &v336;
        v336 = v37;
        v124 = v338;
        v123 = v339;
        __swift_project_boxed_opaque_existential_1(v122, v338);
        v38 = (*(v123 + 16))(v124);
        v39 = v282;
        v335 = v38;
        v40 = AugmentedIntervalTree.search(start:end:)(v125, &v335);
        v126 = v39;
        v127 = v40;
        v128 = v39;
        if (v39)
        {
          v64 = v128;
          __swift_destroy_boxed_opaque_existential_1(__dst);
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v65 = v64;
          return v229;
        }

        v117 = v127;
        v334 = v127;
        v333[9] = v127;
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMd);
        v119 = lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
        if (Collection.isEmpty.getter())
        {
          v110 = __dst;
          v107 = v338;
          v106 = v339;
          __swift_project_boxed_opaque_existential_1(__dst, v338);
          v41 = (*(v106 + 8))(v107);
          v113 = &v325;
          v325 = v41;
          v109 = v338;
          v108 = v339;
          __swift_project_boxed_opaque_existential_1(v110, v338);
          v42 = (*(v108 + 16))(v109);
          v111 = &v324;
          v324 = v42;
          v112 = v323;
          outlined init with copy of HealthDataQuery(v110, v323);
          v43 = v126;
          AugmentedIntervalTree.insert(start:end:context:)(v113, v111, v112);
          v114 = v43;
          v115 = v117;
          v116 = v43;
          if (v43)
          {
            v63 = v116;
            v62 = v115;
            outlined destroy of Pregnancy?(v323);

            __swift_destroy_boxed_opaque_existential_1(__dst);
            outlined destroy of [(start: UInt32, end: UInt32)]();

            v65 = v63;
            return v229;
          }

          outlined destroy of Pregnancy?(v323);
          v105 = v114;
        }

        else
        {

          v333[6] = v117;
          Collection<>.makeIterator()();
          for (j = v126; ; j = v103)
          {
            v103 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19NightingaleTraining8IntervalVys6UInt32VAC9Pregnancy_pGGGMd);
            IndexingIterator.next()();
            if (v333[4] == 1)
            {
              break;
            }

            v102 = v326;
            memcpy(v326, v333, sizeof(v326));
            AugmentedIntervalTree.delete(interval:)(v326);
            outlined destroy of Interval<UInt32, Pregnancy>(v102);
          }

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v331[5] = v117;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
          v45 = v103;
          v99 = v44;
          v46 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v289, 0, v118, v44, MEMORY[0x277D84A98], v119, MEMORY[0x277D84AC0], v229);
          v100 = v45;
          v101 = v46;
          if (v45)
          {
            __break(1u);
LABEL_41:
            __break(1u);
            __break(1u);
LABEL_42:
            v61 = v83;
            v59 = v82;
            v60 = v80;

            outlined destroy of [(start: UInt32, end: UInt32)]();

            __swift_destroy_boxed_opaque_existential_1(__dst);
            outlined destroy of [(start: UInt32, end: UInt32)]();

            v65 = v61;
            return v229;
          }

          v332 = v101;
          v94 = v331;
          outlined init with copy of HealthDataQuery(__dst, v331);
          Array.append(_:)();
          v95 = v332;

          v330 = v95;
          v47 = lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
          v48 = v100;
          v96 = v47;
          v49 = _ArrayProtocol.filter(_:)();
          v97 = v48;
          v98 = v49;
          if (v48)
          {
            goto LABEL_41;
          }

          v91 = v98;
          v329 = v98;
          v328 = v95;
          v50 = _ArrayProtocol.filter(_:)();
          v92 = 0;
          v93 = v50;
          v88 = v50;
          v327 = v50;
          v89 = MEMORY[0x25F8895B0](v91, v99);
          v90 = 0;

          v87 = v90 < v89 && MEMORY[0x25F8895B0](v88, v99) > 0;
          v86 = v87;

          v85 = v86 || MEMORY[0x25F8895B0](v91, v99) == 0;
          v84 = v85;

          if (v84)
          {
            v51 = v92;
            merge(pregnancies:tree:)(v88, v283);
            v79 = v51;
            v80 = v117;
            v81 = v88;
            v82 = v91;
            v83 = v51;
            if (v51)
            {
              goto LABEL_42;
            }

            v78 = 0;
          }

          else
          {
            v52 = v92;
            merge(pregnancies:tree:)(v91, v283);
            v73 = v52;
            v74 = v117;
            v75 = v88;
            v76 = v91;
            v77 = v52;
            if (v52)
            {
              v58 = v77;
              v57[1] = v76;
              v57[2] = v74;

              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(__dst);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              v65 = v58;
              return v229;
            }

            v78 = 0;
          }

          v72 = v78;

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v105 = v72;
        }

        v71 = v105;

        __swift_destroy_boxed_opaque_existential_1(__dst);
        v130 = v71;
      }

      else
      {
        static PFLLogging.plugin.getter();
        v249 = __dst;
        v247 = v322;
        outlined init with copy of HealthDataQuery(__dst, v322);
        v250 = 56;
        v259 = 7;
        v252 = swift_allocObject();
        outlined init with take of HealthDataQuery(v247, (v252 + 16));
        v248 = v321;
        outlined init with copy of HealthDataQuery(v249, v321);
        v254 = swift_allocObject();
        outlined init with take of HealthDataQuery(v248, (v254 + 16));
        v251 = v320;
        outlined init with copy of HealthDataQuery(v249, v320);
        v260 = swift_allocObject();
        outlined init with take of HealthDataQuery(v251, (v260 + 16));
        v274 = Logger.logObject.getter();
        v275 = static os_log_type_t.debug.getter();
        v256 = 17;
        v262 = swift_allocObject();
        *(v262 + 16) = 32;
        v263 = swift_allocObject();
        *(v263 + 16) = 8;
        v258 = 32;
        v5 = swift_allocObject();
        v6 = v252;
        v253 = v5;
        *(v5 + 16) = v292;
        *(v5 + 24) = v6;
        v7 = swift_allocObject();
        v8 = v253;
        v264 = v7;
        *(v7 + 16) = v293;
        *(v7 + 24) = v8;
        v265 = swift_allocObject();
        *(v265 + 16) = 0;
        v266 = swift_allocObject();
        v257 = 4;
        *(v266 + 16) = 4;
        v9 = swift_allocObject();
        v10 = v254;
        v255 = v9;
        *(v9 + 16) = v294;
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v255;
        v267 = v11;
        *(v11 + 16) = v295;
        *(v11 + 24) = v12;
        v268 = swift_allocObject();
        *(v268 + 16) = 0;
        v269 = swift_allocObject();
        *(v269 + 16) = v257;
        v13 = swift_allocObject();
        v14 = v260;
        v261 = v13;
        *(v13 + 16) = v296;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v261;
        v271 = v15;
        *(v15 + 16) = v297;
        *(v15 + 24) = v16;
        v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
        v270 = _allocateUninitializedArray<A>(_:)();
        v272 = v17;

        v18 = v262;
        v19 = v272;
        *v272 = v298;
        v19[1] = v18;

        v20 = v263;
        v21 = v272;
        v272[2] = v299;
        v21[3] = v20;

        v22 = v264;
        v23 = v272;
        v272[4] = v300;
        v23[5] = v22;

        v24 = v265;
        v25 = v272;
        v272[6] = v301;
        v25[7] = v24;

        v26 = v266;
        v27 = v272;
        v272[8] = v302;
        v27[9] = v26;

        v28 = v267;
        v29 = v272;
        v272[10] = v303;
        v29[11] = v28;

        v30 = v268;
        v31 = v272;
        v272[12] = v304;
        v31[13] = v30;

        v32 = v269;
        v33 = v272;
        v272[14] = v305;
        v33[15] = v32;

        v34 = v271;
        v35 = v272;
        v272[16] = v306;
        v35[17] = v34;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v274, v275))
        {
          v231 = static UnsafeMutablePointer.allocate(capacity:)();
          v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
          v232 = createStorage<A>(capacity:type:)(0);
          v233 = createStorage<A>(capacity:type:)(1);
          v234 = &v319;
          v319 = v231;
          v235 = &v318;
          v318 = v232;
          v236 = &v317;
          v317 = v233;
          serialize(_:at:)(2, &v319);
          serialize(_:at:)(3, v234);
          v36 = v282;
          v315 = v298;
          v316 = v262;
          closure #1 in osLogInternal(_:log:type:)(&v315, v234, v235, v236);
          v237 = v36;
          v238 = v262;
          v239 = v263;
          v240 = v264;
          v241 = v265;
          v242 = v266;
          v243 = v267;
          v244 = v268;
          v245 = v269;
          v246 = v271;
          if (v36)
          {
            v219 = v238;
            v220 = v239;
            v221 = v240;
            v222 = v241;
            v223 = v242;
            v224 = v243;
            v225 = v244;
            v226 = v245;
            v227 = v246;
            v138 = v246;
            v137 = v245;
            v136 = v244;
            v135 = v243;
            v134 = v242;
            v133 = v241;
            v132 = v240;
            v131 = v239;

            __break(1u);
          }

          else
          {
            v315 = v299;
            v316 = v263;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v209 = 0;
            v210 = v262;
            v211 = v263;
            v212 = v264;
            v213 = v265;
            v214 = v266;
            v215 = v267;
            v216 = v268;
            v217 = v269;
            v218 = v271;
            v315 = v300;
            v316 = v264;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v199 = 0;
            v200 = v262;
            v201 = v263;
            v202 = v264;
            v203 = v265;
            v204 = v266;
            v205 = v267;
            v206 = v268;
            v207 = v269;
            v208 = v271;
            v315 = v301;
            v316 = v265;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v189 = 0;
            v190 = v262;
            v191 = v263;
            v192 = v264;
            v193 = v265;
            v194 = v266;
            v195 = v267;
            v196 = v268;
            v197 = v269;
            v198 = v271;
            v315 = v302;
            v316 = v266;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v179 = 0;
            v180 = v262;
            v181 = v263;
            v182 = v264;
            v183 = v265;
            v184 = v266;
            v185 = v267;
            v186 = v268;
            v187 = v269;
            v188 = v271;
            v315 = v303;
            v316 = v267;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v169 = 0;
            v170 = v262;
            v171 = v263;
            v172 = v264;
            v173 = v265;
            v174 = v266;
            v175 = v267;
            v176 = v268;
            v177 = v269;
            v178 = v271;
            v315 = v304;
            v316 = v268;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v159 = 0;
            v160 = v262;
            v161 = v263;
            v162 = v264;
            v163 = v265;
            v164 = v266;
            v165 = v267;
            v166 = v268;
            v167 = v269;
            v168 = v271;
            v315 = v305;
            v316 = v269;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v149 = 0;
            v150 = v262;
            v151 = v263;
            v152 = v264;
            v153 = v265;
            v154 = v266;
            v155 = v267;
            v156 = v268;
            v157 = v269;
            v158 = v271;
            v315 = v306;
            v316 = v271;
            closure #1 in osLogInternal(_:log:type:)(&v315, &v319, &v318, &v317);
            v139 = 0;
            v140 = v262;
            v141 = v263;
            v142 = v264;
            v143 = v265;
            v144 = v266;
            v145 = v267;
            v146 = v268;
            v147 = v269;
            v148 = v271;
            _os_log_impl(&dword_25C4D8000, v274, v275, "Pregancy %s has start day after end day, skipping (startDay: %u, endDay: %u)", v231, 0x18u);
            destroyStorage<A>(_:count:)(v232, 0, v230);
            destroyStorage<A>(_:count:)(v233, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x25F8899D0](v231, MEMORY[0x277D84B78]);

            v228 = v139;
          }
        }

        else
        {

          v228 = v282;
        }

        v129 = v228;
        MEMORY[0x277D82BD8](v274);
        (*(v311 + 8))(v314, v310);
        __swift_destroy_boxed_opaque_existential_1(__dst);
        v130 = v129;
      }
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v340 = AugmentedIntervalTree.allIntervals()();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining8IntervalVys6UInt32VAA9Pregnancy_pGGMd);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd);
    v53 = lazy protocol witness table accessor for type [Interval<UInt32, Pregnancy>] and conformance [A]();
    v54 = v282;
    v55 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v307, 0, v67, v68, MEMORY[0x277D84A98], v53, MEMORY[0x277D84AC0], v229);
    v69 = v54;
    v70 = v55;
    if (!v54)
    {
      v66 = v70;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      v286 = v66;
      v287 = v69;
      return v286;
    }

    __break(1u);
    return v229;
  }

  else
  {
    v3 = v288;

    v286 = v309;
    v287 = v3;
    return v286;
  }
}

BOOL static PregnancyInvalidReason.== infix(_:_:)(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v59);
  v64 = &v15 - v63;
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v66 = &v15 - v65;
  v67 = dispatch thunk of Collection.count.getter();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = ContiguousArray.init()();
  v33 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v67);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v67 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_24:
    v17 = static Array._allocateUninitialized(_:)();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = dispatch thunk of Collection.subscript.read();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      outlined destroy of ContiguousArray<A1>();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}