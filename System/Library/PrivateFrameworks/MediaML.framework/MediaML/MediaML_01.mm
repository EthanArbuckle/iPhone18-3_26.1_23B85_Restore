uint64_t WifiModel.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static WifiModel.logger);
}

uint64_t static WifiModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = WifiModel.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void variable initialization expression of WifiModel.model(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t key path getter for WifiModel.model : WifiModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  v7 = v4;
  (*(*v4 + 120))(v2);
  memcpy(a2, v6, 0x28uLL);
}

uint64_t key path setter for WifiModel.model : WifiModel(void *a1, uint64_t *a2)
{
  outlined init with copy of Transformer?(a1, v5);
  v4 = *a2;

  (*(*v4 + 128))(v5);
}

uint64_t WifiModel.model.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of Transformer?((v1 + 112), a1);
  return swift_endAccess();
}

void *outlined init with copy of Transformer?(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t *WifiModel.model.setter(uint64_t *a1)
{
  outlined init with copy of Transformer?(a1, v4);
  swift_beginAccess();
  outlined assign with take of Transformer?(v4, (v1 + 112));
  swift_endAccess();
  return outlined destroy of Transformer?(a1);
}

uint64_t *outlined assign with take of Transformer?(const void *a1, uint64_t *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t *outlined destroy of Transformer?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t variable initialization expression of WifiModel.parametersURL@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v11 = type metadata accessor for URL();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v2 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v8 + 16))(v1, v2, v11);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wifiParameters.pkg", 0x12uLL, 1)._object;
  URL.appendingPathComponent(_:)();

  return (*(v8 + 8))(v10, v11);
}

uint64_t WifiModel.parametersURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t variable initialization expression of WifiModel.targetColumnID()
{
  v0 = kMediaML_throughputTrue.unsafeMutableAddressor();
  countAndFlagsBits = v0->_countAndFlagsBits;
  object = v0->_object;

  return ColumnID.init(_:_:)();
}

uint64_t WifiModel.targetColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t WifiModel.estimator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t WifiModel.__allocating_init()()
{
  v6 = v1;
  *(v1 + 16) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = WifiModel.__allocating_init();

  return WifiModel.init()();
}

uint64_t WifiModel.__allocating_init()(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t WifiModel.init()()
{
  v1[8] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  v8 = *(v2 - 8);
  v1[10] = v8;
  v3 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[12] = v4;
  v9 = *(v4 - 8);
  v1[13] = v9;
  v5 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = v1[2];

  return MEMORY[0x2822009F8](WifiModel.init(), 0, 0);
}

{
  v1 = v0[14];
  v6 = v0[13];
  v7 = v0[12];
  v11 = v0[8];
  v0[2] = v0;
  v0[3] = v11;
  swift_defaultActor_initialize();
  v11[14] = 0;
  v11[15] = 0;
  v11[16] = 0;
  v11[17] = 0;
  v11[18] = 0;
  v2 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v6 + 16))(v1, v2, v7);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wifiParameters.pkg", 0x12uLL, 1);
  URL.appendingPathComponent(_:)();

  (*(v6 + 8))(v1, v7);
  v3 = kMediaML_throughputTrue.unsafeMutableAddressor();
  countAndFlagsBits = v3->_countAndFlagsBits;
  object = v3->_object;

  ColumnID.init(_:_:)();
  v10 = OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
  WiFiModelGuts.init()();
  WiFiModelGuts.estimator.getter(v11 + v10);
  v4 = v0[2];

  return MEMORY[0x2822009F8](WifiModel.init(), v11, 0);
}

{
  v1 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v0[2] = v0;
  v2 = WifiModel.logger.unsafeMutableAddressor();
  (*(v17 + 16))(v1, v2, v18);
  v20 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v20, v19))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 32) = buf;
    *(v16 + 40) = v13;
    *(v16 + 48) = v14;
    serialize(_:at:)(0, (v16 + 32));
    serialize(_:at:)(0, (v16 + 32));
    *(v16 + 56) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 32;
    v15[3] = v16 + 40;
    v15[4] = v16 + 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2586A4000, v20, v19, "New WiFi Model created", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v16 + 112);
  v10 = *(v16 + 88);
  v8 = *(v16 + 72);
  v7 = *(v16 + 80);
  MEMORY[0x277D82BD8](v20);
  (*(v7 + 8))(v10, v8);

  v3 = *(*(v16 + 16) + 8);
  v4 = *(v16 + 16);
  v5 = *(v16 + 64);

  return v3(v5);
}

uint64_t WifiModel.train(traindata_url:)(uint64_t a1, uint64_t a2)
{
  v3[18] = v2;
  v3[17] = a2;
  v3[16] = a1;
  v3[13] = v3;
  v3[14] = 0;
  v3[15] = 0;
  v4 = *(*(type metadata accessor for CSVReadingOptions() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[20] = v5;
  v11 = *(v5 - 8);
  v3[21] = v11;
  v6 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for DataFrame();
  v3[23] = v7;
  v12 = *(v7 - 8);
  v3[24] = v12;
  v8 = *(v12 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[14] = a2;
  v3[15] = v14;
  v9 = v3[13];

  return MEMORY[0x2822009F8](WifiModel.train(traindata_url:), v14, 0);
}

uint64_t WifiModel.train(traindata_url:)()
{
  v12 = v0[25];
  v13 = v0[22];
  v1 = v0[21];
  v2 = v0[20];
  v14 = v0[19];
  v3 = v0[17];
  v0[13] = v0;
  (*(v1 + 16))();
  default argument 3 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  default argument 4 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v14);
  DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  v4 = *(**(v11 + 144) + 160);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v11 + 208) = v6;
  *v6 = *(v11 + 104);
  v6[1] = WifiModel.train(traindata_url:);
  v7 = *(v11 + 200);
  v8 = *(v11 + 144);

  return v10(v11 + 16, v7);
}

{
  v8 = *v1;
  v2 = *(*v1 + 208);
  v8[13] = *v1;
  v9 = v8 + 13;
  v8[27] = v0;

  if (v0)
  {
    v3 = v8[18];
    v6 = *v9;
    v5 = WifiModel.train(traindata_url:);
  }

  else
  {
    v3 = v8[18];
    v4 = *v9;
    v5 = WifiModel.train(traindata_url:);
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

{
  v7 = v0[25];
  v1 = v0[24];
  v2 = v0[23];
  v8 = v0[22];
  v9 = v0[19];
  __dst = v0[16];
  v0[13] = v0;
  (*(v1 + 8))();
  memcpy(__dst, v0 + 2, 0x51uLL);

  v3 = *(v0[13] + 8);
  v4 = v0[13];

  return v3();
}

{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[23];
  v0[13] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[25];
  v9 = v0[22];
  v10 = v0[19];

  v6 = *(v0[13] + 8);
  v7 = v0[13];

  return v6();
}

uint64_t default argument 4 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v6 = type metadata accessor for CSVType();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v12 = &v2 - v3;
  v14 = default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
  v10 = default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
  v11 = default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
  (*(v4 + 104))(v12, *MEMORY[0x277CE1918], v6);
  v7 = 1;
  v13 = 1;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", 1uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\", v7, v13 & 1);
  return CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)();
}

uint64_t WifiModel.train(dataFrame:)(uint64_t a1, uint64_t a2)
{
  v3[49] = v2;
  v3[48] = a2;
  v3[47] = a1;
  v3[50] = *v2;
  v3[38] = v3;
  v3[39] = 0;
  v3[40] = 0;
  v3[45] = 0;
  v3[46] = 0;
  v4 = type metadata accessor for URL();
  v3[51] = v4;
  v17 = *(v4 - 8);
  v3[52] = v17;
  v5 = *(v17 + 64) + 15;
  v3[53] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[54] = v6;
  v18 = *(v6 - 8);
  v3[55] = v18;
  v19 = *(v18 + 64);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v7 = type metadata accessor for AnyColumnSlice();
  v3[60] = v7;
  v20 = *(v7 - 8);
  v3[61] = v20;
  v21 = *(v20 + 64);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v8 = type metadata accessor for DataFrame.Rows();
  v3[66] = v8;
  v22 = *(v8 - 8);
  v3[67] = v22;
  v23 = *(v22 + 64);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData0B5FrameVSgMd, &_s11TabularData0B5FrameVSgMR) - 8) + 64) + 15;
  v3[70] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v3[71] = v10;
  v24 = *(v10 - 8);
  v3[72] = v24;
  v25 = *(v24 + 64);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v3[75] = v11;
  v26 = *(v11 - 8);
  v3[76] = v26;
  v12 = *(v26 + 64) + 15;
  v3[77] = swift_task_alloc();
  v13 = type metadata accessor for DataFrame();
  v3[78] = v13;
  v27 = *(v13 - 8);
  v3[79] = v27;
  v28 = *(v27 + 64);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v14 = type metadata accessor for DataFrame.Slice();
  v3[82] = v14;
  v29 = *(v14 - 8);
  v3[83] = v29;
  v30 = *(v29 + 64);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[39] = a2;
  v3[40] = v2;
  v15 = v3[38];

  return MEMORY[0x2822009F8](WifiModel.train(dataFrame:), v2, 0);
}

uint64_t WifiModel.train(dataFrame:)()
{
  v86 = v0;
  v77 = v0[86];
  v80 = v0[85];
  v84 = v0[84];
  v78 = v0[83];
  v81 = v0[82];
  v79 = v0[81];
  v83 = v0[80];
  v1 = v0[78];
  v2 = v0[48];
  v0[38] = v0;
  DataFrameProtocol.randomSplit(by:seed:)();
  v82 = *(v78 + 16);
  v82(v84, v77, v81);
  DataFrame.init(_:)();
  v82(v84, v80, v81);
  DataFrame.init(_:)();
  if (DataFrame.Slice.shape.getter() > 0 && (v3 = *(v76 + 680), DataFrame.Slice.shape.getter() > 0))
  {
    v67 = *(v76 + 640);
    v68 = *(v76 + 624);
    v4 = *(v76 + 592);
    v5 = *(v76 + 568);
    v69 = *(v76 + 560);
    v66 = *(v76 + 632);
    v70 = *(v76 + 400);
    v6 = *(v76 + 392) + OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
    v7 = *(v76 + 576) + 16;
    v8 = *v7;
    *(v76 + 696) = *v7;
    *(v76 + 704) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v4, v6, v5);
    (*(v66 + 16))(v69, v67, v68);
    (*(v66 + 56))(v69, 0, 1, v68);
    v9 = swift_allocObject();
    *(v76 + 712) = v9;
    *(v9 + 16) = v70;
    v74 = v9;
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
    v73 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
    v10 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
    *(v76 + 264) = v71;
    *(v76 + 272) = v72;
    *(v76 + 280) = v73;
    *(v76 + 288) = v10;
    *(v76 + 296) = MEMORY[0x277D83A28];
    v75 = *(swift_getOpaqueTypeConformance2() + 8);
    *(v76 + 720) = v75;
    v11 = *(MEMORY[0x277CC50E0] + 4);
    v12 = swift_task_alloc();
    *(v76 + 728) = v12;
    *v12 = *(v76 + 304);
    v12[1] = WifiModel.train(dataFrame:);
    v13 = *(v76 + 648);
    v14 = *(v76 + 616);
    v15 = *(v76 + 592);
    v16 = *(v76 + 568);
    v17 = *(v76 + 560);

    return MEMORY[0x2821152A0](v14, v13, v17, partial apply for closure #1 in WifiModel.train(dataFrame:), v74, v16, v75);
  }

  else
  {
    v18 = *(v76 + 448);
    v62 = *(v76 + 432);
    v61 = *(v76 + 440);
    v19 = WifiModel.logger.unsafeMutableAddressor();
    (*(v61 + 16))(v18, v19, v62);
    oslog = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v65 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v63))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v58 = createStorage<A>(capacity:type:)(0);
      v59 = createStorage<A>(capacity:type:)(0);
      *(v76 + 328) = buf;
      *(v76 + 336) = v58;
      *(v76 + 344) = v59;
      serialize(_:at:)(0, (v76 + 328));
      serialize(_:at:)(0, (v76 + 328));
      *(v76 + 352) = v65;
      v60 = swift_task_alloc();
      v60[2] = v76 + 328;
      v60[3] = v76 + 336;
      v60[4] = v76 + 344;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, oslog, v63, "Wifi: Training or validation data is empty", buf, 2u);
      destroyStorage<A>(_:count:)(v58, 0, v56);
      destroyStorage<A>(_:count:)(v59, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v33 = *(v76 + 688);
    v32 = *(v76 + 680);
    v34 = *(v76 + 656);
    v28 = *(v76 + 648);
    v27 = *(v76 + 640);
    v29 = *(v76 + 624);
    v24 = *(v76 + 448);
    v25 = *(v76 + 432);
    v31 = *(v76 + 664);
    v26 = *(v76 + 632);
    v23 = *(v76 + 440);
    MEMORY[0x277D82BD8](oslog);
    (*(v23 + 8))(v24, v25);
    memset(v85, 0, 80);
    LOBYTE(v85[10]) = 1;
    v30 = *(v26 + 8);
    v30(v27, v29);
    v30(v28, v29);
    v35 = *(v31 + 8);
    v35(v32, v34);
    v35(v33, v34);
    memcpy((v76 + 16), v85, 0x51uLL);
    v36 = *(v76 + 688);
    v37 = *(v76 + 680);
    v38 = *(v76 + 672);
    v39 = *(v76 + 648);
    v40 = *(v76 + 640);
    v41 = *(v76 + 616);
    v42 = *(v76 + 592);
    v43 = *(v76 + 584);
    v44 = *(v76 + 560);
    v45 = *(v76 + 552);
    v46 = *(v76 + 544);
    v47 = *(v76 + 520);
    v48 = *(v76 + 512);
    v49 = *(v76 + 504);
    v50 = *(v76 + 496);
    v51 = *(v76 + 472);
    v52 = *(v76 + 464);
    v53 = *(v76 + 456);
    v54 = *(v76 + 448);
    v55 = *(v76 + 424);
    memcpy(*(v76 + 376), (v76 + 16), 0x51uLL);

    v20 = *(*(v76 + 304) + 8);
    v21 = *(v76 + 304);

    return v20();
  }
}

{
  v23 = *v1;
  v21 = (*v1 + 16);
  v22 = (*v1 + 304);
  v2 = *(*v1 + 728);
  *(v23 + 304) = *v1;
  *(v23 + 736) = v0;

  if (v0)
  {
    v13 = v21[47];
    v14 = *v22;

    return MEMORY[0x2822009F8](WifiModel.train(dataFrame:), v13, 0);
  }

  else
  {
    v3 = v21[87];
    v18 = v21[72];
    v16 = v21[70];
    v17 = v21[69];
    v15 = v21[68];
    v19 = v21[47];
    outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in WifiModel.train(dataFrame:));
    outlined destroy of DataFrame?(v15);
    v4 = *(v16 + 8);
    v21[91] = v4;
    v21[92] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v18, v17);
    v5 = *(*v19 + 168);
    v20 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v21[93] = v7;
    v21[94] = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
    *v7 = *v22;
    v7[1] = WifiModel.train(dataFrame:);
    v8 = v21[79];
    v9 = v21[75];
    v10 = v21[73];
    v11 = v21[47];

    return v20(v8, v9, v10);
  }
}

{
  v218 = v0;
  validationMAPE = *(v0 + 800);
  trainingMAPE = *(v0 + 776);
  v158 = *(v0 + 688);
  v147 = *(v0 + 680);
  v149 = *(v0 + 552);
  v152 = *(v0 + 544);
  v148 = *(v0 + 536);
  v150 = *(v0 + 528);
  v156 = *(v0 + 520);
  v159 = *(v0 + 512);
  v166 = *(v0 + 504);
  v161 = *(v0 + 496);
  v154 = *(v0 + 488);
  v164 = *(v0 + 480);
  v163 = *(v0 + 472);
  v176 = *(v0 + 440);
  v177 = *(v0 + 432);
  *(v0 + 304) = v0;
  *(v0 + 368) = validationMAPE;
  interfaceType = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
  DataFrame.Slice.rows.getter();
  trainingRowCount = DataFrame.Rows.count.getter();
  v151 = *(v148 + 8);
  v151(v149, v150);
  DataFrame.Slice.rows.getter();
  validationRowCount = DataFrame.Rows.count.getter();
  v151(v152, v150);
  v1 = kMediaML_ssid.unsafeMutableAddressor();
  countAndFlagsBits = v1->_countAndFlagsBits;
  object = v1->_object;

  MEMORY[0x259C87130](countAndFlagsBits, object);
  AnyColumnSlice.distinct()();
  v165 = *(v154 + 8);
  v165(v159, v164);

  ssidCount = AnyColumnSlice.count.getter();
  v165(v156, v164);
  v157 = *kMediaML_appName.unsafeMutableAddressor();

  MEMORY[0x259C87130](v157._countAndFlagsBits, v157._object);
  AnyColumnSlice.distinct()();
  v165(v166, v164);

  appNameCount = AnyColumnSlice.count.getter();
  v165(v159, v164);
  v2 = kMediaML_sessionID.unsafeMutableAddressor();
  v160 = v2->_countAndFlagsBits;
  v162 = v2->_object;

  MEMORY[0x259C87130](v160, v162);
  AnyColumnSlice.distinct()();
  v165(v161, v164);

  sessionIDCount = AnyColumnSlice.count.getter();
  v165(v166, v164);
  trainingDate = getDateInEpoch()();
  v3 = default argument 3 of ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)();
  ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)((v0 + 104), interfaceType, trainingRowCount, validationRowCount, v3, ssidCount, appNameCount, sessionIDCount, trainingMAPE, validationMAPE, trainingDate);
  memcpy((v0 + 184), (v0 + 104), 0x50uLL);
  v4 = WifiModel.logger.unsafeMutableAddressor();
  v178 = *(v176 + 16);
  v178(v163, v4, v177);
  v179 = swift_allocObject();
  memcpy((v179 + 16), (v0 + 104), 0x50uLL);
  v181 = swift_allocObject();
  memcpy((v181 + 16), (v0 + 104), 0x50uLL);
  v183 = swift_allocObject();
  memcpy((v183 + 16), (v0 + 104), 0x50uLL);
  v185 = swift_allocObject();
  memcpy((v185 + 16), (v0 + 104), 0x50uLL);
  oslog = Logger.logObject.getter();
  v201 = static os_log_type_t.info.getter();
  v187 = swift_allocObject();
  *(v187 + 16) = 0;
  v188 = swift_allocObject();
  *(v188 + 16) = 8;
  v180 = swift_allocObject();
  *(v180 + 16) = partial apply for implicit closure #2 in WifiModel.train(dataFrame:);
  *(v180 + 24) = v179;
  v189 = swift_allocObject();
  *(v189 + 16) = _sSiIegd_SiIegr_TRTA_1;
  *(v189 + 24) = v180;
  v190 = swift_allocObject();
  *(v190 + 16) = 0;
  v191 = swift_allocObject();
  *(v191 + 16) = 8;
  v182 = swift_allocObject();
  *(v182 + 16) = partial apply for implicit closure #3 in WifiModel.train(dataFrame:);
  *(v182 + 24) = v181;
  v192 = swift_allocObject();
  *(v192 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v192 + 24) = v182;
  v193 = swift_allocObject();
  *(v193 + 16) = 0;
  v194 = swift_allocObject();
  *(v194 + 16) = 8;
  v184 = swift_allocObject();
  *(v184 + 16) = partial apply for implicit closure #4 in WifiModel.train(dataFrame:);
  *(v184 + 24) = v183;
  v195 = swift_allocObject();
  *(v195 + 16) = _s2os18OSLogInterpolationV06appendC0_6format5align7privacyySdyXA_AA0B15FloatFormattingVAA0B15StringAlignmentVAA0B7PrivacyVtFSdycfu_TA_0;
  *(v195 + 24) = v184;
  v196 = swift_allocObject();
  *(v196 + 16) = 0;
  v197 = swift_allocObject();
  *(v197 + 16) = 8;
  v186 = swift_allocObject();
  *(v186 + 16) = partial apply for implicit closure #5 in WifiModel.train(dataFrame:);
  *(v186 + 24) = v185;
  v198 = swift_allocObject();
  *(v198 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v198 + 24) = v186;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v199 = v5;

  *v199 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v199[1] = v187;

  v199[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[3] = v188;

  v199[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v199[5] = v189;

  v199[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[7] = v190;

  v199[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[9] = v191;

  v199[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v199[11] = v192;

  v199[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[13] = v193;

  v199[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[15] = v194;

  v199[16] = _s2os14OSLogArgumentsV6appendyySdycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v199[17] = v195;

  v199[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[19] = v196;

  v199[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[21] = v197;

  v199[22] = closure #1 in OSLogArguments.append(_:)partial apply;
  v199[23] = v198;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v201))
  {
    v6 = *(v146 + 808);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v144 = createStorage<A>(capacity:type:)(0);
    v145 = createStorage<A>(capacity:type:)(0);
    v213 = buf;
    v214 = v144;
    v215 = v145;
    serialize(_:at:)(0, &v213);
    serialize(_:at:)(4, &v213);
    v216 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
    v217 = v187;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    if (v6)
    {
    }

    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v188;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
    v217 = v189;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v190;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v191;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v217 = v192;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v193;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v194;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = _s2os14OSLogArgumentsV6appendyySdycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v217 = v195;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v196;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v197;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v198;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    _os_log_impl(&dword_2586A4000, oslog, v201, "Wifi model stats: trainingRowCount: %ld validationRowCount: %ld trainingMAPE:%f, validationMAPE: %f", buf, 0x2Au);
    destroyStorage<A>(_:count:)(v144, 0, v142);
    destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

    v141 = 0;
  }

  else
  {

    v141 = *(v146 + 808);
  }

  v140 = *(v146 + 800);
  v137 = *(v146 + 472);
  v138 = *(v146 + 432);
  v136 = *(v146 + 440);
  MEMORY[0x277D82BD8](oslog);
  v139 = *(v136 + 8);
  v139(v137, v138);
  if (v140 >= 0.7)
  {
    v96 = *(v146 + 800);
    v12 = *(v146 + 456);
    v95 = *(v146 + 432);
    v13 = WifiModel.logger.unsafeMutableAddressor();
    v178(v12, v13, v95);
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = 8;
    v98 = swift_allocObject();
    *(v98 + 16) = partial apply for implicit closure #7 in WifiModel.train(dataFrame:);
    *(v98 + 24) = v97;
    v102 = swift_allocObject();
    *(v102 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v102 + 24) = v98;
    v103 = swift_allocObject();
    *(v103 + 16) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = 8;
    v99 = swift_allocObject();
    *(v99 + 16) = implicit closure #8 in WifiModel.train(dataFrame:);
    *(v99 + 24) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v105 + 24) = v99;
    _allocateUninitializedArray<A>(_:)();
    v106 = v14;

    *v106 = closure #1 in OSLogArguments.append(_:)partial apply;
    v106[1] = v100;

    v106[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v106[3] = v101;

    v106[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v106[5] = v102;

    v106[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v106[7] = v103;

    v106[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v106[9] = v104;

    v106[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v106[11] = v105;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v107, v108))
    {
      v92 = static UnsafeMutablePointer.allocate(capacity:)();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v93 = createStorage<A>(capacity:type:)(0);
      v94 = createStorage<A>(capacity:type:)(0);
      v203 = v92;
      v204 = v93;
      v205 = v94;
      serialize(_:at:)(0, &v203);
      serialize(_:at:)(2, &v203);
      v206 = closure #1 in OSLogArguments.append(_:)partial apply;
      v207 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v206, &v203, &v204, &v205);
      if (v141)
      {
      }

      v206 = closure #1 in OSLogArguments.append(_:)partial apply;
      v207 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v206, &v203, &v204, &v205);
      v206 = closure #1 in OSLogArguments.append(_:)partial apply;
      v207 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v206, &v203, &v204, &v205);
      v206 = closure #1 in OSLogArguments.append(_:)partial apply;
      v207 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v206, &v203, &v204, &v205);
      v206 = closure #1 in OSLogArguments.append(_:)partial apply;
      v207 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v206, &v203, &v204, &v205);
      v206 = closure #1 in OSLogArguments.append(_:)partial apply;
      v207 = v105;
      closure #1 in osLogInternal(_:log:type:)(&v206, &v203, &v204, &v205);
      _os_log_impl(&dword_2586A4000, v107, v108, "Wifi model not updated. Validation MAPE %f exceeds modelMAPEThreshold %f. ", v92, 0x16u);
      destroyStorage<A>(_:count:)(v93, 0, v91);
      destroyStorage<A>(_:count:)(v94, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v92, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v89 = *(v146 + 456);
    v90 = *(v146 + 432);
    MEMORY[0x277D82BD8](v107);
    v139(v89, v90);
    goto LABEL_18;
  }

  v134 = *(v146 + 720);
  v8 = *(v146 + 704);
  v135 = *(v146 + 616);
  v133 = *(v146 + 568);
  v132 = *(v146 + 424);
  v131 = *(v146 + 408);
  v129 = *(v146 + 392);
  v130 = *(v146 + 416);
  (*(v146 + 696))(*(v146 + 584), v129 + OBJC_IVAR____TtC7MediaML9WifiModel_estimator, v140);
  (*(v130 + 16))(v132, v129 + OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL, v131);
  default argument 2 of SupervisedTabularEstimator.write(_:to:overwrite:)();
  SupervisedTabularEstimator.write(_:to:overwrite:)();
  if (!v141)
  {
    v117 = *(v146 + 752);
    v118 = *(v146 + 744);
    v115 = *(v146 + 584);
    v116 = *(v146 + 568);
    v9 = *(v146 + 464);
    v119 = *(v146 + 432);
    v120 = *(v146 + 392);
    (*(*(v146 + 416) + 8))(*(v146 + 424), *(v146 + 408));
    v118(v115, v116);
    v10 = WifiModel.logger.unsafeMutableAddressor();
    v178(v9, v10, v119);

    v121 = swift_allocObject();
    *(v121 + 16) = partial apply for implicit closure #6 in WifiModel.train(dataFrame:);
    *(v121 + 24) = v120;

    log = Logger.logObject.getter();
    v128 = static os_log_type_t.info.getter();
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
    *(v122 + 24) = v121;
    v125 = swift_allocObject();
    *(v125 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
    *(v125 + 24) = v122;
    _allocateUninitializedArray<A>(_:)();
    v126 = v11;

    *v126 = closure #1 in OSLogArguments.append(_:)partial apply;
    v126[1] = v123;

    v126[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v126[3] = v124;

    v126[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v126[5] = v125;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v128))
    {
      v112 = static UnsafeMutablePointer.allocate(capacity:)();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v113 = createStorage<A>(capacity:type:)(0);
      v114 = createStorage<A>(capacity:type:)(1);
      v208 = v112;
      v209 = v113;
      v210 = v114;
      serialize(_:at:)(2, &v208);
      serialize(_:at:)(1, &v208);
      v211 = closure #1 in OSLogArguments.append(_:)partial apply;
      v212 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v211, &v208, &v209, &v210);
      v211 = closure #1 in OSLogArguments.append(_:)partial apply;
      v212 = v124;
      closure #1 in osLogInternal(_:log:type:)(&v211, &v208, &v209, &v210);
      v211 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v212 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v211, &v208, &v209, &v210);
      _os_log_impl(&dword_2586A4000, log, v128, "Updated wifi model written to: %s", v112, 0xCu);
      destroyStorage<A>(_:count:)(v113, 0, v111);
      destroyStorage<A>(_:count:)(v114, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v112, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v109 = *(v146 + 464);
    v110 = *(v146 + 432);
    MEMORY[0x277D82BD8](log);
    v139(v109, v110);
LABEL_18:
    v66 = *(v146 + 688);
    v65 = *(v146 + 680);
    v67 = *(v146 + 656);
    v61 = *(v146 + 648);
    v60 = *(v146 + 640);
    v62 = *(v146 + 624);
    v56 = *(v146 + 616);
    v58 = *(v146 + 600);
    v64 = *(v146 + 664);
    v59 = *(v146 + 632);
    v57 = *(v146 + 608);
    memcpy(v202, (v146 + 184), 0x50uLL);
    v202[80] = 0;
    (*(v57 + 8))(v56, v58);
    v63 = *(v59 + 8);
    v63(v60, v62);
    v63(v61, v62);
    v68 = *(v64 + 8);
    v68(v65, v67);
    v68(v66, v67);
    memcpy((v146 + 16), v202, 0x51uLL);
    v69 = *(v146 + 688);
    v70 = *(v146 + 680);
    v71 = *(v146 + 672);
    v72 = *(v146 + 648);
    v73 = *(v146 + 640);
    v74 = *(v146 + 616);
    v75 = *(v146 + 592);
    v76 = *(v146 + 584);
    v77 = *(v146 + 560);
    v78 = *(v146 + 552);
    v79 = *(v146 + 544);
    v80 = *(v146 + 520);
    v81 = *(v146 + 512);
    v82 = *(v146 + 504);
    v83 = *(v146 + 496);
    v84 = *(v146 + 472);
    v85 = *(v146 + 464);
    v86 = *(v146 + 456);
    v87 = *(v146 + 448);
    v88 = *(v146 + 424);
    memcpy(*(v146 + 376), (v146 + 16), 0x51uLL);

    v15 = *(*(v146 + 304) + 8);
    v16 = *(v146 + 304);

    return v15();
  }

  v22 = *(v146 + 752);
  v23 = *(v146 + 744);
  v34 = *(v146 + 688);
  v33 = *(v146 + 680);
  v35 = *(v146 + 656);
  v29 = *(v146 + 648);
  v28 = *(v146 + 640);
  v30 = *(v146 + 624);
  v25 = *(v146 + 616);
  v26 = *(v146 + 600);
  v20 = *(v146 + 584);
  v21 = *(v146 + 568);
  v32 = *(v146 + 664);
  v27 = *(v146 + 632);
  v24 = *(v146 + 608);
  (*(*(v146 + 416) + 8))(*(v146 + 424), *(v146 + 408));
  v23(v20, v21);
  (*(v24 + 8))(v25, v26);
  v31 = *(v27 + 8);
  v31(v28, v30);
  v31(v29, v30);
  v36 = *(v32 + 8);
  v36(v33, v35);
  v36(v34, v35);
  v17 = *(v146 + 688);
  v37 = *(v146 + 680);
  v38 = *(v146 + 672);
  v39 = *(v146 + 648);
  v40 = *(v146 + 640);
  v41 = *(v146 + 616);
  v42 = *(v146 + 592);
  v43 = *(v146 + 584);
  v44 = *(v146 + 560);
  v45 = *(v146 + 552);
  v46 = *(v146 + 544);
  v47 = *(v146 + 520);
  v48 = *(v146 + 512);
  v49 = *(v146 + 504);
  v50 = *(v146 + 496);
  v51 = *(v146 + 472);
  v52 = *(v146 + 464);
  v53 = *(v146 + 456);
  v54 = *(v146 + 448);
  v55 = *(v146 + 424);

  v18 = *(*(v146 + 304) + 8);
  v19 = *(v146 + 304);

  return v18();
}

{
  v1 = v0[89];
  v18 = v0[86];
  v17 = v0[85];
  v16 = v0[83];
  v19 = v0[82];
  v13 = v0[81];
  v12 = v0[80];
  v11 = v0[79];
  v14 = v0[78];
  v10 = v0[74];
  v8 = v0[72];
  v9 = v0[71];
  v7 = v0[70];
  v0[38] = v0;
  outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in WifiModel.train(dataFrame:));
  outlined destroy of DataFrame?(v7);
  (*(v8 + 8))(v10, v9);
  v15 = *(v11 + 8);
  v15(v12, v14);
  v15(v13, v14);
  v20 = *(v16 + 8);
  v20(v17, v19);
  v20(v18, v19);
  v2 = v0[92];
  v3 = v0[86];
  v21 = v0[85];
  v22 = v0[84];
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[77];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[69];
  v30 = v0[68];
  v31 = v0[65];
  v32 = v0[64];
  v33 = v0[63];
  v34 = v0[62];
  v35 = v0[59];
  v36 = v0[58];
  v37 = v0[57];
  v38 = v0[56];
  v39 = v0[53];

  v4 = *(v0[38] + 8);
  v5 = v0[38];

  return v4();
}

{
  v16 = v0[86];
  v15 = v0[85];
  v14 = v0[83];
  v17 = v0[82];
  v11 = v0[81];
  v10 = v0[80];
  v9 = v0[79];
  v12 = v0[78];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v0[38] = v0;
  (*(v2 + 8))(v1, v3);
  v13 = *(v9 + 8);
  v13(v10, v12);
  v13(v11, v12);
  v18 = *(v14 + 8);
  v18(v15, v17);
  v18(v16, v17);
  v4 = v0[98];
  v5 = v0[86];
  v19 = v0[85];
  v20 = v0[84];
  v21 = v0[81];
  v22 = v0[80];
  v23 = v0[77];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[68];
  v29 = v0[65];
  v30 = v0[64];
  v31 = v0[63];
  v32 = v0[62];
  v33 = v0[59];
  v34 = v0[58];
  v35 = v0[57];
  v36 = v0[56];
  v37 = v0[53];

  v6 = *(v0[38] + 8);
  v7 = v0[38];

  return v6();
}

{
  v16 = v0[86];
  v15 = v0[85];
  v14 = v0[83];
  v17 = v0[82];
  v11 = v0[81];
  v10 = v0[80];
  v9 = v0[79];
  v12 = v0[78];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v0[38] = v0;
  (*(v2 + 8))(v1, v3);
  v13 = *(v9 + 8);
  v13(v10, v12);
  v13(v11, v12);
  v18 = *(v14 + 8);
  v18(v15, v17);
  v18(v16, v17);
  v4 = v0[101];
  v5 = v0[86];
  v19 = v0[85];
  v20 = v0[84];
  v21 = v0[81];
  v22 = v0[80];
  v23 = v0[77];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[68];
  v29 = v0[65];
  v30 = v0[64];
  v31 = v0[63];
  v32 = v0[62];
  v33 = v0[59];
  v34 = v0[58];
  v35 = v0[57];
  v36 = v0[56];
  v37 = v0[53];

  v6 = *(v0[38] + 8);
  v7 = v0[38];

  return v6();
}

uint64_t WifiModel.train(dataFrame:)(double a1)
{
  v21 = *v2;
  v18 = (*v2 + 16);
  v19 = (*v2 + 304);
  v20 = (*v2 + 360);
  v3 = *(*v2 + 760);
  *(v21 + 304) = *v2;
  *(v21 + 776) = a1;
  *(v21 + 784) = v1;

  if (v1)
  {
    v14 = v18[47];
    v15 = *v19;

    return MEMORY[0x2822009F8](WifiModel.train(dataFrame:), v14, 0);
  }

  else
  {
    v4 = v18[47];
    *v20 = a1;
    v5 = *(*v4 + 168);
    v16 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v18[97] = v7;
    *v7 = *v19;
    v7[1] = WifiModel.train(dataFrame:);
    v8 = v18[94];
    v9 = v18[78];
    v10 = v18[75];
    v11 = v18[73];
    v12 = v18[47];

    return v16(v9, v10, v11, v8);
  }
}

{
  v11 = *v2;
  v9 = *v2 + 16;
  v10 = (v11 + 304);
  v3 = *(*v2 + 792);
  *(v11 + 304) = *v2;
  *(v11 + 800) = a1;
  *(v11 + 808) = v1;

  if (v1)
  {
    v4 = *(v9 + 376);
    v7 = *v10;
    v6 = WifiModel.train(dataFrame:);
  }

  else
  {
    v4 = *(v9 + 376);
    v5 = *v10;
    v6 = WifiModel.train(dataFrame:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t *closure #1 in WifiModel.train(dataFrame:)(uint64_t a1)
{
  v52 = partial apply for implicit closure #1 in closure #1 in WifiModel.train(dataFrame:);
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v55 = closure #1 in OSLogArguments.append(_:)partial apply;
  v56 = closure #1 in OSLogArguments.append(_:)partial apply;
  v79 = 0;
  v77 = 0;
  v57 = 0;
  v58 = 0;
  v59 = type metadata accessor for Logger();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v63 = &v18 - v62;
  v67 = type metadata accessor for MetricsKey();
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v69 = &v18 - v66;
  v79 = a1;
  v70 = Event.metrics.getter();
  static MetricsKey.validationError.getter();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  v2 = lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey();
  MEMORY[0x259C87380](v78, v69, v70, v67, v68, v2);

  if (v78[3])
  {
    if (swift_dynamicCast())
    {
      v48 = v71;
      v49 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 1;
    }

    v47 = v49;
    v46 = v48;
    result = (*(v64 + 8))(v69, v67);
    v50 = v46;
    v51 = v47;
  }

  else
  {
    (*(v64 + 8))(v69, v67);
    result = outlined destroy of Sendable?(v78);
    v50 = 0;
    v51 = 1;
  }

  v45 = v50;
  if ((v51 & 1) == 0)
  {
    v44 = v45;
    v4 = v63;
    v30 = v45;
    v77 = v45;
    v5 = WifiModel.logger.unsafeMutableAddressor();
    (*(v60 + 16))(v4, v5, v59);
    v33 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = 32;
    v6 = swift_allocObject();
    v7 = v34;
    v35 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v35;
    v39 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v38 = _allocateUninitializedArray<A>(_:)();
    v40 = v10;

    v11 = v36;
    v12 = v40;
    *v40 = v54;
    v12[1] = v11;

    v13 = v37;
    v14 = v40;
    v40[2] = v55;
    v14[3] = v13;

    v15 = v39;
    v16 = v40;
    v40[4] = v56;
    v16[5] = v15;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v42, v43))
    {
      v17 = v57;
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = 0;
      v24 = createStorage<A>(capacity:type:)(0);
      v25 = createStorage<A>(capacity:type:)(v22);
      v26 = &v76;
      v76 = v23;
      v27 = &v75;
      v75 = v24;
      v28 = &v74;
      v74 = v25;
      serialize(_:at:)(0, &v76);
      serialize(_:at:)(1, v26);
      v72 = v54;
      v73 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v72, v26, v27, v28);
      v29 = v17;
      if (v17)
      {

        __break(1u);
      }

      else
      {
        v72 = v55;
        v73 = v37;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
        v20 = 0;
        v72 = v56;
        v73 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_2586A4000, v42, v43, "Validation error: %f", v23, 0xCu);
        v19 = 0;
        destroyStorage<A>(_:count:)(v24, 0, v21);
        destroyStorage<A>(_:count:)(v25, v19, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v23, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v42);
    return (*(v60 + 8))(v63, v59);
  }

  return result;
}

uint64_t implicit closure #6 in WifiModel.train(dataFrame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a2, a1 + v4);
}

uint64_t WifiModel.getMAPE<A>(data:transformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[18] = a4;
  v5[17] = a3;
  v5[16] = a2;
  v5[15] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[12] = 0;
  v5[14] = 0;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v16 = *(v6 - 8);
  v5[21] = v16;
  v7 = *(v16 + 64) + 15;
  v5[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v5[23] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for DataFrame();
  v5[25] = v10;
  v17 = *(v10 - 8);
  v5[26] = v17;
  v11 = *(v17 + 64) + 15;
  v5[27] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v5[28] = v12;
  v18 = *(v12 - 8);
  v5[29] = v18;
  v13 = *(v18 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v20;
  v14 = v5[2];

  return MEMORY[0x2822009F8](WifiModel.getMAPE<A>(data:transformer:), v20, 0);
}

uint64_t WifiModel.getMAPE<A>(data:transformer:)()
{
  v39 = *(v0 + 240);
  v38 = *(v0 + 232);
  v40 = *(v0 + 224);
  v1 = *(v0 + 152);
  v37 = *(v0 + 120);
  *(v0 + 16) = v0;
  *(v0 + 48) = -1.0;
  v2 = OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID;
  v3 = *(v38 + 16);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v39, v1 + v2);
  v41._countAndFlagsBits = ColumnID.name.getter();
  v41._object = v4;
  v5 = *(v38 + 8);
  *(v0 + 264) = v5;
  *(v0 + 272) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v39, v40);
  v42 = DataFrame.containsColumn(_:)(v41);

  if (v42)
  {
    v6 = *(MEMORY[0x277CC5030] + 4);
    v7 = swift_task_alloc();
    *(v36 + 280) = v7;
    *v7 = *(v36 + 16);
    v7[1] = WifiModel.getMAPE<A>(data:transformer:);
    v8 = *(v36 + 216);
    v9 = *(v36 + 144);
    v10 = *(v36 + 136);
    v11 = *(v36 + 128);
    v12 = *(v36 + 120);

    return MEMORY[0x282115068](v8, v12, 0, 0, v10, v9);
  }

  else
  {
    v13 = *(v36 + 176);
    v32 = *(v36 + 160);
    v31 = *(v36 + 168);
    v14 = WifiModel.logger.unsafeMutableAddressor();
    (*(v31 + 16))(v13, v14, v32);
    v34 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v34, v33))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(0);
      *(v36 + 56) = buf;
      *(v36 + 64) = v28;
      *(v36 + 72) = v29;
      serialize(_:at:)(0, (v36 + 56));
      serialize(_:at:)(0, (v36 + 56));
      *(v36 + 80) = v35;
      v30 = swift_task_alloc();
      v30[2] = v36 + 56;
      v30[3] = v36 + 64;
      v30[4] = v36 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v34, v33, "No target column in data frame", buf, 2u);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v21 = *(v36 + 176);
    v22 = *(v36 + 160);
    v20 = *(v36 + 168);
    MEMORY[0x277D82BD8](v34);
    (*(v20 + 8))(v21, v22);
    v15 = *(v36 + 240);
    v23 = *(v36 + 216);
    v24 = *(v36 + 192);
    v25 = *(v36 + 176);

    v16 = *(*(v36 + 16) + 8);
    v17 = *(v36 + 16);
    v18.n128_u64[0] = -1.0;

    return v16(v18);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 280);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[36] = v0;

  if (v0)
  {
    v3 = v8[19];
    v6 = *v9;
    v5 = WifiModel.getMAPE<A>(data:transformer:);
  }

  else
  {
    v3 = v8[19];
    v4 = *v9;
    v5 = WifiModel.getMAPE<A>(data:transformer:);
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

{
  v1 = v0[36];
  v34 = v0[34];
  v35 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v36 = v0[30];
  v33 = v0[28];
  v4 = v0[27];
  v32 = v0[24];
  v31 = v0[23];
  v5 = v0[19];
  v0[2] = v0;
  v3();
  DataFrame.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type Column<Double> and conformance Column<A>();
  v37 = Array.init<A>(_:)();
  v35(v36, v33);
  v0[11] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdSgGMd, &_sSaySdSgGMR);
  lazy protocol witness table accessor for type [Double?] and conformance [A]();
  result = Sequence.compactMap<A>(_:)();
  v38._rawValue = result;
  if (!v1)
  {
    v25 = v30[34];
    v26 = v30[33];
    v20 = v30[32];
    v21 = v30[31];
    v27 = v30[30];
    v24 = v30[28];
    v22 = v30[24];
    v23 = v30[23];
    v19 = v30[19];
    v7 = v30[15];
    outlined destroy of [Double?](v30 + 11);
    v30[12] = v38._rawValue;
    v21(v27, v19 + OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID, v24);
    DataFrame.subscript.getter();
    v28 = Array.init<A>(_:)();
    v26(v27, v24);
    v30[13] = v28;
    yRealList = Sequence.compactMap<A>(_:)();
    v13 = v30[27];
    v14 = v30[25];
    v12 = v30[26];
    outlined destroy of [Double?](v30 + 13);
    v30[14] = yRealList;
    v18 = meanAbsolutePercentageError(yRealList:yPredList:)(yRealList, v38);
    *(v30 + 6) = v18;

    (*(v12 + 8))(v13, v14);
    v8 = v30[30];
    v15 = v30[27];
    v16 = v30[24];
    v17 = v30[22];

    v9.n128_f64[0] = v18;
    v10 = *(v30[2] + 8);
    v11 = v30[2];

    return v10(v9);
  }

  return result;
}

{
  v1 = v0[30];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[36];
  v6.n128_u64[0] = v11;

  return v3(v6);
}

uint64_t closure #1 in WifiModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t closure #2 in WifiModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

Swift::Void __swiftcall WifiModel.readModelFile()()
{
  v23 = MEMORY[0x277CC50C0];
  v4[27] = partial apply for implicit closure #1 in WifiModel.readModelFile();
  v4[28] = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v4[29] = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v4[30] = closure #1 in OSLogArguments.append(_:)partial apply;
  v4[31] = closure #1 in OSLogArguments.append(_:)partial apply;
  v4[32] = partial apply for closure #1 in OSLogArguments.append(_:);
  v37 = 0;
  v28 = 0;
  v4[33] = 0;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v5 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v9 = v4 - v8;
  v18 = type metadata accessor for URL();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v26 = v4 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v13 = *(v25 - 8);
  v11 = v25 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v14 = v4 - v12;
  v37 = v17;
  (*(v13 + 16))(v4 - v12, v17 + OBJC_IVAR____TtC7MediaML9WifiModel_estimator);
  (*(v15 + 16))(v26, v17 + OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL, v18);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v19 = v34;
  v35 = v0;
  v36 = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  v22 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  v1 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v1;
  v33 = MEMORY[0x277D83A28];
  v2 = *(swift_getOpaqueTypeConformance2() + 8);
  SupervisedTabularEstimator.read(from:)();
  v27 = 0;
  v3 = v17;
  (*(v15 + 8))(v26, v18);
  (*(v13 + 8))(v14, v25);
  (*(*v3 + 128))(v34);
}

uint64_t WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v12 = v10;
  v37 = v12;
  *(v11 + 400) = v12;
  *(v11 + 392) = a10;
  *(v11 + 384) = a9;
  *(v11 + 376) = a8;
  *(v11 + 368) = a7;
  *(v11 + 360) = a6;
  *(v11 + 352) = a5;
  *(v11 + 344) = a4;
  *(v11 + 336) = a3;
  *(v11 + 328) = a2;
  *(v11 + 320) = a1;
  *(v11 + 224) = v11;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  *(v11 + 200) = 0;
  *(v11 + 232) = 0;
  *(v11 + 240) = 0;
  *(v11 + 248) = 0;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 280) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  *(v11 + 408) = v14;
  v23 = *(v14 - 8);
  *(v11 + 416) = v23;
  v15 = *(v23 + 64) + 15;
  *(v11 + 424) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  *(v11 + 432) = v16;
  v24 = *(v16 - 8);
  *(v11 + 440) = v24;
  v17 = *(v24 + 64) + 15;
  *(v11 + 448) = swift_task_alloc();
  v18 = type metadata accessor for DataFrame();
  *(v11 + 456) = v18;
  v25 = *(v18 - 8);
  *(v11 + 464) = v25;
  *(v11 + 472) = *(v25 + 64);
  *(v11 + 480) = swift_task_alloc();
  *(v11 + 488) = swift_task_alloc();
  *(v11 + 496) = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  *(v11 + 504) = v19;
  v26 = *(v19 - 8);
  *(v11 + 512) = v26;
  v27 = *(v26 + 64);
  *(v11 + 520) = swift_task_alloc();
  *(v11 + 528) = swift_task_alloc();
  v20 = type metadata accessor for DispatchTime();
  *(v11 + 536) = v20;
  v28 = *(v20 - 8);
  *(v11 + 544) = v28;
  *(v11 + 552) = *(v28 + 64);
  *(v11 + 560) = swift_task_alloc();
  *(v11 + 568) = swift_task_alloc();
  *(v11 + 576) = swift_task_alloc();
  *(v11 + 584) = swift_task_alloc();
  *(v11 + 176) = a1;
  *(v11 + 184) = a2;
  *(v11 + 192) = a3;
  *(v11 + 200) = a4;
  *(v11 + 232) = a5;
  *(v11 + 240) = a6;
  *(v11 + 248) = a7;
  *(v11 + 256) = a8;
  *(v11 + 264) = a9;
  *(v11 + 272) = a10;
  *(v11 + 280) = v37;
  v21 = *(v11 + 224);

  return MEMORY[0x2822009F8](WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:), v37, 0);
}

uint64_t WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v1 = v0[73];
  v2 = v0[50];
  v0[28] = v0;
  v3 = static DispatchTime.now()();
  (*(*v2 + 120))(v3);
  v91 = v0[5] == 0;
  outlined destroy of Transformer?((v92 + 16));
  if (v91)
  {
    v4 = *(v92 + 528);
    v87 = *(v92 + 504);
    v86 = *(v92 + 512);
    v5 = WifiModel.logger.unsafeMutableAddressor();
    (*(v86 + 16))(v4, v5, v87);
    v89 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v90 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v89, v88))
    {
      v82 = static UnsafeMutablePointer.allocate(capacity:)();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = createStorage<A>(capacity:type:)(0);
      v84 = createStorage<A>(capacity:type:)(0);
      *(v92 + 288) = v82;
      *(v92 + 296) = v83;
      *(v92 + 304) = v84;
      serialize(_:at:)(0, (v92 + 288));
      serialize(_:at:)(0, (v92 + 288));
      *(v92 + 312) = v90;
      v85 = swift_task_alloc();
      v85[2] = v92 + 288;
      v85[3] = v92 + 296;
      v85[4] = v92 + 304;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v89, v88, "Reading wifi model from disk...", v82, 2u);
      destroyStorage<A>(_:count:)(v83, 0, v81);
      destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v82, MEMORY[0x277D84B78]);
    }

    v79 = *(v92 + 528);
    v80 = *(v92 + 504);
    v6 = *(v92 + 400);
    v78 = *(v92 + 512);
    MEMORY[0x277D82BD8](v89);
    v7 = (*(v78 + 8))(v79, v80);
    (*(*v6 + 176))(v7);
  }

  v77 = *(v92 + 496);
  v8 = *(v92 + 400);
  v75 = *(v92 + 392);
  v73 = *(v92 + 384);
  v72 = *(v92 + 376);
  v70 = *(v92 + 368);
  v69 = *(v92 + 360);
  v68 = *(v92 + 352);
  v67 = *(v92 + 344);
  v65 = *(v92 + 336);
  v62 = *(v92 + 328);
  v60 = *(v92 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SayypSgGtMd, &_sSS_SayypSgGtMR);
  _allocateUninitializedArray<A>(_:)();
  v76 = v9;
  v10 = kMediaML_ssid.unsafeMutableAddressor();
  outlined init with copy of String(v10, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v61 = v11;

  v64 = MEMORY[0x277D837D0];
  v61[3] = MEMORY[0x277D837D0];
  *v61 = v60;
  v61[1] = v62;
  _finalizeUninitializedArray<A>(_:)();
  v76[2] = v59;
  v12 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v12, v76 + 3);
  v63 = _allocateUninitializedArray<A>(_:)();
  v66 = v13;

  v66[3] = v64;
  *v66 = v65;
  v66[1] = v67;
  _finalizeUninitializedArray<A>(_:)();
  v76[5] = v63;
  v14 = kMediaML_hourOfDay.unsafeMutableAddressor();
  outlined init with copy of String(v14, v76 + 6);
  v15 = _allocateUninitializedArray<A>(_:)();
  v71 = MEMORY[0x277D83B88];
  v16[3] = MEMORY[0x277D83B88];
  *v16 = v68;
  _finalizeUninitializedArray<A>(_:)();
  v76[8] = v15;
  v17 = kMediaML_dayOfWeek.unsafeMutableAddressor();
  outlined init with copy of String(v17, v76 + 9);
  v18 = _allocateUninitializedArray<A>(_:)();
  v19[3] = v71;
  *v19 = v69;
  _finalizeUninitializedArray<A>(_:)();
  v76[11] = v18;
  v20 = kMediaML_rssi.unsafeMutableAddressor();
  outlined init with copy of String(v20, v76 + 12);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22[3] = v71;
  *v22 = v70;
  _finalizeUninitializedArray<A>(_:)();
  v76[14] = v21;
  v23 = kMediaML_noise.unsafeMutableAddressor();
  outlined init with copy of String(v23, v76 + 15);
  v24 = _allocateUninitializedArray<A>(_:)();
  v25[3] = v71;
  *v25 = v72;
  _finalizeUninitializedArray<A>(_:)();
  v76[17] = v24;
  v26 = kMediaML_txRate.unsafeMutableAddressor();
  outlined init with copy of String(v26, v76 + 18);
  v27 = _allocateUninitializedArray<A>(_:)();
  v74 = MEMORY[0x277D839F8];
  v28[3] = MEMORY[0x277D839F8];
  *v28 = v73;
  _finalizeUninitializedArray<A>(_:)();
  v76[20] = v27;
  v29 = kMediaML_rxRate.unsafeMutableAddressor();
  outlined init with copy of String(v29, v76 + 21);
  v30 = _allocateUninitializedArray<A>(_:)();
  v31[3] = v74;
  *v31 = v75;
  _finalizeUninitializedArray<A>(_:)();
  v76[23] = v30;
  _finalizeUninitializedArray<A>(_:)();
  v32 = DataFrame.init(dictionaryLiteral:)();
  (*(*v8 + 120))(v32);
  if (*(v92 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents11Transformer_pMd, &_s18CreateMLComponents11Transformer_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents18TabularTransformer_pMd, &_s18CreateMLComponents18TabularTransformer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v92 + 96) = 0;
      *(v92 + 104) = 0;
      *(v92 + 112) = 0;
      *(v92 + 120) = 0;
      *(v92 + 128) = 0;
    }
  }

  else
  {
    outlined destroy of Transformer?((v92 + 136));
    *(v92 + 96) = 0;
    *(v92 + 104) = 0;
    *(v92 + 112) = 0;
    *(v92 + 120) = 0;
    *(v92 + 128) = 0;
  }

  if (*(v92 + 120))
  {
    outlined init with take of TabularTransformer((v92 + 96), (v92 + 56));
    v57 = *(v92 + 80);
    v58 = *(v92 + 88);
    __swift_project_boxed_opaque_existential_1((v92 + 56), v57);
    v33 = *(MEMORY[0x277CC5030] + 4);
    v34 = swift_task_alloc();
    *(v92 + 592) = v34;
    *v34 = *(v92 + 224);
    v34[1] = WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
    v35 = *(v92 + 496);
    v36 = *(v92 + 488);

    return MEMORY[0x282115068](v36, v35, 0, 0, v57, v58);
  }

  else
  {
    v45 = *(v92 + 584);
    v46 = *(v92 + 536);
    v43 = *(v92 + 496);
    v42 = *(v92 + 456);
    v44 = *(v92 + 544);
    v41 = *(v92 + 464);
    outlined destroy of TabularTransformer?((v92 + 96));
    (*(v41 + 8))(v43, v42);
    (*(v44 + 8))(v45, v46);
    v37 = *(v92 + 584);
    v47 = *(v92 + 576);
    v48 = *(v92 + 568);
    v49 = *(v92 + 560);
    v50 = *(v92 + 528);
    v51 = *(v92 + 520);
    v52 = *(v92 + 496);
    v53 = *(v92 + 488);
    v54 = *(v92 + 480);
    v55 = *(v92 + 448);
    v56 = *(v92 + 424);

    v38 = *(*(v92 + 224) + 8);
    v39 = *(v92 + 224);

    return v38(0, 0);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 592);
  v8[28] = *v1;
  v9 = v8 + 28;
  v8[75] = v0;

  if (v0)
  {
    v3 = v8[50];
    v6 = *v9;
    v5 = WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  }

  else
  {
    v3 = v8[50];
    v4 = *v9;
    v5 = WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

{
  v86 = v0;
  v58 = v0[73];
  v57 = v0[72];
  v63 = v0[71];
  v65 = v0[70];
  v60 = v0[69];
  v61 = v0[68];
  v66 = v0[67];
  v1 = v0[65];
  v48 = v0[64];
  v49 = v0[63];
  v50 = v0[61];
  v54 = v0[60];
  v51 = v0[59];
  v52 = v0[58];
  v55 = v0[57];
  v56 = v0[50];
  v0[28] = v0;
  static DispatchTime.now()();
  v2 = WifiModel.logger.unsafeMutableAddressor();
  (*(v48 + 16))(v1, v2, v49);
  (*(v52 + 16))(v54, v50, v55);

  v53 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v68 = swift_allocObject();
  (*(v52 + 32))(v68 + v53, v54, v55);
  *(v68 + ((v53 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v59 = *(v61 + 16);
  v59(v63, v57, v66);
  v59(v65, v58, v66);
  v3 = *(v61 + 80);
  v62 = (v3 + 16) & ~v3;
  v64 = (v62 + v60 + v3) & ~v3;
  v70 = swift_allocObject();
  v67 = *(v61 + 32);
  v67(v70 + v62, v63, v66);
  v67(v70 + v64, v65, v66);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = partial apply for implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  *(v69 + 24) = v68;
  v74 = swift_allocObject();
  *(v74 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v74 + 24) = v69;
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 8;
  v71 = swift_allocObject();
  *(v71 + 16) = partial apply for implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:);
  *(v71 + 24) = v70;
  v77 = swift_allocObject();
  *(v77 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v77 + 24) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v78 = v4;

  *v78 = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[1] = v72;

  v78[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[3] = v73;

  v78[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[5] = v74;

  v78[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[7] = v75;

  v78[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[9] = v76;

  v78[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[11] = v77;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v79, v80))
  {
    v5 = *(v47 + 600);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = createStorage<A>(capacity:type:)(0);
    v46 = createStorage<A>(capacity:type:)(0);
    v81 = buf;
    v82 = v45;
    v83 = v46;
    serialize(_:at:)(0, &v81);
    serialize(_:at:)(2, &v81);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    if (v5)
    {
    }

    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    _os_log_impl(&dword_2586A4000, v79, v80, "Finished prediction with wifi model. Predicted value = %f Time taken = %f [ns]", buf, 0x16u);
    destroyStorage<A>(_:count:)(v45, 0, v43);
    destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v32 = *(v47 + 520);
  v33 = *(v47 + 504);
  v7 = *(v47 + 488);
  v37 = *(v47 + 448);
  v36 = *(v47 + 432);
  v39 = *(v47 + 424);
  v40 = *(v47 + 408);
  v34 = *(v47 + 400);
  v31 = *(v47 + 512);
  v35 = *(v47 + 440);
  v38 = *(v47 + 416);
  MEMORY[0x277D82BD8](v79);
  (*(v31 + 8))(v32, v33);
  (*(v35 + 16))(v37, v34 + OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID, v36);
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v41 = *(v47 + 208);
  v42 = *(v47 + 216);
  (*(v38 + 8))(v39, v40);
  if (v42)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v18 = *(v47 + 584);
  v12 = *(v47 + 576);
  v19 = *(v47 + 536);
  v15 = *(v47 + 496);
  v14 = *(v47 + 488);
  v16 = *(v47 + 456);
  v11 = *(v47 + 544);
  v13 = *(v47 + 464);
  (*(*(v47 + 440) + 8))(*(v47 + 448), *(v47 + 432));
  v20 = *(v11 + 8);
  v20(v12, v19);
  v17 = *(v13 + 8);
  v17(v14, v16);
  __swift_destroy_boxed_opaque_existential_1((v47 + 56));
  v17(v15, v16);
  v20(v18, v19);
  v8 = *(v47 + 584);
  v21 = *(v47 + 576);
  v22 = *(v47 + 568);
  v23 = *(v47 + 560);
  v24 = *(v47 + 528);
  v25 = *(v47 + 520);
  v26 = *(v47 + 496);
  v27 = *(v47 + 488);
  v28 = *(v47 + 480);
  v29 = *(v47 + 448);
  v30 = *(v47 + 424);

  v9 = *(*(v47 + 224) + 8);
  v10 = *(v47 + 224);

  return v9(v41, v42 & 1);
}

{
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  v7 = v0[68];
  v8 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[62];
  v16 = v0[61];
  v17 = v0[60];
  v5 = v0[58];
  v6 = v0[57];
  v18 = v0[56];
  v19 = v0[53];
  v0[28] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v5 + 8))(v15, v6);
  (*(v7 + 8))(v9, v8);

  v1 = *(*(v20 + 224) + 8);
  v2 = *(v20 + 224);
  v3 = *(v20 + 600);

  return v1();
}

double implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v5 = "Fatal error";
  v6 = "Unexpectedly found nil while unwrapping an Optional value";
  v7 = "MediaML/MLModel.swift";
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v3 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v13 = *(v10 - 8);
  v11 = v10 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v14 = &v3 - v12;
  (*(v13 + 16))();
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v19 = v21;
  v20 = v22;
  (*(v15 + 8))(v17, v18);
  if (v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v19;
  }

  v3 = v4;
  (*(v13 + 8))(v14, v10);
  return v3;
}

uint64_t implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v2 = DispatchTime.uptimeNanoseconds.getter();
  v0 = DispatchTime.uptimeNanoseconds.getter();
  result = v2;
  if (v2 < v0)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    return Double.init<A>(_:)();
  }

  return result;
}

uint64_t WifiModel.deinit()
{
  outlined destroy of Transformer?((v0 + 112));
  v5 = OBJC_IVAR____TtC7MediaML9WifiModel_parametersURL;
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + v5);
  v6 = OBJC_IVAR____TtC7MediaML9WifiModel_targetColumnID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  (*(*(v2 - 8) + 8))(v0 + v6);
  v7 = OBJC_IVAR____TtC7MediaML9WifiModel_estimator;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  (*(*(v3 - 8) + 8))(v0 + v7);
  swift_defaultActor_destroy();
  return v8;
}

uint64_t CellularModel.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static CellularModel.logger);
}

uint64_t static CellularModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = CellularModel.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t variable initialization expression of CellularModel.targetColumnID()
{
  v0 = kMediaML_throughputTrue.unsafeMutableAddressor();
  countAndFlagsBits = v0->_countAndFlagsBits;
  object = v0->_object;

  return ColumnID.init(_:_:)();
}

uint64_t CellularModel.targetColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void variable initialization expression of CellularModel.model(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

uint64_t key path getter for CellularModel.model : CellularModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  v7 = v4;
  (*(*v4 + 120))(v2);
  memcpy(a2, v6, 0x28uLL);
}

uint64_t key path setter for CellularModel.model : CellularModel(void *a1, uint64_t *a2)
{
  outlined init with copy of Transformer?(a1, v5);
  v4 = *a2;

  (*(*v4 + 128))(v5);
}

uint64_t CellularModel.model.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7MediaML13CellularModel_model);
  swift_beginAccess();
  outlined init with copy of Transformer?(v3, a1);
  return swift_endAccess();
}

uint64_t *CellularModel.model.setter(uint64_t *a1)
{
  outlined init with copy of Transformer?(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC7MediaML13CellularModel_model);
  swift_beginAccess();
  outlined assign with take of Transformer?(v5, v3);
  swift_endAccess();
  return outlined destroy of Transformer?(a1);
}

uint64_t variable initialization expression of CellularModel.cellParametersURL@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v11 = type metadata accessor for URL();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v2 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v8 + 16))(v1, v2, v11);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cellParameters.pkg", 0x12uLL, 1)._object;
  URL.appendingPathComponent(_:)();

  return (*(v8 + 8))(v10, v11);
}

uint64_t CellularModel.cellParametersURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t CellularModel.estimator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t CellularModel.__allocating_init()()
{
  v6 = v1;
  *(v1 + 16) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = CellularModel.__allocating_init();

  return CellularModel.init()();
}

uint64_t CellularModel.__allocating_init()(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t CellularModel.init()()
{
  v1[8] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  v8 = *(v2 - 8);
  v1[10] = v8;
  v3 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[12] = v4;
  v9 = *(v4 - 8);
  v1[13] = v9;
  v5 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = v1[2];

  return MEMORY[0x2822009F8](CellularModel.init(), 0, 0);
}

{
  v1 = v0[14];
  v9 = v0[13];
  v10 = v0[12];
  v12 = v0[8];
  v0[2] = v0;
  v0[3] = v12;
  swift_defaultActor_initialize();
  v2 = kMediaML_throughputTrue.unsafeMutableAddressor();
  countAndFlagsBits = v2->_countAndFlagsBits;
  object = v2->_object;

  ColumnID.init(_:_:)();
  v3 = (v12 + OBJC_IVAR____TtC7MediaML13CellularModel_model);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v4 = mediaMLModelDirectory.unsafeMutableAddressor();
  (*(v9 + 16))(v1, v4, v10);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cellParameters.pkg", 0x12uLL, 1);
  URL.appendingPathComponent(_:)();

  (*(v9 + 8))(v1, v10);
  v11 = OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
  CellModelGuts.init()();
  CellModelGuts.estimator.getter(v12 + v11);
  v5 = v0[2];

  return MEMORY[0x2822009F8](CellularModel.init(), v12, 0);
}

{
  v1 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v0[2] = v0;
  v2 = CellularModel.logger.unsafeMutableAddressor();
  (*(v17 + 16))(v1, v2, v18);
  v20 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v20, v19))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 32) = buf;
    *(v16 + 40) = v13;
    *(v16 + 48) = v14;
    serialize(_:at:)(0, (v16 + 32));
    serialize(_:at:)(0, (v16 + 32));
    *(v16 + 56) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 32;
    v15[3] = v16 + 40;
    v15[4] = v16 + 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2586A4000, v20, v19, "New Cell Model created", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v16 + 112);
  v10 = *(v16 + 88);
  v8 = *(v16 + 72);
  v7 = *(v16 + 80);
  MEMORY[0x277D82BD8](v20);
  (*(v7 + 8))(v10, v8);

  v3 = *(*(v16 + 16) + 8);
  v4 = *(v16 + 16);
  v5 = *(v16 + 64);

  return v3(v5);
}

uint64_t CellularModel.getMAPE<A>(data:transformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = v4;
  v5[18] = a4;
  v5[17] = a3;
  v5[16] = a2;
  v5[15] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[12] = 0;
  v5[14] = 0;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v16 = *(v6 - 8);
  v5[21] = v16;
  v7 = *(v16 + 64) + 15;
  v5[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v5[23] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for DataFrame();
  v5[25] = v10;
  v17 = *(v10 - 8);
  v5[26] = v17;
  v11 = *(v17 + 64) + 15;
  v5[27] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v5[28] = v12;
  v18 = *(v12 - 8);
  v5[29] = v18;
  v13 = *(v18 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v20;
  v14 = v5[2];

  return MEMORY[0x2822009F8](CellularModel.getMAPE<A>(data:transformer:), v20, 0);
}

uint64_t CellularModel.getMAPE<A>(data:transformer:)()
{
  v39 = *(v0 + 240);
  v38 = *(v0 + 232);
  v40 = *(v0 + 224);
  v1 = *(v0 + 152);
  v37 = *(v0 + 120);
  *(v0 + 16) = v0;
  *(v0 + 48) = -1.0;
  v2 = OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID;
  v3 = *(v38 + 16);
  *(v0 + 248) = v3;
  *(v0 + 256) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v39, v1 + v2);
  v41._countAndFlagsBits = ColumnID.name.getter();
  v41._object = v4;
  v5 = *(v38 + 8);
  *(v0 + 264) = v5;
  *(v0 + 272) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v39, v40);
  v42 = DataFrame.containsColumn(_:)(v41);

  if (v42)
  {
    v6 = *(MEMORY[0x277CC5030] + 4);
    v7 = swift_task_alloc();
    *(v36 + 280) = v7;
    *v7 = *(v36 + 16);
    v7[1] = CellularModel.getMAPE<A>(data:transformer:);
    v8 = *(v36 + 216);
    v9 = *(v36 + 144);
    v10 = *(v36 + 136);
    v11 = *(v36 + 128);
    v12 = *(v36 + 120);

    return MEMORY[0x282115068](v8, v12, 0, 0, v10, v9);
  }

  else
  {
    v13 = *(v36 + 176);
    v32 = *(v36 + 160);
    v31 = *(v36 + 168);
    v14 = CellularModel.logger.unsafeMutableAddressor();
    (*(v31 + 16))(v13, v14, v32);
    v34 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v34, v33))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(0);
      *(v36 + 56) = buf;
      *(v36 + 64) = v28;
      *(v36 + 72) = v29;
      serialize(_:at:)(0, (v36 + 56));
      serialize(_:at:)(0, (v36 + 56));
      *(v36 + 80) = v35;
      v30 = swift_task_alloc();
      v30[2] = v36 + 56;
      v30[3] = v36 + 64;
      v30[4] = v36 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v34, v33, "No target column in data frame", buf, 2u);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v21 = *(v36 + 176);
    v22 = *(v36 + 160);
    v20 = *(v36 + 168);
    MEMORY[0x277D82BD8](v34);
    (*(v20 + 8))(v21, v22);
    v15 = *(v36 + 240);
    v23 = *(v36 + 216);
    v24 = *(v36 + 192);
    v25 = *(v36 + 176);

    v16 = *(*(v36 + 16) + 8);
    v17 = *(v36 + 16);
    v18.n128_u64[0] = -1.0;

    return v16(v18);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 280);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[36] = v0;

  if (v0)
  {
    v3 = v8[19];
    v6 = *v9;
    v5 = CellularModel.getMAPE<A>(data:transformer:);
  }

  else
  {
    v3 = v8[19];
    v4 = *v9;
    v5 = CellularModel.getMAPE<A>(data:transformer:);
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

{
  v1 = v0[36];
  v34 = v0[34];
  v35 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v36 = v0[30];
  v33 = v0[28];
  v4 = v0[27];
  v32 = v0[24];
  v31 = v0[23];
  v5 = v0[19];
  v0[2] = v0;
  v3();
  DataFrame.subscript.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type Column<Double> and conformance Column<A>();
  v37 = Array.init<A>(_:)();
  v35(v36, v33);
  v0[11] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdSgGMd, &_sSaySdSgGMR);
  lazy protocol witness table accessor for type [Double?] and conformance [A]();
  result = Sequence.compactMap<A>(_:)();
  v38._rawValue = result;
  if (!v1)
  {
    v25 = v30[34];
    v26 = v30[33];
    v20 = v30[32];
    v21 = v30[31];
    v27 = v30[30];
    v24 = v30[28];
    v22 = v30[24];
    v23 = v30[23];
    v19 = v30[19];
    v7 = v30[15];
    outlined destroy of [Double?](v30 + 11);
    v30[12] = v38._rawValue;
    v21(v27, v19 + OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID, v24);
    DataFrame.subscript.getter();
    v28 = Array.init<A>(_:)();
    v26(v27, v24);
    v30[13] = v28;
    yRealList = Sequence.compactMap<A>(_:)();
    v13 = v30[27];
    v14 = v30[25];
    v12 = v30[26];
    outlined destroy of [Double?](v30 + 13);
    v30[14] = yRealList;
    v18 = meanAbsolutePercentageError(yRealList:yPredList:)(yRealList, v38);
    *(v30 + 6) = v18;

    (*(v12 + 8))(v13, v14);
    v8 = v30[30];
    v15 = v30[27];
    v16 = v30[24];
    v17 = v30[22];

    v9.n128_f64[0] = v18;
    v10 = *(v30[2] + 8);
    v11 = v30[2];

    return v10(v9);
  }

  return result;
}

{
  v1 = v0[30];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[22];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[36];
  v6.n128_u64[0] = v11;

  return v3(v6);
}

uint64_t closure #1 in CellularModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t closure #2 in CellularModel.getMAPE<A>(data:transformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t CellularModel.train(traindata_url:)(uint64_t a1, uint64_t a2)
{
  v3[18] = v2;
  v3[17] = a2;
  v3[16] = a1;
  v3[13] = v3;
  v3[14] = 0;
  v3[15] = 0;
  v4 = *(*(type metadata accessor for CSVReadingOptions() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[20] = v5;
  v11 = *(v5 - 8);
  v3[21] = v11;
  v6 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for DataFrame();
  v3[23] = v7;
  v12 = *(v7 - 8);
  v3[24] = v12;
  v8 = *(v12 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[14] = a2;
  v3[15] = v14;
  v9 = v3[13];

  return MEMORY[0x2822009F8](CellularModel.train(traindata_url:), v14, 0);
}

uint64_t CellularModel.train(traindata_url:)()
{
  v12 = v0[25];
  v13 = v0[22];
  v1 = v0[21];
  v2 = v0[20];
  v14 = v0[19];
  v3 = v0[17];
  v0[13] = v0;
  (*(v1 + 16))();
  default argument 3 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  default argument 4 of DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v14);
  DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)();
  v4 = *(**(v11 + 144) + 168);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v11 + 208) = v6;
  *v6 = *(v11 + 104);
  v6[1] = CellularModel.train(traindata_url:);
  v7 = *(v11 + 200);
  v8 = *(v11 + 144);

  return v10(v11 + 16, v7);
}

{
  v8 = *v1;
  v2 = *(*v1 + 208);
  v8[13] = *v1;
  v9 = v8 + 13;
  v8[27] = v0;

  if (v0)
  {
    v3 = v8[18];
    v6 = *v9;
    v5 = CellularModel.train(traindata_url:);
  }

  else
  {
    v3 = v8[18];
    v4 = *v9;
    v5 = CellularModel.train(traindata_url:);
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

{
  v7 = v0[25];
  v1 = v0[24];
  v2 = v0[23];
  v8 = v0[22];
  v9 = v0[19];
  __dst = v0[16];
  v0[13] = v0;
  (*(v1 + 8))();
  memcpy(__dst, v0 + 2, 0x51uLL);

  v3 = *(v0[13] + 8);
  v4 = v0[13];

  return v3();
}

{
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[23];
  v0[13] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[25];
  v9 = v0[22];
  v10 = v0[19];

  v6 = *(v0[13] + 8);
  v7 = v0[13];

  return v6();
}

uint64_t CellularModel.train(dataFrame:)(uint64_t a1, uint64_t a2)
{
  v3[49] = v2;
  v3[48] = a2;
  v3[47] = a1;
  v3[50] = *v2;
  v3[38] = v3;
  v3[39] = 0;
  v3[40] = 0;
  v3[45] = 0;
  v3[46] = 0;
  v4 = type metadata accessor for URL();
  v3[51] = v4;
  v17 = *(v4 - 8);
  v3[52] = v17;
  v5 = *(v17 + 64) + 15;
  v3[53] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[54] = v6;
  v18 = *(v6 - 8);
  v3[55] = v18;
  v19 = *(v18 + 64);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v7 = type metadata accessor for AnyColumnSlice();
  v3[60] = v7;
  v20 = *(v7 - 8);
  v3[61] = v20;
  v21 = *(v20 + 64);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v8 = type metadata accessor for DataFrame.Rows();
  v3[65] = v8;
  v22 = *(v8 - 8);
  v3[66] = v22;
  v23 = *(v22 + 64);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData0B5FrameVSgMd, &_s11TabularData0B5FrameVSgMR) - 8) + 64) + 15;
  v3[69] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v3[70] = v10;
  v24 = *(v10 - 8);
  v3[71] = v24;
  v25 = *(v24 + 64);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v3[74] = v11;
  v26 = *(v11 - 8);
  v3[75] = v26;
  v12 = *(v26 + 64) + 15;
  v3[76] = swift_task_alloc();
  v13 = type metadata accessor for DataFrame();
  v3[77] = v13;
  v27 = *(v13 - 8);
  v3[78] = v27;
  v28 = *(v27 + 64);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v14 = type metadata accessor for DataFrame.Slice();
  v3[81] = v14;
  v29 = *(v14 - 8);
  v3[82] = v29;
  v30 = *(v29 + 64);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[39] = a2;
  v3[40] = v2;
  v15 = v3[38];

  return MEMORY[0x2822009F8](CellularModel.train(dataFrame:), v2, 0);
}

uint64_t CellularModel.train(dataFrame:)()
{
  v85 = v0;
  v76 = v0[85];
  v79 = v0[84];
  v83 = v0[83];
  v77 = v0[82];
  v80 = v0[81];
  v78 = v0[80];
  v82 = v0[79];
  v1 = v0[77];
  v2 = v0[48];
  v0[38] = v0;
  DataFrameProtocol.randomSplit(by:seed:)();
  v81 = *(v77 + 16);
  v81(v83, v76, v80);
  DataFrame.init(_:)();
  v81(v83, v79, v80);
  DataFrame.init(_:)();
  if (DataFrame.Slice.shape.getter() > 0 && (v3 = *(v75 + 672), DataFrame.Slice.shape.getter() > 0))
  {
    v66 = *(v75 + 632);
    v67 = *(v75 + 616);
    v4 = *(v75 + 584);
    v5 = *(v75 + 560);
    v68 = *(v75 + 552);
    v65 = *(v75 + 624);
    v69 = *(v75 + 400);
    v6 = *(v75 + 392) + OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
    v7 = *(v75 + 568) + 16;
    v8 = *v7;
    *(v75 + 688) = *v7;
    *(v75 + 696) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v4, v6, v5);
    (*(v65 + 16))(v68, v66, v67);
    (*(v65 + 56))(v68, 0, 1, v67);
    v9 = swift_allocObject();
    *(v75 + 704) = v9;
    *(v9 + 16) = v69;
    v73 = v9;
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
    v72 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
    v10 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
    *(v75 + 264) = v70;
    *(v75 + 272) = v71;
    *(v75 + 280) = v72;
    *(v75 + 288) = v10;
    *(v75 + 296) = MEMORY[0x277D83A28];
    v74 = *(swift_getOpaqueTypeConformance2() + 8);
    *(v75 + 712) = v74;
    v11 = *(MEMORY[0x277CC50E0] + 4);
    v12 = swift_task_alloc();
    *(v75 + 720) = v12;
    *v12 = *(v75 + 304);
    v12[1] = CellularModel.train(dataFrame:);
    v13 = *(v75 + 640);
    v14 = *(v75 + 608);
    v15 = *(v75 + 584);
    v16 = *(v75 + 560);
    v17 = *(v75 + 552);

    return MEMORY[0x2821152A0](v14, v13, v17, partial apply for closure #1 in CellularModel.train(dataFrame:), v73, v16, v74);
  }

  else
  {
    v18 = *(v75 + 448);
    v61 = *(v75 + 432);
    v60 = *(v75 + 440);
    v19 = CellularModel.logger.unsafeMutableAddressor();
    (*(v60 + 16))(v18, v19, v61);
    oslog = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v64 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v62))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v57 = createStorage<A>(capacity:type:)(0);
      v58 = createStorage<A>(capacity:type:)(0);
      *(v75 + 328) = buf;
      *(v75 + 336) = v57;
      *(v75 + 344) = v58;
      serialize(_:at:)(0, (v75 + 328));
      serialize(_:at:)(0, (v75 + 328));
      *(v75 + 352) = v64;
      v59 = swift_task_alloc();
      v59[2] = v75 + 328;
      v59[3] = v75 + 336;
      v59[4] = v75 + 344;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, oslog, v62, "Cell: Training or validation data is empty", buf, 2u);
      destroyStorage<A>(_:count:)(v57, 0, v55);
      destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v33 = *(v75 + 680);
    v32 = *(v75 + 672);
    v34 = *(v75 + 648);
    v28 = *(v75 + 640);
    v27 = *(v75 + 632);
    v29 = *(v75 + 616);
    v24 = *(v75 + 448);
    v25 = *(v75 + 432);
    v31 = *(v75 + 656);
    v26 = *(v75 + 624);
    v23 = *(v75 + 440);
    MEMORY[0x277D82BD8](oslog);
    (*(v23 + 8))(v24, v25);
    memset(v84, 0, 80);
    LOBYTE(v84[10]) = 1;
    v30 = *(v26 + 8);
    v30(v27, v29);
    v30(v28, v29);
    v35 = *(v31 + 8);
    v35(v32, v34);
    v35(v33, v34);
    memcpy((v75 + 16), v84, 0x51uLL);
    v36 = *(v75 + 680);
    v37 = *(v75 + 672);
    v38 = *(v75 + 664);
    v39 = *(v75 + 640);
    v40 = *(v75 + 632);
    v41 = *(v75 + 608);
    v42 = *(v75 + 584);
    v43 = *(v75 + 576);
    v44 = *(v75 + 552);
    v45 = *(v75 + 544);
    v46 = *(v75 + 536);
    v47 = *(v75 + 512);
    v48 = *(v75 + 504);
    v49 = *(v75 + 496);
    v50 = *(v75 + 472);
    v51 = *(v75 + 464);
    v52 = *(v75 + 456);
    v53 = *(v75 + 448);
    v54 = *(v75 + 424);
    memcpy(*(v75 + 376), (v75 + 16), 0x51uLL);

    v20 = *(*(v75 + 304) + 8);
    v21 = *(v75 + 304);

    return v20();
  }
}

{
  v23 = *v1;
  v21 = (*v1 + 16);
  v22 = (*v1 + 304);
  v2 = *(*v1 + 720);
  *(v23 + 304) = *v1;
  *(v23 + 728) = v0;

  if (v0)
  {
    v13 = v21[47];
    v14 = *v22;

    return MEMORY[0x2822009F8](CellularModel.train(dataFrame:), v13, 0);
  }

  else
  {
    v3 = v21[86];
    v18 = v21[71];
    v16 = v21[69];
    v17 = v21[68];
    v15 = v21[67];
    v19 = v21[47];
    outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in CellularModel.train(dataFrame:));
    outlined destroy of DataFrame?(v15);
    v4 = *(v16 + 8);
    v21[90] = v4;
    v21[91] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v18, v17);
    v5 = *(*v19 + 152);
    v20 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v21[92] = v7;
    v21[93] = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
    *v7 = *v22;
    v7[1] = CellularModel.train(dataFrame:);
    v8 = v21[78];
    v9 = v21[74];
    v10 = v21[72];
    v11 = v21[47];

    return v20(v8, v9, v10);
  }
}

{
  v214 = v0;
  validationMAPE = *(v0 + 792);
  trainingMAPE = *(v0 + 768);
  v154 = *(v0 + 680);
  v145 = *(v0 + 672);
  v147 = *(v0 + 544);
  v150 = *(v0 + 536);
  v146 = *(v0 + 528);
  v148 = *(v0 + 520);
  v155 = *(v0 + 512);
  v162 = *(v0 + 504);
  v157 = *(v0 + 496);
  v152 = *(v0 + 488);
  v160 = *(v0 + 480);
  v159 = *(v0 + 472);
  v172 = *(v0 + 440);
  v173 = *(v0 + 432);
  *(v0 + 304) = v0;
  *(v0 + 368) = validationMAPE;
  interfaceType = *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor();
  DataFrame.Slice.rows.getter();
  trainingRowCount = DataFrame.Rows.count.getter();
  v149 = *(v146 + 8);
  v149(v147, v148);
  DataFrame.Slice.rows.getter();
  validationRowCount = DataFrame.Rows.count.getter();
  v149(v150, v148);
  v1 = kMediaML_carrier.unsafeMutableAddressor();
  countAndFlagsBits = v1->_countAndFlagsBits;
  object = v1->_object;

  MEMORY[0x259C87130](countAndFlagsBits, object);
  AnyColumnSlice.distinct()();
  v161 = *(v152 + 8);
  v161(v162, v160);

  carrierCount = AnyColumnSlice.count.getter();
  v161(v155, v160);
  v2 = kMediaML_appName.unsafeMutableAddressor();
  v156 = v2->_countAndFlagsBits;
  v158 = v2->_object;

  MEMORY[0x259C87130](v156, v158);
  AnyColumnSlice.distinct()();
  v161(v157, v160);

  appNameCount = AnyColumnSlice.count.getter();
  v161(v162, v160);
  trainingDate = getDateInEpoch()();
  ssidCount = default argument 4 of ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)();
  v3 = default argument 6 of ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)();
  ModelStats.init(interfaceType:trainingRowCount:validationRowCount:carrierCount:ssidCount:appNameCount:sessionIDCount:trainingMAPE:validationMAPE:trainingDate:)((v0 + 104), interfaceType, trainingRowCount, validationRowCount, carrierCount, ssidCount, appNameCount, v3, trainingMAPE, validationMAPE, trainingDate);
  memcpy((v0 + 184), (v0 + 104), 0x50uLL);
  v4 = CellularModel.logger.unsafeMutableAddressor();
  v174 = *(v172 + 16);
  v174(v159, v4, v173);
  v175 = swift_allocObject();
  memcpy((v175 + 16), (v0 + 104), 0x50uLL);
  v177 = swift_allocObject();
  memcpy((v177 + 16), (v0 + 104), 0x50uLL);
  v179 = swift_allocObject();
  memcpy((v179 + 16), (v0 + 104), 0x50uLL);
  v181 = swift_allocObject();
  memcpy((v181 + 16), (v0 + 104), 0x50uLL);
  oslog = Logger.logObject.getter();
  v197 = static os_log_type_t.info.getter();
  v183 = swift_allocObject();
  *(v183 + 16) = 0;
  v184 = swift_allocObject();
  *(v184 + 16) = 8;
  v176 = swift_allocObject();
  *(v176 + 16) = partial apply for implicit closure #2 in CellularModel.train(dataFrame:);
  *(v176 + 24) = v175;
  v185 = swift_allocObject();
  *(v185 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v185 + 24) = v176;
  v186 = swift_allocObject();
  *(v186 + 16) = 0;
  v187 = swift_allocObject();
  *(v187 + 16) = 8;
  v178 = swift_allocObject();
  *(v178 + 16) = partial apply for implicit closure #3 in CellularModel.train(dataFrame:);
  *(v178 + 24) = v177;
  v188 = swift_allocObject();
  *(v188 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v188 + 24) = v178;
  v189 = swift_allocObject();
  *(v189 + 16) = 0;
  v190 = swift_allocObject();
  *(v190 + 16) = 8;
  v180 = swift_allocObject();
  *(v180 + 16) = partial apply for implicit closure #4 in CellularModel.train(dataFrame:);
  *(v180 + 24) = v179;
  v191 = swift_allocObject();
  *(v191 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v191 + 24) = v180;
  v192 = swift_allocObject();
  *(v192 + 16) = 0;
  v193 = swift_allocObject();
  *(v193 + 16) = 8;
  v182 = swift_allocObject();
  *(v182 + 16) = partial apply for implicit closure #5 in CellularModel.train(dataFrame:);
  *(v182 + 24) = v181;
  v194 = swift_allocObject();
  *(v194 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v194 + 24) = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v195 = v5;

  *v195 = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[1] = v183;

  v195[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[3] = v184;

  v195[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v195[5] = v185;

  v195[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[7] = v186;

  v195[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[9] = v187;

  v195[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v195[11] = v188;

  v195[12] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[13] = v189;

  v195[14] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[15] = v190;

  v195[16] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[17] = v191;

  v195[18] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[19] = v192;

  v195[20] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[21] = v193;

  v195[22] = closure #1 in OSLogArguments.append(_:)partial apply;
  v195[23] = v194;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v197))
  {
    v6 = *(v144 + 800);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v142 = createStorage<A>(capacity:type:)(0);
    v143 = createStorage<A>(capacity:type:)(0);
    v209 = buf;
    v210 = v142;
    v211 = v143;
    serialize(_:at:)(0, &v209);
    serialize(_:at:)(4, &v209);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v183;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    if (v6)
    {
    }

    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v184;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v213 = v185;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v186;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v187;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v213 = v188;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v189;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v190;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v191;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v192;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v193;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    v212 = closure #1 in OSLogArguments.append(_:)partial apply;
    v213 = v194;
    closure #1 in osLogInternal(_:log:type:)(&v212, &v209, &v210, &v211);
    _os_log_impl(&dword_2586A4000, oslog, v197, "Cell model stats: trainingRowCount: %ld, validationRowCount: %ld trainingMAPE:%f, validationMAPE: %f", buf, 0x2Au);
    destroyStorage<A>(_:count:)(v142, 0, v140);
    destroyStorage<A>(_:count:)(v143, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

    v139 = 0;
  }

  else
  {

    v139 = *(v144 + 800);
  }

  v138 = *(v144 + 792);
  v135 = *(v144 + 472);
  v136 = *(v144 + 432);
  v134 = *(v144 + 440);
  MEMORY[0x277D82BD8](oslog);
  v137 = *(v134 + 8);
  v137(v135, v136);
  if (v138 >= 0.7)
  {
    v94 = *(v144 + 792);
    v12 = *(v144 + 456);
    v93 = *(v144 + 432);
    v13 = CellularModel.logger.unsafeMutableAddressor();
    v174(v12, v13, v93);
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.info.getter();
    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = 8;
    v96 = swift_allocObject();
    *(v96 + 16) = partial apply for implicit closure #7 in CellularModel.train(dataFrame:);
    *(v96 + 24) = v95;
    v100 = swift_allocObject();
    *(v100 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v100 + 24) = v96;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = 8;
    v97 = swift_allocObject();
    *(v97 + 16) = implicit closure #8 in CellularModel.train(dataFrame:);
    *(v97 + 24) = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
    *(v103 + 24) = v97;
    _allocateUninitializedArray<A>(_:)();
    v104 = v14;

    *v104 = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[1] = v98;

    v104[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[3] = v99;

    v104[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[5] = v100;

    v104[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[7] = v101;

    v104[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[9] = v102;

    v104[10] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[11] = v103;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v105, v106))
    {
      v90 = static UnsafeMutablePointer.allocate(capacity:)();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v91 = createStorage<A>(capacity:type:)(0);
      v92 = createStorage<A>(capacity:type:)(0);
      v199 = v90;
      v200 = v91;
      v201 = v92;
      serialize(_:at:)(0, &v199);
      serialize(_:at:)(2, &v199);
      v202 = closure #1 in OSLogArguments.append(_:)partial apply;
      v203 = v98;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      if (v139)
      {
      }

      v202 = closure #1 in OSLogArguments.append(_:)partial apply;
      v203 = v99;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      v202 = closure #1 in OSLogArguments.append(_:)partial apply;
      v203 = v100;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      v202 = closure #1 in OSLogArguments.append(_:)partial apply;
      v203 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      v202 = closure #1 in OSLogArguments.append(_:)partial apply;
      v203 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      v202 = closure #1 in OSLogArguments.append(_:)partial apply;
      v203 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v202, &v199, &v200, &v201);
      _os_log_impl(&dword_2586A4000, v105, v106, "Cell model not updated. Validation MAPE %f exceeds modelMAPEThreshold %f. ", v90, 0x16u);
      destroyStorage<A>(_:count:)(v91, 0, v89);
      destroyStorage<A>(_:count:)(v92, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v90, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v87 = *(v144 + 456);
    v88 = *(v144 + 432);
    MEMORY[0x277D82BD8](v105);
    v137(v87, v88);
    goto LABEL_18;
  }

  v132 = *(v144 + 712);
  v8 = *(v144 + 696);
  v133 = *(v144 + 608);
  v131 = *(v144 + 560);
  v130 = *(v144 + 424);
  v129 = *(v144 + 408);
  v127 = *(v144 + 392);
  v128 = *(v144 + 416);
  (*(v144 + 688))(*(v144 + 576), v127 + OBJC_IVAR____TtC7MediaML13CellularModel_estimator, v138);
  (*(v128 + 16))(v130, v127 + OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL, v129);
  default argument 2 of SupervisedTabularEstimator.write(_:to:overwrite:)();
  SupervisedTabularEstimator.write(_:to:overwrite:)();
  if (!v139)
  {
    v115 = *(v144 + 744);
    v116 = *(v144 + 736);
    v113 = *(v144 + 576);
    v114 = *(v144 + 560);
    v9 = *(v144 + 464);
    v117 = *(v144 + 432);
    v118 = *(v144 + 392);
    (*(*(v144 + 416) + 8))(*(v144 + 424), *(v144 + 408));
    v116(v113, v114);
    v10 = CellularModel.logger.unsafeMutableAddressor();
    v174(v9, v10, v117);

    v119 = swift_allocObject();
    *(v119 + 16) = partial apply for implicit closure #6 in CellularModel.train(dataFrame:);
    *(v119 + 24) = v118;

    log = Logger.logObject.getter();
    v126 = static os_log_type_t.info.getter();
    v121 = swift_allocObject();
    *(v121 + 16) = 32;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v120 = swift_allocObject();
    *(v120 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v120 + 24) = v119;
    v123 = swift_allocObject();
    *(v123 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v123 + 24) = v120;
    _allocateUninitializedArray<A>(_:)();
    v124 = v11;

    *v124 = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[1] = v121;

    v124[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[3] = v122;

    v124[4] = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[5] = v123;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v126))
    {
      v110 = static UnsafeMutablePointer.allocate(capacity:)();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v111 = createStorage<A>(capacity:type:)(0);
      v112 = createStorage<A>(capacity:type:)(1);
      v204 = v110;
      v205 = v111;
      v206 = v112;
      serialize(_:at:)(2, &v204);
      serialize(_:at:)(1, &v204);
      v207 = closure #1 in OSLogArguments.append(_:)partial apply;
      v208 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v207, &v204, &v205, &v206);
      v207 = closure #1 in OSLogArguments.append(_:)partial apply;
      v208 = v122;
      closure #1 in osLogInternal(_:log:type:)(&v207, &v204, &v205, &v206);
      v207 = closure #1 in OSLogArguments.append(_:)partial apply;
      v208 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v207, &v204, &v205, &v206);
      _os_log_impl(&dword_2586A4000, log, v126, "Updated cell model written to: %s", v110, 0xCu);
      destroyStorage<A>(_:count:)(v111, 0, v109);
      destroyStorage<A>(_:count:)(v112, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v110, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v107 = *(v144 + 464);
    v108 = *(v144 + 432);
    MEMORY[0x277D82BD8](log);
    v137(v107, v108);
LABEL_18:
    v65 = *(v144 + 680);
    v64 = *(v144 + 672);
    v66 = *(v144 + 648);
    v60 = *(v144 + 640);
    v59 = *(v144 + 632);
    v61 = *(v144 + 616);
    v55 = *(v144 + 608);
    v57 = *(v144 + 592);
    v63 = *(v144 + 656);
    v58 = *(v144 + 624);
    v56 = *(v144 + 600);
    memcpy(v198, (v144 + 184), 0x50uLL);
    v198[80] = 0;
    (*(v56 + 8))(v55, v57);
    v62 = *(v58 + 8);
    v62(v59, v61);
    v62(v60, v61);
    v67 = *(v63 + 8);
    v67(v64, v66);
    v67(v65, v66);
    memcpy((v144 + 16), v198, 0x51uLL);
    v68 = *(v144 + 680);
    v69 = *(v144 + 672);
    v70 = *(v144 + 664);
    v71 = *(v144 + 640);
    v72 = *(v144 + 632);
    v73 = *(v144 + 608);
    v74 = *(v144 + 584);
    v75 = *(v144 + 576);
    v76 = *(v144 + 552);
    v77 = *(v144 + 544);
    v78 = *(v144 + 536);
    v79 = *(v144 + 512);
    v80 = *(v144 + 504);
    v81 = *(v144 + 496);
    v82 = *(v144 + 472);
    v83 = *(v144 + 464);
    v84 = *(v144 + 456);
    v85 = *(v144 + 448);
    v86 = *(v144 + 424);
    memcpy(*(v144 + 376), (v144 + 16), 0x51uLL);

    v15 = *(*(v144 + 304) + 8);
    v16 = *(v144 + 304);

    return v15();
  }

  v22 = *(v144 + 744);
  v23 = *(v144 + 736);
  v34 = *(v144 + 680);
  v33 = *(v144 + 672);
  v35 = *(v144 + 648);
  v29 = *(v144 + 640);
  v28 = *(v144 + 632);
  v30 = *(v144 + 616);
  v25 = *(v144 + 608);
  v26 = *(v144 + 592);
  v20 = *(v144 + 576);
  v21 = *(v144 + 560);
  v32 = *(v144 + 656);
  v27 = *(v144 + 624);
  v24 = *(v144 + 600);
  (*(*(v144 + 416) + 8))(*(v144 + 424), *(v144 + 408));
  v23(v20, v21);
  (*(v24 + 8))(v25, v26);
  v31 = *(v27 + 8);
  v31(v28, v30);
  v31(v29, v30);
  v36 = *(v32 + 8);
  v36(v33, v35);
  v36(v34, v35);
  v17 = *(v144 + 680);
  v37 = *(v144 + 672);
  v38 = *(v144 + 664);
  v39 = *(v144 + 640);
  v40 = *(v144 + 632);
  v41 = *(v144 + 608);
  v42 = *(v144 + 584);
  v43 = *(v144 + 576);
  v44 = *(v144 + 552);
  v45 = *(v144 + 544);
  v46 = *(v144 + 536);
  v47 = *(v144 + 512);
  v48 = *(v144 + 504);
  v49 = *(v144 + 496);
  v50 = *(v144 + 472);
  v51 = *(v144 + 464);
  v52 = *(v144 + 456);
  v53 = *(v144 + 448);
  v54 = *(v144 + 424);

  v18 = *(*(v144 + 304) + 8);
  v19 = *(v144 + 304);

  return v18();
}

{
  v1 = v0[88];
  v18 = v0[85];
  v17 = v0[84];
  v16 = v0[82];
  v19 = v0[81];
  v13 = v0[80];
  v12 = v0[79];
  v11 = v0[78];
  v14 = v0[77];
  v10 = v0[73];
  v8 = v0[71];
  v9 = v0[70];
  v7 = v0[69];
  v0[38] = v0;
  outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(partial apply for closure #1 in CellularModel.train(dataFrame:));
  outlined destroy of DataFrame?(v7);
  (*(v8 + 8))(v10, v9);
  v15 = *(v11 + 8);
  v15(v12, v14);
  v15(v13, v14);
  v20 = *(v16 + 8);
  v20(v17, v19);
  v20(v18, v19);
  v2 = v0[91];
  v3 = v0[85];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[80];
  v24 = v0[79];
  v25 = v0[76];
  v26 = v0[73];
  v27 = v0[72];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[62];
  v34 = v0[59];
  v35 = v0[58];
  v36 = v0[57];
  v37 = v0[56];
  v38 = v0[53];

  v4 = *(v0[38] + 8);
  v5 = v0[38];

  return v4();
}

{
  v16 = v0[85];
  v15 = v0[84];
  v14 = v0[82];
  v17 = v0[81];
  v11 = v0[80];
  v10 = v0[79];
  v9 = v0[78];
  v12 = v0[77];
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v0[38] = v0;
  (*(v2 + 8))(v1, v3);
  v13 = *(v9 + 8);
  v13(v10, v12);
  v13(v11, v12);
  v18 = *(v14 + 8);
  v18(v15, v17);
  v18(v16, v17);
  v4 = v0[97];
  v5 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[76];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[62];
  v32 = v0[59];
  v33 = v0[58];
  v34 = v0[57];
  v35 = v0[56];
  v36 = v0[53];

  v6 = *(v0[38] + 8);
  v7 = v0[38];

  return v6();
}

{
  v16 = v0[85];
  v15 = v0[84];
  v14 = v0[82];
  v17 = v0[81];
  v11 = v0[80];
  v10 = v0[79];
  v9 = v0[78];
  v12 = v0[77];
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v0[38] = v0;
  (*(v2 + 8))(v1, v3);
  v13 = *(v9 + 8);
  v13(v10, v12);
  v13(v11, v12);
  v18 = *(v14 + 8);
  v18(v15, v17);
  v18(v16, v17);
  v4 = v0[100];
  v5 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[76];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[62];
  v32 = v0[59];
  v33 = v0[58];
  v34 = v0[57];
  v35 = v0[56];
  v36 = v0[53];

  v6 = *(v0[38] + 8);
  v7 = v0[38];

  return v6();
}

uint64_t CellularModel.train(dataFrame:)(double a1)
{
  v21 = *v2;
  v18 = (*v2 + 16);
  v19 = (*v2 + 304);
  v20 = (*v2 + 360);
  v3 = *(*v2 + 752);
  *(v21 + 304) = *v2;
  *(v21 + 768) = a1;
  *(v21 + 776) = v1;

  if (v1)
  {
    v14 = v18[47];
    v15 = *v19;

    return MEMORY[0x2822009F8](CellularModel.train(dataFrame:), v14, 0);
  }

  else
  {
    v4 = v18[47];
    *v20 = a1;
    v5 = *(*v4 + 152);
    v16 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v18[96] = v7;
    *v7 = *v19;
    v7[1] = CellularModel.train(dataFrame:);
    v8 = v18[93];
    v9 = v18[77];
    v10 = v18[74];
    v11 = v18[72];
    v12 = v18[47];

    return v16(v9, v10, v11, v8);
  }
}

{
  v11 = *v2;
  v9 = *v2 + 16;
  v10 = (v11 + 304);
  v3 = *(*v2 + 784);
  *(v11 + 304) = *v2;
  *(v11 + 792) = a1;
  *(v11 + 800) = v1;

  if (v1)
  {
    v4 = *(v9 + 376);
    v7 = *v10;
    v6 = CellularModel.train(dataFrame:);
  }

  else
  {
    v4 = *(v9 + 376);
    v5 = *v10;
    v6 = CellularModel.train(dataFrame:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t *closure #1 in CellularModel.train(dataFrame:)(uint64_t a1)
{
  v52 = partial apply for implicit closure #1 in closure #1 in CellularModel.train(dataFrame:);
  v53 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v55 = closure #1 in OSLogArguments.append(_:)partial apply;
  v56 = closure #1 in OSLogArguments.append(_:)partial apply;
  v79 = 0;
  v77 = 0;
  v57 = 0;
  v58 = 0;
  v59 = type metadata accessor for Logger();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v63 = &v18 - v62;
  v67 = type metadata accessor for MetricsKey();
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v69 = &v18 - v66;
  v79 = a1;
  v70 = Event.metrics.getter();
  static MetricsKey.validationError.getter();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  v2 = lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey();
  MEMORY[0x259C87380](v78, v69, v70, v67, v68, v2);

  if (v78[3])
  {
    if (swift_dynamicCast())
    {
      v48 = v71;
      v49 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 1;
    }

    v47 = v49;
    v46 = v48;
    result = (*(v64 + 8))(v69, v67);
    v50 = v46;
    v51 = v47;
  }

  else
  {
    (*(v64 + 8))(v69, v67);
    result = outlined destroy of Sendable?(v78);
    v50 = 0;
    v51 = 1;
  }

  v45 = v50;
  if ((v51 & 1) == 0)
  {
    v44 = v45;
    v4 = v63;
    v30 = v45;
    v77 = v45;
    v5 = CellularModel.logger.unsafeMutableAddressor();
    (*(v60 + 16))(v4, v5, v59);
    v33 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = 32;
    v6 = swift_allocObject();
    v7 = v34;
    v35 = v6;
    *(v6 + 16) = v52;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v35;
    v39 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = v9;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v38 = _allocateUninitializedArray<A>(_:)();
    v40 = v10;

    v11 = v36;
    v12 = v40;
    *v40 = v54;
    v12[1] = v11;

    v13 = v37;
    v14 = v40;
    v40[2] = v55;
    v14[3] = v13;

    v15 = v39;
    v16 = v40;
    v40[4] = v56;
    v16[5] = v15;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v42, v43))
    {
      v17 = v57;
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = 0;
      v24 = createStorage<A>(capacity:type:)(0);
      v25 = createStorage<A>(capacity:type:)(v22);
      v26 = &v76;
      v76 = v23;
      v27 = &v75;
      v75 = v24;
      v28 = &v74;
      v74 = v25;
      serialize(_:at:)(0, &v76);
      serialize(_:at:)(1, v26);
      v72 = v54;
      v73 = v36;
      closure #1 in osLogInternal(_:log:type:)(&v72, v26, v27, v28);
      v29 = v17;
      if (v17)
      {

        __break(1u);
      }

      else
      {
        v72 = v55;
        v73 = v37;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
        v20 = 0;
        v72 = v56;
        v73 = v39;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_2586A4000, v42, v43, "Validation error: %f", v23, 0xCu);
        v19 = 0;
        destroyStorage<A>(_:count:)(v24, 0, v21);
        destroyStorage<A>(_:count:)(v25, v19, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v23, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v42);
    return (*(v60 + 8))(v63, v59);
  }

  return result;
}

uint64_t implicit closure #6 in CellularModel.train(dataFrame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a2, a1 + v4);
}

Swift::Void __swiftcall CellularModel.readModelFile()()
{
  v23 = MEMORY[0x277CC50C0];
  v4[27] = partial apply for implicit closure #1 in CellularModel.readModelFile();
  v4[28] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v4[29] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  v4[30] = closure #1 in OSLogArguments.append(_:)partial apply;
  v4[31] = closure #1 in OSLogArguments.append(_:)partial apply;
  v4[32] = closure #1 in OSLogArguments.append(_:)partial apply;
  v37 = 0;
  v28 = 0;
  v4[33] = 0;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v5 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v9 = v4 - v8;
  v18 = type metadata accessor for URL();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v26 = v4 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  v13 = *(v25 - 8);
  v11 = v25 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v14 = v4 - v12;
  v37 = v17;
  (*(v13 + 16))(v4 - v12, v17 + OBJC_IVAR____TtC7MediaML13CellularModel_estimator);
  (*(v15 + 16))(v26, v17 + OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL, v18);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
  v19 = v34;
  v35 = v0;
  v36 = lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
  v22 = lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
  v1 = lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v1;
  v33 = MEMORY[0x277D83A28];
  v2 = *(swift_getOpaqueTypeConformance2() + 8);
  SupervisedTabularEstimator.read(from:)();
  v27 = 0;
  v3 = v17;
  (*(v15 + 8))(v26, v18);
  (*(v13 + 8))(v14, v25);
  (*(*v3 + 128))(v34);
}

uint64_t CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  v34 = v12;
  v9[50] = v12;
  v9[49] = v37;
  v9[48] = v36;
  v9[47] = a8;
  v9[46] = a7;
  v9[45] = a6;
  v9[44] = a5;
  v9[43] = a4;
  v9[42] = a3;
  v9[41] = a2;
  v9[40] = a1;
  v9[28] = v9;
  v9[22] = 0;
  v9[23] = 0;
  v9[24] = 0;
  v9[25] = 0;
  v9[29] = 0;
  v9[30] = 0;
  v9[31] = 0;
  v9[32] = 0;
  v9[33] = 0;
  v9[34] = 0;
  v9[35] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v9[51] = v14;
  v23 = *(v14 - 8);
  v9[52] = v23;
  v15 = *(v23 + 64) + 15;
  v9[53] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v9[54] = v16;
  v24 = *(v16 - 8);
  v9[55] = v24;
  v17 = *(v24 + 64) + 15;
  v9[56] = swift_task_alloc();
  v18 = type metadata accessor for DataFrame();
  v9[57] = v18;
  v25 = *(v18 - 8);
  v9[58] = v25;
  v9[59] = *(v25 + 64);
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v9[63] = v19;
  v26 = *(v19 - 8);
  v9[64] = v26;
  v27 = *(v26 + 64);
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v20 = type metadata accessor for DispatchTime();
  v9[67] = v20;
  v28 = *(v20 - 8);
  v9[68] = v28;
  v9[69] = *(v28 + 64);
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v9[22] = a1;
  v9[23] = a2;
  v9[24] = a3;
  v9[25] = a4;
  v9[29] = a5;
  v9[30] = a6;
  v9[31] = a7;
  v9[32] = a8;
  v9[33] = v36;
  v9[34] = v37;
  v9[35] = v34;
  v21 = v9[28];

  return MEMORY[0x2822009F8](CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:), v34, 0);
}

uint64_t CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v1 = v0[73];
  v2 = v0[50];
  v0[28] = v0;
  v3 = static DispatchTime.now()();
  (*(*v2 + 120))(v3);
  v90 = v0[5] == 0;
  outlined destroy of Transformer?((v91 + 16));
  if (v90)
  {
    v4 = *(v91 + 528);
    v86 = *(v91 + 504);
    v85 = *(v91 + 512);
    v5 = CellularModel.logger.unsafeMutableAddressor();
    (*(v85 + 16))(v4, v5, v86);
    v88 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v89 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v88, v87))
    {
      v81 = static UnsafeMutablePointer.allocate(capacity:)();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v82 = createStorage<A>(capacity:type:)(0);
      v83 = createStorage<A>(capacity:type:)(0);
      *(v91 + 288) = v81;
      *(v91 + 296) = v82;
      *(v91 + 304) = v83;
      serialize(_:at:)(0, (v91 + 288));
      serialize(_:at:)(0, (v91 + 288));
      *(v91 + 312) = v89;
      v84 = swift_task_alloc();
      v84[2] = v91 + 288;
      v84[3] = v91 + 296;
      v84[4] = v91 + 304;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v88, v87, "Reading cell model from disk...", v81, 2u);
      destroyStorage<A>(_:count:)(v82, 0, v80);
      destroyStorage<A>(_:count:)(v83, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v81, MEMORY[0x277D84B78]);
    }

    v78 = *(v91 + 528);
    v79 = *(v91 + 504);
    v6 = *(v91 + 400);
    v77 = *(v91 + 512);
    MEMORY[0x277D82BD8](v88);
    v7 = (*(v77 + 8))(v78, v79);
    (*(*v6 + 176))(v7);
  }

  v76 = *(v91 + 496);
  v8 = *(v91 + 400);
  v74 = *(v91 + 392);
  v72 = *(v91 + 384);
  v71 = *(v91 + 376);
  v70 = *(v91 + 368);
  v69 = *(v91 + 360);
  v68 = *(v91 + 352);
  v67 = *(v91 + 344);
  v65 = *(v91 + 336);
  v62 = *(v91 + 328);
  v60 = *(v91 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SayypSgGtMd, &_sSS_SayypSgGtMR);
  _allocateUninitializedArray<A>(_:)();
  v75 = v9;
  v10 = kMediaML_carrier.unsafeMutableAddressor();
  outlined init with copy of String(v10, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v61 = v11;

  v64 = MEMORY[0x277D837D0];
  v61[3] = MEMORY[0x277D837D0];
  *v61 = v60;
  v61[1] = v62;
  _finalizeUninitializedArray<A>(_:)();
  v75[2] = v59;
  v12 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v12, v75 + 3);
  v63 = _allocateUninitializedArray<A>(_:)();
  v66 = v13;

  v66[3] = v64;
  *v66 = v65;
  v66[1] = v67;
  _finalizeUninitializedArray<A>(_:)();
  v75[5] = v63;
  v14 = kMediaML_binnedRssi.unsafeMutableAddressor();
  outlined init with copy of String(v14, v75 + 6);
  v15 = _allocateUninitializedArray<A>(_:)();
  v73 = MEMORY[0x277D83B88];
  v16[3] = MEMORY[0x277D83B88];
  *v16 = v68;
  _finalizeUninitializedArray<A>(_:)();
  v75[8] = v15;
  v17 = kMediaML_binnedRsrp.unsafeMutableAddressor();
  outlined init with copy of String(v17, v75 + 9);
  v18 = _allocateUninitializedArray<A>(_:)();
  v19[3] = v73;
  *v19 = v69;
  _finalizeUninitializedArray<A>(_:)();
  v75[11] = v18;
  v20 = kMediaML_binnedRsrq.unsafeMutableAddressor();
  outlined init with copy of String(v20, v75 + 12);
  v21 = _allocateUninitializedArray<A>(_:)();
  v22[3] = v73;
  *v22 = v70;
  _finalizeUninitializedArray<A>(_:)();
  v75[14] = v21;
  v23 = kMediaML_binnedRscp.unsafeMutableAddressor();
  outlined init with copy of String(v23, v75 + 15);
  v24 = _allocateUninitializedArray<A>(_:)();
  v25[3] = v73;
  *v25 = v71;
  _finalizeUninitializedArray<A>(_:)();
  v75[17] = v24;
  v26 = kMediaML_binnedSnr.unsafeMutableAddressor();
  outlined init with copy of String(v26, v75 + 18);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28[3] = v73;
  *v28 = v72;
  _finalizeUninitializedArray<A>(_:)();
  v75[20] = v27;
  v29 = kMediaML_bars.unsafeMutableAddressor();
  outlined init with copy of String(v29, v75 + 21);
  v30 = _allocateUninitializedArray<A>(_:)();
  v31[3] = v73;
  *v31 = v74;
  _finalizeUninitializedArray<A>(_:)();
  v75[23] = v30;
  _finalizeUninitializedArray<A>(_:)();
  v32 = DataFrame.init(dictionaryLiteral:)();
  (*(*v8 + 120))(v32);
  if (*(v91 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents11Transformer_pMd, &_s18CreateMLComponents11Transformer_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents18TabularTransformer_pMd, &_s18CreateMLComponents18TabularTransformer_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v91 + 96) = 0;
      *(v91 + 104) = 0;
      *(v91 + 112) = 0;
      *(v91 + 120) = 0;
      *(v91 + 128) = 0;
    }
  }

  else
  {
    outlined destroy of Transformer?((v91 + 136));
    *(v91 + 96) = 0;
    *(v91 + 104) = 0;
    *(v91 + 112) = 0;
    *(v91 + 120) = 0;
    *(v91 + 128) = 0;
  }

  if (*(v91 + 120))
  {
    outlined init with take of TabularTransformer((v91 + 96), (v91 + 56));
    v57 = *(v91 + 80);
    v58 = *(v91 + 88);
    __swift_project_boxed_opaque_existential_1((v91 + 56), v57);
    v33 = *(MEMORY[0x277CC5030] + 4);
    v34 = swift_task_alloc();
    *(v91 + 592) = v34;
    *v34 = *(v91 + 224);
    v34[1] = CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
    v35 = *(v91 + 496);
    v36 = *(v91 + 488);

    return MEMORY[0x282115068](v36, v35, 0, 0, v57, v58);
  }

  else
  {
    v45 = *(v91 + 584);
    v46 = *(v91 + 536);
    v43 = *(v91 + 496);
    v42 = *(v91 + 456);
    v44 = *(v91 + 544);
    v41 = *(v91 + 464);
    outlined destroy of TabularTransformer?((v91 + 96));
    (*(v41 + 8))(v43, v42);
    (*(v44 + 8))(v45, v46);
    v37 = *(v91 + 584);
    v47 = *(v91 + 576);
    v48 = *(v91 + 568);
    v49 = *(v91 + 560);
    v50 = *(v91 + 528);
    v51 = *(v91 + 520);
    v52 = *(v91 + 496);
    v53 = *(v91 + 488);
    v54 = *(v91 + 480);
    v55 = *(v91 + 448);
    v56 = *(v91 + 424);

    v38 = *(*(v91 + 224) + 8);
    v39 = *(v91 + 224);

    return v38(0, 0);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 592);
  v8[28] = *v1;
  v9 = v8 + 28;
  v8[75] = v0;

  if (v0)
  {
    v3 = v8[50];
    v6 = *v9;
    v5 = CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  }

  else
  {
    v3 = v8[50];
    v4 = *v9;
    v5 = CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

{
  v86 = v0;
  v58 = v0[73];
  v57 = v0[72];
  v63 = v0[71];
  v65 = v0[70];
  v60 = v0[69];
  v61 = v0[68];
  v66 = v0[67];
  v1 = v0[65];
  v48 = v0[64];
  v49 = v0[63];
  v50 = v0[61];
  v54 = v0[60];
  v51 = v0[59];
  v52 = v0[58];
  v55 = v0[57];
  v56 = v0[50];
  v0[28] = v0;
  static DispatchTime.now()();
  v2 = CellularModel.logger.unsafeMutableAddressor();
  (*(v48 + 16))(v1, v2, v49);
  (*(v52 + 16))(v54, v50, v55);

  v53 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v68 = swift_allocObject();
  (*(v52 + 32))(v68 + v53, v54, v55);
  *(v68 + ((v53 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
  v59 = *(v61 + 16);
  v59(v63, v57, v66);
  v59(v65, v58, v66);
  v3 = *(v61 + 80);
  v62 = (v3 + 16) & ~v3;
  v64 = (v62 + v60 + v3) & ~v3;
  v70 = swift_allocObject();
  v67 = *(v61 + 32);
  v67(v70 + v62, v63, v66);
  v67(v70 + v64, v65, v66);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = partial apply for implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  *(v69 + 24) = v68;
  v74 = swift_allocObject();
  *(v74 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v74 + 24) = v69;
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 8;
  v71 = swift_allocObject();
  *(v71 + 16) = partial apply for implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:);
  *(v71 + 24) = v70;
  v77 = swift_allocObject();
  *(v77 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  *(v77 + 24) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v78 = v4;

  *v78 = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[1] = v72;

  v78[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[3] = v73;

  v78[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[5] = v74;

  v78[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[7] = v75;

  v78[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[9] = v76;

  v78[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v78[11] = v77;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v79, v80))
  {
    v5 = *(v47 + 600);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = createStorage<A>(capacity:type:)(0);
    v46 = createStorage<A>(capacity:type:)(0);
    v81 = buf;
    v82 = v45;
    v83 = v46;
    serialize(_:at:)(0, &v81);
    serialize(_:at:)(2, &v81);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    if (v5)
    {
    }

    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v73;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v74;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    v84 = closure #1 in OSLogArguments.append(_:)partial apply;
    v85 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
    _os_log_impl(&dword_2586A4000, v79, v80, "Finished prediction with cell model. Predicted value = %f Time taken = %f [ns]", buf, 0x16u);
    destroyStorage<A>(_:count:)(v45, 0, v43);
    destroyStorage<A>(_:count:)(v46, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v32 = *(v47 + 520);
  v33 = *(v47 + 504);
  v7 = *(v47 + 488);
  v37 = *(v47 + 448);
  v36 = *(v47 + 432);
  v39 = *(v47 + 424);
  v40 = *(v47 + 408);
  v34 = *(v47 + 400);
  v31 = *(v47 + 512);
  v35 = *(v47 + 440);
  v38 = *(v47 + 416);
  MEMORY[0x277D82BD8](v79);
  (*(v31 + 8))(v32, v33);
  (*(v35 + 16))(v37, v34 + OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID, v36);
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v41 = *(v47 + 208);
  v42 = *(v47 + 216);
  (*(v38 + 8))(v39, v40);
  if (v42)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v18 = *(v47 + 584);
  v12 = *(v47 + 576);
  v19 = *(v47 + 536);
  v15 = *(v47 + 496);
  v14 = *(v47 + 488);
  v16 = *(v47 + 456);
  v11 = *(v47 + 544);
  v13 = *(v47 + 464);
  (*(*(v47 + 440) + 8))(*(v47 + 448), *(v47 + 432));
  v20 = *(v11 + 8);
  v20(v12, v19);
  v17 = *(v13 + 8);
  v17(v14, v16);
  __swift_destroy_boxed_opaque_existential_1((v47 + 56));
  v17(v15, v16);
  v20(v18, v19);
  v8 = *(v47 + 584);
  v21 = *(v47 + 576);
  v22 = *(v47 + 568);
  v23 = *(v47 + 560);
  v24 = *(v47 + 528);
  v25 = *(v47 + 520);
  v26 = *(v47 + 496);
  v27 = *(v47 + 488);
  v28 = *(v47 + 480);
  v29 = *(v47 + 448);
  v30 = *(v47 + 424);

  v9 = *(*(v47 + 224) + 8);
  v10 = *(v47 + 224);

  return v9(v41, v42 & 1);
}

{
  v9 = v0[73];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  v7 = v0[68];
  v8 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[62];
  v16 = v0[61];
  v17 = v0[60];
  v5 = v0[58];
  v6 = v0[57];
  v18 = v0[56];
  v19 = v0[53];
  v0[28] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v5 + 8))(v15, v6);
  (*(v7 + 8))(v9, v8);

  v1 = *(*(v20 + 224) + 8);
  v2 = *(v20 + 224);
  v3 = *(v20 + 600);

  return v1();
}

double implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v5 = "Fatal error";
  v6 = "Unexpectedly found nil while unwrapping an Optional value";
  v7 = "MediaML/MLModel.swift";
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v3 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  v13 = *(v10 - 8);
  v11 = v10 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v14 = &v3 - v12;
  (*(v13 + 16))();
  DataFrame.subscript.getter();
  Column.subscript.getter();
  v19 = v21;
  v20 = v22;
  (*(v15 + 8))(v17, v18);
  if (v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v19;
  }

  v3 = v4;
  (*(v13 + 8))(v14, v10);
  return v3;
}

uint64_t implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v2 = DispatchTime.uptimeNanoseconds.getter();
  v0 = DispatchTime.uptimeNanoseconds.getter();
  result = v2;
  if (v2 < v0)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    return Double.init<A>(_:)();
  }

  return result;
}

uint64_t CellularModel.deinit()
{
  v5 = OBJC_IVAR____TtC7MediaML13CellularModel_targetColumnID;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData8ColumnIDVySdGMd, "n\n");
  (*(*(v1 - 8) + 8))(v0 + v5);
  outlined destroy of Transformer?((v0 + OBJC_IVAR____TtC7MediaML13CellularModel_model));
  v6 = OBJC_IVAR____TtC7MediaML13CellularModel_cellParametersURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v6);
  v7 = OBJC_IVAR____TtC7MediaML13CellularModel_estimator;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CreateMLComponents25UpdatableTabularEstimatorPAAE9appendingyQrqd__AA0c10SuperviseddE0Rd__SQ10AnnotationRpd__lFQOyAA14ColumnSelectorVyAA13OneHotEncoderVySSGSSG_AA20BoostedTreeRegressorVySdGQo_Md, "p\n");
  (*(*(v3 - 8) + 8))(v0 + v7);
  swift_defaultActor_destroy();
  return v8;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t a1)
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed Event) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of DataFrame?(uint64_t a1)
{
  v3 = type metadata accessor for DataFrame();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>;
  if (!lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>;
  if (!lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMd, &_s18CreateMLComponents26ComposedTabularTransformerVyAA014ColumnSelectorE0VyAA13OneHotEncoderV0E0VySS_GSSGAA18TreeRegressorModelVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ComposedTabularTransformer<ColumnSelectorTransformer<OneHotEncoder<String>.Transformer, String>, TreeRegressorModel> and conformance ComposedTabularTransformer<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_11TabularData7CSVTypeOt_Tt0gq5(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(uint64_t a1)
{
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v28);
  v31 = &v15 - v30;
  if (specialized Array.count.getter(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11TabularData7CSVTypeOGMd, &_ss18_DictionaryStorageCySS11TabularData7CSVTypeOGMR);
    v27 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];

    v27 = v26;
  }

  v24 = v27;

  result = specialized Array._getCount()(v28);
  v25 = result;
  if (result)
  {
    v23 = &v31[*(v29 + 48)];
    if (v25 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; i = v20)
      {
        v19 = i;
        IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
        specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(v19, IsNativeType & 1, v28, v31);
        v20 = v19 + 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(*v31, *(v31 + 1));
        v21 = result;
        if (v4)
        {
          break;
        }

        v5 = v24;
        v6 = v21;
        v7 = v31;
        *(v24 + 64 + 8 * (v21 / 0x40)) |= 1 << ((v21 % 0x40) & 0x3F);
        v8 = (*(v5 + 48) + 16 * v6);
        v9 = *v7;
        v10 = *(v7 + 1);
        *v8 = v9;
        v8[1] = v10;
        v16 = *(v5 + 56);
        v17 = *(type metadata accessor for CSVType() - 8);
        result = (*(v17 + 32))(v16 + v21 * *(v17 + 72), v23);
        v11 = *(v24 + 16);
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_17;
        }

        v13 = v20;
        v14 = v25;
        *(v24 + 16) = v18;
        if (v13 == v14)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_14:

    return v24;
  }

  return result;
}

uint64_t default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v6 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(inited, 10);
  v5 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v5[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#N/A", 4uLL, 1);
  v5[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#N/A N/A", 8uLL, 1);
  v5[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#NA", 3uLL, 1);
  v5[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("N/A", 3uLL, 1);
  v5[5] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NA", 2uLL, 1);
  v5[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NULL", 4uLL, 1);
  v5[7] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("n/a", 3uLL, 1);
  v5[8] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
  v5[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("null", 4uLL, 1);
  specialized _finalizeUninitializedArray<A>(_:)();
  if (specialized Array._getCount()(v6))
  {
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(v6);
  }

  v3 = MEMORY[0x277D84FA0];

  return v3;
}

uint64_t default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v6 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(inited, 4);
  v5 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("1", 1uLL, 1);
  v5[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("True", 4uLL, 1);
  v5[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TRUE", 4uLL, 1);
  v5[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("true", 4uLL, 1);
  specialized _finalizeUninitializedArray<A>(_:)();
  if (specialized Array._getCount()(v6))
  {
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(v6);
  }

  v3 = MEMORY[0x277D84FA0];

  return v3;
}

uint64_t default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v6 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(inited, 4);
  v5 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("0", 1uLL, 1);
  v5[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("False", 5uLL, 1);
  v5[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FALSE", 5uLL, 1);
  v5[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("false", 5uLL, 1);
  specialized _finalizeUninitializedArray<A>(_:)();
  if (specialized Array._getCount()(v6))
  {
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(v6);
  }

  v3 = MEMORY[0x277D84FA0];

  return v3;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(uint64_t a1)
{
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v21 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];

    v21 = v20;
  }

  v19 = specialized Array._getCount()(a1);
  if (!v19)
  {

    return v21;
  }

  v18 = 0;
  while (2)
  {
    IsNativeType = specialized Array._hoistableIsNativeTypeChecked()();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v18, IsNativeType & 1, a1);
    result = specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(v18, IsNativeType & 1, a1);
    v16 = result;
    v17 = v2;
    if (!__OFADD__(v18, 1))
    {
      v4 = *(v21 + 40);
      Hasher.init(_seed:)();
      memcpy(__dst, v24, sizeof(__dst));
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = (1 << (*(v21 + 32) & 0x3F)) - 1;
      for (i = result & v13; (*(v21 + 56 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
      {
        v5 = (*(v21 + 48) + 16 * i);
        v10 = *v5;
        v11 = v5[1];

        v12 = MEMORY[0x259C87470](v10, v11, v16, v17);

        result = v12;
        if (v12)
        {

          goto LABEL_20;
        }
      }

      *(v21 + 56 + 8 * (i / 0x40)) |= 1 << ((i % 0x40) & 0x3F);
      v6 = (*(v21 + 48) + 16 * i);
      *v6 = v16;
      v6[1] = v17;
      v7 = *(v21 + 16);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }

      *(v21 + 16) = v9;
LABEL_20:
      if (v18 + 1 != v19)
      {
        ++v18;
        continue;
      }

      return v21;
    }

    break;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Array._hoistableIsNativeTypeChecked()()
{
  return 1;
}

{
  return 1;
}

uint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a3 + 32 + 16 * a1);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

  else
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)(a1, a3);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = static String._createEmpty(withInitialCapacity:)(82);
    v9 = v2;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1)._countAndFlagsBits;
    MEMORY[0x259C874A0](countAndFlagsBits);

    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("String", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x259C874A0](v4);

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, 1)._countAndFlagsBits;
    MEMORY[0x259C874A0](v5);

    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    MEMORY[0x259C874A0](v6);

    MEMORY[0x259C87440](v8, v9);
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  outlined destroy of String(v10);
  return v7;
}

uint64_t static String._createEmpty(withInitialCapacity:)(Swift::Int a1)
{

  if (a1 > 15)
  {
    _StringGuts.grow(_:)(a1);
  }

  return 0;
}

char *specialized Array._getElement(_:wasNativeTypeChecked:matchingSubscriptCheck:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
    return outlined init with copy of (String, CSVType)((a3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1 * *(*(v5 - 8) + 72)), a4);
  }

  else
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(a1, a3);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
    if (*(*(result - 1) + 64) == 8)
    {
      v10 = v6;
      outlined init with copy of (String, CSVType)(&v10, a4);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  Hasher.init(_seed:)();
  memcpy(__dst, v9, sizeof(__dst));
  String.hash(into:)();
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v20 = a2;
  v21 = "Fatal error";
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v22);
  v25 = v10 - v24;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v22 >= *(v20 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v19 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v22);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = v19;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v3 = static String._createEmpty(withInitialCapacity:)(82);
    v12 = &v26;
    v26 = v3;
    v27 = v4;
    v11 = 1;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1);
    v10[0] = v5._object;
    MEMORY[0x259C874A0](v5._countAndFlagsBits);

    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(String, CSVType)", 0x11uLL, v11 & 1);
    v10[1] = v6._object;
    MEMORY[0x259C874A0](v6._countAndFlagsBits);

    v18 = 11;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" but found ", 0xBuLL, v11 & 1);
    object = v7._object;
    MEMORY[0x259C874A0](v7._countAndFlagsBits);

    swift_getObjectType();
    v17 = 0;
    v8 = _typeName(_:qualified:)();
    v14 = v9;
    MEMORY[0x259C874A0](v8);

    v15 = v26;
    v16 = v27;

    MEMORY[0x259C87440](v15, v16);
    _assertionFailure(_:_:flags:)();
    __break(1u);
  }

  outlined destroy of (String, CSVType)(v25);
  return v19;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];

    v9 = MEMORY[0x259C87470](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0]();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for URL();
  v1 = lazy protocol witness table accessor for type URL and conformance URL();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  v2 = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type URL and conformance URL);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Column<Double> and conformance Column<A>()
{
  v2 = lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>;
  if (!lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Double?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdSgGMd, &_sSaySdSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of [Double?](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

void *__swift_deallocate_boxed_opaque_existential_1(void *result)
{
  v1 = result[3];
  v2 = *(*(v1 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return MEMORY[0x259C88020](*result, ((v2 + 16) & ~v2) + *(*(v1 - 8) + 64), v2 | 7);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in WifiModel.readModelFile()()
{
  result = *(v0 + 16);
  implicit closure #1 in WifiModel.readModelFile()();
  return result;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a4();
  v8 = *a1;
  (MEMORY[0x277D82BE0])();
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v9);
    *v5 = v9;
    result = MEMORY[0x277D82BD8](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x277D82BD8](v9);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *outlined destroy of TabularTransformer?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

double partial apply for implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v4 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + ((v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return implicit closure #1 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)(v0 + v1, v2);
}

uint64_t partial apply for implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)()
{
  v3 = *(type metadata accessor for DispatchTime() - 8);
  v1 = v0 + ((((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80));

  return implicit closure #2 in WifiModel.predict(ssid:appName:hour:dow:rssi:noise:txRate:rxRate:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for URL();
  v1 = lazy protocol witness table accessor for type URL and conformance URL();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t partial apply for implicit closure #1 in CellularModel.readModelFile()()
{
  result = *(v0 + 16);
  implicit closure #1 in CellularModel.readModelFile()();
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

uint64_t closure #1 in OSLogArguments.append(_:)partial apply(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  v4 = *(v3 + 24);
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

double partial apply for implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v4 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + ((v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return implicit closure #1 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)(v0 + v1, v2);
}

uint64_t partial apply for implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)()
{
  v3 = *(type metadata accessor for DispatchTime() - 8);
  v1 = v0 + ((((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80));

  return implicit closure #2 in CellularModel.predict(carrier:appName:binned_rssi:binned_rsrp:binned_rsrq:binned_rscp:binned_snr:bars:)();
}

uint64_t getEnumTagSinglePayload for ModelStats(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 80))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3)
    {
      *(result + 80) = 1;
    }
  }

  else if (a3)
  {
    *(result + 80) = 0;
  }

  return result;
}

uint64_t type metadata accessor for WifiModel()
{
  v1 = type metadata singleton initialization cache for WifiModel;
  if (!type metadata singleton initialization cache for WifiModel)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for WifiModel()
{
  v6 = type metadata accessor for URL();
  updated = v6;
  if (v0 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    v5 = type metadata accessor for ColumnID<Double>();
    updated = v5;
    if (v1 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      v4 = type metadata accessor for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0();
      updated = v4;
      if (v2 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t type metadata accessor for ColumnID<Double>()
{
  v4 = lazy cache variable for type metadata for ColumnID<Double>;
  if (!lazy cache variable for type metadata for ColumnID<Double>)
  {
    v3 = type metadata accessor for ColumnID();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for ColumnID<Double>);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0()
{
  v4 = lazy cache variable for type metadata for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0;
  if (!lazy cache variable for type metadata for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMd, &_s18CreateMLComponents14ColumnSelectorVyAA13OneHotEncoderVySSGSSGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18CreateMLComponents20BoostedTreeRegressorVySdGMd, &_s18CreateMLComponents20BoostedTreeRegressorVySdGMR);
    lazy protocol witness table accessor for type ColumnSelector<OneHotEncoder<String>, String> and conformance <> ColumnSelector<A, B>();
    lazy protocol witness table accessor for type BoostedTreeRegressor<Double> and conformance BoostedTreeRegressor<A>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v4 = OpaqueTypeMetadata2;
    if (!v0)
    {
      v1 = OpaqueTypeMetadata2;
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CellularModel()
{
  v1 = type metadata singleton initialization cache for CellularModel;
  if (!type metadata singleton initialization cache for CellularModel)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for CellularModel()
{
  v6 = type metadata accessor for ColumnID<Double>();
  updated = v6;
  if (v0 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    v5 = type metadata accessor for URL();
    updated = v5;
    if (v1 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      v4 = type metadata accessor for <<opaque return type of UpdatableTabularEstimator.appending<A>(_:)>>.0();
      updated = v4;
      if (v2 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type MetricsKey and conformance MetricsKey()
{
  v2 = lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey;
  if (!lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey)
  {
    type metadata accessor for MetricsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of Sendable?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

char *outlined init with copy of (String, CSVType)(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR) + 48);
  v2 = type metadata accessor for CSVType();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t outlined destroy of (String, CSVType)(uint64_t a1)
{
  v1 = *(a1 + 8);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11TabularData7CSVTypeOtMd, &_sSS_11TabularData7CSVTypeOtMR) + 48);
  v2 = type metadata accessor for CSVType();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t one-time initialization function for dbPath()
{
  v11 = type metadata accessor for URL();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v11);
  v1 = &v4 - v4;
  v10 = &v4 - v4;
  v5 = dbPath;
  __swift_allocate_value_buffer(v0, dbPath);
  v6 = __swift_project_value_buffer(v11, v5);
  v2 = mediaMLDataDirectory.unsafeMutableAddressor();
  (*(v8 + 16))(v1, v2, v11);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rawdata.db", 0xAuLL, 1)._object;
  URL.appendingPathComponent(_:isDirectory:)();

  return (*(v8 + 8))(v10, v11);
}

uint64_t dbPath.unsafeMutableAddressor()
{
  if (one-time initialization token for dbPath != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, dbPath);
}

uint64_t WiFiDataPointForWriting.sessionID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t WiFiDataPointForWriting.appName.getter()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v2;
}

uint64_t WiFiDataPointForWriting.bucketedSSID.getter()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v2;
}

void __swiftcall WiFiDataPointForWriting.init(sessionID:timestamp:appName:bucketedSSID:hour:dow:rssi:cca:snr:noise:txRate:rxRate:throughputTrue:)(MediaML::WiFiDataPointForWriting *__return_ptr retstr, Swift::String sessionID, Swift::Double timestamp, Swift::String appName, Swift::String bucketedSSID, Swift::Int hour, Swift::Int dow, Swift::Int rssi, Swift::Int cca, Swift::Int snr, Swift::Int noise, Swift::Double txRate, Swift::Double rxRate, Swift::Double throughputTrue)
{
  __src[0] = sessionID;
  *&__src[1]._countAndFlagsBits = timestamp;
  *&__src[1]._object = appName;
  *&__src[2]._object = bucketedSSID;
  __src[3]._object = hour;
  __src[4]._countAndFlagsBits = dow;
  __src[4]._object = rssi;
  __src[5]._countAndFlagsBits = cca;
  __src[5]._object = snr;
  __src[6]._countAndFlagsBits = noise;
  *&__src[6]._object = txRate;
  *&__src[7]._countAndFlagsBits = rxRate;
  *&__src[7]._object = throughputTrue;
  memcpy(retstr, __src, sizeof(MediaML::WiFiDataPointForWriting));
}

uint64_t CellDataPointForWriting.sessionID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t CellDataPointForWriting.appName.getter()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v2;
}

uint64_t CellDataPointForWriting.carrier.getter()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v2;
}

void __swiftcall CellDataPointForWriting.init(sessionID:timestamp:appName:carrier:hour:dow:rssi:rsrp:rscp:rsrq:snr:bars:throughputTrue:)(MediaML::CellDataPointForWriting *__return_ptr retstr, Swift::String sessionID, Swift::Double timestamp, Swift::String appName, Swift::String carrier, Swift::Int hour, Swift::Int dow, Swift::Int rssi, Swift::Int rsrp, Swift::Int rscp, Swift::Int rsrq, Swift::Double snr, Swift::Int bars, Swift::Double throughputTrue)
{
  __src[0] = sessionID;
  *&__src[1]._countAndFlagsBits = timestamp;
  *&__src[1]._object = appName;
  *&__src[2]._object = carrier;
  __src[3]._object = hour;
  __src[4]._countAndFlagsBits = dow;
  __src[4]._object = rssi;
  __src[5]._countAndFlagsBits = rsrp;
  __src[5]._object = rscp;
  __src[6]._countAndFlagsBits = rsrq;
  *&__src[6]._object = snr;
  __src[7]._countAndFlagsBits = bars;
  *&__src[7]._object = throughputTrue;
  memcpy(retstr, __src, sizeof(MediaML::CellDataPointForWriting));
}

uint64_t WiFiDataPointForPrediciton.appName.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t WiFiDataPointForPrediciton.bucketedSSID.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

void __swiftcall WiFiDataPointForPrediciton.init(appName:bucketedSSID:hour:dow:rssi:noise:txRate:rxRate:)(MediaML::WiFiDataPointForPrediciton *__return_ptr retstr, Swift::String appName, Swift::String bucketedSSID, Swift::Int hour, Swift::Int dow, Swift::Int rssi, Swift::Int noise, Swift::Double txRate, Swift::Double rxRate)
{
  __src[0] = appName;
  __src[1] = bucketedSSID;
  __src[2]._countAndFlagsBits = hour;
  __src[2]._object = dow;
  __src[3]._countAndFlagsBits = rssi;
  __src[3]._object = noise;
  *&__src[4]._countAndFlagsBits = txRate;
  *&__src[4]._object = rxRate;
  memcpy(retstr, __src, sizeof(MediaML::WiFiDataPointForPrediciton));
}

uint64_t CellDataPointForPrediction.appName.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t CellDataPointForPrediction.carrier.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

void __swiftcall CellDataPointForPrediction.init(appName:carrier:binnedRssi:binnedRsrp:binnedRscp:binnedRsrq:binnedSnr:bars:)(MediaML::CellDataPointForPrediction *__return_ptr retstr, Swift::String appName, Swift::String carrier, Swift::Int binnedRssi, Swift::Int binnedRsrp, Swift::Int binnedRscp, Swift::Int binnedRsrq, Swift::Int binnedSnr, Swift::Int bars)
{
  __src[0] = appName;
  __src[1] = carrier;
  __src[2]._countAndFlagsBits = binnedRssi;
  __src[2]._object = binnedRsrp;
  __src[3]._countAndFlagsBits = binnedRscp;
  __src[3]._object = binnedRsrq;
  __src[4]._countAndFlagsBits = binnedSnr;
  __src[4]._object = bars;
  memcpy(retstr, __src, sizeof(MediaML::CellDataPointForPrediction));
}

uint64_t DataWriter.database.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t DataWriter.database.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t DataWriter.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static DataWriter.logger);
}

uint64_t static DataWriter.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = DataWriter.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t DataWriter.__allocating_init()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = DataWriter.__allocating_init();

  return DataWriter.init()();
}

uint64_t DataWriter.__allocating_init()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t DataWriter.init()()
{
  v1[9] = v0;
  v1[10] = *v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v2 = type metadata accessor for Logger();
  v1[11] = v2;
  v6 = *(v2 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = *(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v4 = v1[2];

  return MEMORY[0x2822009F8](DataWriter.init(), 0, 0);
}

{
  v9 = v0[15];
  v5 = v0[9];
  v0[2] = v0;
  v0[3] = v5;
  swift_defaultActor_initialize();
  *(v5 + 120) = 1;
  type metadata accessor for SQLiteDB();
  v6 = dbPath.unsafeMutableAddressor();
  v8 = type metadata accessor for URL();
  v7 = *(v8 - 8);
  (*(v7 + 16))(v9, v6);
  (*(v7 + 56))(v9, 0, 1, v8);
  *(v4[9] + 112) = SQLiteDB.__allocating_init(_:)(v9);
  v1 = swift_task_alloc();
  v4[16] = v1;
  *v1 = v4[2];
  v1[1] = DataWriter.init();
  v2 = v4[9];

  return DataWriter.createTables()();
}

{
  v17 = *v1;
  v2 = *(*v1 + 128);
  v17[2] = *v1;
  v18 = v17 + 2;
  v17[17] = v0;

  if (v0)
  {
    v13 = v17[9];

    v17[19] = lazy protocol witness table accessor for type DataWriter and conformance DataWriter();
    if (v13)
    {
      swift_getObjectType();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v8;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v4 = v11;
    v5 = v12;
    v9 = *v18;
    v7 = DataWriter.init();
  }

  else
  {
    v16 = v17[9];

    v17[18] = lazy protocol witness table accessor for type DataWriter and conformance DataWriter();
    if (v16)
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v3;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v4 = v14;
    v5 = v15;
    v6 = *v18;
    v7 = DataWriter.init();
  }

  return MEMORY[0x2822009F8](v7, v4, v5);
}

{
  v1 = v0[14];
  v20 = v0[12];
  v21 = v0[11];
  v2 = v0[9];
  v0[2] = v0;
  swift_unknownObjectRelease();
  v3 = DataWriter.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v1, v3, v21);
  v23 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v23, v22))
  {
    v4 = *(v19 + 136);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 40) = buf;
    *(v19 + 48) = v16;
    *(v19 + 56) = v17;
    serialize(_:at:)(0, (v19 + 40));
    serialize(_:at:)(0, (v19 + 40));
    *(v19 + 64) = v24;
    v18 = swift_task_alloc();
    v18[2] = v19 + 40;
    v18[3] = v19 + 48;
    v18[4] = v19 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v4)
    {
    }

    _os_log_impl(&dword_2586A4000, v23, v22, "DataWriter created successfully!", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = *(v19 + 120);
  v12 = *(v19 + 112);
  v13 = *(v19 + 104);
  v10 = *(v19 + 88);
  v9 = *(v19 + 96);
  MEMORY[0x277D82BD8](v23);
  (*(v9 + 8))(v12, v10);

  v6 = *(*(v19 + 16) + 8);
  v7 = *(v19 + 16);
  v8 = *(v19 + 72);

  return v6(v8);
}

{
  v37 = v0;
  v1 = v0[9];
  v0[2] = v0;
  swift_unknownObjectRelease();
  v22 = v0[17];
  v2 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  MEMORY[0x259C87ED0]();
  v0[4] = v22;
  v3 = DataWriter.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v2, v3, v21);
  MEMORY[0x259C87ED0](v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in DataWriter.init();
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesys5Error_pyXA_AA0B7PrivacyVSStFSo8NSObjectCycfu_TA_0;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = _s2os18OSLogInterpolationV06appendC0_7privacy10attributesySo8NSObjectCyXA_AA0B7PrivacyVSStFAHSgycfu_TA_0;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
  v29[1] = v26;

  v29[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[3] = v27;

  v29[4] = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1);
    v18 = createStorage<A>(capacity:type:)(0);
    v32 = buf;
    v33 = v17;
    v34 = v18;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_0;
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_2586A4000, v30, v31, "DataWrite creation failed with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v19[13];
  v14 = v19[11];
  v12 = v19[12];
  MEMORY[0x277D82BD8](v30);
  (*(v12 + 8))(v13, v14);
  swift_willThrow();
  MEMORY[0x259C87EC0](v22);
  v5 = v19[9];

  v6 = v19[15];
  v10 = v19[14];
  v11 = v19[13];

  v7 = *(v19[2] + 8);
  v8 = v19[2];

  return v7();
}

uint64_t DataWriter.createTables()()
{
  v12 = *MEMORY[0x277D85DE8];
  v1[80] = v0;
  v1[58] = v1;
  v1[59] = 0;
  v1[56] = 0;
  v1[57] = 0;
  v1[60] = 0;
  v1[62] = 0;
  v1[63] = 0;
  v1[65] = 0;
  v1[66] = 0;
  v1[68] = 0;
  v1[70] = 0;
  v2 = *(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15;
  v1[81] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[82] = v3;
  v8 = *(v3 - 8);
  v1[83] = v8;
  v9 = *(v8 + 64);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[86] = v4;
  v10 = *(v4 - 8);
  v1[87] = v10;
  v11 = *(v10 + 64);
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[59] = v0;
  *MEMORY[0x277D85DE8];
  v5 = v1[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v6 = *MEMORY[0x277D85DE8];
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREATE TABLE IF NOT EXISTS admin (\n\tversion INTEGER NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS processedwifi (\n\tsession_id TEXT NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tssid TEXT NOT NULL,\n\thour INT NOT NULL,\n\tdow INT NOT NULL,\n\trssi INT NOT NULL,\n\tnoise INT NOT NULL,\n\ttx_rate DOUBLE NOT NULL,\n\trx_rate DOUBLE NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS wifi (\n\tsession_id TEXT NOT NULL,\n\ttimestamp DOUBLE NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tssid TEXT NOT NULL,\n\thour INT NOT NULL,\n\tdow INT NOT NULL,\n\trssi INT NOT NULL,\n\tcca INT NOT NULL,\n\tnoise INT NOT NULL,\n\tsnr INT NOT NULL,\n\ttx_rate DOUBLE NOT NULL,\n\trx_rate DOUBLE NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS cell (\n\tsession_id TEXT NOT NULL,\n\ttimestamp DOUBLE NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tcarrier TEXT NOT NULL,\n\thour INT NOT NULL,\n\tdow INT NOT NULL,\n\trssi INT NOT NULL,\n\trsrp INT NOT NULL,\n\trscp INT NOT NULL,\n\trsrq INT NOT NULL,\n\tsnr INT NOT NULL,\n\tbars INT NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS processedcell (\n\tcarrier TEXT NOT NULL,\n\tapp_name TEXT NOT NULL,\n\tbinned_rssi INT NOT NULL,\n\tbinned_rsrp INT NOT NULL,\n\tbinned_rscp INT NOT NULL,\n\tbinned_rsrq INT NOT NULL,\n\tbinned_snr INT NOT NULL,\n\tbars INT NOT NULL,\n\tcount INT NOT NULL,\n\tthroughput_true DOUBLE NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS modelStats (\n\tinterfaceType Int NOT NULL,\n\ttrainingRowCount Int NOT NULL,\n\tvalidationRowCount INT NOT NULL,\n\tcarrierCount INT NOT NULL,\n\tssidCount INT NOT NULL,\n\tappNameCount INT NOT NULL,\n\tsessionIDCount INT NOT NULL,\n\ttrainingMAPE DOUBLE NOT NULL,\n\tvalidationMAPE DOUBLE NOT NULL,\n\ttrainingDate INT NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS wifiStdDev (\n\tapp_name TEXT NOT NULL,\n\tssid TEXT NOT NULL,\n\tthroughput_stddev DOUBLE NOT NULL,\n\ttraining_date INT NOT NULL\n);\n\nCREATE TABLE IF NOT EXISTS cellStdDev (\n\tapp_name TEXT NOT NULL,\n\tcarrier TEXT NOT NULL,\n\tbars INT NOT NULL,\n\tthroughput_stddev DOUBLE NOT NULL,\n\ttraining_date INT NOT NULL\n);", 0x7DFuLL, 1);
  v0[46] = v1;
  v0[28] = v1;
  swift_beginAccess();
  v5 = *(countAndFlagsBits + 112);
  v0[47]._countAndFlagsBits = v5;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[29]._countAndFlagsBits;

  return MEMORY[0x2822009F8](DataWriter.createTables(), v5, 0);
}

{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 752);
  v2 = *(v0 + 736);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v2);
  *(v0 + 760) = v3;
  if (v3)
  {
    v8 = __OFSUB__(*MEMORY[0x277D85DE8], v13);
    v5 = v12[80];
    v6 = DataWriter.createTables();
    v9 = v12[58];
  }

  else
  {
    v4 = v12[94];
    v11 = v12[80];

    *MEMORY[0x277D85DE8];
    v5 = v11;
    v6 = DataWriter.createTables();
    v7 = v12[58];
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 640);
  *(v0 + 464) = v0;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v0 + 768) = v4;

  swift_endAccess();
  *(v0 + 776) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from wifi", 0x19uLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = *(v0 + 464);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #1 in DataWriter.createTables());
  v0[99] = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[98];
    v13 = v14[96];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v30 = *MEMORY[0x277D85DE8];
  v0[58] = v0;
  v29 = v0[61];
  v0[63] = v29;
  if (v29 < *MAX_ALLOWED_RAW_DATASIZE.unsafeMutableAddressor())
  {
    *(v28 + 904) = *(v28 + 792);
    v10 = *(v28 + 640);
    swift_beginAccess();
    v11 = *(v10 + 112);
    *(v28 + 912) = v11;

    swift_endAccess();
    *(v28 + 920) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from cell", 0x19uLL, 1);
    *MEMORY[0x277D85DE8];
    v6 = v11;
    v7 = DataWriter.createTables();
    v9 = *(v28 + 464);
  }

  else
  {
    v1 = *(v28 + 728);
    v24 = *(v28 + 688);
    v23 = *(v28 + 696);
    v2 = DataWriter.logger.unsafeMutableAddressor();
    (*(v23 + 16))(v1, v2, v24);
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      v3 = *(v28 + 792);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v20 = createStorage<A>(capacity:type:)(0);
      v21 = createStorage<A>(capacity:type:)(0);
      *(v28 + 608) = buf;
      *(v28 + 616) = v20;
      *(v28 + 624) = v21;
      serialize(_:at:)(0, (v28 + 608));
      serialize(_:at:)(0, (v28 + 608));
      *(v28 + 632) = v27;
      v22 = swift_task_alloc();
      v22[2] = v28 + 608;
      v22[3] = v28 + 616;
      v22[4] = v28 + 624;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v3)
      {

        v5 = __OFSUB__(*MEMORY[0x277D85DE8], v30);
        return result;
      }

      _os_log_impl(&dword_2586A4000, v26, v25, "Wifi raw data too large, deleting...", buf, 2u);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

      v17 = 0;
    }

    else
    {

      v17 = *(v28 + 792);
    }

    *(v28 + 800) = v17;
    v13 = *(v28 + 728);
    v14 = *(v28 + 688);
    v15 = *(v28 + 640);
    v12 = *(v28 + 696);
    MEMORY[0x277D82BD8](v26);
    (*(v12 + 8))(v13, v14);
    swift_beginAccess();
    v16 = *(v15 + 112);
    *(v28 + 808) = v16;

    swift_endAccess();
    *(v28 + 816) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM wifi", 0x10uLL, 1);
    v5 = __OFSUB__(*MEMORY[0x277D85DE8], v30);
    v6 = v16;
    v7 = DataWriter.createTables();
    v8 = *(v28 + 464);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 832) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[103];
    v13 = v14[101];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v4 = *(countAndFlagsBits + 112);
  v0[52]._object = v4;

  swift_endAccess();
  v0[53] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = v0[29]._countAndFlagsBits;

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 864) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[107];
    v13 = v14[105];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v4 = *(countAndFlagsBits + 112);
  v0[54]._object = v4;

  swift_endAccess();
  v0[55] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = v0[29]._countAndFlagsBits;

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 896) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[111];
    v13 = v14[109];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  *(v0 + 464) = v0;
  *(v0 + 904) = *(v0 + 896);
  v3 = *(v0 + 640);
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v0 + 912) = v4;

  swift_endAccess();
  *(v0 + 920) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from cell", 0x19uLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = *(v0 + 464);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in DataWriter.createTables());
  v0[117] = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[116];
    v13 = v14[114];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v30 = *MEMORY[0x277D85DE8];
  v0[58] = v0;
  v29 = v0[64];
  v0[66] = v29;
  if (v29 < *MAX_ALLOWED_RAW_DATASIZE.unsafeMutableAddressor())
  {
    *(v28 + 1048) = *(v28 + 936);
    v10 = *(v28 + 640);
    swift_beginAccess();
    v11 = *(v10 + 112);
    *(v28 + 1056) = v11;

    swift_endAccess();
    *(v28 + 1064) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT version FROM admin", 0x19uLL, 1);
    *MEMORY[0x277D85DE8];
    v6 = v11;
    v7 = DataWriter.createTables();
    v9 = *(v28 + 464);
  }

  else
  {
    v1 = *(v28 + 720);
    v24 = *(v28 + 688);
    v23 = *(v28 + 696);
    v2 = DataWriter.logger.unsafeMutableAddressor();
    (*(v23 + 16))(v1, v2, v24);
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      v3 = *(v28 + 936);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v20 = createStorage<A>(capacity:type:)(0);
      v21 = createStorage<A>(capacity:type:)(0);
      *(v28 + 576) = buf;
      *(v28 + 584) = v20;
      *(v28 + 592) = v21;
      serialize(_:at:)(0, (v28 + 576));
      serialize(_:at:)(0, (v28 + 576));
      *(v28 + 600) = v27;
      v22 = swift_task_alloc();
      v22[2] = v28 + 576;
      v22[3] = v28 + 584;
      v22[4] = v28 + 592;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v3)
      {

        v5 = __OFSUB__(*MEMORY[0x277D85DE8], v30);
        return result;
      }

      _os_log_impl(&dword_2586A4000, v26, v25, "Cell raw data too large, deleting...", buf, 2u);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

      v17 = 0;
    }

    else
    {

      v17 = *(v28 + 936);
    }

    *(v28 + 944) = v17;
    v13 = *(v28 + 720);
    v14 = *(v28 + 688);
    v15 = *(v28 + 640);
    v12 = *(v28 + 696);
    MEMORY[0x277D82BD8](v26);
    (*(v12 + 8))(v13, v14);
    swift_beginAccess();
    v16 = *(v15 + 112);
    *(v28 + 952) = v16;

    swift_endAccess();
    *(v28 + 960) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM cell", 0x10uLL, 1);
    v5 = __OFSUB__(*MEMORY[0x277D85DE8], v30);
    v6 = v16;
    v7 = DataWriter.createTables();
    v8 = *(v28 + 464);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 976) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[121];
    v13 = v14[119];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v4 = *(countAndFlagsBits + 112);
  v0[61]._object = v4;

  swift_endAccess();
  v0[62] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = v0[29]._countAndFlagsBits;

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 1008) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[125];
    v13 = v14[123];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  countAndFlagsBits = v0[40]._countAndFlagsBits;
  v0[29]._countAndFlagsBits = v0;
  swift_beginAccess();
  v4 = *(countAndFlagsBits + 112);
  v0[63]._object = v4;

  swift_endAccess();
  v0[64] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = v0[29]._countAndFlagsBits;

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 1040) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[129];
    v13 = v14[127];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  *(v0 + 464) = v0;
  *(v0 + 1048) = *(v0 + 1040);
  v3 = *(v0 + 640);
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v0 + 1056) = v4;

  swift_endAccess();
  *(v0 + 1064) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT version FROM admin", 0x19uLL, 1);
  *MEMORY[0x277D85DE8];
  v1 = *(v0 + 464);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #3 in DataWriter.createTables());
  v0[135] = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v15);
    v6 = v14[80];
    v7 = DataWriter.createTables();
    v10 = v14[58];
  }

  else
  {
    v5 = v14[134];
    v13 = v14[132];
    v12 = v14[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v14[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v55 = v0;
  v54 = *MEMORY[0x277D85DE8];
  v1 = v0[80];
  v0[58] = v0;
  v48 = v0[67];
  v0[68] = v48;
  if (v48 == *(v1 + 120))
  {
    v11 = v47[93];
    v15 = v47[91];
    v16 = v47[90];
    v17 = v47[89];
    v18 = v47[88];
    v19 = v47[85];
    v20 = v47[84];
    v21 = v47[81];

    v12 = *MEMORY[0x277D85DE8] - v54;
    v13 = *(v47[58] + 8);
    v14 = v47[58];

    return v13();
  }

  else
  {
    v2 = v47[89];
    v33 = v47[86];
    v36 = v47[80];
    v32 = v47[87];
    v3 = DataWriter.logger.unsafeMutableAddressor();
    v4 = *(v32 + 16);
    v47[136] = v4;
    v47[137] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v2, v3, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = v48;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #1 in DataWriter.createTables();
    *(v35 + 24) = v34;
    v40 = swift_allocObject();
    *(v40 + 16) = _sSiIegd_SiIegr_TRTA_2;
    *(v40 + 24) = v35;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #2 in DataWriter.createTables();
    *(v37 + 24) = v36;
    v43 = swift_allocObject();
    *(v43 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v43 + 24) = v37;
    v47[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v44 = v5;

    *v44 = closure #1 in OSLogArguments.append(_:)partial apply;
    v44[1] = v38;

    v44[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v44[3] = v39;

    v44[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
    v44[5] = v40;

    v44[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v44[7] = v41;

    v44[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v44[9] = v42;

    v44[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v44[11] = v43;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v45, v46))
    {
      v6 = v47[135];
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0);
      v31 = createStorage<A>(capacity:type:)(0);
      v49 = buf;
      v52 = v30;
      v53 = v31;
      serialize(_:at:)(0, &v49);
      serialize(_:at:)(2, &v49);
      v50 = closure #1 in OSLogArguments.append(_:)partial apply;
      v51 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v49, &v52, &v53);
      if (v6)
      {

        v8 = __OFSUB__(*MEMORY[0x277D85DE8], v54);
        return result;
      }

      v50 = closure #1 in OSLogArguments.append(_:)partial apply;
      v51 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v49, &v52, &v53);
      v50 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2;
      v51 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v49, &v52, &v53);
      v50 = closure #1 in OSLogArguments.append(_:)partial apply;
      v51 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v49, &v52, &v53);
      v50 = closure #1 in OSLogArguments.append(_:)partial apply;
      v51 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v49, &v52, &v53);
      v50 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v51 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v49, &v52, &v53);
      _os_log_impl(&dword_2586A4000, v45, v46, "DB Version mis-match %ld != %ld, deleting old DB...", buf, 0x16u);
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v31, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);

      v27 = 0;
    }

    else
    {

      v27 = v47[135];
    }

    v47[139] = v27;
    v23 = v47[89];
    v24 = v47[86];
    v25 = v47[80];
    v22 = v47[87];
    MEMORY[0x277D82BD8](v45);
    v9 = *(v22 + 8);
    v47[140] = v9;
    v47[141] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v23, v24);
    swift_beginAccess();
    v26 = *(v25 + 112);
    v47[142] = v26;

    swift_endAccess();
    v8 = __OFSUB__(*MEMORY[0x277D85DE8], v54);
    v10 = v47[58];

    return MEMORY[0x2822009F8](DataWriter.createTables(), v26, 0);
  }
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[142];
  v4 = v0[80];
  v0[58] = v0;
  SQLiteDB.close()();

  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v44 = *MEMORY[0x277D85DE8];
  v39 = v0[85];
  v1 = v0[84];
  v36 = v0[83];
  v37 = v0[82];
  v0[58] = v0;
  v42 = [objc_opt_self() defaultManager];
  v2 = dbPath.unsafeMutableAddressor();
  v35 = *(v36 + 16);
  v35(v1, v2, v37);
  URL.deletingLastPathComponent()();
  v38 = *(v36 + 8);
  v38(v1, v37);
  URL._bridgeToObjectiveC()(v3);
  v41 = v4;
  v38(v39, v37);
  v0[69] = 0;
  v43 = [v42 removeItemAtURL:v41 error:v0 + 69];
  v40 = v0[69];
  MEMORY[0x277D82BE0](v40);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  if (v43)
  {
    v5 = v34[85];
    v29 = v34[82];
    v32 = [objc_opt_self() defaultManager];
    v6 = mediaMLDataDirectory.unsafeMutableAddressor();
    v35(v5, v6, v29);
    URL._bridgeToObjectiveC()(v7);
    v31 = v8;
    v38(v5, v29);
    v34[71] = 0;
    v33 = [v32 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v34 + 71];
    v30 = v34[71];
    MEMORY[0x277D82BE0](v30);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      v9 = v34[139];
      v26 = v34[82];
      v27 = v34[81];
      v25 = v34[83];
      type metadata accessor for SQLiteDB();
      v10 = dbPath.unsafeMutableAddressor();
      v35(v27, v10, v26);
      (*(v25 + 56))(v27, 0, 1, v26);
      v28 = SQLiteDB.__allocating_init(_:)(v27);
      v34[143] = v9;
      if (!v9)
      {
        v23 = v34[80];
        swift_beginAccess();
        v11 = *(v23 + 112);
        *(v23 + 112) = v28;

        swift_endAccess();
        swift_beginAccess();
        v24 = *(v23 + 112);
        v34[144] = v24;

        swift_endAccess();
        *MEMORY[0x277D85DE8];
        v12 = v24;
        v13 = DataWriter.createTables();
        v14 = v34[58];

        return MEMORY[0x2822009F8](v13, v12, 0);
      }

      v20 = v9;
    }

    else
    {
      v18 = _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v30);
      swift_willThrow();
      v20 = v18;
    }
  }

  else
  {
    v19 = _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v40);
    swift_willThrow();
    v20 = v19;
  }

  v34[155] = v20;
  v21 = v34[80];
  MEMORY[0x259C87ED0]();
  v34[70] = v20;
  swift_beginAccess();
  v22 = *(v21 + 112);
  v34[156] = v22;

  swift_endAccess();
  v15 = __OFSUB__(*MEMORY[0x277D85DE8], v44);
  v12 = v22;
  v13 = DataWriter.createTables();
  v16 = v34[58];

  return MEMORY[0x2822009F8](v13, v12, 0);
}

{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 736);
  *(v0 + 464) = v0;
  SQLiteDB.execute(_:)(v3);
  *(v0 + 1160) = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v14);
    v6 = v13[80];
    v7 = DataWriter.createTables();
    v10 = v13[58];
  }

  else
  {
    v5 = v13[144];
    v12 = v13[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v13[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *(v0 + 640);
  *(v0 + 464) = v0;
  swift_beginAccess();
  v3 = *(v4 + 112);
  *(v0 + 1168) = v3;

  swift_endAccess();
  *(v0 + 1176) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO admin (version) VALUES (?)", 0x26uLL, 1);

  *MEMORY[0x277D85DE8];
  v1 = *(v0 + 464);

  return MEMORY[0x2822009F8](DataWriter.createTables(), v3, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[146];
  v4 = v0[145];
  v5 = v0[80];
  v0[58] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #4 in DataWriter.createTables());
  v0[149] = v4;
  if (v4)
  {
    v9 = __OFSUB__(*MEMORY[0x277D85DE8], v16);
    v6 = v15[80];
    v7 = DataWriter.createTables();
    v10 = v15[58];
  }

  else
  {
    v13 = v15[148];
    v14 = v15[146];
    v12 = v15[80];

    *MEMORY[0x277D85DE8];
    v6 = v12;
    v7 = DataWriter.createTables();
    v8 = v15[58];
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v45 = v0;
  v44 = *MEMORY[0x277D85DE8];
  v36 = v0[138];
  v28 = v0[137];
  v29 = v0[136];
  v1 = v0[88];
  v27 = v0[86];
  v30 = v0[80];
  v0[58] = v0;
  v2 = DataWriter.logger.unsafeMutableAddressor();
  v29(v1, v2, v27);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #3 in DataWriter.createTables();
  *(v31 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v34 + 24) = v31;
  _allocateUninitializedArray<A>(_:)();
  v35 = v3;

  *v35 = closure #1 in OSLogArguments.append(_:)partial apply;
  v35[1] = v32;

  v35[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v35[3] = v33;

  v35[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v37, v38))
  {
    v4 = v26[149];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0);
    v25 = createStorage<A>(capacity:type:)(0);
    v39 = buf;
    v42 = v24;
    v43[0] = v25;
    serialize(_:at:)(0, &v39);
    serialize(_:at:)(1, &v39);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v39, &v42, v43);
    if (v4)
    {

      v6 = __OFSUB__(*MEMORY[0x277D85DE8], v44);
      return result;
    }

    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v39, &v42, v43);
    v40 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v41 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v39, &v42, v43);
    _os_log_impl(&dword_2586A4000, v37, v38, "Created new DB with version=%ld", buf, 0xCu);
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v26[141];
  v14 = v26[140];
  v11 = v26[88];
  v12 = v26[86];
  MEMORY[0x277D82BD8](v37);
  v14(v11, v12);
  v7 = v26[93];
  v15 = v26[91];
  v16 = v26[90];
  v17 = v26[89];
  v18 = v26[88];
  v19 = v26[85];
  v20 = v26[84];
  v21 = v26[81];

  v8 = *MEMORY[0x277D85DE8] - v44;
  v9 = *(v26[58] + 8);
  v10 = v26[58];

  return v9();
}

{
  v7 = *MEMORY[0x277D85DE8];
  v4 = v0[95];
  v1 = v0[94];
  v5 = v0[80];
  v0[58] = v0;

  MEMORY[0x259C87ED0](v4);
  v0[60] = v4;
  swift_beginAccess();
  v6 = *(v5 + 112);
  v0[150] = v6;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v6, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[150];
  v4 = v0[80];
  v0[58] = v0;
  SQLiteDB.close()();

  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v6 = v0[95];
  v7 = v0[93];
  v0[58] = v0;
  swift_willThrow();
  MEMORY[0x259C87EC0](v6);

  v8 = v0[95];
  v1 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[84];
  v14 = v0[81];

  v2 = *MEMORY[0x277D85DE8] - v15;
  v3 = *(v0[58] + 8);
  v4 = v0[58];

  return v3();
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[152];
  v4 = v0[80];
  v0[58] = v0;
  SQLiteDB.close()();

  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v6 = v0[151];
  v7 = v0[93];
  v0[58] = v0;
  swift_willThrow();
  MEMORY[0x259C87EC0](v6);

  v8 = v0[151];
  v1 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[84];
  v14 = v0[81];

  v2 = *MEMORY[0x277D85DE8] - v15;
  v3 = *(v0[58] + 8);
  v4 = v0[58];

  return v3();
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[98];
  v4 = v0[96];
  v0[58] = v0;

  v5 = v0[99];
  v0[151] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[152] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[103];
  v4 = v0[101];
  v0[58] = v0;

  v5 = v0[104];
  v0[151] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[152] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[107];
  v4 = v0[105];
  v0[58] = v0;

  v5 = v0[108];
  v0[151] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[152] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[111];
  v4 = v0[109];
  v0[58] = v0;

  v5 = v0[112];
  v0[151] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[62] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[152] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[154];
  v4 = v0[80];
  v0[58] = v0;
  SQLiteDB.close()();

  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v6 = v0[153];
  v7 = v0[93];
  v0[58] = v0;
  swift_willThrow();
  MEMORY[0x259C87EC0](v6);

  v8 = v0[153];
  v1 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[84];
  v14 = v0[81];

  v2 = *MEMORY[0x277D85DE8] - v15;
  v3 = *(v0[58] + 8);
  v4 = v0[58];

  return v3();
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[116];
  v4 = v0[114];
  v0[58] = v0;

  v5 = v0[117];
  v0[153] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[154] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[121];
  v4 = v0[119];
  v0[58] = v0;

  v5 = v0[122];
  v0[153] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[154] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[125];
  v4 = v0[123];
  v0[58] = v0;

  v5 = v0[126];
  v0[153] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[154] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[129];
  v4 = v0[127];
  v0[58] = v0;

  v5 = v0[130];
  v0[153] = v5;
  v6 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[65] = v5;
  swift_beginAccess();
  v7 = *(v6 + 112);
  v0[154] = v7;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v7, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[134];
  v7 = v0[132];
  v8 = v0[93];
  v0[58] = v0;

  v9 = v0[135];
  v2 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[85];
  v14 = v0[84];
  v15 = v0[81];

  v3 = *MEMORY[0x277D85DE8] - v16;
  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[156];
  v4 = v0[80];
  v0[58] = v0;
  SQLiteDB.close()();

  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v4, 0);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v6 = v0[155];
  v7 = v0[93];
  v0[58] = v0;
  swift_willThrow();
  MEMORY[0x259C87EC0](v6);

  v8 = v0[155];
  v1 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[84];
  v14 = v0[81];

  v2 = *MEMORY[0x277D85DE8] - v15;
  v3 = *(v0[58] + 8);
  v4 = v0[58];

  return v3();
}

{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[144];
  v0[58] = v0;

  v4 = v0[145];
  v0[155] = v4;
  v5 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[70] = v4;
  swift_beginAccess();
  v6 = *(v5 + 112);
  v0[156] = v6;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v6, 0);
}

{
  v9 = *MEMORY[0x277D85DE8];
  v4 = v0[148];
  v5 = v0[146];
  v1 = v0[80];
  v0[58] = v0;

  v6 = v0[149];
  v0[155] = v6;
  v7 = v0[80];
  MEMORY[0x259C87ED0]();
  v0[70] = v6;
  swift_beginAccess();
  v8 = *(v7 + 112);
  v0[156] = v8;

  swift_endAccess();
  *MEMORY[0x277D85DE8];
  v2 = v0[58];

  return MEMORY[0x2822009F8](DataWriter.createTables(), v8, 0);
}

uint64_t partial apply for implicit closure #1 in DataWriter.init()()
{
  result = *(v0 + 16);
  implicit closure #1 in DataWriter.init()();
  return result;
}

uint64_t DataWriter.writeRawDataForWiFi(data:)(void *__src)
{
  v2[56] = v1;
  v2[55] = __src;
  v2[53] = v2;
  v2[54] = 0;
  memcpy(v2 + 18, __src, 0x80uLL);
  memcpy(v2 + 2, v2 + 18, 0x80uLL);
  v2[54] = v5;
  v3 = v2[53];

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForWiFi(data:), v5, 0);
}

uint64_t DataWriter.writeRawDataForWiFi(data:)()
{
  countAndFlagsBits = v0[28]._countAndFlagsBits;
  object = v0[27]._object;
  v0[26]._object = v0;
  swift_beginAccess();
  v6 = *(countAndFlagsBits + 112);
  v0[28]._object = v6;

  swift_endAccess();
  v0[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO wifi (session_id, timestamp, app_name, ssid, hour, dow, rssi, cca, noise, snr, tx_rate, rx_rate, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xACuLL, 1);
  outlined init with copy of WiFiDataPointForWriting(object, &v0[17]._countAndFlagsBits);
  v1 = swift_task_alloc();
  v0[30]._countAndFlagsBits = v1;
  *(v1 + 16) = object;
  v2 = v0[26]._object;

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForWiFi(data:), v6, 0);
}

{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[58];
  v4 = v0[57];
  v0[53] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #1 in DataWriter.writeRawDataForWiFi(data:));
  v0[61] = 0;
  v5 = v12[60];
  v9 = v12[59];
  v10 = v12[57];
  v11 = v12[56];
  v8 = v12[55];

  outlined destroy of WiFiDataPointForWriting(v8);

  v6 = v12[53];

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForWiFi(data:), v11, 0);
}

{
  *(v0 + 424) = v0;
  v1 = *(*(v0 + 424) + 8);
  v2 = *(v0 + 424);
  return v1();
}

{
  v1 = v0[60];
  v8 = v0[59];
  v9 = v0[57];
  v7 = v0[55];
  v0[53] = v0;

  outlined destroy of WiFiDataPointForWriting(v7);

  v2 = v0;
  v3 = *(v0[53] + 8);
  v4 = v0[53];
  v5 = v2[61];

  return v3();
}

uint64_t closure #1 in DataWriter.writeRawDataForWiFi(data:)(uint64_t a1, __int128 *a2)
{
  v14[3] = a1;
  v14[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaML11SQLBindable_pMd, &_s7MediaML11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v3;
  v27 = *a2;
  outlined init with copy of String(&v27, v14);
  v7 = MEMORY[0x277D837D0];
  *(v10 + 24) = MEMORY[0x277D837D0];
  *(v10 + 32) = &protocol witness table for String;
  *v10 = v27;
  v26 = *(a2 + 2);
  v9 = MEMORY[0x277D839F8];
  *(v10 + 64) = MEMORY[0x277D839F8];
  *(v10 + 72) = &protocol witness table for Double;
  *(v10 + 40) = v26;
  v25 = *(a2 + 24);
  outlined init with copy of String(&v25, &v13);
  *(v10 + 104) = v7;
  *(v10 + 112) = &protocol witness table for String;
  *(v10 + 80) = v25;
  v24 = *(a2 + 40);
  outlined init with copy of String(&v24, &v12);
  *(v10 + 144) = v7;
  *(v10 + 152) = &protocol witness table for String;
  *(v10 + 120) = v24;
  v23 = *(a2 + 7);
  v4 = MEMORY[0x277D83B88];
  *(v10 + 184) = MEMORY[0x277D83B88];
  *(v10 + 192) = &protocol witness table for Int;
  *(v10 + 160) = v23;
  v22 = *(a2 + 8);
  *(v10 + 224) = v4;
  *(v10 + 232) = &protocol witness table for Int;
  *(v10 + 200) = v22;
  v21 = *(a2 + 9);
  *(v10 + 264) = v4;
  *(v10 + 272) = &protocol witness table for Int;
  *(v10 + 240) = v21;
  v20 = *(a2 + 10);
  *(v10 + 304) = v4;
  *(v10 + 312) = &protocol witness table for Int;
  *(v10 + 280) = v20;
  v19 = *(a2 + 12);
  *(v10 + 344) = v4;
  *(v10 + 352) = &protocol witness table for Int;
  *(v10 + 320) = v19;
  v18 = *(a2 + 11);
  *(v10 + 384) = v4;
  *(v10 + 392) = &protocol witness table for Int;
  *(v10 + 360) = v18;
  v17 = *(a2 + 13);
  *(v10 + 424) = v9;
  *(v10 + 432) = &protocol witness table for Double;
  *(v10 + 400) = v17;
  v16 = *(a2 + 14);
  *(v10 + 464) = v9;
  *(v10 + 472) = &protocol witness table for Double;
  *(v10 + 440) = v16;
  v15 = *(a2 + 15);
  *(v10 + 504) = v9;
  *(v10 + 512) = &protocol witness table for Double;
  *(v10 + 480) = v15;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v11)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t DataWriter.writeRawDataForCell(data:)(void *__src)
{
  v2[56] = v1;
  v2[55] = __src;
  v2[53] = v2;
  v2[54] = 0;
  memcpy(v2 + 18, __src, 0x80uLL);
  memcpy(v2 + 2, v2 + 18, 0x80uLL);
  v2[54] = v5;
  v3 = v2[53];

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForCell(data:), v5, 0);
}

uint64_t DataWriter.writeRawDataForCell(data:)()
{
  countAndFlagsBits = v0[28]._countAndFlagsBits;
  object = v0[27]._object;
  v0[26]._object = v0;
  swift_beginAccess();
  v6 = *(countAndFlagsBits + 112);
  v0[28]._object = v6;

  swift_endAccess();
  v0[29] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO cell (session_id, timestamp, app_name, carrier, hour, dow, rssi, rsrp, rscp, rsrq, snr, bars, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xA9uLL, 1);
  outlined init with copy of CellDataPointForWriting(object, &v0[17]._countAndFlagsBits);
  v1 = swift_task_alloc();
  v0[30]._countAndFlagsBits = v1;
  *(v1 + 16) = object;
  v2 = v0[26]._object;

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForCell(data:), v6, 0);
}

{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[58];
  v4 = v0[57];
  v0[53] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #1 in DataWriter.writeRawDataForCell(data:));
  v0[61] = 0;
  v5 = v12[60];
  v9 = v12[59];
  v10 = v12[57];
  v11 = v12[56];
  v8 = v12[55];

  outlined destroy of CellDataPointForWriting(v8);

  v6 = v12[53];

  return MEMORY[0x2822009F8](DataWriter.writeRawDataForCell(data:), v11, 0);
}

{
  *(v0 + 424) = v0;
  v1 = *(*(v0 + 424) + 8);
  v2 = *(v0 + 424);
  return v1();
}

{
  v1 = v0[60];
  v8 = v0[59];
  v9 = v0[57];
  v7 = v0[55];
  v0[53] = v0;

  outlined destroy of CellDataPointForWriting(v7);

  v2 = v0;
  v3 = *(v0[53] + 8);
  v4 = v0[53];
  v5 = v2[61];

  return v3();
}

uint64_t closure #1 in DataWriter.writeRawDataForCell(data:)(uint64_t a1, __int128 *a2)
{
  v14[3] = a1;
  v14[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaML11SQLBindable_pMd, &_s7MediaML11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v10 = v3;
  v27 = *a2;
  outlined init with copy of String(&v27, v14);
  v7 = MEMORY[0x277D837D0];
  *(v10 + 24) = MEMORY[0x277D837D0];
  *(v10 + 32) = &protocol witness table for String;
  *v10 = v27;
  v26 = *(a2 + 2);
  v9 = MEMORY[0x277D839F8];
  *(v10 + 64) = MEMORY[0x277D839F8];
  *(v10 + 72) = &protocol witness table for Double;
  *(v10 + 40) = v26;
  v25 = *(a2 + 24);
  outlined init with copy of String(&v25, &v13);
  *(v10 + 104) = v7;
  *(v10 + 112) = &protocol witness table for String;
  *(v10 + 80) = v25;
  v24 = *(a2 + 40);
  outlined init with copy of String(&v24, &v12);
  *(v10 + 144) = v7;
  *(v10 + 152) = &protocol witness table for String;
  *(v10 + 120) = v24;
  v23 = *(a2 + 7);
  v4 = MEMORY[0x277D83B88];
  *(v10 + 184) = MEMORY[0x277D83B88];
  *(v10 + 192) = &protocol witness table for Int;
  *(v10 + 160) = v23;
  v22 = *(a2 + 8);
  *(v10 + 224) = v4;
  *(v10 + 232) = &protocol witness table for Int;
  *(v10 + 200) = v22;
  v21 = *(a2 + 9);
  *(v10 + 264) = v4;
  *(v10 + 272) = &protocol witness table for Int;
  *(v10 + 240) = v21;
  v20 = *(a2 + 10);
  *(v10 + 304) = v4;
  *(v10 + 312) = &protocol witness table for Int;
  *(v10 + 280) = v20;
  v19 = *(a2 + 11);
  *(v10 + 344) = v4;
  *(v10 + 352) = &protocol witness table for Int;
  *(v10 + 320) = v19;
  v18 = *(a2 + 12);
  *(v10 + 384) = v4;
  *(v10 + 392) = &protocol witness table for Int;
  *(v10 + 360) = v18;
  v17 = *(a2 + 13);
  *(v10 + 424) = v9;
  *(v10 + 432) = &protocol witness table for Double;
  *(v10 + 400) = v17;
  v16 = *(a2 + 14);
  *(v10 + 464) = v4;
  *(v10 + 472) = &protocol witness table for Int;
  *(v10 + 440) = v16;
  v15 = *(a2 + 15);
  *(v10 + 504) = v9;
  *(v10 + 512) = &protocol witness table for Double;
  *(v10 + 480) = v15;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v11)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t DataWriter.readModelStatsFromDB()()
{
  v1[9] = v0;
  v1[5] = v1;
  v1[6] = 0;
  v1[8] = 0;
  v1[6] = v0;
  v2 = v1[5];
  return MEMORY[0x2822009F8](DataWriter.readModelStatsFromDB(), v0, 0);
}

{
  v3 = *(v0 + 72);
  *(v0 + 40) = v0;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v0 + 80) = v4;

  swift_endAccess();
  *(v0 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT interfaceType, trainingRowCount, validationRowCount, carrierCount, ssidCount, appNameCount, sessionIDCount, trainingMAPE, validationMAPE, trainingDate FROM modelStats LIMIT 2", 0xB5uLL, 1);
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](DataWriter.readModelStatsFromDB(), v4, 0);
}

{
  v8 = v0[12];
  v9 = v0[11];
  v1 = v0[10];
  v0[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
  SQLiteDB.withStatement<A>(sql:handler:)(v9, v8, closure #1 in DataWriter.readModelStatsFromDB());
  v0[13] = 0;
  v2 = v7[12];
  v5 = v7[10];
  v6 = v7[9];

  v3 = v7[5];

  return MEMORY[0x2822009F8](DataWriter.readModelStatsFromDB(), v6, 0);
}

{
  *(v0 + 40) = v0;
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 8);
  v3 = *(v0 + 40);
  return v2(v1);
}

{
  v1 = v0[13];
  v2 = v0[12];
  v7 = v0[10];
  v0[5] = v0;

  MEMORY[0x259C87ED0](v1);
  v0[8] = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v1);
  v3 = *(*(v8 + 40) + 8);
  v4 = *(v8 + 40);
  v5 = *(v8 + 104);

  return v3();
}

uint64_t *closure #1 in DataWriter.readModelStatsFromDB()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9[0] = 0;
  v9[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v9[0] = Dictionary.init(dictionaryLiteral:)();
  v8 = v9;
  (*(*a1 + 144))(partial apply for closure #1 in closure #1 in DataWriter.readModelStatsFromDB(), v7);
  if (!v6)
  {
    v4 = v9[0];

    *a2 = v4;
  }

  return outlined destroy of [String : Any](v9);
}

uint64_t closure #1 in closure #1 in DataWriter.readModelStatsFromDB()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, MEMORY[0x277D837D0], &protocol witness table for String);
  if (v30)
  {
    v15 = MEMORY[0x277D83B88];
    SQLiteDB.Row.get<A>(at:)(1, a1, MEMORY[0x277D83B88], &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(2, a1, v15, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(3, a1, v15, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(4, a1, v15, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(5, a1, v15, &protocol witness table for Int);
    SQLiteDB.Row.get<A>(at:)(6, a1, v15, &protocol witness table for Int);
    v16 = MEMORY[0x277D839F8];
    SQLiteDB.Row.get<A>(at:)(7, a1, MEMORY[0x277D839F8], &protocol witness table for Double);
    SQLiteDB.Row.get<A>(at:)(8, a1, v16, &protocol witness table for Double);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    _allocateUninitializedArray<A>(_:)();
    v17 = v5;
    v6 = kMediaML_trainingRowCount.unsafeMutableAddressor();
    outlined init with copy of String(v6, v17);
    v17[5] = v15;
    v17[2] = v29;
    v7 = kMediaML_validationRowCount.unsafeMutableAddressor();
    outlined init with copy of String(v7, v17 + 6);
    v17[11] = v15;
    v17[8] = v28;
    v8 = kMediaML_carrier.unsafeMutableAddressor();
    outlined init with copy of String(v8, v17 + 12);
    v17[17] = v15;
    v17[14] = v27;
    v9 = kMediaML_ssid.unsafeMutableAddressor();
    outlined init with copy of String(v9, v17 + 18);
    v17[23] = v15;
    v17[20] = v26;
    v10 = kMediaML_appNameCount.unsafeMutableAddressor();
    outlined init with copy of String(v10, v17 + 24);
    v17[29] = v15;
    v17[26] = v25;
    v11 = kMediaML_sessionIDCount.unsafeMutableAddressor();
    outlined init with copy of String(v11, v17 + 30);
    v17[35] = v15;
    v17[32] = v24;
    v12 = kMediaML_trainingMAPE.unsafeMutableAddressor();
    outlined init with copy of String(v12, v17 + 36);
    v17[41] = v16;
    v17[38] = v23;
    v13 = kMediaML_validationMAPE.unsafeMutableAddressor();
    outlined init with copy of String(v13, v17 + 42);
    v17[47] = v16;
    v17[44] = v22;
    _finalizeUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    Dictionary.subscript.setter();
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("interfaceType is missing", 0x18uLL, 1);
    v20 = SQLError.init(code:desc:)(0xFFFFFFFFLL, v1._countAndFlagsBits, v1._object);
    v18 = v2;
    v19 = v3;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v4 = v20;
    *(v4 + 8) = v18;
    *(v4 + 16) = v19;
    return swift_willThrow();
  }
}

uint64_t DataWriter.readWiFiStdDev(appName:ssid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = v4;
  v5[23] = a4;
  v5[22] = a3;
  v5[21] = a2;
  v5[20] = a1;
  v5[15] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[16] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[16] = v4;
  v6 = v5[15];
  return MEMORY[0x2822009F8](DataWriter.readWiFiStdDev(appName:ssid:), v4, 0);
}

uint64_t DataWriter.readWiFiStdDev(appName:ssid:)()
{
  v8 = v0[24];
  v12 = v0[23];
  v11 = v0[22];
  v10 = v0[21];
  v9 = v0[20];
  v0[15] = v0;
  swift_beginAccess();
  v15 = *(v8 + 112);
  v0[25] = v15;

  swift_endAccess();
  v0[9] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[10] = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\tSELECT AVG(throughput_stddev) FROM wifiStdDev WHERE app_name LIKE '", 0x44uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](countAndFlagsBits);

  v0[11] = v9;
  v0[12] = v10;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("' AND ssid LIKE '", 0x11uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v3);

  v0[13] = v11;
  v0[14] = v12;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("'", 1uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v4);

  v14 = v0[9];
  v13 = v0[10];

  outlined destroy of DefaultStringInterpolation((v0 + 9));
  v0[26] = MEMORY[0x259C87440](v14, v13);
  v0[27] = v5;
  v6 = v0[15];

  return MEMORY[0x2822009F8](DataWriter.readWiFiStdDev(appName:ssid:), v15, 0);
}

{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[25];
  v0[15] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #1 in DataWriter.readWiFiStdDev(appName:ssid:));
  v0[28] = 0;
  v4 = v9[27];
  v7 = v9[25];
  v8 = v9[24];

  v5 = v9[15];

  return MEMORY[0x2822009F8](DataWriter.readWiFiStdDev(appName:ssid:), v8, 0);
}

{
  v0[15] = v0;
  v0[19] = v0[17];
  v1 = *(v0[15] + 8);
  v2 = v0[15];
  return v1();
}

{
  v1 = v0[28];
  v2 = v0[27];
  v8 = v0[25];
  v0[15] = v0;

  MEMORY[0x259C87ED0](v1);
  v0[18] = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v1);
  v3 = *(*(v9 + 120) + 8);
  v4 = *(v9 + 120);
  v5 = *(v9 + 224);
  v6.n128_u64[0] = v10;

  return v3(v6);
}

uint64_t closure #1 in DataWriter.readWiFiStdDev(appName:ssid:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D839F8], &protocol witness table for Double);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t DataWriter.readCellStdDev(appName:carrier:bars:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = v5;
  v6[26] = a5;
  v6[25] = a4;
  v6[24] = a3;
  v6[23] = a2;
  v6[22] = a1;
  v6[15] = v6;
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[16] = 0;
  v6[17] = 0;
  v6[20] = 0;
  v6[21] = 0;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v6[8] = a4;
  v6[16] = a5;
  v6[17] = v5;
  v7 = v6[15];
  return MEMORY[0x2822009F8](DataWriter.readCellStdDev(appName:carrier:bars:), v5, 0);
}

uint64_t DataWriter.readCellStdDev(appName:carrier:bars:)()
{
  v9 = v0[27];
  v14 = v0[26];
  v13 = v0[25];
  v12 = v0[24];
  v11 = v0[23];
  v10 = v0[22];
  v0[15] = v0;
  swift_beginAccess();
  v17 = *(v9 + 112);
  v0[28] = v17;

  swift_endAccess();
  v0[9] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[10] = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT AVG(throughput_stddev) FROM cellStdDev WHERE app_name LIKE '", 0x43uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](countAndFlagsBits);

  v0[11] = v10;
  v0[12] = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("' AND carrier LIKE '", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v3);

  v0[13] = v12;
  v0[14] = v13;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("' AND bars LIKE ", 0x10uLL, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v4);

  v0[19] = v14;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x259C879F0](v5);

  v16 = v0[9];
  v15 = v0[10];

  outlined destroy of DefaultStringInterpolation((v0 + 9));
  v0[29] = MEMORY[0x259C87440](v16, v15);
  v0[30] = v6;
  v7 = v0[15];

  return MEMORY[0x2822009F8](DataWriter.readCellStdDev(appName:carrier:bars:), v17, 0);
}

{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[28];
  v0[15] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #1 in DataWriter.readCellStdDev(appName:carrier:bars:));
  v0[31] = 0;
  v4 = v9[30];
  v7 = v9[28];
  v8 = v9[27];

  v5 = v9[15];

  return MEMORY[0x2822009F8](DataWriter.readCellStdDev(appName:carrier:bars:), v8, 0);
}

{
  v0[15] = v0;
  v0[21] = v0[18];
  v1 = *(v0[15] + 8);
  v2 = v0[15];
  return v1();
}

{
  v1 = v0[31];
  v2 = v0[30];
  v8 = v0[28];
  v0[15] = v0;

  MEMORY[0x259C87ED0](v1);
  v0[20] = v1;
  swift_willThrow();
  MEMORY[0x259C87EC0](v1);
  v3 = *(*(v9 + 120) + 8);
  v4 = *(v9 + 120);
  v5 = *(v9 + 248);
  v6.n128_u64[0] = v10;

  return v3(v6);
}

uint64_t closure #1 in DataWriter.readCellStdDev(appName:carrier:bars:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D839F8], &protocol witness table for Double);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #1 in DataWriter.createTables()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D83B88], &protocol witness table for Int);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #2 in DataWriter.createTables()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D83B88], &protocol witness table for Int);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #3 in DataWriter.createTables()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, MEMORY[0x277D83B88], &protocol witness table for Int);
  if (v2)
  {
    MEMORY[0x259C87EC0](v2);
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #4 in DataWriter.createTables()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MediaML11SQLBindable_pMd, &_s7MediaML11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = *(a2 + 120);
  v4[3] = MEMORY[0x277D83B88];
  v4[4] = &protocol witness table for Int;
  *v4 = v3;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v8)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t DataWriter.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v3;
}

uint64_t MediaML.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MediaML.logger);
}

uint64_t static MediaML.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MediaML.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t MediaML.dataWriter.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t MediaML.dataWriter.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t MediaML.wifiModel.getter()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t MediaML.cellModel.getter()
{
  v2 = *(v0 + 128);

  return v2;
}

uint64_t MediaML.ensureDataWriter()()
{
  v1[16] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[15] = 0;
  v2 = type metadata accessor for Logger();
  v1[17] = v2;
  v5 = *(v2 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[9] = v7;
  v3 = v1[8];

  return MEMORY[0x2822009F8](MediaML.ensureDataWriter(), v7, 0);
}

{
  v23 = v0[16];
  v0[8] = v0;
  swift_beginAccess();
  v24 = *(v23 + 112);

  swift_endAccess();
  v0[10] = v24;
  if (v0[10])
  {
    outlined destroy of DataWriter?((v22 + 80));
    v1 = *(v22 + 160);
    v18 = *(v22 + 136);
    v17 = *(v22 + 144);
    v2 = MediaML.logger.unsafeMutableAddressor();
    (*(v17 + 16))(v1, v2, v18);
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v14 = createStorage<A>(capacity:type:)(0);
      v15 = createStorage<A>(capacity:type:)(0);
      *(v22 + 88) = buf;
      *(v22 + 96) = v14;
      *(v22 + 104) = v15;
      serialize(_:at:)(0, (v22 + 88));
      serialize(_:at:)(0, (v22 + 88));
      *(v22 + 112) = v21;
      v16 = swift_task_alloc();
      v16[2] = v22 + 88;
      v16[3] = v22 + 96;
      v16[4] = v22 + 104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v20, v19, "DataWriter already initialized", buf, 2u);
      destroyStorage<A>(_:count:)(v14, 0, v12);
      destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    v9 = *(v22 + 160);
    v10 = *(v22 + 136);
    v8 = *(v22 + 144);
    MEMORY[0x277D82BD8](v20);
    (*(v8 + 8))(v9, v10);
    v5 = *(v22 + 160);
    v11 = *(v22 + 152);

    v6 = *(*(v22 + 64) + 8);
    v7 = *(v22 + 64);

    return v6();
  }

  else
  {
    outlined destroy of DataWriter?((v22 + 80));
    type metadata accessor for DataWriter();
    v3 = swift_task_alloc();
    *(v22 + 168) = v3;
    *v3 = *(v22 + 64);
    v3[1] = MediaML.ensureDataWriter();

    return DataWriter.__allocating_init()();
  }
}

{
  v7 = v0[22];
  v6 = v0[16];
  v0[8] = v0;
  swift_beginAccess();
  v1 = *(v6 + 112);
  *(v6 + 112) = v7;

  swift_endAccess();
  v2 = v0[20];
  v8 = v0[19];

  v3 = *(v0[8] + 8);
  v4 = v0[8];

  return v3();
}

{
  v35 = v0;
  v20 = v0[23];
  v1 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v0[8] = v0;
  MEMORY[0x259C87ED0]();
  v0[15] = v20;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v2, v19);
  MEMORY[0x259C87ED0](v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = 64;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in MediaML.ensureDataWriter();
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v3;

  *v27 = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[1] = v24;

  v27[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[3] = v25;

  v27[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v28, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(1);
    v16 = createStorage<A>(capacity:type:)(0);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    serialize(_:at:)(2, &v30);
    serialize(_:at:)(1, &v30);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    v33 = closure #1 in OSLogArguments.append(_:)partial apply;
    v34 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_2586A4000, v28, v29, "Failed to create DataWriter with error %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 1, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v17[23];
  v9 = v17[19];
  v10 = v17[17];
  v8 = v17[18];
  MEMORY[0x277D82BD8](v28);
  (*(v8 + 8))(v9, v10);
  MEMORY[0x259C87EC0](v11);
  MEMORY[0x259C87EC0](v11);
  v4 = v17[20];
  v12 = v17[19];

  v5 = *(v17[8] + 8);
  v6 = v17[8];

  return v5();
}

uint64_t MediaML.ensureDataWriter()(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 168);
  v10[8] = *v2;
  v11 = v10 + 8;
  v10[22] = a1;
  v10[23] = v1;

  if (v1)
  {
    v5 = v10[16];
    v8 = *v11;
    v7 = MediaML.ensureDataWriter();
  }

  else
  {
    v5 = v10[16];
    v6 = *v11;
    v7 = MediaML.ensureDataWriter();
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t MediaML.writeWifiData(data:)(uint64_t a1)
{
  v2[137] = v1;
  v2[136] = a1;
  v2[110] = v2;
  v2[111] = 0;
  v2[112] = 0;
  v2[115] = 0;
  v2[74] = 0;
  v2[75] = 0;
  v2[116] = 0;
  v2[80] = 0;
  v2[81] = 0;
  v2[86] = 0;
  v2[87] = 0;
  v2[117] = 0;
  v2[118] = 0;
  v2[119] = 0;
  v2[120] = 0;
  v2[121] = 0;
  v2[122] = 0;
  v2[123] = 0;
  v2[124] = 0;
  v2[100] = 0;
  v2[101] = 0;
  v2[102] = 0;
  v2[103] = 0;
  v2[125] = 0;
  v3 = type metadata accessor for Logger();
  v2[138] = v3;
  v12 = *(v3 - 8);
  v2[139] = v12;
  v13 = *(v12 + 64);
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  v2[142] = v4;
  v14 = *(v4 - 8);
  v2[143] = v14;
  v5 = *(v14 + 64) + 15;
  v2[144] = swift_task_alloc();
  v6 = type metadata accessor for Calendar();
  v2[145] = v6;
  v15 = *(v6 - 8);
  v2[146] = v15;
  v7 = *(v15 + 64) + 15;
  v2[147] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[148] = v8;
  v16 = *(v8 - 8);
  v2[149] = v16;
  v9 = *(v16 + 64) + 15;
  v2[150] = swift_task_alloc();
  v2[111] = a1;
  v2[112] = v17;
  v10 = v2[110];

  return MEMORY[0x2822009F8](MediaML.writeWifiData(data:), v17, 0);
}

uint64_t MediaML.writeWifiData(data:)()
{
  v107 = v0[137];
  v0[110] = v0;
  swift_beginAccess();
  v108 = *(v107 + 112);

  swift_endAccess();
  v0[113] = v108;
  if (v0[113])
  {
    outlined destroy of DataWriter?((v106 + 904));
    v1 = *(v106 + 1200);
    v105 = *(v106 + 1088);
    Date.init()();
    v104 = *kMediaML_throughputTrue.unsafeMutableAddressor();

    *(v106 + 544) = v104;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 544);
    if (!*(v106 + 200))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v99 = *(v106 + 1088);
    outlined init with take of Any(v106 + 176, v106 + 144);
    swift_dynamicCast();
    throughputTrue = *(v106 + 912);
    *(v106 + 920) = throughputTrue;
    v98 = *kMediaML_sessionID.unsafeMutableAddressor();

    *(v106 + 560) = v98;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 560);
    if (*(v106 + 232))
    {
      if (swift_dynamicCast())
      {
        v95 = *(v106 + 864);
        v96 = *(v106 + 872);
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v93 = v95;
      v94 = v96;
    }

    else
    {
      outlined destroy of Any?((v106 + 208));
      v93 = 0;
      v94 = 0;
    }

    *(v106 + 576) = v93;
    *(v106 + 584) = v94;
    if (*(v106 + 584))
    {
      v109 = *(v106 + 576);
    }

    else
    {
      v109 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v106 + 584))
      {
        outlined destroy of String?(v106 + 576);
      }
    }

    v6 = *(v106 + 1200);
    v92 = *(v106 + 1088);
    *(v106 + 1208) = v109._object;
    *(v106 + 592) = v109;
    Date.timeIntervalSince1970.getter();
    timestamp = v7;
    *(v106 + 928) = v7;
    v91 = *kMediaML_appName.unsafeMutableAddressor();

    *(v106 + 608) = v91;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 608);
    if (*(v106 + 264))
    {
      v8 = swift_dynamicCast();
      if (v8)
      {
        v88 = *(v106 + 848);
        v89 = *(v106 + 856);
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      v86 = v88;
      v87 = v89;
    }

    else
    {
      outlined destroy of Any?((v106 + 240));
      v86 = 0;
      v87 = 0;
    }

    *(v106 + 624) = v86;
    *(v106 + 632) = v87;
    if (*(v106 + 632))
    {
      v110 = *(v106 + 624);
    }

    else
    {
      v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v106 + 632))
      {
        outlined destroy of String?(v106 + 624);
      }
    }

    v85 = *(v106 + 1088);
    *(v106 + 1216) = v110._object;
    *(v106 + 640) = v110;
    v84 = *kMediaML_ssid.unsafeMutableAddressor();

    *(v106 + 656) = v84;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 656);
    if (*(v106 + 296))
    {
      v9 = swift_dynamicCast();
      if (v9)
      {
        v82 = *(v106 + 832);
        v83 = *(v106 + 840);
      }

      else
      {
        v82 = 0;
        v83 = 0;
      }

      v80 = v82;
      v81 = v83;
    }

    else
    {
      outlined destroy of Any?((v106 + 272));
      v80 = 0;
      v81 = 0;
    }

    *(v106 + 672) = v80;
    *(v106 + 680) = v81;
    if (*(v106 + 680))
    {
      v111 = *(v106 + 672);
    }

    else
    {
      v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v106 + 680))
      {
        outlined destroy of String?(v106 + 672);
      }
    }

    v70 = *(v106 + 1200);
    v74 = *(v106 + 1176);
    v75 = *(v106 + 1160);
    v73 = *(v106 + 1152);
    v71 = *(v106 + 1136);
    v79 = *(v106 + 1088);
    v67 = *(v106 + 1168);
    v66 = *(v106 + 1144);
    *(v106 + 1224) = v111._object;
    *(v106 + 688) = v111;
    static Calendar.current.getter();
    v69 = *(v66 + 104);
    v69(v73, *MEMORY[0x277CC9980], v71);
    hour = Calendar.component(_:from:)();
    v72 = *(v66 + 8);
    v72(v73, v71);
    v76 = *(v67 + 8);
    v76(v74, v75);
    *(v106 + 936) = hour;
    static Calendar.current.getter();
    v69(v73, *MEMORY[0x277CC99B8], v71);
    dow = Calendar.component(_:from:)();
    v72(v73, v71);
    v76(v74, v75);
    *(v106 + 944) = dow;
    v78 = *kMediaML_rssi.unsafeMutableAddressor();

    *(v106 + 704) = v78;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 704);
    if (*(v106 + 328))
    {
      v10 = swift_dynamicCast();
      if (v10)
      {
        v64 = *(v106 + 1080);
        v65 = 0;
      }

      else
      {
        v64 = 0;
        v65 = 1;
      }

      v62 = v64;
      v63 = v65;
    }

    else
    {
      outlined destroy of Any?((v106 + 304));
      v62 = 0;
      v63 = 1;
    }

    rssi = (v63 & 1) != 0 ? 0 : v62;
    v60 = *(v106 + 1088);
    *(v106 + 952) = rssi;
    v59 = *kMediaML_cca.unsafeMutableAddressor();

    *(v106 + 720) = v59;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 720);
    if (*(v106 + 360))
    {
      if (swift_dynamicCast())
      {
        v57 = *(v106 + 1072);
        v58 = 0;
      }

      else
      {
        v57 = 0;
        v58 = 1;
      }

      v55 = v57;
      v56 = v58;
    }

    else
    {
      outlined destroy of Any?((v106 + 336));
      v55 = 0;
      v56 = 1;
    }

    cca = (v56 & 1) != 0 ? 0 : v55;
    v53 = *(v106 + 1088);
    *(v106 + 960) = cca;
    v52 = *kMediaML_snr.unsafeMutableAddressor();

    *(v106 + 736) = v52;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 736);
    if (*(v106 + 392))
    {
      if (swift_dynamicCast())
      {
        v50 = *(v106 + 1064);
        v51 = 0;
      }

      else
      {
        v50 = 0;
        v51 = 1;
      }

      v48 = v50;
      v49 = v51;
    }

    else
    {
      outlined destroy of Any?((v106 + 368));
      v48 = 0;
      v49 = 1;
    }

    snr = (v49 & 1) != 0 ? 0 : v48;
    v46 = *(v106 + 1088);
    *(v106 + 968) = snr;
    v45 = *kMediaML_noise.unsafeMutableAddressor();

    *(v106 + 752) = v45;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 752);
    if (*(v106 + 424))
    {
      if (swift_dynamicCast())
      {
        v43 = *(v106 + 1056);
        v44 = 0;
      }

      else
      {
        v43 = 0;
        v44 = 1;
      }

      v41 = v43;
      v42 = v44;
    }

    else
    {
      outlined destroy of Any?((v106 + 400));
      v41 = 0;
      v42 = 1;
    }

    noise = (v42 & 1) != 0 ? 0 : v41;
    v39 = *(v106 + 1088);
    *(v106 + 976) = noise;
    v38 = *kMediaML_rxRate.unsafeMutableAddressor();

    *(v106 + 768) = v38;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 768);
    if (*(v106 + 456))
    {
      if (swift_dynamicCast())
      {
        v36 = *(v106 + 1048);
        v37 = 0;
      }

      else
      {
        v36 = 0.0;
        v37 = 1;
      }

      v34 = v36;
      v35 = v37;
    }

    else
    {
      outlined destroy of Any?((v106 + 432));
      v34 = 0.0;
      v35 = 1;
    }

    v33 = (v35 & 1) != 0 ? 0.0 : v34;
    v32 = *(v106 + 1088);
    *(v106 + 984) = v33;
    v31 = *kMediaML_txRate.unsafeMutableAddressor();

    *(v106 + 784) = v31;
    MEMORY[0x259C87380]();
    outlined destroy of String(v106 + 784);
    if (*(v106 + 488))
    {
      if (swift_dynamicCast())
      {
        v29 = *(v106 + 1040);
        v30 = 0;
      }

      else
      {
        v29 = 0.0;
        v30 = 1;
      }

      v27 = v29;
      v28 = v30;
    }

    else
    {
      outlined destroy of Any?((v106 + 464));
      v27 = 0.0;
      v28 = 1;
    }

    v26 = (v28 & 1) != 0 ? 0.0 : v27;
    *(v106 + 992) = v26;
    if (rssi >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor())
    {
      if (rssi >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor() && rssi < *rssiBucket_medium_high_boundary.unsafeMutableAddressor())
      {
        v21 = *rssiBucket_medium.unsafeMutableAddressor();

        *(v106 + 800) = v21;
        v22 = v21;
      }

      else
      {
        v20 = *rssiBucket_high.unsafeMutableAddressor();

        *(v106 + 800) = v20;
        v22 = v20;
      }

      v25 = v22;
    }

    else
    {
      v24 = *rssiBucket_low.unsafeMutableAddressor();

      *(v106 + 800) = v24;
      v25 = v24;
    }

    v18 = *(v106 + 1096);
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", 1uLL, 1)._countAndFlagsBits;
    v15 = MEMORY[0x259C87450](v111._countAndFlagsBits, v111._object, countAndFlagsBits);
    v16 = v12;

    bucketedSSID._countAndFlagsBits = MEMORY[0x259C87450](v15, v16, v25._countAndFlagsBits, v25._object);
    bucketedSSID._object = v13;
    *(v106 + 1232) = v13;

    *(v106 + 816) = bucketedSSID;

    WiFiDataPointForWriting.init(sessionID:timestamp:appName:bucketedSSID:hour:dow:rssi:cca:snr:noise:txRate:rxRate:throughputTrue:)((v106 + 16), v109, timestamp, v110, bucketedSSID, hour, dow, rssi, cca, snr, noise, v26, v33, throughputTrue);
    swift_beginAccess();
    v19 = *(v18 + 112);
    *(v106 + 1240) = v19;

    swift_endAccess();
    if (v19)
    {
      v14 = swift_task_alloc();
      *(v106 + 1248) = v14;
      *v14 = *(v106 + 880);
      v14[1] = MediaML.writeWifiData(data:);

      return DataWriter.writeRawDataForWiFi(data:)((v106 + 16));
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of DataWriter?((v106 + 904));
    v2 = *(v106 + 1200);
    v100 = *(v106 + 1176);
    v101 = *(v106 + 1152);
    v102 = *(v106 + 1128);
    v103 = *(v106 + 1120);

    v3 = *(*(v106 + 880) + 8);
    v4 = *(v106 + 880);

    return v3();
  }
}

{
  v12 = *v1;
  v10 = *v1 + 16;
  v11 = (v12 + 880);
  v2 = *(*v1 + 1248);
  *(v12 + 880) = *v1;
  *(v12 + 1256) = v0;

  if (v0)
  {
    v4 = *(v10 + 1080);
    v7 = *v11;
    v6 = MediaML.writeWifiData(data:);
  }

  else
  {
    v3 = *(v10 + 1224);
    v9 = *(v10 + 1080);

    v4 = v9;
    v5 = *v11;
    v6 = MediaML.writeWifiData(data:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v1 = v0[141];
  v28 = v0[139];
  v29 = v0[138];
  v0[110] = v0;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v28 + 16))(v1, v2, v29);
  v31 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v31, v30))
  {
    v3 = *(v27 + 1256);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = createStorage<A>(capacity:type:)(0);
    v25 = createStorage<A>(capacity:type:)(0);
    *(v27 + 1008) = buf;
    *(v27 + 1016) = v24;
    *(v27 + 1024) = v25;
    serialize(_:at:)(0, (v27 + 1008));
    serialize(_:at:)(0, (v27 + 1008));
    *(v27 + 1032) = v32;
    v26 = swift_task_alloc();
    v26[2] = v27 + 1008;
    v26[3] = v27 + 1016;
    v26[4] = v27 + 1024;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_2586A4000, v31, v30, "WiFi Data write to disk finished", buf, 2u);
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = *(v27 + 1128);
  v10 = *(v27 + 1104);
  v8 = *(v27 + 1112);
  MEMORY[0x277D82BD8](v31);
  (*(v8 + 8))(v9, v10);
  v11 = *(v27 + 1232);
  v12 = *(v27 + 1224);
  v13 = *(v27 + 1216);
  v14 = *(v27 + 1208);
  v16 = *(v27 + 1200);
  v17 = *(v27 + 1184);
  v15 = *(v27 + 1192);
  outlined destroy of WiFiDataPointForWriting((v27 + 16));

  outlined destroy of String(v27 + 800);

  (*(v15 + 8))(v16, v17);
  v5 = *(v27 + 1200);
  v18 = *(v27 + 1176);
  v19 = *(v27 + 1152);
  v20 = *(v27 + 1128);
  v21 = *(v27 + 1120);

  v6 = *(*(v27 + 880) + 8);
  v7 = *(v27 + 880);

  return v6();
}

{
  v46 = v0;
  v31 = v0[157];
  v1 = v0[155];
  v2 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v0[110] = v0;

  MEMORY[0x259C87ED0](v31);
  v0[125] = v31;
  v3 = MediaML.logger.unsafeMutableAddressor();
  (*(v29 + 16))(v2, v3, v30);
  MEMORY[0x259C87ED0](v31);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 64;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #11 in MediaML.writeWifiData(data:);
  *(v33 + 24) = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v37 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v38 = v4;

  *v38 = closure #1 in OSLogArguments.append(_:)partial apply;
  v38[1] = v35;

  v38[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v38[3] = v36;

  v38[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v38[5] = v37;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v39, v40))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(1);
    v27 = createStorage<A>(capacity:type:)(0);
    v41 = buf;
    v42 = v26;
    v43 = v27;
    serialize(_:at:)(2, &v41);
    serialize(_:at:)(1, &v41);
    v44 = closure #1 in OSLogArguments.append(_:)partial apply;
    v45 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
    v44 = closure #1 in OSLogArguments.append(_:)partial apply;
    v45 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
    v44 = closure #1 in OSLogArguments.append(_:)partial apply;
    v45 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v44, &v41, &v42, &v43);
    _os_log_impl(&dword_2586A4000, v39, v40, "Failed to write wifi data with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v26, 1, v24);
    destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v28[157];
  v10 = v28[140];
  v11 = v28[138];
  v9 = v28[139];
  MEMORY[0x277D82BD8](v39);
  (*(v9 + 8))(v10, v11);
  MEMORY[0x259C87EC0](v12);
  MEMORY[0x259C87EC0](v12);
  v13 = v28[154];
  v14 = v28[153];
  v15 = v28[152];
  v16 = v28[151];
  v18 = v28[150];
  v19 = v28[148];
  v17 = v28[149];
  outlined destroy of WiFiDataPointForWriting(v28 + 2);

  outlined destroy of String((v28 + 100));

  (*(v17 + 8))(v18, v19);
  v5 = v28[150];
  v20 = v28[147];
  v21 = v28[144];
  v22 = v28[141];
  v23 = v28[140];

  v6 = *(v28[110] + 8);
  v7 = v28[110];

  return v6();
}