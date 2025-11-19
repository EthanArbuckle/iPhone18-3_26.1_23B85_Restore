uint64_t specialized static Exif.filterVideo(inputURL:outputURL:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UTType();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for URLResourceValues();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static Exif.filterVideo(inputURL:outputURL:), 0, 0);
}

uint64_t specialized static Exif.filterVideo(inputURL:outputURL:)()
{
  v118 = v0;
  v1 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  if (v3 > 0.0)
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[27] = __swift_project_value_buffer(v4, static CommonLogger.interstitial);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_21607C000, v5, v6, "[EXIF] Background Processing Fake Work for %{public}f seconds BEGIN", v7, 0xCu);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    v11 = swift_task_alloc();
    v0[28] = v11;
    *v11 = v0;
    v11[1] = specialized static Exif.filterVideo(inputURL:outputURL:);

    return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v13 = v0[23];
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[7];
  v17 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v17, static CommonLogger.exif);
  v18 = *(v15 + 16);
  v0[31] = v18;
  v0[32] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  log = v18;
  (v18)(v13, v16, v14);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[23];
  v24 = v0[17];
  v23 = v0[18];
  if (v21)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v117[0] = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = v24;
    v31 = *(v23 + 8);
    v31(v22, v30);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v117);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_21607C000, v19, v20, "Exif.filterVideo() resourceValues for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CE94770](v26, -1, -1);
    MEMORY[0x21CE94770](v25, -1, -1);
  }

  else
  {

    v33 = v24;
    v31 = *(v23 + 8);
    v31(v22, v33);
  }

  v0[33] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v35 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v36 = v35;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();
  v38 = v0[10];
  v37 = v0[11];
  v39 = v0[9];

  URLResourceValues.contentType.getter();
  if ((*(v37 + 48))(v39, 1, v38) == 1)
  {
    v41 = v0[15];
    v40 = v0[16];
    v42 = v0[14];
    outlined destroy of UTType?(v0[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    (*(v41 + 8))(v40, v42);
LABEL_28:

    v107 = v0[1];

    return v107();
  }

  v45 = v0[12];
  v44 = v0[13];
  v47 = v0[10];
  v46 = v0[11];
  (*(v46 + 32))(v44, v0[9], v47);
  (*(v46 + 16))(v45, v44, v47);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[11];
  v52 = v0[12];
  v53 = v0[10];
  v110 = v31;
  if (v50)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v117[0] = v55;
    *v54 = 136315138;
    v56 = UTType.identifier.getter();
    v58 = v57;
    v59 = v53;
    v60 = *(v51 + 8);
    v60(v52, v59);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v117);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_21607C000, v48, v49, "Exif.filterVideo() inputType: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x21CE94770](v55, -1, -1);
    MEMORY[0x21CE94770](v54, -1, -1);
  }

  else
  {

    v62 = v53;
    v60 = *(v51 + 8);
    v60(v52, v62);
  }

  v0[34] = v60;
  v63 = UTType.identifier.getter();
  v64 = MEMORY[0x21CE91FC0](v63);
  v0[35] = v64;
  v65 = v64;

  v66 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v67);
  v69 = v68;
  v70 = [v66 initWithURL:v68 options:0];
  v0[36] = v70;

  v71 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v70 presetName:*MEMORY[0x277CE5C78]];
  v0[37] = v71;
  if (!v71)
  {
    v115 = v60;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_21607C000, v99, v100, "Exif.filterVideo() Creating AVAssetExportSession failed", v101, 2u);
      MEMORY[0x21CE94770](v101, -1, -1);
    }

    v102 = v0[15];
    logb = v0[16];
    v104 = v0[13];
    v103 = v0[14];
    v105 = v0[10];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v106 = 1;
    swift_willThrow();

    v115(v104, v105);
    (*(v102 + 8))(logb, v103);
    goto LABEL_28;
  }

  v72 = v71;
  v74 = v0[21];
  v73 = v0[22];
  v75 = v0[17];
  v77 = v0[7];
  v76 = v0[8];
  v78 = [objc_opt_self() metadataItemFilterForSharing];
  [v72 setMetadataItemFilter_];

  (log)(v73, v77, v75);
  (log)(v74, v76, v75);
  v79 = v65;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.info.getter();

  v82 = os_log_type_enabled(v80, v81);
  v84 = v0[21];
  v83 = v0[22];
  v85 = v0[17];
  if (v82)
  {
    v86 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v117[0] = v114;
    *v86 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v116 = v79;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v80;
    v89 = v88;
    v110(v83, v85);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v117);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v110(v84, v85);
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v117);

    *(v86 + 14) = v94;
    *(v86 + 22) = 2080;
    v79 = v116;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v117);

    *(v86 + 24) = v98;
    _os_log_impl(&dword_21607C000, loga, v81, "Exif.filterVideo() Exporting %s to %s as %s", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v114, -1, -1);
    MEMORY[0x21CE94770](v86, -1, -1);
  }

  else
  {

    v110(v84, v85);
    v110(v83, v85);
  }

  v108 = swift_task_alloc();
  v0[38] = v108;
  *v108 = v0;
  v108[1] = specialized static Exif.filterVideo(inputURL:outputURL:);
  v109 = v0[8];

  return MEMORY[0x2821FAED0](v109, v79, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = v2[26];
  v4 = v2[25];
  v5 = v2[24];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v110 = v0;
  v1 = v0[29];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[EXIF] Background Processing Fake Work END", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v5 = v0[23];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[7];
  v9 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v9, static CommonLogger.exif);
  v10 = *(v7 + 16);
  v0[31] = v10;
  v0[32] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  log = v10;
  (v10)(v5, v8, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[23];
  v16 = v0[17];
  v15 = v0[18];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v109[0] = v101;
    *v17 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v12;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v109);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_21607C000, v11, v100, "Exif.filterVideo() resourceValues for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x21CE94770](v101, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  v0[33] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v24 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v25 = v24;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();
  if (v1)
  {

LABEL_21:

    v96 = v0[1];

    return v96();
  }

  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[9];

  URLResourceValues.contentType.getter();
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v30 = v0[15];
    v29 = v0[16];
    v31 = v0[14];
    outlined destroy of UTType?(v0[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    goto LABEL_21;
  }

  v33 = v0[12];
  v34 = v0[13];
  v35 = v0[10];
  v36 = v0[11];
  (*(v36 + 32))(v34, v0[9], v35);
  (*(v36 + 16))(v33, v34, v35);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = v0[11];
  v40 = v0[12];
  v42 = v0[10];
  v102 = v21;
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v109[0] = v44;
    *v43 = 136315138;
    v45 = UTType.identifier.getter();
    v47 = v46;
    v48 = v42;
    v49 = *(v41 + 8);
    v49(v40, v48);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v109);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_21607C000, v37, v38, "Exif.filterVideo() inputType: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x21CE94770](v44, -1, -1);
    MEMORY[0x21CE94770](v43, -1, -1);
  }

  else
  {

    v51 = v42;
    v49 = *(v41 + 8);
    v49(v40, v51);
  }

  v0[34] = v49;
  v52 = UTType.identifier.getter();
  v53 = MEMORY[0x21CE91FC0](v52);
  v0[35] = v53;
  v54 = v53;

  v55 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v56);
  v58 = v57;
  v59 = [v55 initWithURL:v57 options:0];
  v0[36] = v59;

  v60 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v59 presetName:*MEMORY[0x277CE5C78]];
  v0[37] = v60;
  if (!v60)
  {
    v107 = v49;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_21607C000, v88, v89, "Exif.filterVideo() Creating AVAssetExportSession failed", v90, 2u);
      MEMORY[0x21CE94770](v90, -1, -1);
    }

    v91 = v0[15];
    logb = v0[16];
    v93 = v0[13];
    v92 = v0[14];
    v94 = v0[10];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v95 = 1;
    swift_willThrow();

    v107(v93, v94);
    (*(v91 + 8))(logb, v92);
    goto LABEL_21;
  }

  v61 = v60;
  v62 = v0[21];
  v63 = v0[22];
  v64 = v0[17];
  v66 = v0[7];
  v65 = v0[8];
  v67 = [objc_opt_self() metadataItemFilterForSharing];
  [v61 setMetadataItemFilter_];

  (log)(v63, v66, v64);
  (log)(v62, v65, v64);
  v68 = v54;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();

  v71 = os_log_type_enabled(v69, v70);
  v73 = v0[21];
  v72 = v0[22];
  v74 = v0[17];
  if (v71)
  {
    v75 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v109[0] = v106;
    *v75 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v108 = v68;
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v69;
    v78 = v77;
    v102(v72, v74);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v109);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    v102(v73, v74);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v109);

    *(v75 + 14) = v83;
    *(v75 + 22) = 2080;
    v68 = v108;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v109);

    *(v75 + 24) = v87;
    _os_log_impl(&dword_21607C000, loga, v70, "Exif.filterVideo() Exporting %s to %s as %s", v75, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v106, -1, -1);
    MEMORY[0x21CE94770](v75, -1, -1);
  }

  else
  {

    v102(v73, v74);
    v102(v72, v74);
  }

  v98 = swift_task_alloc();
  v0[38] = v98;
  *v98 = v0;
  v98[1] = specialized static Exif.filterVideo(inputURL:outputURL:);
  v99 = v0[8];

  return MEMORY[0x2821FAED0](v99, v68, 0, 0);
}

{
  v110 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[EXIF] Background Processing Fake Work END", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[7];
  v8 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v8, static CommonLogger.exif);
  v9 = *(v6 + 16);
  v0[31] = v9;
  v0[32] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  log = v9;
  (v9)(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[23];
  v15 = v0[17];
  v14 = v0[18];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v109[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = v15;
    v22 = *(v14 + 8);
    v22(v13, v21);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v109);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_21607C000, v10, v11, "Exif.filterVideo() resourceValues for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x21CE94770](v17, -1, -1);
    MEMORY[0x21CE94770](v16, -1, -1);
  }

  else
  {

    v24 = v15;
    v22 = *(v14 + 8);
    v22(v13, v24);
  }

  v0[33] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v26 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v27 = v26;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[9];

  URLResourceValues.contentType.getter();
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[14];
    outlined destroy of UTType?(v0[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    (*(v32 + 8))(v31, v33);
LABEL_19:

    v98 = v0[1];

    return v98();
  }

  v36 = v0[12];
  v35 = v0[13];
  v38 = v0[10];
  v37 = v0[11];
  (*(v37 + 32))(v35, v0[9], v38);
  (*(v37 + 16))(v36, v35, v38);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[11];
  v43 = v0[12];
  v44 = v0[10];
  v102 = v22;
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v109[0] = v46;
    *v45 = 136315138;
    v47 = UTType.identifier.getter();
    v49 = v48;
    v50 = v44;
    v51 = *(v42 + 8);
    v51(v43, v50);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v109);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_21607C000, v39, v40, "Exif.filterVideo() inputType: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x21CE94770](v46, -1, -1);
    MEMORY[0x21CE94770](v45, -1, -1);
  }

  else
  {

    v53 = v44;
    v51 = *(v42 + 8);
    v51(v43, v53);
  }

  v0[34] = v51;
  v54 = UTType.identifier.getter();
  v55 = MEMORY[0x21CE91FC0](v54);
  v0[35] = v55;
  v56 = v55;

  v57 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v58);
  v60 = v59;
  v61 = [v57 initWithURL:v59 options:0];
  v0[36] = v61;

  v62 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v61 presetName:*MEMORY[0x277CE5C78]];
  v0[37] = v62;
  if (!v62)
  {
    v107 = v51;

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_21607C000, v90, v91, "Exif.filterVideo() Creating AVAssetExportSession failed", v92, 2u);
      MEMORY[0x21CE94770](v92, -1, -1);
    }

    v93 = v0[15];
    logb = v0[16];
    v95 = v0[13];
    v94 = v0[14];
    v96 = v0[10];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v97 = 1;
    swift_willThrow();

    v107(v95, v96);
    (*(v93 + 8))(logb, v94);
    goto LABEL_19;
  }

  v63 = v62;
  v65 = v0[21];
  v64 = v0[22];
  v66 = v0[17];
  v68 = v0[7];
  v67 = v0[8];
  v69 = [objc_opt_self() metadataItemFilterForSharing];
  [v63 setMetadataItemFilter_];

  (log)(v64, v68, v66);
  (log)(v65, v67, v66);
  v70 = v56;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  v73 = os_log_type_enabled(v71, v72);
  v75 = v0[21];
  v74 = v0[22];
  v76 = v0[17];
  if (v73)
  {
    v77 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v109[0] = v106;
    *v77 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v108 = v70;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v71;
    v80 = v79;
    v102(v74, v76);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v109);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2080;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    v102(v75, v76);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v109);

    *(v77 + 14) = v85;
    *(v77 + 22) = 2080;
    v70 = v108;
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v109);

    *(v77 + 24) = v89;
    _os_log_impl(&dword_21607C000, loga, v72, "Exif.filterVideo() Exporting %s to %s as %s", v77, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v106, -1, -1);
    MEMORY[0x21CE94770](v77, -1, -1);
  }

  else
  {

    v102(v75, v76);
    v102(v74, v76);
  }

  v100 = swift_task_alloc();
  v0[38] = v100;
  *v100 = v0;
  v100[1] = specialized static Exif.filterVideo(inputURL:outputURL:);
  v101 = v0[8];

  return MEMORY[0x2821FAED0](v101, v70, 0, 0);
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  else
  {
    v2 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);

  v2(v7, v8);
  (*(v5 + 8))(v4, v6);

  v9 = *(v0 + 8);

  return v9();
}

{
  v44 = v0;
  v1 = v0[39];
  v2 = v0[31];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[8];
  v2(v0[20], v0[7], v4);
  v2(v3, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v0[39];
    v9 = v0[33];
    v37 = v8;
    v10 = v0[20];
    v36 = v0[19];
    v11 = v0[17];
    v12 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v12 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v9(v10, v11);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v43);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v9(v36, v11);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v43);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    v21 = v39;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v22;
    *v38 = v22;
    _os_log_impl(&dword_21607C000, v7, v37, "Exif.filterVideo() Exporting %s to %s %@", v12, 0x20u);
    outlined destroy of UTType?(v38, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v38, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v41, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  else
  {
    v23 = v0[33];
    v25 = v0[19];
    v24 = v0[20];
    v26 = v0[17];

    v23(v25, v26);
    v23(v24, v26);
  }

  v28 = v0[36];
  v27 = v0[37];
  v30 = v0[34];
  v29 = v0[35];
  v31 = v0[15];
  v32 = v0[13];
  v40 = v0[14];
  v42 = v0[16];
  v33 = v0[10];
  swift_willThrow();

  v30(v32, v33);
  (*(v31 + 8))(v42, v40);

  v34 = v0[1];

  return v34();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t outlined destroy of UTType?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for registration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static ContactCollectionViewAssetCell.registration);
  __swift_project_value_buffer(v0, static ContactCollectionViewAssetCell.registration);
  type metadata accessor for ContactCollectionViewAssetCell();
  type metadata accessor for ClientContactViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MapCollectionViewSmallAssetCell.registration);
  __swift_project_value_buffer(v0, static MapCollectionViewSmallAssetCell.registration);
  type metadata accessor for MapCollectionViewSmallAssetCell();
  type metadata accessor for ClientMapViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static WorkoutCollectionViewLandscapeAssetCell.registration);
  __swift_project_value_buffer(v0, static WorkoutCollectionViewLandscapeAssetCell.registration);
  type metadata accessor for WorkoutCollectionViewLandscapeAssetCell();
  type metadata accessor for ClientWorkoutViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MessageCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MessageCollectionViewCell.registration);
  type metadata accessor for MessageCollectionViewCell();
  type metadata accessor for MessageSuggestionViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MediaFirstPartyCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MediaFirstPartyCollectionViewCell.registration);
  type metadata accessor for MediaFirstPartyCollectionViewCell();
  type metadata accessor for ClientMediaFirstPartyViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static VideoCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static VideoCollectionViewCell.registration);
  type metadata accessor for VideoCollectionViewCell();
  type metadata accessor for ClientVideoViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MediaThirdPartyCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MediaThirdPartyCollectionViewCell.registration);
  type metadata accessor for MediaThirdPartyCollectionViewCell();
  type metadata accessor for ClientMediaThirdPartyViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static StateOfMindHorizontalCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static StateOfMindHorizontalCollectionViewCell.registration);
  type metadata accessor for StateOfMindHorizontalCollectionViewCell();
  type metadata accessor for ClientStateOfMindViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MosaicCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MosaicCollectionViewCell.registration);
  type metadata accessor for MosaicCollectionViewCell();
  type metadata accessor for MosaicSuggestionViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MapCollectionViewAssetCell.registration);
  __swift_project_value_buffer(v0, static MapCollectionViewAssetCell.registration);
  type metadata accessor for MapCollectionViewAssetCell();
  type metadata accessor for ClientMapViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static LivePhotoCollectionCell.registration);
  __swift_project_value_buffer(v0, static LivePhotoCollectionCell.registration);
  type metadata accessor for LivePhotoCollectionCell();
  type metadata accessor for ClientLivePhotoViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static SuggestionListCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static SuggestionListCollectionViewCell.registration);
  type metadata accessor for SuggestionListCollectionViewCell();
  type metadata accessor for MosaicSuggestionViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MapCollectionViewMediumAssetCell.registration);
  __swift_project_value_buffer(v0, static MapCollectionViewMediumAssetCell.registration);
  type metadata accessor for MapCollectionViewSmallAssetCell();
  type metadata accessor for ClientMapViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static PosterCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PosterCollectionViewCell.registration);
  type metadata accessor for PosterCollectionViewCell(0);
  type metadata accessor for ClientPosterViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static PosterSmallCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PosterSmallCollectionViewCell.registration);
  type metadata accessor for PosterSmallCollectionViewCell(0);
  type metadata accessor for ClientPosterViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static PosterHorizontalCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PosterHorizontalCollectionViewCell.registration);
  type metadata accessor for PosterHorizontalCollectionViewCell(0);
  type metadata accessor for ClientPosterViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static TipCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static TipCollectionViewCell.registration);
  type metadata accessor for TipCollectionViewCell();
  type metadata accessor for TipSuggestionViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static StateOfMindCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static StateOfMindCollectionViewCell.registration);
  type metadata accessor for StateOfMindCollectionViewCell(0);
  type metadata accessor for ClientStateOfMindViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static StateOfMindCollectionViewSmallCell.registration);
  __swift_project_value_buffer(v0, static StateOfMindCollectionViewSmallCell.registration);
  type metadata accessor for StateOfMindCollectionViewSmallCell(0);
  type metadata accessor for ClientStateOfMindViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MediaFirstPartyLandscapeCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MediaFirstPartyLandscapeCollectionViewCell.registration);
  type metadata accessor for MediaFirstPartyLandscapeCollectionViewCell();
  type metadata accessor for ClientMediaFirstPartyViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static EvergreenCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static EvergreenCollectionViewCell.registration);
  type metadata accessor for EvergreenCollectionViewCell();
  type metadata accessor for EvergreenSuggestionViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MotionActivityCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MotionActivityCollectionViewCell.registration);
  type metadata accessor for MotionActivityCollectionViewCell(0);
  type metadata accessor for ClientMotionActivityViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MotionActivityCollectionViewLandscapeCell.registration);
  __swift_project_value_buffer(v0, static MotionActivityCollectionViewLandscapeCell.registration);
  type metadata accessor for MotionActivityCollectionViewLandscapeCell(0);
  type metadata accessor for ClientMotionActivityViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static MotionActivityCollectionViewSmallCell.registration);
  __swift_project_value_buffer(v0, static MotionActivityCollectionViewSmallCell.registration);
  type metadata accessor for MotionActivityCollectionViewSmallCell(0);
  type metadata accessor for ClientMotionActivityViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static PhotoCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PhotoCollectionViewCell.registration);
  type metadata accessor for PhotoCollectionViewCell();
  type metadata accessor for ClientPhotoViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static WorkoutCollectionViewAssetCell.registration);
  __swift_project_value_buffer(v0, static WorkoutCollectionViewAssetCell.registration);
  type metadata accessor for WorkoutCollectionViewAssetCell(0);
  type metadata accessor for ClientWorkoutViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static WorkoutCollectionViewSmallAssetCell.registration);
  __swift_project_value_buffer(v0, static WorkoutCollectionViewSmallAssetCell.registration);
  type metadata accessor for WorkoutCollectionViewSmallAssetCell(0);
  type metadata accessor for ClientWorkoutViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t closure #1 in variable initialization expression of static ContactCollectionViewAssetCell.registration(void *a1, uint64_t a2, id *a3)
{
  v3 = *a3;
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xC8);
  v5 = *a3;
  return v4(v3);
}

uint64_t static ContactCollectionViewAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static ContactCollectionViewAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *ContactCollectionViewAssetCell.contactView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView);
  v2 = v1;
  return v1;
}

id ContactCollectionViewAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ContactCollectionViewAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ContactCollectionViewAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableContactViewModel.empty;
  v4 = 3;
  v3 = objc_allocWithZone(type metadata accessor for ContactView());
  *(v0 + v1) = ContactView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ContactCollectionViewAssetCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[ContactCollectionViewAssetCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x1A8))();
  }
}

id ContactCollectionViewAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactCollectionViewAssetCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized ContactCollectionViewAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableContactViewModel.empty;
  v12 = 3;
  v3 = objc_allocWithZone(type metadata accessor for ContactView());
  v4 = ContactView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for ContactCollectionViewAssetCell()
{
  result = type metadata singleton initialization cache for ContactCollectionViewAssetCell;
  if (!type metadata singleton initialization cache for ContactCollectionViewAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MutableMotionActivityViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v99 = v76 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v76 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v98 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = v76 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v76 - v18;
  v20 = type metadata accessor for DateInterval();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v26)
  {
    return 0;
  }

  v97 = v5;
  v27 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v27)
  {
    return 0;
  }

  v94 = v76 - v24;
  v95 = v10;
  v96 = v12;
  v28 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v29 = v25;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v28, v19, &_s10Foundation12DateIntervalVSgMd);
  v92 = *(v29 + 48);
  if ((v92)(v19, 1, v20) == 1)
  {
    outlined destroy of DateInterval?(v19);
    return 0;
  }

  v88 = v29 + 48;
  v93 = v23;
  v31 = *(v29 + 32);
  v32 = v94;
  v76[1] = v29 + 32;
  v76[0] = v31;
  v31(v94, v19, v20);
  v90 = v2;
  v77 = *(v2 + 16);
  v77(v96, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v34 = v33[1];
  v78 = *v33;
  v35 = v100;
  (*(v29 + 16))(v100, v32, v20);
  v89 = v29;
  (*(v29 + 56))(v35, 0, 1, v20);
  v36 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v37 = *(v0 + v36);
  v87 = *(v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps);
  v38 = *(v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity);
  v86 = *(v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity + 8);
  if (v86)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  v85 = v39;
  v40 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  swift_beginAccess();
  v41 = v40[1];
  v82 = *v40;
  if (v37)
  {
    v42 = v34 == 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = !v42 && v41 != 0;
  v81 = v44;
  v83 = v41;

  v45 = v26;
  v79 = v34;

  v80 = v37;
  v84 = v37;
  v46 = v95;
  UUID.init()();
  v47 = v46;
  v48 = v77;
  v77(v99, v47, v1);
  v91 = v1;
  v48(v97, v96, v1);
  v49 = *(v27 + 16);
  if (v49)
  {
    v101 = MEMORY[0x277D84F90];
    v77 = v45;
    v50 = v45;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v51 = v101;
    v52 = (v27 + 32);
    v53 = *(v101 + 16);
    v54 = v90;
    v55 = v93;
    v56 = v92;
    do
    {
      v58 = *v52++;
      v57 = v58;
      v101 = v51;
      v59 = *(v51 + 24);
      if (v53 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v53 + 1, 1);
        v51 = v101;
      }

      *(v51 + 16) = v53 + 1;
      *(v51 + v53++ + 32) = v57;
      --v49;
    }

    while (v49);
    v45 = v77;
  }

  else
  {
    v60 = v45;
    v51 = MEMORY[0x277D84F90];
    v54 = v90;
    v55 = v93;
    v56 = v92;
  }

  v61 = v78;
  if (!v79)
  {
    v61 = 0;
  }

  v92 = v61;
  v62 = 0xE000000000000000;
  if (v79)
  {
    v62 = v79;
  }

  v90 = v62;
  v63 = v98;
  outlined init with copy of DateInterval?(v100, v98, &_s10Foundation12DateIntervalVSgMd);
  v64 = (v56)(v63, 1, v20);
  v65 = v91;
  v66 = v84;
  if (v64 == 1)
  {
    DateInterval.init()();
    v67 = (v56)(v63, 1, v20);
    v68 = v96;
    if (v67 != 1)
    {
      outlined destroy of DateInterval?(v63);
    }
  }

  else
  {
    (v76[0])(v55, v63, v20);
    v68 = v96;
  }

  v69 = v80;
  if (v80)
  {
    v70 = v66;
    v71 = specialized static DBAssetModel.baseImage2DB(_:)(v69);
  }

  else
  {
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_nTm(MEMORY[0x277D84F90], specialized __RawDictionaryStorage.find<A>(_:));
  }

  if (v83)
  {
    v72 = v82;
  }

  else
  {
    v72 = 0;
  }

  if (v83)
  {
    v73 = v83;
  }

  else
  {
    v73 = 0xE000000000000000;
  }

  LOBYTE(v101) = v81;
  type metadata accessor for DBMotionActivityModel();
  swift_allocObject();
  v74 = specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(v99, v97, v45, v51, v92, v90, v93, v71, v87, v85, v86, v72, v73, &v101);

  v75 = *(v54 + 8);
  v75(v95, v65);
  outlined destroy of DateInterval?(v100);
  v75(v68, v65);
  (*(v89 + 8))(v94, v20);
  return v74;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI25PlaybackStateViewObserver_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI25PlaybackStateViewObserver_pGMR, &_s9MomentsUI25PlaybackStateViewObserver_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI10CloudSubDB_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI10CloudSubDB_pGMR, &_s9MomentsUI10CloudSubDB_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay9MomentsUI11CloudRecord_pXpGGMd, &_ss23_ContiguousArrayStorageCySay9MomentsUI11CloudRecord_pXpGGMR, &_sSay9MomentsUI11CloudRecord_pXpGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay9MomentsUI11DBAssetDataCGGMd, &_ss23_ContiguousArrayStorageCySay9MomentsUI11DBAssetDataCGGMR, &_sSay9MomentsUI11DBAssetDataCGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI12MapViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12MapViewModel_pGMR, &_s9MomentsUI12MapViewModel_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI16ContactViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16ContactViewModel_pGMR, &_s9MomentsUI16ContactViewModel_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI16WorkoutViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16WorkoutViewModel_pGMR, &_s9MomentsUI16WorkoutViewModel_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pGMR, &_s9MomentsUI11CloudRecord_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI12DBAssetModelC5StyleOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI9AssetTypeOGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI13RouteLocationVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI13RouteLocationVGMR, type metadata accessor for RouteLocation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_9MomentsUI12DBSuggestionCtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_9MomentsUI12DBSuggestionCtGMR, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR, MEMORY[0x277CBBC78]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10Foundation4UUIDVGSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Si_Sdt5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Si_Sdt5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17NSManagedObjectIDC_SaySo08CKRecordF0CGtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17NSManagedObjectIDC_SaySo08CKRecordC0CGtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSs5Int64VtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SSs5Int64VtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI16DBAssetModelTypeOGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR, MEMORY[0x277CC8990]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySS3key_10Foundation4DateV5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10Foundation4DateV5valuetGMR, &_sSS3key_10Foundation4DateV5valuetMd);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFNullD0aSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSo06CFNullD0aSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo11CFStringRefa_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Si_SdtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi_SdtGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_10Foundation3URLVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo24UIFontDescriptorTraitKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlXpGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI14AssetViewModelC5StyleOAEGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_So0C14ProtectionTypeaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaSo0C14ProtectionTypeaGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI9AssetTypeO_AC12InterstitialV17SelectionBehaviorOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI9AssetTypeOAC12InterstitialV17SelectionBehaviorOGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4UUIDVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_10Foundation4UUIDVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for UUID();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11DBAssetDataCGMd);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AETt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_s10Foundation4UUIDV_ACtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ShyAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_s10Foundation4UUIDV_ShyACGtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI16DBAssetModelEnumO_Si6models_Si5bytesSd8durationtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI16DBAssetModelEnumOSi6models_Si5bytesSd8durationtGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v13, &_sSS_yptMd);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI18HashableCoordinateV_AC12MapViewModel_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVAC12MapViewModel_pGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v7 = v18;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v7;
    return v3;
  }

  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 16 * result) = v7;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v19 = *v9;
    v15 = v7;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v9 = v14;
    v7 = v19;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI11MapLocationC_AC0E9ViewModel_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCAC0E9ViewModel_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v12 = *i;

      v6 = v12;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI11DBAssetDataCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v14, v10, a2);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for UUID();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9SwiftData20PersistentIdentifierVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9SwiftData20PersistentIdentifierVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9SwiftData20PersistentIdentifierVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_s10Foundation4UUIDV_9SwiftData20PersistentIdentifierVtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PersistentIdentifier();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI12DBAssetModelCGTt0g5Tf4g_nTm(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = a1[4];
  v6 = a1[5];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, v13, &_ss11AnyHashableV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9MomentsUI11CloudDeviceVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_9MomentsUI11CloudDeviceVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CloudDevice();
      result = outlined init with take of CloudMetaDevice(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for CloudDevice);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9MomentsUI15CloudMetaDeviceVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_9MomentsUI15CloudMetaDeviceVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CloudMetaDevice();
      result = outlined init with take of CloudMetaDevice(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for CloudMetaDevice);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_10Foundation4DateVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSG_SitTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSG_SitGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10CKRecordIDC_s6ResultOySo0C0Cs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      outlined copy of Result<CKRecord, Error>(v5);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEpGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v13, &_sSS_Se_SEptMd);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Decodable & Encodable(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo10CKRecordIDCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t outlined init with take of CloudMetaDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t one-time initialization function for empty()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v7 = static ScreenSize.zero;
  DateInterval.init()();
  v8 = objc_allocWithZone(type metadata accessor for MutableVideoViewModel());
  *&v8[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v9 = &v8[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v9 = 0;
  v9[8] = 1;
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v4, v6, v0);
  v10 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(v7, MEMORY[0x277D84F90], 0, 0xE000000000000000, v4);

  result = (*(v1 + 8))(v6, v0);
  static MutableVideoViewModel.empty = v10;
  return result;
}

{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v7 = static ScreenSize.zero;
  DateInterval.init()();
  *(objc_allocWithZone(type metadata accessor for MutableLivePhotoViewModel()) + OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto) = 0;
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v4, v6, v0);
  v8 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(v7, MEMORY[0x277D84F90], 0, 0xE000000000000000, v4);

  result = (*(v1 + 8))(v6, v0);
  static MutableLivePhotoViewModel.empty = v8;
  return result;
}

{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v7 = static ScreenSize.zero;
  DateInterval.init()();
  objc_allocWithZone(type metadata accessor for MutablePhotoViewModel());
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v4, v6, v0);
  v8 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(v7, MEMORY[0x277D84F90], 0, 0xE000000000000000, v4);

  result = (*(v1 + 8))(v6, v0);
  static MutablePhotoViewModel.empty = v8;
  return result;
}

{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v21 = static ScreenSize.zero;
  DateInterval.init()();
  type metadata accessor for MapLocation();
  v10 = swift_allocObject();
  UUID.init()();
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = 1;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name) = xmmword_21658F9D0;
  v11 = (v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  *v11 = 0;
  v11[1] = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = 0;
  v12 = *(v1 + 16);
  v12(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v9, v0);
  v13 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  swift_beginAccess();
  *(v10 + v13) = 0;
  v14 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  *(v10 + v14) = 3;
  v15 = *(v1 + 8);
  v15(v9, v0);
  DateInterval.init()();
  v12(v4, v7, v0);
  memset(v22, 0, sizeof(v22));
  v23 = 1;
  objc_allocWithZone(type metadata accessor for MutableMapViewModel());
  v16 = v21;

  v17 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v16, MEMORY[0x277D84F90], v10, v4, 0, v22);

  v18 = v17;
  MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

  result = (v15)(v7, v0);
  static MutableMapViewModel.empty = v18;
  return result;
}

id MutableVideoViewModel.__allocating_init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  *&v16[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v17 = &v16[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v17 = 0;
  v17[8] = 1;
  swift_weakInit();
  swift_weakAssign();
  (*(v13 + 16))(v15, a5, v12);
  v18 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v15);

  (*(v13 + 8))(a5, v12);
  return v18;
}

id static MutableVideoViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableVideoViewModel.empty;

  return v1;
}

void *MutableVideoViewModel.video.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MutableVideoViewModel.video.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MutableVideoViewModel.videoDurationSeconds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  return *v1;
}

uint64_t MutableVideoViewModel.videoDurationSeconds.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *MutableVideoViewModel.thumbnail.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id MutableVideoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video) = 0;
  v15 = v5 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  *v15 = 0;
  *(v15 + 8) = 1;
  swift_weakInit();
  swift_weakAssign();
  (*(v12 + 16))(v14, a5, v11);
  v16 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v14);

  (*(v12 + 8))(a5, v11);
  return v16;
}

uint64_t MutableVideoViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableVideoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableVideoViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableVideoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableVideoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableVideoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableVideoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableVideoViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableVideoViewModel.render()()
{
  v1[27] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v1 = v0[27];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v0[33] = v2;
  if (v2 && (v3 = (v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier), swift_beginAccess(), v4 = *v3, v0[34] = *v3, v5 = v3[1], (v0[35] = v5) != 0))
  {
    v6 = one-time initialization token for assetRendering;
    v7 = v2;

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSSignposter();
    v0[36] = __swift_project_value_buffer(v8, static CommonSignposter.assetRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v9 = OSSignposter.logHandle.getter();
    v10 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v12, "UIService_LoadVideoAsset", "", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[28];
    v16 = v0[29];

    v17 = *(v16 + 16);
    v0[37] = v17;
    v0[38] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v14, v13, v15);
    v0[39] = type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v0[40] = OSSignpostIntervalState.init(id:isOpen:)();
    v18 = swift_task_alloc();
    v0[41] = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = v5;
    v19 = swift_task_alloc();
    v0[42] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7PHAssetCSgMd);
    *v19 = v0;
    v19[1] = MutableVideoViewModel.render();

    return MEMORY[0x2822007B8](v0 + 24, 0, 0, 0x2874657373416870, 0xEE00293A6D6F7266, partial apply for closure #1 in static PhotosUtilities.phAsset(from:), v18, v20);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static CommonLogger.viewModel);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "[MutableVideoViewModel] Doees not have maximumSupportedViewport", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    v25 = v0[1];

    return v25();
  }
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 192);
  *(v0 + 344) = v1;
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 216);
    *(v0 + 424) = 2;
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
    v6 = ((*MEMORY[0x277D85000] & *v2) + 96) & 0xFFFFFFFFFFFFLL | 0x8189000000000000;
    *(v0 + 352) = v5;
    *(v0 + 360) = v6;
    v7 = v5();
    v8 = *((*v4 & *v2) + 0x78);
    v9 = ((*v4 & *v2) + 120) & 0xFFFFFFFFFFFFLL | 0x893B000000000000;
    *(v0 + 368) = v8;
    *(v0 + 376) = v9;
    v10 = v8();
    v11 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass;
    *(v0 + 384) = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass;
    *(v0 + 425) = *(v3 + v11);
    v12 = swift_task_alloc();
    *(v0 + 392) = v12;
    *v12 = v0;
    v12[1] = MutableVideoViewModel.render();

    return PHAsset.closestExactImage(type:viewport:assetClass:)(v0 + 16, (v0 + 424), (v0 + 425), v7, v10);
  }

  else
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static CommonLogger.viewModel);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21607C000, v15, v16, "[MutableVideoViewModel] Cannot retrieve PHAsset", v17, 2u);
      MEMORY[0x21CE94770](v17, -1, -1);
    }

    v18 = *(v0 + 320);
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);

    $defer #1 () in MutableVideoViewModel.render()(v18, "UIService_LoadVideoAsset");

    (*(v22 + 8))(v19, v21);

    v23 = *(v0 + 8);

    return v23();
  }
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v29 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd);
    type metadata accessor for Video();
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 208);
      v2 = *(v0 + 216);
      v3 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
      swift_beginAccess();
      v4 = *(v2 + v3);
      *(v2 + v3) = v1;

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?(v0 + 16);
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v28);
    _os_log_impl(&dword_21607C000, v6, v7, "[MutableVideoViewModel] Cannot render, localID=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CE94770](v11, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

LABEL_10:
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v12, v13, v15, "UIService_LoadVideoThumbnail", "", v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  v27 = *(v0 + 384);
  v26 = *(v0 + 368);
  v16 = *(v0 + 352);
  v17 = *(v0 + 296);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 224);
  v25 = *(v0 + 216);

  v17(v18, v19, v20);
  swift_allocObject();
  *(v0 + 400) = OSSignpostIntervalState.init(id:isOpen:)();
  *(v0 + 426) = 0;
  v21 = v16();
  v22 = v26();
  *(v0 + 427) = *(v25 + v27);
  v23 = swift_task_alloc();
  *(v0 + 408) = v23;
  *v23 = v0;
  v23[1] = MutableVideoViewModel.render();

  return PHAsset.closestExactImage(type:viewport:assetClass:)(v0 + 56, (v0 + 426), (v0 + 427), v21, v22);
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v22 = v0;
  if (v0[10])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd);
    type metadata accessor for Image();
    if (swift_dynamicCast())
    {
      v1 = v0[27];

      v2 = v0[25];
      v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v4 = *(v1 + v3);
      *(v1 + v3) = v2;

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?((v0 + 7));
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  if (v8)
  {
    v10 = v0[34];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21607C000, v6, v7, "[MutableVideoViewModel] Cannot render, localID=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  else
  {
  }

LABEL_10:
  v14 = v0[43];
  v15 = v0[27];
  [v14 duration];
  v17 = v16;
  v18 = v15 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  *v18 = v17;
  *(v18 + 8) = 0;
  v19 = swift_task_alloc();
  v0[52] = v19;
  *v19 = v0;
  v19[1] = MutableVideoViewModel.render();

  return MutablePhotosFamilyViewModel.sharedRender(asset:)(v14);
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  $defer #1 () in MutableVideoViewModel.render()(v0[50], "UIService_LoadVideoThumbnail");

  v8 = *(v6 + 8);
  v8(v5, v7);
  $defer #1 () in MutableVideoViewModel.render()(v2, "UIService_LoadVideoAsset");

  v8(v3, v7);

  v9 = v0[1];

  return v9();
}

uint64_t $defer #1 () in MutableVideoViewModel.render()(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for assetRendering != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static CommonSignposter.assetRendering);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t MutableVideoViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = *((*MEMORY[0x277D85000] & *v3) + 0xB0), v5 = v3, LOBYTE(v4) = v4(), v5, (v4 & 1) != 0) && (v6 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage, swift_beginAccess(), (v7 = *(v1 + v6)) != 0))
  {
    v8 = v7;
    v9 = Image.hasUIImage.getter();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall MutableVideoViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutableVideoViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for VideoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  v5 = objc_allocWithZone(type metadata accessor for VideoStaticView());
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  v8 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v9 = static VideoView.Constants.accessibilityString;
  v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v11 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v12 = v6;
  *&v3[v10] = [v11 init];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for AssetView();
  v15 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = *((*MEMORY[0x277D85000] & *v15) + 0xE8);
  v17 = v15;
  v16();
  AssetView.setFallBackView()();
  [v17 setIsAccessibilityElement_];
  v18 = [v17 accessibilityTraits];
  if ((v8 & ~v18) != 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  [v17 setAccessibilityTraits_];
  v20 = MEMORY[0x21CE91FC0](v9, *(&v9 + 1));
  [v17 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  v22 = type metadata accessor for UITraitUserInterfaceStyle();
  v23 = MEMORY[0x277D74BF0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v17;
  MEMORY[0x21CE92C30](v21, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v24 handleTraitChange];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v24 setClipsToBounds_];
  v25 = *&v24[OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView];
  v26 = v24;
  [v26 addSubview_];
  [v26 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v28 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v29 = [objc_opt_self() systemImageNamed_];

  [v27 setImage_];
  return v15;
}

uint64_t MutableVideoViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableVideoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for VideoViewModel.video.getter in conformance MutableVideoViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t protocol witness for VideoViewModel.videoDurationSeconds.getter in conformance MutableVideoViewModel()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  return *v1;
}

void *protocol witness for VideoViewModel.thumbnail.getter in conformance MutableVideoViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI5ColorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI15QueuableRequestVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI16DBAssetModelTypeOGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI15SuggestionGroupVGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV19AssetGroupViewModelVGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV7SectionVGMd);
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
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized MutableVideoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v25[3] = a3;
  v25[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v8 = 0;
  v8[8] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBVideoModel();
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v10 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v9, a2);
    v12 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v11 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v13 = &v10[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v13 = v12;
    *(v13 + 1) = v11;
    v14 = v10;

    v15 = v14;

    v17 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v16 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v18 = &v15[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v18 = v17;
    *(v18 + 1) = v16;

    v19 = DBAssetModel.baseVideo.getter();

    __swift_destroy_boxed_opaque_existential_1(v25);
    v20 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
    swift_beginAccess();
    v21 = *&v15[v20];
    *&v15[v20] = v19;

    return v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t specialized MutableVideoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableVideoViewModel.init(dbObject:)(v9, v11, a3, a4);
}

uint64_t outlined destroy of ConstructedPhotosResource?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MutableVideoViewModel()
{
  result = type metadata singleton initialization cache for MutableVideoViewModel;
  if (!type metadata singleton initialization cache for MutableVideoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t outlined init with copy of DBObject(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t key path setter for TransferPosterViewModel.title : TransferPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation16AttributedStringVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x238))(v6);
}

uint64_t key path setter for TransferPosterViewModel.eventStart : TransferPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x250))(v6);
}

uint64_t TransferPosterViewModel.title.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v3 + v6, a3, a2);
}

uint64_t TransferPosterViewModel.title.setter(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  outlined assign with take of AttributedString?(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t outlined assign with take of AttributedString?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t key path setter for TransferPosterViewModel.eventEnd : TransferPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x268))(v6);
}

uint64_t TransferPosterViewModel.isHost.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransferPosterViewModel.isHost.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TransferPosterViewModel.placeName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TransferPosterViewModel.placeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

MomentsUI::TransferPosterViewModel::CodingKeys_optional __swiftcall TransferPosterViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPosterViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t TransferPosterViewModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x646E45746E657665;
  v3 = 0x74736F487369;
  if (a1 != 3)
  {
    v3 = 0x6D614E6563616C70;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x617453746E657665;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferPosterViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656C746974;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = *a2;
  v6 = 0xE800000000000000;
  v7 = 0x646E45746E657665;
  v8 = 0xE600000000000000;
  v9 = 0x74736F487369;
  if (v3 != 3)
  {
    v9 = 0x6D614E6563616C70;
    v8 = 0xE900000000000065;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x617453746E657665;
  if (*a1)
  {
    v4 = 0xEA00000000007472;
  }

  else
  {
    v10 = 0x656C746974;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE500000000000000;
  v14 = 0xE800000000000000;
  v15 = 0x646E45746E657665;
  v16 = 0xE600000000000000;
  v17 = 0x74736F487369;
  if (v5 != 3)
  {
    v17 = 0x6D614E6563616C70;
    v16 = 0xE900000000000065;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x617453746E657665;
    v13 = 0xEA00000000007472;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferPosterViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferPosterViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferPosterViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferPosterViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferPosterViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferPosterViewModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xE800000000000000;
  v6 = 0x646E45746E657665;
  v7 = 0xE600000000000000;
  v8 = 0x74736F487369;
  if (v2 != 3)
  {
    v8 = 0x6D614E6563616C70;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x617453746E657665;
    v3 = 0xEA00000000007472;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferPosterViewModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x646E45746E657665;
  v4 = 0x74736F487369;
  if (v1 != 3)
  {
    v4 = 0x6D614E6563616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617453746E657665;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferPosterViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferPosterViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferPosterViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferPosterViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferPosterViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v53 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v15 = type metadata accessor for AttributedString();
  v16 = *(*(v15 - 8) + 56);
  v16(v1 + v14, 1, 1, v15);
  v17 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v18 = type metadata accessor for Date();
  v63 = *(v18 - 8);
  v19 = *(v63 + 56);
  v55 = v17;
  v19(v2 + v17, 1, 1, v18);
  v57 = v19;
  v58 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd;
  v19(v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, 1, 1, v18);
  v59 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  *(v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost) = 2;
  v20 = (v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
  *v20 = 0;
  v20[1] = 0;
  v62 = v20;
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v21)
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v23 = MEMORY[0x21CE91FC0](0, 0xE000000000000000);
    v24 = [v22 initWithString_];

    v21 = v24;
  }

  v60 = v21;
  AttributedString.init(_:)();
  v25 = 1;
  v16(v13, 0, 1, v15);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v13, v2 + v14, &_s10Foundation16AttributedStringVSgMd);
  swift_endAccess();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSDate);
  v26 = v64;
  v27 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v27)
  {
    v28 = v27;
    v29 = v53;
    v30 = v57;
    v57(v53, 1, 1, v18);
    lazy protocol witness table accessor for type Date and conformance Date();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v31 = v29;
    v32 = (*(v63 + 48))(v29, 1, v18);
    v33 = v61;
    v34 = v56;
    if (v32 != 1)
    {
      (*(v63 + 32))(v56, v31, v18);
      v25 = 0;
    }
  }

  else
  {
    v33 = v61;
    v34 = v56;
    v30 = v57;
  }

  v35 = 1;
  v30(v34, v25, 1, v18);
  v36 = v55;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v34, v2 + v36, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v37 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v37)
  {
    v38 = v37;
    v39 = v54;
    v30(v54, 1, 1, v18);
    lazy protocol witness table accessor for type Date and conformance Date();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v40 = v63;
    if ((*(v63 + 48))(v39, 1, v18) != 1)
    {
      (*(v40 + 32))(v33, v39, v18);
      v35 = 0;
    }
  }

  v30(v33, v35, 1, v18);
  v41 = v58;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v33, v2 + v41, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v42 = MEMORY[0x21CE91FC0](0x74736F487369, 0xE600000000000000);
  v43 = [v26 decodeBoolForKey_];

  v44 = v59;
  swift_beginAccess();
  *(v2 + v44) = v43;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v45)
  {
    v65 = 0;
    v66 = 0;
    v46 = v45;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v47 = v66;
    if (v66)
    {
      v48 = v65;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v49 = v62;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = specialized AssetViewModel.init(coder:)(v26);

  v51 = v50;
  if (v50)
  {
  }

  return v50;
}

Swift::Void __swiftcall TransferPosterViewModel.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssetViewModel.encode(with:)(with);
  (*((*MEMORY[0x277D85000] & *v1) + 0x230))();
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v17(v12, 1, v13) != 1)
    {
      outlined destroy of UTType?(v12, &_s10Foundation16AttributedStringVSgMd);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
  v18 = NSAttributedString.init(_:)();
  v19 = MEMORY[0x21CE91FC0](0x656C746974, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  (*((*MEMORY[0x277D85000] & *v2) + 0x248))();
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  isa = 0;
  if (v22(v9, 1, v20) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v9, v20);
  }

  v24 = MEMORY[0x21CE91FC0](0x617453746E657665, 0xEA00000000007472);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v24];
  swift_unknownObjectRelease();

  v25 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x260))();
  if (v22(v7, 1, v20) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v7, v20);
  }

  v27 = MEMORY[0x21CE91FC0](0x646E45746E657665, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  if ((*((*v25 & *v2) + 0x278))() == 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v29 = MEMORY[0x21CE91FC0](0x74736F487369, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
  swift_unknownObjectRelease();

  v30 = (*((*v25 & *v2) + 0x290))();
  if (v31)
  {
    v32 = MEMORY[0x21CE91FC0](v30);
  }

  else
  {
    v32 = 0;
  }

  v33 = MEMORY[0x21CE91FC0](0x6D614E6563616C70, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];

  swift_unknownObjectRelease();
}

void TransferPosterViewModel.init(from:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost) = 2;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferPosterViewModel.init(dbObject:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost) = 2;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferPosterViewModel.init(posterViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v14 = type metadata accessor for AttributedString();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(&v3[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd;
  v17(&v3[OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd], 1, 1, v16);
  v19 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  v3[OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost] = 2;
  v20 = &v3[OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName];
  *v20 = 0;
  v20[1] = 0;
  v21 = swift_getObjectType();
  (*(a2 + 24))(v21, a2);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v12, &v3[v13], &_s10Foundation16AttributedStringVSgMd);
  swift_endAccess();
  v22 = v46;
  (*(a2 + 40))(v21, a2);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v22, &v3[v15], &_s10Foundation4DateVSgMd);
  swift_endAccess();
  (*(a2 + 48))(v21, a2);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v22, &v3[v18], &_s10Foundation4DateVSgMd);
  swift_endAccess();
  LOBYTE(v18) = (*(a2 + 56))(v21, a2);
  swift_beginAccess();
  v3[v19] = v18;
  v23 = (*(a2 + 32))(v21, a2);
  v25 = v24;
  swift_beginAccess();
  *v20 = v23;
  v20[1] = v25;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v26 = static ScreenSize.zero;
  v27 = (*(a2 + 16))(v21, a2);
  v28 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v29 = a1;
  v45 = v28();
  v31 = v30;

  v32 = v48;
  (*(*(a2 + 8) + 24))(v21);
  LODWORD(v46) = *(v29 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v33 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v34 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v36 = type metadata accessor for DateInterval();
  (*(*(v36 - 8) + 56))(&v3[v35], 1, 1, v36);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v26;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v37 = *&v3[v33];
  *&v3[v33] = v27;
  v38 = v26;
  v39 = v27;

  swift_beginAccess();
  *v34 = v45;
  v34[1] = v31;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v32, &v3[v35]);
  v40 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v46;
  (*(ObjectType + 328))(v50, v40);
  LOBYTE(v35) = v50[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v41 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 112) = v35;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v41;
  v42 = type metadata accessor for AssetViewModel();
  v49.receiver = v3;
  v49.super_class = v42;
  v43 = objc_msgSendSuper2(&v49, sel_init);

  outlined destroy of UTType?(v32, &_s10Foundation12DateIntervalVSgMd);
  return v43;
}

uint64_t TransferPosterViewModel.__ivar_destroyer()
{
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, &_s10Foundation4DateVSgMd);
}

id TransferPosterViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferPosterViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferPosterViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPosterViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for NSAttributedString(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t outlined assign with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TransferPosterViewModel()
{
  result = type metadata singleton initialization cache for TransferPosterViewModel;
  if (!type metadata singleton initialization cache for TransferPosterViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

void type metadata completion function for TransferPosterViewModel()
{
  type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x277CC8C40]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AttributedString?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void one-time initialization function for timeSeparator()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000216577810;
  v1._countAndFlagsBits = 2108704;
  v1._object = 0xE300000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000034;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MomentDateFormatter.timeSeparator = v3;
}

__int128 *MomentDateFormatter.timeSeparator.unsafeMutableAddressor()
{
  if (one-time initialization token for timeSeparator != -1)
  {
    swift_once();
  }

  return &static MomentDateFormatter.timeSeparator;
}

void one-time initialization function for commaSeparator()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000002165777F0;
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MomentDateFormatter.commaSeparator = v3;
}

__int128 *MomentDateFormatter.commaSeparator.unsafeMutableAddressor()
{
  if (one-time initialization token for commaSeparator != -1)
  {
    swift_once();
  }

  return &static MomentDateFormatter.commaSeparator;
}

uint64_t static MomentDateFormatter.timeSeparator.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

BOOL specialized static MomentDateFormatter.Interstitial.sameHourMin(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Calendar.current.getter();
  LODWORD(v30) = *MEMORY[0x277CC9980];
  v11 = *(v4 + 104);
  v11(v6);
  v29 = a1;
  v31 = Calendar.component(_:from:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  static Calendar.current.getter();
  v28 = v11;
  v23 = v4 + 104;
  (v11)(v6, v30, v3);
  v14 = Calendar.component(_:from:)();
  v27 = v12;
  v24 = v4 + 8;
  v12(v6, v3);
  v30 = v7;
  v25 = v8 + 8;
  v26 = v13;
  v13(v10, v7);
  if (v31 != v14)
  {
    return 0;
  }

  static Calendar.current.getter();
  v22 = *MEMORY[0x277CC99A0];
  v15 = v28;
  v28(v6);
  v31 = Calendar.component(_:from:)();
  v16 = v27;
  v27(v6, v3);
  v17 = v30;
  v18 = v26;
  v26(v10, v30);
  static Calendar.current.getter();
  v15(v6, v22, v3);
  v19 = Calendar.component(_:from:)();
  v16(v6, v3);
  v18(v10, v17);
  return v31 == v19;
}

uint64_t specialized static MomentDateFormatter.Interstitial.timeRangeRepresentation(startTime:endTime:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static MomentDateFormatter.Interstitial.sameHourMin(startDate:endDate:)(a1, a2))
  {
    if (one-time initialization token for shortTimeFormatter != -1)
    {
      swift_once();
    }

    v2 = static MomentDateFormatter.shortTimeFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v4 = [v2 stringForObjectValue_];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = Date._bridgeToObjectiveC()().super.isa;
      v9 = [v2 stringForObjectValue_];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (one-time initialization token for timeSeparator != -1)
        {
          swift_once();
        }

        v11 = static MomentDateFormatter.timeSeparator;

        MEMORY[0x21CE92100](v11, *(&v11 + 1));

        MEMORY[0x21CE92100](v5, v7);

        return v10;
      }
    }
  }

  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  v13 = static MomentDateFormatter.shortTimeFormatter;
  v14 = Date._bridgeToObjectiveC()().super.isa;
  v15 = [v13 stringForObjectValue_];

  if (!v15)
  {
    return 0;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v16;
}

uint64_t specialized static MomentDateFormatter.Interstitial.timeRangeWithSameDayRepresentation(startTime:endTime:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for yearDateFormatter != -1)
  {
    swift_once();
  }

  v4 = static MomentDateFormatter.yearDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = [v4 stringForObjectValue_];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized static MomentDateFormatter.Interstitial.timeRangeRepresentation(startTime:endTime:)(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = v9;

      MEMORY[0x21CE92100](0x20A280E220, 0xA500000000000000);

      MEMORY[0x21CE92100](v10, v11);

      return v7;
    }
  }

  return 0;
}

uint64_t specialized static MomentDateFormatter.Interstitial.singleDateRangeRepresentation(_:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  DateInterval.start.getter();
  DateInterval.end.getter();
  v7 = specialized static MomentDateFormatter.Interstitial.sameHourMin(startDate:endDate:)(v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7 || (DateInterval.start.getter(), DateInterval.end.getter(), v9 = specialized static MomentDateFormatter.Interstitial.timeRangeWithSameDayRepresentation(startTime:endTime:)(v6, v4), v11 = v10, v8(v4, v0), v8(v6, v0), !v11))
  {
    if (one-time initialization token for yearDateTimeFormatter != -1)
    {
      swift_once();
    }

    v12 = static MomentDateFormatter.yearDateTimeFormatter;
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8(v6, v0);
    v14 = [v12 stringForObjectValue_];

    if (v14)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t specialized static MomentDateFormatter.Interstitial.timeRangeWithDifferentDaysRepresentation(_:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for yearDateFormatter != -1)
  {
    swift_once();
  }

  v4 = static MomentDateFormatter.yearDateFormatter;
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = *(v1 + 8);
  v6(v3, v0);
  v7 = [v4 stringForObjectValue_];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  DateInterval.end.getter();
  v11 = Date._bridgeToObjectiveC()().super.isa;
  v6(v3, v0);
  v12 = [v4 stringForObjectValue_];

  if (!v12)
  {

    return 0;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (one-time initialization token for timeSeparator != -1)
  {
    swift_once();
  }

  v16 = static MomentDateFormatter.timeSeparator;
  v18[0] = v8;
  v18[1] = v10;

  MEMORY[0x21CE92100](v16, *(&v16 + 1));

  MEMORY[0x21CE92100](v13, v15);

  return v18[0];
}

uint64_t specialized static MomentDateFormatter.Interstitial.generateFormattedDate(dateInterval:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Calendar();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for DateInterval();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateInterval?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of DateInterval?(v14);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    static Calendar.current.getter();
    DateInterval.start.getter();
    DateInterval.end.getter();
    v20 = Calendar.isDate(_:inSameDayAs:)();
    v21 = *(v3 + 8);
    v21(v6, v2);
    v21(v8, v2);
    (*(v24 + 8))(v11, v25);
    if (v20)
    {
      v22 = specialized static MomentDateFormatter.Interstitial.singleDateRangeRepresentation(_:)();
    }

    else
    {
      v22 = specialized static MomentDateFormatter.Interstitial.timeRangeWithDifferentDaysRepresentation(_:)();
    }

    v23 = v22;
    (*(v16 + 8))(v18, v15);
    return v23;
  }
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id EditableLabelView.tintColor.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EditableLabelView();
  v1 = objc_msgSendSuper2(&v3, sel_tintColor);

  return v1;
}

void EditableLabelView.tintColor.setter(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EditableLabelView();
  objc_msgSendSuper2(&v5, sel_setTintColor_, a1);
  v3 = EditableLabelView.textField.getter();
  v4 = [v1 tintColor];
  [v3 setTintColor_];
}

id EditableLabelView.isEditing.didset()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) == 1)
  {
    v1 = EditableLabelView.label.getter();
    [v1 setHidden_];

    v2 = EditableLabelView.textField.getter();
    [v2 setHidden_];

    v3 = OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField;
    [*(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField) becomeFirstResponder];
    v4 = *(v0 + v3);
    v5 = sel_selectAll_;
    v6 = 0;
  }

  else
  {
    v8 = EditableLabelView.textField.getter();
    [v8 resignFirstResponder];

    v9 = EditableLabelView.label.getter();
    v10 = EditableLabelView.attributedText.getter();
    [v9 setAttributedText_];

    [*(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___label) setHidden_];
    v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField);
    v5 = sel_setHidden_;
    v6 = 1;
  }

  return [v4 v5];
}

id EditableLabelView.attributedText.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle);
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle + 8);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title);
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title + 8);
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCAB48]);

  v4 = MEMORY[0x21CE91FC0](v1, v2);

  v5 = [v3 initWithString_];

  v6 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  [v6 setImage_];
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = MEMORY[0x21CE91FC0](41154, 0xA200000000000000);
  v9 = [v7 initWithString_];

  [v5 appendAttributedString_];
  v10 = [objc_opt_self() attributedStringWithAttachment_];
  [v5 appendAttributedString_];

  return v5;
}

void closure #1 in EditableLabelView.label.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    [v2 setFont_];
    LODWORD(v8) = 1148846080;
    [v2 setContentCompressionResistancePriority:1 forAxis:v8];
    v9 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:a1 action:sel_editTitle_];
    [v2 addGestureRecognizer_];
    [v2 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

id EditableLabelView.label.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in EditableLabelView.textField.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v3 = EditableLabelView.label.getter();
  v4 = [v3 font];

  [v2 setFont_];
  v5 = MEMORY[0x21CE91FC0](*(a1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title), *(a1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title + 8));
  [v2 setText_];

  [v2 setTextAlignment_];
  [v2 setReturnKeyType_];
  [v2 setDelegate_];
  return v2;
}

char *EditableLabelView.init(title:image:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle];
  *v5 = 0;
  v5[1] = 0;
  v3[OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField] = 0;
  v6 = &v3[OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title];
  *v6 = a1;
  v6[1] = a2;
  *&v3[OBJC_IVAR____TtC9MomentsUI17EditableLabelView_image] = a3;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for EditableLabelView();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = EditableLabelView.label.getter();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___label;
  [v8 addSubview_];
  v11 = *&v8[v10];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v12 = *&v8[v10];
  v13 = EditableLabelView.attributedText.getter();
  [v12 setAttributedText_];

  v14 = EditableLabelView.textField.getter();
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v15 = OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField;
  [*&v8[OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField] setHidden_];
  [v8 addSubview_];
  v16 = *&v8[v15];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  return v8;
}

id EditableLabelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EditableLabelView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Bool __swiftcall EditableLabelView.textFieldShouldReturn(_:)(UITextField *a1)
{
  v2 = [(UITextField *)a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle);
  *v7 = v4;
  v7[1] = v6;

  *(v1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) = 0;
  EditableLabelView.isEditing.didset();
  return 1;
}