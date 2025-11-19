uint64_t closure #1 in FileEntitySpotlight.Source.fetchRecentEntities()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay26DocumentManagerExecutables12FINodeEntityVGs5Error_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v3 + 16))(v6, a1, v2);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    (*(v3 + 32))(&v8[v7], v6, v2);
    FileEntitySpotlight.Source.fetchRecentEntities(completion:)(partial apply for closure #1 in closure #1 in FileEntitySpotlight.Source.fetchRecentEntities(), v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    return CheckedContinuation.resume(returning:)();
  }
}

void FileEntitySpotlight.Source.fetchEntities(matching:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v102 = a2;
  v101 = a1;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for UTType();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v13);
  v105 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
  [v104 setMaximumNumberOfItems_];
  v15 = [objc_opt_self() defaultManager];
  v16 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(@"com.apple.DocumentManager.SpotlightFileProvider.search", v104, 1);

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v92 = v12;
    v93 = v9;
    v98 = a3;
    v99 = a4;
    v19 = objc_opt_self();
    v20 = v16;
    v21 = [v19 emptyLocation];
    if (one-time initialization token for searchSource != -1)
    {
      swift_once();
    }

    v22 = static DOCFileProviderSource.searchSource;
    v23 = FileEntitySpotlight.Source.configuration.getter();
    LOBYTE(v108[0]._countAndFlagsBits) = 2;
    v24 = [v19 searchLocation];
    LOBYTE(v107[0]) = 10;
    v96 = v21;
    DOCItemCollectionConfiguration.init(source:configuration:context:initialLocation:defaultSorting:searchStartLocation:viewAccessibilityIdentifier:isBrowsingTrash:)(v22, v23, v108, v24, v107, v21, 0, 0, v109, 0);
    v25 = *MEMORY[0x277D05DB8];
    v108[2] = v109[2];
    v108[3] = v109[3];
    v108[4] = v109[4];
    v108[0] = v109[0];
    v108[1] = v109[1];
    v26 = objc_opt_self();
    v94 = v20;
    v27 = v104;
    v28 = [v26 defaultPermission];
    v29 = specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v25, v104, v28, v108, 0);

    v95 = v27;
    [v18 setItemFilteringPredicate_];

    v30 = *(v5 + 32);
    v97 = v18;
    [v18 setWorkingQueue_];
    v31 = [objc_allocWithZone(MEMORY[0x277CC64B0]) initWithSearchScope_];
    v32 = v31;
    v33 = *(v5 + 16);
    v34 = *(v33 + 16);
    countAndFlagsBits = MEMORY[0x277D84F90];
    v100 = v5;
    if (v34)
    {
      v90 = v8;
      v91 = v31;
      v108[0]._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      countAndFlagsBits = v108[0]._countAndFlagsBits;
      v36 = v103 + 16;
      v104 = *(v103 + 16);
      v37 = v33 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v103 = *(v103 + 72);
      v38 = (v36 - 8);
      do
      {
        v39 = v105;
        v40 = v106;
        (v104)(v105, v37, v106);
        v41 = UTType.identifier.getter();
        v43 = v42;
        (*v38)(v39, v40);
        v108[0]._countAndFlagsBits = countAndFlagsBits;
        v45 = *(countAndFlagsBits + 16);
        v44 = *(countAndFlagsBits + 24);
        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
          countAndFlagsBits = v108[0]._countAndFlagsBits;
        }

        *(countAndFlagsBits + 16) = v45 + 1;
        v46 = countAndFlagsBits + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v43;
        v37 += v103;
        --v34;
      }

      while (v34);
      v5 = v100;
      v32 = v91;
      v8 = v90;
    }

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(countAndFlagsBits);

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v32 setAllowedContentTypes_];

    if (*(v5 + 24))
    {
      [v32 setTrashedItemsMembership_];
      v108[0]._countAndFlagsBits = 10786;
      v108[0]._object = 0xE200000000000000;
      v48 = v101;
      v49 = v102;
      v50 = String.doc_searchEscapedString.getter(v101, v102);
      MEMORY[0x24C1FAEA0](v50);

      MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
      v107[0] = v48;
      v107[1] = v49;
      v51 = v92;
      CharacterSet.init()();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v53 = v52;
      (*(v93 + 8))(v51, v8);
      if (v53)
      {
        v54 = 1952741219;
      }

      else
      {
        v54 = 0x7473647763;
      }

      if (v53)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      MEMORY[0x24C1FAEA0](v54, v55);

      object = v108[0]._object;
      v57 = v108[0]._countAndFlagsBits;
      v108[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108[0]._object = v58;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v57, object);
      v59 = v108[0]._object;
      v106 = v108[0]._countAndFlagsBits;
      v108[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108[0]._object = v60;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v57, object);
      v61 = v108[0]._object;
      v105 = v108[0]._countAndFlagsBits;
      v108[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108[0]._object = v62;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v57, object);
      v63 = v108[0]._object;
      v104 = v108[0]._countAndFlagsBits;
      v108[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108[0]._object = v64;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v57, object);
      v65 = v108[0]._object;
      v103 = v108[0]._countAndFlagsBits;
      v108[0]._countAndFlagsBits = 0;
      v108[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v108[0]._countAndFlagsBits = v66;
      v108[0]._object = v68;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v57, object);
      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x24C1FAEA0](v69);

      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v57, object);

      v70 = v108[0]._object;
      v71 = v108[0]._countAndFlagsBits;
      v108[0]._countAndFlagsBits = 0;
      v108[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v108[0]._countAndFlagsBits = 40;
      v108[0]._object = 0xE100000000000000;
      MEMORY[0x24C1FAEA0](v106, v59);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v105, v61);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v104, v63);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v103, v65);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      v72 = v71;
      v5 = v100;
      MEMORY[0x24C1FAEA0](v72, v70);

      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
      NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(v108[0]);
    }

    else
    {
      v76 = MEMORY[0x24C1FAD20](v101, v102);
      [v32 setFilename_];
    }

    v77 = v99;
    v78 = v98;
    v79 = v96;
    v80 = v95;
    v81 = v94;
    v82 = v97;
    [v97 setSearchQuery_];
    v83 = objc_allocWithZone(type metadata accessor for FileEntitySpotlight.Fetcher());

    v84 = FileEntitySpotlight.Fetcher.init(queryCollection:completionHandler:)(v82, v78, v77);
    v85 = *(v5 + 48);
    *(v5 + 48) = v84;
    v86 = v84;

    v87 = *(v5 + 48);
    if (v87)
    {
      v88 = v87;
      FileEntitySpotlight.Fetcher.start()();
      outlined destroy of DOCItemCollectionConfiguration(v109);
    }

    else
    {
      outlined destroy of DOCItemCollectionConfiguration(v109);
    }
  }

  else
  {

    lazy protocol witness table accessor for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError();
    v73 = swift_allocError();
    *v74 = 1;
    a3(v73, 1);

    v75 = v104;
  }
}

uint64_t closure #1 in FileEntitySpotlight.Source.fetchEntities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay26DocumentManagerExecutables12FINodeEntityVGs5Error_pGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v8 + 16))(v11, a1, v7);
    v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v13 = swift_allocObject();
    (*(v8 + 32))(v13 + v12, v11, v7);
    FileEntitySpotlight.Source.fetchEntities(matching:completion:)(a3, a4, partial apply for closure #1 in closure #1 in FileEntitySpotlight.Source.fetchEntities(matching:), v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in closure #1 in FileEntitySpotlight.Source.fetchRecentEntities()(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay26DocumentManagerExecutables12FINodeEntityVGs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay26DocumentManagerExecutables12FINodeEntityVGs5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Void __swiftcall FileEntitySpotlight.Source.cancel()()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = v1;
    FileEntitySpotlight.Fetcher.stop()();
  }
}

void FileEntitySpotlight.Fetcher.stop()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v30);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "FileEntitySpotlightFetcher (%s stoping", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
  if (v12)
  {
    lazy protocol witness table accessor for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError();
    v13 = swift_allocError();
    *v14 = 0;

    v12(v13, 1);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12);
  }

  v15 = [*&v2[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_queryCollection] workingQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in FileEntitySpotlight.Fetcher.stop();
  *(v17 + 24) = v16;
  v30[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v30[5] = v17;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = thunk for @escaping @callee_guaranteed () -> ();
  v30[3] = &block_descriptor_27_3;
  v18 = _Block_copy(v30);
  v19 = v2;

  dispatch_sync(v15, v18);

  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v23 = 136315138;
      v25 = [v20 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v30);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_2493AC000, v21, v22, "FileEntitySpotlightFetcher (%s stoped", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C1FE850](v24, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }
  }
}

id *FileEntitySpotlight.Source.deinit()
{

  return v0;
}

uint64_t FileEntitySpotlight.Source.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *FileEntitySpotlight.Fetcher.init(queryCollection:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_queryCollection] = a1;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v27, sel_init);
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  v12 = &v10[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
  v13 = *&v10[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
  *v12 = partial apply for closure #1 in FileEntitySpotlight.Fetcher.init(queryCollection:completionHandler:);
  v12[1] = v11;
  v14 = v10;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v13);
  [*&v14[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_queryCollection] setDelegate_];
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.AppIntents);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    v20 = [v14 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v26);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_2493AC000, v16, v17, "FileEntitySpotlightFetcher (%s init", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  return v14;
}

void closure #1 in FileEntitySpotlight.Fetcher.init(queryCollection:completionHandler:)(uint64_t a1, char a2, char *a3, void (*a4)(uint64_t, void))
{
  v8 = &a3[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
  v9 = *&a3[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v9);
  FileEntitySpotlight.Fetcher.stop()();
  a4(a1, a2 & 1);
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.AppIntents);
  v11 = a3;
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = [v11 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2493AC000, oslog, v12, "FileEntitySpotlightFetcher (%s completed", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }
}

uint64_t FileEntitySpotlight.Fetcher.collectionDidFinishGathering(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in FileEntitySpotlight.Fetcher.collectionDidFinishGathering(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_142;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v16);
}

void closure #1 in FileEntitySpotlight.Fetcher.collectionDidFinishGathering(_:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FINodeEntity();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [a2 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v27 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        return;
      }

      v25 = v11 >> 62;
      v26 = v9;
      v15 = 0;
      v14 = v27;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x24C1FC540](v15, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v15 + 32);
        }

        FINodeEntity.init(item:)(v16, v7);
        v27 = v14;
        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
          v14 = v27;
        }

        ++v15;
        *(v14 + 16) = v18 + 1;
        outlined init with take of FINodeEntity(v7, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
      }

      while (v13 != v15);
      v12 = v25;
      v9 = v26;
    }

    if (one-time initialization token for AppIntents != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.AppIntents);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v12)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;

      _os_log_impl(&dword_2493AC000, v20, v21, "FileEntitySpotlightFetcher found %ld items", v22, 0xCu);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v24 = *&v9[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_completionHandler];
    if (v24)
    {

      v24(v14, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v24);
    }

    else
    {
    }
  }
}

unint64_t lazy protocol witness table accessor for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError()
{
  result = lazy protocol witness table cache variable for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError;
  if (!lazy protocol witness table cache variable for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError;
  if (!lazy protocol witness table cache variable for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileEntitySpotlight.FetchingError and conformance FileEntitySpotlight.FetchingError);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay26DocumentManagerExecutables12FINodeEntityVGs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t DOCSuggestion.matchingInputRange.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_matchingInputRange;
  swift_beginAccess();
  return *v1;
}

void DOCSearchSuggestion.title.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_title);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  (*((*MEMORY[0x277D85000] & *v3) + 0xB0))(v7);
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.localizedLowercase.getter();
  v9 = MEMORY[0x24C1FAD20](v8);

  v17 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString);
  v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString + 8);

  v10 = StringProtocol.localizedLowercase.getter();
  v11 = MEMORY[0x24C1FAD20](v10);

  v12 = [v9 rangeOfString:v11 options:{132, v17, v18}];
  v14 = v13;

  v15 = NSNotFound.getter();
  if (v12 != v15)
  {
    v16 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_matchingInputRange;
    swift_beginAccess();
    *v16 = v12;
    *(v16 + 1) = v14;
    v16[16] = 0;
  }
}

void (*DOCSearchSuggestion.title.modify(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = DOCSuggestion.title.modify();
  return DOCSearchSuggestion.title.modify;
}

void DOCSearchSuggestion.title.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    *v3 = (*((*MEMORY[0x277D85000] & *v5) + 0xB0))(v4);
    v3[1] = v6;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.localizedLowercase.getter();
    v8 = MEMORY[0x24C1FAD20](v7);

    v9 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString);
    v10 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString + 8);
    *v3 = v9;
    v3[1] = v10;

    v11 = StringProtocol.localizedLowercase.getter();
    v12 = MEMORY[0x24C1FAD20](v11);

    v13 = [v8 rangeOfString:v12 options:132];
    v15 = v14;

    v16 = NSNotFound.getter();
    if (v13 != v16)
    {
      v17 = v3[4] + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_matchingInputRange;
      swift_beginAccess();
      *v17 = v13;
      *(v17 + 8) = v15;
      *(v17 + 16) = 0;
    }
  }

  free(v3);
}

uint64_t DOCSuggestion.representedObject.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_representedObject;
  swift_beginAccess();
  return outlined init with copy of Any?(v1 + v3, a1);
}

uint64_t DOCSuggestion.representedObject.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_representedObject;
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DOCSuggestion.textReplacement.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_textReplacement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCSuggestion.textReplacement.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_textReplacement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *DOCSuggestion.customImage.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSuggestion.customImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCSuggestion.customImageGenerator.setter(uint64_t (*a1)(void), uint64_t a2)
{
  specialized DOCSuggestion.customImageGenerator.setter(a1, a2);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
}

void (*DOCSuggestion.customImageGenerator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customImageGenerator;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 56) = *v6;
  *(v4 + 64) = v8;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
  return DOCSuggestion.customImageGenerator.modify;
}

void DOCSuggestion.customImageGenerator.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 64);
  v7 = (v5 + *(*a1 + 80));
  v8 = *v7;
  *v7 = v4;
  v7[1] = v6;
  v9 = *((*MEMORY[0x277D85000] & *v5) + 0x120);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    v11 = v9(v3);
    v12 = v10;
    if (v4)
    {
      v13 = *v10;

      v14 = v4();
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    }

    else
    {
      if (!v8)
      {
LABEL_9:
        v11(v3, 0);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
        v20 = v3[7];
        goto LABEL_14;
      }

      v14 = 0;
    }

    *v12 = v14;
    goto LABEL_9;
  }

  v16 = v9(v3);
  v17 = v15;
  if (v4)
  {
    v18 = *v15;

    v19 = v4();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
LABEL_12:
    *v17 = v19;
    goto LABEL_13;
  }

  if (v8)
  {

    v19 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v16(v3, 0);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  v20 = v4;
LABEL_14:
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v20);

  free(v3);
}

void *DOCSuggestion.customAtomImage.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customAtomImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSuggestion.customAtomImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customAtomImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCSuggestion.customImageGenerator.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v2);
  return v3;
}

uint64_t DOCSuggestion.customAtomImageGenerator.setter(uint64_t (*a1)(void), uint64_t a2)
{
  specialized DOCSuggestion.customAtomImageGenerator.setter(a1, a2);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
}

void (*DOCSuggestion.customAtomImageGenerator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customAtomImageGenerator;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 56) = *v6;
  *(v4 + 64) = v8;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
  return DOCSuggestion.customAtomImageGenerator.modify;
}

void DOCSuggestion.customAtomImageGenerator.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 64);
  v7 = (v5 + *(*a1 + 80));
  v8 = *v7;
  *v7 = v4;
  v7[1] = v6;
  v9 = *((*MEMORY[0x277D85000] & *v5) + 0x150);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    v11 = v9(v3);
    v12 = v10;
    if (v4)
    {
      v13 = *v10;

      v14 = v4();
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
    }

    else
    {
      if (!v8)
      {
LABEL_9:
        v11(v3, 0);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
        v20 = v3[7];
        goto LABEL_14;
      }

      v14 = 0;
    }

    *v12 = v14;
    goto LABEL_9;
  }

  v16 = v9(v3);
  v17 = v15;
  if (v4)
  {
    v18 = *v15;

    v19 = v4();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
LABEL_12:
    *v17 = v19;
    goto LABEL_13;
  }

  if (v8)
  {

    v19 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v16(v3, 0);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  v20 = v4;
LABEL_14:
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v20);

  free(v3);
}

id DOCSearchSuggestion.effectiveImage.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x110))();
  if (!result)
  {
    v3 = (*((*v1 & *v0) + 0x1B8))();

    return DOCSuggestionCategory.image.getter(v3);
  }

  return result;
}

id DOCSearchSuggestion.effectiveAtomImage.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  if (!result)
  {
    v3 = (*((*v1 & *v0) + 0x1B8))();

    return DOCSuggestionCategory.image.getter(v3);
  }

  return result;
}

Swift::Void __swiftcall DOCSuggestion.updateReloadableContent()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  if (v2)
  {
    v3 = v2;
    v4 = v2();
    (*((*v1 & *v0) + 0x118))(v4);
    v2 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  }

  v5 = (*((*v1 & *v0) + 0x158))(v2);
  if (v5)
  {
    v6 = v5;
    v7 = v5();
    (*((*v1 & *v0) + 0x148))(v7);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
  }
}

uint64_t DOCSearchSuggestion.category.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchSuggestion.category.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCSuggester.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t DOCSuggester.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSuggester.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCSuggesterManager.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_suggesters] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_gatheredSuggestions] = v4;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v6, sel_init);
}

id DOCSuggestion.asSearchToken.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x178))();
  v3 = (*((*v1 & *v0) + 0xE0))();
  v4 = MEMORY[0x24C1FAD20](v3);

  v5 = [objc_opt_self() tokenWithIcon:v2 text:v4];

  [v5 setRepresentedObject_];
  return v5;
}

id DOCSuggestion.asInlineSuggestionItem.getter()
{
  v1 = MEMORY[0x277D85000];
  v32 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v32();
  v3 = v2;
  v4 = objc_opt_self();
  v5 = &selRef_labelColor;
  if ((v3 & 1) == 0)
  {
    v5 = &selRef_secondaryLabelColor;
  }

  v6 = [v4 *v5];
  v7 = *((*v1 & *v0) + 0xB0);
  v8 = v6;
  v9 = v7();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v14 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 64) = v14;
  v34 = v8;
  *(inited + 40) = v8;
  v31 = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v15 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v16 = MEMORY[0x24C1FAD20](v9, v11);

  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithString:v16 attributes:isa];

  v19 = (v32)();
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    v33 = v19;
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_249B9A480;
    *(v23 + 32) = v31;
    v24 = objc_opt_self();
    v25 = v31;
    v26 = [v24 labelColor];
    *(v23 + 64) = v14;
    *(v23 + 40) = v26;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v23);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v23 + 32, &_sSo21NSAttributedStringKeya_yptMd);
    v27 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 setAttributes:v27 range:{v33, v22}];
  }

  v28 = (*((*MEMORY[0x277D85000] & *v0) + 0x170))(v19);
  v29 = [objc_allocWithZone(MEMORY[0x277D759F8]) initWithLocalizedAttributedSuggestion:v18 localizedDescription:0 iconImage:v28];
  [v29 setRepresentedObject_];

  return v29;
}

objc_class *DOCSuggestionCategory.title.getter(unsigned __int8 a1)
{
  result = _DocumentManagerBundle();
  v3 = result;
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (result)
          {
            v13 = 0x8000000249BF82F0;
            v4 = 0x73746E65746E6F43;
            v5 = 0x617A696C61636F4CLL;
            v6 = 0xEB00000000656C62;
            v7 = 0xD000000000000036;
            v8 = 0xE800000000000000;
            goto LABEL_33;
          }

          goto LABEL_41;
        }

        if (result)
        {
          v13 = 0x8000000249BF8330;
          v4 = 0x656D616E656C6946;
          v5 = 0x617A696C61636F4CLL;
          v6 = 0xEB00000000656C62;
          v7 = 0xD000000000000031;
          v8 = 0xE900000000000073;
LABEL_33:
          v9.super.isa = v3;
          v10 = 0;
          v11 = 0xE000000000000000;
          goto LABEL_34;
        }

        goto LABEL_37;
      }

      if (result)
      {
        v13 = 0x8000000249BF83E0;
        v4 = 0x73646E694BLL;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0xD000000000000033;
        goto LABEL_29;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (a1)
    {
      if (!result)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v7 = 0xD00000000000002DLL;
      v13 = 0x8000000249BF83B0;
      v4 = 0x7365746144;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
LABEL_29:
      v8 = 0xE500000000000000;
      goto LABEL_33;
    }

    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v13 = 0x8000000249BF8420;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v4 = 1701736270;
    v8 = 0xE400000000000000;
LABEL_26:
    v9.super.isa = v3;
    v10 = 0;
    v11 = 0xE000000000000000;
    v7 = 0xD00000000000002ELL;
LABEL_34:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v5, v9, *&v10, *&v7)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (a1 > 6u)
  {
    if (a1 == 7)
    {
      if (result)
      {
        v13 = 0x8000000249BF8250;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0xD000000000000031;
        v4 = 1936154964;
        v8 = 0xE400000000000000;
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    if (a1 != 8)
    {
      if (!result)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v13 = 0x8000000249BF81F0;
      v4 = 0x726568744FLL;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v8 = 0xE500000000000000;
      goto LABEL_26;
    }

    if (!result)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v13 = 0x8000000249BF8220;
    v4 = 0x736E6F73726550;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v7 = 0xD00000000000002FLL;
LABEL_32:
    v8 = 0xE700000000000000;
    goto LABEL_33;
  }

  if (a1 == 5)
  {
    if (result)
    {
      v4 = 0xD000000000000010;
      v13 = 0x8000000249BF82B0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v8 = 0x8000000249BF8290;
      v7 = 0xD000000000000039;
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (result)
  {
    v13 = 0x8000000249BF8370;
    v4 = 0x676E6972616853;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v7 = 0xD000000000000030;
    goto LABEL_32;
  }

LABEL_44:
  __break(1u);
  return result;
}

objc_class *DOCSuggestionCategory.atomTitle.getter(unsigned __int8 a1)
{
  countAndFlagsBits = 0;
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v3 = result;
            v12 = 0x8000000249BF8480;
            v4 = 0x617A696C61636F4CLL;
            v5 = 0xEB00000000656C62;
            v6 = 1701667150;
LABEL_20:
            v8 = 0xE400000000000000;
            v9.super.isa = v3;
            v10 = 0;
            v11 = 0xE000000000000000;
            v7 = 0xD000000000000032;
LABEL_29:
            countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v9, *&v10, *(&v12 - 1))._countAndFlagsBits;

            return countAndFlagsBits;
          }

          goto LABEL_33;
        }

        result = _DocumentManagerBundle();
        if (!result)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v3 = result;
        v12 = 0x8000000249BF82F0;
        v6 = 0x73746E65746E6F43;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v7 = 0xD000000000000036;
        v8 = 0xE800000000000000;
LABEL_28:
        v9.super.isa = v3;
        v10 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_29;
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v12 = 0x8000000249BF84C0;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 1684957515;
        goto LABEL_20;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (a1)
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v3 = result;
      v7 = 0xD00000000000002DLL;
      v12 = 0x8000000249BF83B0;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 1702125892;
      v8 = 0xE400000000000000;
      goto LABEL_28;
    }

    return countAndFlagsBits;
  }

  if (a1 > 6u)
  {
    if (a1 == 7)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v7 = 0xD00000000000002CLL;
        v12 = 0x8000000249BF8450;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 1936154964;
        v8 = 0xE400000000000000;
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    if (a1 != 8)
    {
      return countAndFlagsBits;
    }

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v3 = result;
    v7 = 0xD00000000000002FLL;
    v12 = 0x8000000249BF8220;
    v6 = 0x736E6F73726550;
LABEL_27:
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v8 = 0xE700000000000000;
    goto LABEL_28;
  }

  if (a1 == 5)
  {
    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v3 = result;
    v6 = 0xD000000000000010;
    v12 = 0x8000000249BF82B0;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v8 = 0x8000000249BF8290;
    v7 = 0xD000000000000039;
    goto LABEL_28;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v7 = 0xD000000000000030;
    v12 = 0x8000000249BF8370;
    v6 = 0x676E6972616853;
    goto LABEL_27;
  }

LABEL_38:
  __break(1u);
  return result;
}

id DOCSuggestionCategory.image.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 == 1)
    {
      v1 = 0x7261646E656C6163;
      v2 = 0xE800000000000000;
      goto LABEL_14;
    }

    if (a1 == 2)
    {
      v1 = 0x642E6E6F2E636F64;
      v2 = 0xEA0000000000636FLL;
      goto LABEL_14;
    }

    if (a1 != 4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a1 == 5)
  {
LABEL_10:
    v2 = 0x8000000249BF8500;
    v1 = 0xD000000000000018;
    goto LABEL_14;
  }

  if (a1 != 6 && a1 != 8)
  {
LABEL_12:
    v1 = 0x697966696E67616DLL;
    v2 = 0xEF7373616C67676ELL;
    goto LABEL_14;
  }

  v1 = 0x632E6E6F73726570;
  v2 = 0xED0000656C637269;
LABEL_14:
  v3 = MEMORY[0x24C1FAD20](v1, v2);
  v4 = [objc_opt_self() systemImageNamed_];

  return v4;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCSuggestionCategory@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCSuggestionCategory.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t DOCSuggestion.atomTitle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path getter for DOCSuggestion.customImageGenerator : DOCSuggestion@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x128))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed () -> (@owned UIImage?)partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCSuggestion.customImageGenerator : DOCSuggestion(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out UIImage?)partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x130);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCSuggestion.customAtomImageGenerator : DOCSuggestion@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned UIImage?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCSuggestion.customAtomImageGenerator : DOCSuggestion(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out UIImage?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x160);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

id DOCSuggestion.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_matchingInputRange];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_title];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_representedObject];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_atomTitle];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_textReplacement];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customImage] = 0;
  v6 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customImageGenerator];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customAtomImage] = 0;
  v7 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customAtomImageGenerator];
  v8 = type metadata accessor for DOCSuggestion();
  *v7 = 0;
  *(v7 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id DOCSearchSuggestion.__allocating_init(inputString:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id DOCSearchSuggestion.init(inputString:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v3 = a1;
  v3[1] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCSearchSuggestion();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCSuggester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCSuggesterManager.suggesters.setter(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_suggesters;
  swift_beginAccess();
  *(v2 + v10) = a1;

  a1 = *(v2 + v10);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v13 = *(a1 + 8 * j + 32);
      }

      v14 = v13;
      v15 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v16 = *((*MEMORY[0x277D85000] & *v13) + 0x68);
      v17 = swift_unknownObjectRetain();
      v16(v17, &protocol witness table for DOCSuggesterManager);

      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void (*DOCSuggesterManager.suggesters.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_suggesters;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return DOCSuggesterManager.suggesters.modify;
}

void DOCSuggesterManager.suggesters.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    DOCSuggesterManager.suggesters.setter(v4);
  }

  else
  {
    DOCSuggesterManager.suggesters.setter(v3);
  }

  free(v2);
}

id one-time initialization function for dateParser()
{
  result = [objc_allocWithZone(MEMORY[0x277D06378]) init];
  static DOCSuggesterManager.dateParser = result;
  return result;
}

uint64_t DOCSuggesterManager.defaultSuggesters(for:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for DOCTagSuggester());
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCTagSuggester_dataSource];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCTagSuggester_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v3 + 1) = &protocol witness table for DOCSuggesterManager;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v4 = type metadata accessor for DOCSuggester();
  v31.receiver = v2;
  v31.super_class = v4;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v31, sel_init);
  if (one-time initialization token for dateParser != -1)
  {
    swift_once();
  }

  v7 = objc_allocWithZone(type metadata accessor for DOCDateSuggester());
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v5;
  v30.receiver = v7;
  v30.super_class = v4;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v30, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249BA5040;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  v11 = objc_allocWithZone(type metadata accessor for DOCFileTypeSuggester());
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v8;
  v29.receiver = v11;
  v29.super_class = v4;
  v12 = v8;
  v24 = v6;
  v13 = v9;
  *(v10 + 48) = objc_msgSendSuper2(&v29, sel_init);
  v14 = objc_allocWithZone(type metadata accessor for DOCNaturalLanguageFileTypeSuggester());
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors;
  if (one-time initialization token for defaultNaturalLanguageFileTypeDescriptors != -1)
  {
    swift_once();
  }

  *&v14[v15] = static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v12;
  v28.receiver = v14;
  v28.super_class = v4;
  v16 = v12;

  *(v10 + 56) = objc_msgSendSuper2(&v28, sel_init);
  v17 = objc_allocWithZone(type metadata accessor for DOCPersonSuggester());
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCPersonSuggester_currentQuery] = 0;
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v16;
  v27.receiver = v17;
  v27.super_class = v4;
  v18 = v16;
  *(v10 + 64) = objc_msgSendSuper2(&v27, sel_init);
  v19 = objc_allocWithZone(type metadata accessor for DOCIsSharedSuggester());
  *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v18;
  v26.receiver = v19;
  v26.super_class = v4;
  v20 = v18;
  *(v10 + 72) = objc_msgSendSuper2(&v26, sel_init);
  v21 = objc_allocWithZone(type metadata accessor for DOCFilenameSuggester());
  *&v21[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v20;
  v25.receiver = v21;
  v25.super_class = v4;
  v22 = v20;
  *(v10 + 80) = objc_msgSendSuper2(&v25, sel_init);

  return v10;
}

Swift::Void __swiftcall DOCSuggesterManager.deliverSuggestions(for:confirmedSuggestions:)(Swift::String a1, Swift::OpaquePointer confirmedSuggestions)
{
  v3 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v13 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId);
    if (!__OFADD__(v13, 1))
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x90))(countAndFlagsBits, object, v13 + 1, confirmedSuggestions._rawValue);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall DOCSuggesterManager.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  rawValue = confirmedSuggestions._rawValue;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = String.count.getter();
  if (v13 >= 1)
  {
    v14 = v64;
    v15 = *(v64 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_22;
    }

    v3 = v13;
    v66 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId;
    *(v64 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId) = v17;
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_gatheredSuggestions;
    swift_beginAccess();
    v19 = MEMORY[0x277D84F90];
    *(v14 + v18) = MEMORY[0x277D84F90];

    v21 = (*((*MEMORY[0x277D85000] & *v14) + 0xB8))(v20);
    v4 = v21;
    v67 = v19;
    if (v21 >> 62)
    {
      goto LABEL_23;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = object;
    for (i = countAndFlagsBits; v22; i = countAndFlagsBits)
    {
      countAndFlagsBits = 0;
      object = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C1FC540](countAndFlagsBits, v4);
        }

        else
        {
          if (countAndFlagsBits >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v23 = *(v4 + 8 * countAndFlagsBits + 32);
        }

        v24 = v23;
        v25 = countAndFlagsBits + 1;
        if (__OFADD__(countAndFlagsBits, 1))
        {
          break;
        }

        if (v3 >= (*((*MEMORY[0x277D85000] & *v23) + 0x88))())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++countAndFlagsBits;
        if (v25 == v22)
        {
          v26 = v67;
          object = v62;
LABEL_25:

          v31 = (v26 >> 62) & 1;
          if (v26 < 0)
          {
            LODWORD(v31) = 1;
          }

          HIDWORD(v61) = v31;
          if (v31 == 1)
          {
            goto LABEL_57;
          }

          for (j = *(v26 + 16); ; j = __CocoaSet.count.getter())
          {
            v33 = MEMORY[0x277D84F90];
            if (j)
            {
              v67 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, j & ~(j >> 63), 0);
              if (j < 0)
              {
                __break(1u);
                return;
              }

              v34 = 0;
              v33 = v67;
              v35 = j;
              do
              {
                if ((v26 & 0xC000000000000001) != 0)
                {
                  v36 = MEMORY[0x24C1FC540](v34, v26);
                }

                else
                {
                  v36 = *(v26 + 8 * v34 + 32);
                }

                v37 = v36;
                v38 = [v36 description];
                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v41 = v40;

                v67 = v33;
                v43 = *(v33 + 16);
                v42 = *(v33 + 24);
                if (v43 >= v42 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
                  v33 = v67;
                }

                ++v34;
                *(v33 + 16) = v43 + 1;
                v44 = v33 + 16 * v43;
                *(v44 + 32) = v39;
                *(v44 + 40) = v41;
              }

              while (v35 != v34);
              j = v35;
              object = v62;
            }

            v67 = v33;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v45 = BidirectionalCollection<>.joined(separator:)();
            v47 = v46;

            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_249BA08C0;
            v49 = String.count.getter();
            v50 = MEMORY[0x277D83B88];
            v51 = MEMORY[0x277D83C10];
            *(v48 + 56) = MEMORY[0x277D83B88];
            *(v48 + 64) = v51;
            *(v48 + 32) = v49;
            v52 = v64;
            v53 = *(v64 + v66);
            *(v48 + 96) = v50;
            *(v48 + 104) = v51;
            *(v48 + 72) = v53;
            *(v48 + 136) = MEMORY[0x277D837D0];
            *(v48 + 144) = lazy protocol witness table accessor for type String and conformance String();
            *(v48 + 112) = v45;
            *(v48 + 120) = v47;
            v54 = v52;
            os_log(_:dso:log:type:_:)();

            *(v52 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults) = j;
            if (HIDWORD(v61))
            {
              v55 = __CocoaSet.count.getter();
              v56 = i;
              if (!v55)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v55 = *(v26 + 16);
              v56 = i;
              if (!v55)
              {
LABEL_53:

                return;
              }
            }

            v57 = 0;
            while (1)
            {
              if ((v26 & 0xC000000000000001) != 0)
              {
                v58 = MEMORY[0x24C1FC540](v57, v26);
              }

              else
              {
                if (v57 >= *(v26 + 16))
                {
                  goto LABEL_56;
                }

                v58 = *(v26 + 8 * v57 + 32);
              }

              v59 = v58;
              v60 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                break;
              }

              (*((*MEMORY[0x277D85000] & *v58) + 0x90))(v56, object, *(v54 + v66), rawValue);

              ++v57;
              if (v60 == v55)
              {
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            ;
          }
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v22 = __CocoaSet.count.getter();
      v62 = object;
    }

    v26 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v27 = v64;
  if ((*((*MEMORY[0x277D85000] & *v64) + 0x60))())
  {
    v29 = v28;
    ObjectType = swift_getObjectType();
    (*(v29 + 8))(v27, MEMORY[0x277D84F90], *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId), countAndFlagsBits, object, ObjectType, v29);
    swift_unknownObjectRelease();
  }
}

uint64_t DOCSuggesterManager.suggester(_:didDeliver:forSearchId:input:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId] == a3)
  {
    v10 = result;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249BA08C0;
    v12 = String.count.getter();
    v13 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v14;
    *(v11 + 32) = v12;
    *(v11 + 96) = v13;
    *(v11 + 104) = v14;
    *(v11 + 72) = a3;
    *(v11 + 136) = type metadata accessor for DOCSuggester();
    *(v11 + 144) = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type DOCSuggester and conformance NSObject, v15, type metadata accessor for DOCSuggester);
    *(v11 + 112) = v10;
    v16 = v10;
    os_log(_:dso:log:type:_:)();

    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    v17[6] = a5;
    v18 = v5;

    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #1 in DOCSuggesterManager.suggester(_:didDeliver:forSearchId:input:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_gatheredSuggestions;
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v10);
  v11 = swift_endAccess();
  v12 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults) = v14;
  if (v14 > 0)
  {
    return;
  }

  if ((*((*MEMORY[0x277D85000] & *a1) + 0x60))(v11))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v18 = *(a1 + v9);
    v19 = *(v16 + 8);

    v19(a1, v18, a3, a4, a5, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.UI);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2493AC000, v21, v22, "All suggesters delivered.", v23, 2u);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }
}

id DOCSuggesterManager.init(configuration:)(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_suggesters] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_gatheredSuggestions] = v3;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t DOCSuggesterManager.__ivar_destroyer()
{
}

id DOCSuggestion.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DOCSuggesterManager.availableTags.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 userTags];

  v2 = v1;
  v3 = specialized _copySequenceToContiguousArray<A>(_:)(v2);

  v4 = specialized _arrayForceCast<A, B>(_:)(v3);

  return v4;
}

id DOCSuggesterManager.image(for:ringColor:borderColor:tagDimension:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = [objc_opt_self() requestForTag:a1 tagDimension:a4];
  [v6 setAllowUnsizedSymbolImages_];
  [v6 setSelectionOutlineColor_];
  [v6 setRingColor_];
  v7 = [objc_opt_self() shared];
  v8 = [v7 renderImageWithRequest_];

  return v8;
}

id protocol witness for DOCTagSuggesterDataSource.image(for:ringColor:borderColor:tagDimension:) in conformance DOCSuggesterManager(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = [objc_opt_self() requestForTag:a1 tagDimension:a4];
  [v6 setAllowUnsizedSymbolImages_];
  [v6 setSelectionOutlineColor_];
  [v6 setRingColor_];
  v7 = [objc_opt_self() shared];
  v8 = [v7 renderImageWithRequest_];

  return v8;
}

uint64_t protocol witness for DOCTagSuggesterDataSource.availableTags.getter in conformance DOCSuggesterManager()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 userTags];

  v2 = v1;
  v3 = specialized _copySequenceToContiguousArray<A>(_:)(v2);

  v4 = specialized _arrayForceCast<A, B>(_:)(v3);

  return v4;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 count];
  v9 = v8;
  if (v8)
  {
    if (v8 < 1)
    {
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 1;
      }

      v10[2] = v9;
      v10[3] = 2 * (v12 >> 5);
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10[3];

  result = NSOrderedSet.makeIterator()();
  if (v9 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = v13 >> 1;
  v16 = v10 + 4;
  if (v9)
  {
    v15 -= v9;
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, 255, MEMORY[0x277CC9178]);
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (!v36)
      {
        goto LABEL_38;
      }

      outlined init with take of Any(&v35, v16);
      v16 += 2;
    }

    while (--v9);
  }

  v32 = v3;
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, 255, MEMORY[0x277CC9178]);
  dispatch thunk of IteratorProtocol.next()();
  if (v34)
  {
    while (1)
    {
      result = outlined init with take of Any(&v33, &v35);
      if (!v15)
      {
        v17 = v10[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 1;
        }

        v23 = v22 >> 5;
        v20[2] = v19;
        v20[3] = 2 * (v22 >> 5);
        v24 = (v20 + 4);
        v25 = v10[3] >> 1;
        if (v10[2])
        {
          v26 = v10 + 4;
          if (v20 != v10 || v24 >= v26 + 32 * v25)
          {
            memmove(v20 + 4, v26, 32 * v25);
          }

          v10[2] = 0;
        }

        v16 = (v24 + 32 * v25);
        v15 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v10 = v20;
      }

      v27 = __OFSUB__(v15--, 1);
      if (v27)
      {
        break;
      }

      outlined init with take of Any(&v35, v16);
      v16 += 2;
      dispatch thunk of IteratorProtocol.next()();
      if (!v34)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v32 + 8))(v7, v2);
  result = outlined destroy of CharacterSet?(&v33, &_sypSgMd);
  v28 = v10[3];
  if (v28 < 2)
  {
    return v10;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v15);
  v30 = v29 - v15;
  if (!v27)
  {
    v10[2] = v30;
    return v10;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized DOCSuggestion.customImageGenerator.setter(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customImageGenerator);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x120);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  v9 = v7(v14);
  v10 = v8;
  if (a1)
  {
    v11 = *v8;

    v12 = a1();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
LABEL_5:
    *v10 = v12;
    goto LABEL_6;
  }

  if (v6)
  {

    v12 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v9(v14, 0);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t specialized DOCSuggestion.customAtomImageGenerator.setter(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCSuggestion_customAtomImageGenerator);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x150);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  v9 = v7(v14);
  v10 = v8;
  if (a1)
  {
    v11 = *v8;

    v12 = a1();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
LABEL_5:
    *v10 = v12;
    goto LABEL_6;
  }

  if (v6)
  {

    v12 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v9(v14, 0);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

unint64_t specialized DOCSuggestionCategory.init(rawValue:)(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSuggestionCategory and conformance DOCSuggestionCategory()
{
  result = lazy protocol witness table cache variable for type DOCSuggestionCategory and conformance DOCSuggestionCategory;
  if (!lazy protocol witness table cache variable for type DOCSuggestionCategory and conformance DOCSuggestionCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSuggestionCategory and conformance DOCSuggestionCategory);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned UIImage?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *DOCProgressCollectionIndicatorButtonItem.__allocating_init(configuration:progressSource:)(char *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized DOCProgressCollectionIndicatorButtonItem.__allocating_init(configuration:progressSource:)(a1, a2, v3, ObjectType, a3);
}

void DOCProgressCollectionIndicatorButtonItem.configuration.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration + 1);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration + 2);
  *a1 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration);
  a1[1] = v2;
  a1[2] = v3;
}

char *DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(char *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(a1, a2, v3, ObjectType, a3);
}

id closure #1 in DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(void (*a1)(uint64_t))
{
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & **(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView)) + 0x268))();
  v8 = COERCE_DOUBLE((*((*v6 & **&v4[v5]) + 0xE8))(v7));
  if ((v9 & 1) != 0 || v8 >= 1.0)
  {

    v2 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v11 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v21._object = 0x8000000249BEF280;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0x73736572676F7250;
    v14._object = 0x8000000249BEF260;
    v21._countAndFlagsBits = 0xD000000000000040;
    v14._countAndFlagsBits = 0xD00000000000001CLL;
    v13._object = 0xE800000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v12, v11, v13, v21);

    v15 = objc_opt_self();
    v16 = MEMORY[0x24C1FAD20](0x69702E7472616863, 0xE900000000000065);
    v17 = [v15 __systemImageNamedSwift_];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v18;
    specialized Array.append<A>(contentsOf:)(inited);
    v2 = v20;
LABEL_7:
    a1(v2);
  }

  __break(1u);
  return result;
}

void closure #2 in DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(0);
  }
}

void DOCProgressCollectionIndicatorButtonItem.progressIndicatorViewDidReceiveTap(_:)(void *a1)
{
  v2 = v1;
  v4 = [a1 doc_presentingViewController];
  if (v4 && (v5 = v4, v6 = [v4 presentedViewController], v5, v6) || (v7 = objc_msgSend(a1, sel_window)) != 0 && (v8 = v7, v6 = objc_msgSend(v7, sel_rootViewController), v8, v6))
  {
    v9 = v6;
    v10 = MEMORY[0x277D85000];
    v11 = *((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView)) + 0xE8);
    v20 = v9;
    v12 = COERCE_DOUBLE(v11());
    v13 = v20;
    if ((v14 & 1) == 0)
    {
      v13 = v20;
      if (v12 < 1.0)
      {
        v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource + 8);
        v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration + 1);
        v17 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration + 2);
        v21[0] = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration);
        v21[1] = v16;
        v21[2] = v17;
        objc_allocWithZone(type metadata accessor for DOCProgressCollectionViewer());
        v18 = v20;
        v19 = swift_unknownObjectRetain();
        v13 = DOCProgressCollectionViewer.init(source:configuration:options:)(v19, v15, v21, &outlined read-only object #0 of DOCProgressCollectionIndicatorButtonItem.presentProgressViewer(in:));
        (*((*v10 & *v13) + 0xC0))(v18, v2, 15);
      }
    }
  }
}

void DOCProgressCollectionIndicatorButtonItem.viewControllerForPresentationFallback.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCProgressCollectionIndicatorButtonItem.viewControllerForPresentationFallback.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_viewControllerForPresentationFallback;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void DOCProgressCollectionIndicatorButtonItem.presentProgressViewer(in:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView)) + 0xE8))());
  if ((v5 & 1) != 0 || v4 >= 1.0)
  {
    return;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v7 = (*((*v3 & *v1) + 0xA0))(v4);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      if (one-time initialization token for ProgressUI != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.ProgressUI);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2493AC000, v9, v10, "ERROR: No presentingVC for progress UI, falling back to any window's root", v11, 2u);
        MEMORY[0x24C1FE850](v11, -1, -1);
      }

      v12 = [objc_opt_self() anyWindowPreferingKeyWindow];
      v6 = [v12 rootViewController];

      if (!v6)
      {
        oslog = Logger.logObject.getter();
        v17 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(oslog, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_2493AC000, oslog, v17, "ERROR: No presentingVC for progress UI, falling to present UI", v18, 2u);
          MEMORY[0x24C1FE850](v18, -1, -1);
        }

        goto LABEL_14;
      }
    }
  }

  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource + 8);
  v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration + 1);
  v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration + 2);
  v20[0] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration);
  v20[1] = v14;
  v20[2] = v15;
  objc_allocWithZone(type metadata accessor for DOCProgressCollectionViewer());
  v16 = swift_unknownObjectRetain();
  oslog = DOCProgressCollectionViewer.init(source:configuration:options:)(v16, v13, v20, &outlined read-only object #0 of DOCProgressCollectionIndicatorButtonItem.presentProgressViewer(in:));
  (*((*v3 & oslog->isa) + 0xC0))(v6, v1, 15);

LABEL_14:
}

void closure #1 in DOCProgressCollectionIndicatorButtonItem.getMenuRepresentationAction()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & **(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView)) + 0x268))();
    DOCProgressCollectionIndicatorButtonItem.presentProgressViewer(in:)(0);
  }
}

uint64_t DOCProgressCollectionIndicatorButtonItem.isActivePopoverSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCProgressCollectionIndicatorButtonItem.isActivePopoverSource.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView);
  v4[OBJC_IVAR____TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView_isActivePopoverSource] = a1;
  return [v4 setNeedsLayout];
}

void (*DOCProgressCollectionIndicatorButtonItem.isActivePopoverSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCProgressCollectionIndicatorButtonItem.isActivePopoverSource.modify;
}

void DOCProgressCollectionIndicatorButtonItem.isActivePopoverSource.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView);
    v5[OBJC_IVAR____TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView_isActivePopoverSource] = *(v4 + v3[4]);
    [v5 setNeedsLayout];
  }

  free(v3);
}

int64x2_t one-time initialization function for metrics()
{
  v0 = _UISolariumEnabled();
  v1 = 44.0;
  if (v0)
  {
    v1 = 38.0;
  }

  static DOCProgressCollectionIndicatorButtonItem.metrics = 0x4048000000000000;
  qword_27EEF16C0 = *&v1;
  result = vdupq_n_s64(0x4035800000000000uLL);
  xmmword_27EEF16C8 = result;
  return result;
}

uint64_t DOCProgressCollectionIndicatorButtonItem.setup()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView];
  [v2 setClipsToBounds_];
  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView];
  [v2 addSubview_];
  if (one-time initialization token for metrics != -1)
  {
    swift_once();
  }

  v4 = *&static DOCProgressCollectionIndicatorButtonItem.metrics;
  v5 = *&qword_27EEF16C0;
  v6 = xmmword_27EEF16C8;
  [v2 frame];
  [v2 setFrame_];
  [v3 setFrame_];
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
  objc_msgSendSuper2(&v17, sel_setCustomView_, v2);
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0xC0);
  v8 = swift_unknownObjectRetain();
  v7(v8);
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in DOCProgressCollectionIndicatorButtonItem.setup();
  *(v11 + 24) = v10;
  v16[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> ();
  v16[3] = &block_descriptor_47_1;
  v12 = _Block_copy(v16);
  v13 = v1;

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(int a1)
{
  v2 = v1;
  v48 = a1;
  v47 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[1] = v5;
  MEMORY[0x28223BE20](v7, v8);
  v45 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v46 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v41 - v15;
  v17 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource + 8];
  ObjectType = swift_getObjectType();
  result = (*(v17 + 8))(ObjectType, v17);
  v20 = result;
  v21 = *(result + 16);
  if (!v21)
  {

LABEL_13:
    v30 = v47;
    v29 = 0;
    v54 = 0;
    memset(v53, 0, sizeof(v53));
LABEL_14:
    v31 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_inFlightVisibilityChange;
    swift_beginAccess();
    outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v2 + v31, v16);
    if ((*(v3 + 48))(v16, 1, v30))
    {
      outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
      v32 = [v2 isHidden] ^ 1;
      if (v48)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v33 = v45;
      outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v16, v45);
      outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
      v32 = *(v33 + *(v30 + 20));
      outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v33);
      if (v48)
      {
        goto LABEL_19;
      }
    }

    if (v29 == v32)
    {
      return outlined destroy of CharacterSet?(v53, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    }

LABEL_19:
    UUID.init()();
    v6[*(v30 + 20)] = v29;
    v34 = v46;
    outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v6, v46);
    (*(v3 + 56))(v34, 0, 1, v30);
    swift_beginAccess();
    outlined assign with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v34, v2 + v31);
    swift_endAccess();
    if (v29 && [objc_opt_self() areAnimationsEnabled])
    {
      [v2 setHidden_];
      v35 = objc_opt_self();
      v36 = v45;
      outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v6, v45);
      v37 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v2;
      outlined init with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v36, v38 + v37);
      v51 = partial apply for closure #2 in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:);
      v52 = v38;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v50 = &block_descriptor_143;
      v39 = _Block_copy(aBlock);
      v40 = v2;

      [v35 performAfterCATransactionCommits_];
      _Block_release(v39);
    }

    else
    {
      performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(v2, v6);
    }

    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v6);
    return outlined destroy of CharacterSet?(v53, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  }

  v42 = v3;
  v43 = v1;
  v44 = v6;
  v22 = 0;
  v23 = result + 32;
  while (v22 < *(v20 + 16))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v23, aBlock);
    v25 = v50;
    v24 = v51;
    __swift_project_boxed_opaque_existential_1(aBlock, v50);
    v26 = (*(v24 + 3))(v25, v24);
    if (([v26 isCancelled] & 1) != 0 || (objc_msgSend(v26, sel_isFinished) & 1) != 0 || (objc_msgSend(v26, sel_fractionCompleted), v27 >= 1.0))
    {
    }

    else
    {
      v28 = [v26 isPaused];

      if ((v28 & 1) == 0)
      {

        outlined init with take of DOCDSCopyEngineConnection(aBlock, v53);
        v29 = 1;
        v6 = v44;
        v2 = v43;
        v3 = v42;
        v30 = v47;
        goto LABEL_14;
      }
    }

    ++v22;
    result = __swift_destroy_boxed_opaque_existential_0(aBlock);
    v23 += 40;
    if (v21 == v22)
    {

      v6 = v44;
      v2 = v43;
      v3 = v42;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v46 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSg_AGtMd);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v45 - v22;
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_inFlightVisibilityChange;
  swift_beginAccess();
  v49 = a2;
  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(a2, v23);
  (*(v5 + 56))(v23, 0, 1, v4);
  v25 = *(v12 + 56);
  v47 = a1;
  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(a1 + v24, v15);
  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v23, &v15[v25]);
  v26 = v5;
  v27 = *(v5 + 48);
  if (v27(v15, 1, v4) == 1)
  {
    outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
    if (v27(&v15[v25], 1, v4) == 1)
    {
      outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
LABEL_4:
      v15 = swift_allocObject();
      v29 = v47;
      v28 = v48;
      *(v15 + 2) = v47;
      outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v49, v28);
      v30 = (*(v26 + 80) + 24) & ~*(v26 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      outlined init with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v28, v31 + v30);
      v32 = objc_opt_self();
      v33 = v29;
      if ([v32 areAnimationsEnabled])
      {
        v54 = partial apply for closure #1 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:);
        v55 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v51 = 1107296256;
        v52 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v53 = &block_descriptor_34_4;
        v34 = _Block_copy(&aBlock);

        v54 = partial apply for closure #2 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:);
        v55 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v51 = 1107296256;
        v52 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        v53 = &block_descriptor_37_4;
        v35 = _Block_copy(&aBlock);

        [v32 animateWithDuration:v34 animations:v35 completion:0.2];

        _Block_release(v35);
        _Block_release(v34);
        return;
      }

      v42 = swift_allocObject();
      v42[2] = partial apply for closure #1 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:);
      v42[3] = v15;
      v42[4] = partial apply for closure #2 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:);
      v42[5] = v31;
      v43 = swift_allocObject();
      *(v43 + 16) = _sSo6UIViewC26DocumentManagerExecutablesE21doc_performAnimatable18allowingAnimations17animationDuration10animations10completionySb_SdyycySbctFZyyXEfU_TA_0;
      *(v43 + 24) = v42;
      v54 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v55 = v43;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = thunk for @escaping @callee_guaranteed () -> ();
      v53 = &block_descriptor_31_3;
      v37 = _Block_copy(&aBlock);

      [v32 performWithoutAnimation_];

      _Block_release(v37);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_16;
      }

      return;
    }

LABEL_8:
    v36 = &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSg_AGtMd;
LABEL_9:
    outlined destroy of CharacterSet?(v15, v36);
    return;
  }

  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v15, v19);
  if (v27(&v15[v25], 1, v4) == 1)
  {
    outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v19);
    goto LABEL_8;
  }

  v37 = v46;
  outlined init with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(&v15[v25], v46);
  v38 = static UUID.== infix(_:_:)();
  outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  if ((v38 & 1) == 0)
  {
LABEL_16:
    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v37);
    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v19);
    v36 = &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd;
    goto LABEL_9;
  }

  v39 = *(v4 + 20);
  v40 = v19[v39];
  v41 = v37[v39];
  outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v37);
  outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v19);
  outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  if (v40 == v41)
  {
    goto LABEL_4;
  }
}

void closure #1 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UINavigationBar);
  v2 = [v1 superview];
  if (v2)
  {
    v6 = v2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = v6;
    while (1)
    {
      v7 = v4;
      if ([v4 isKindOfClass_])
      {
        break;
      }

      v5 = [v7 superview];

      v4 = v5;
      if (!v5)
      {
        return;
      }
    }

    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() layoutIfNeeded];
  }
}

id closure #2 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSg_AGtMd);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v37 - v24;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_inFlightVisibilityChange;
  swift_beginAccess();
  v39 = a3;
  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(a3, v25);
  v37 = *(v6 + 56);
  v37(v25, 0, 1, v5);
  v27 = *(v11 + 56);
  v40 = a2;
  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(a2 + v26, v14);
  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v25, &v14[v27]);
  v28 = *(v6 + 48);
  if (v28(v14, 1, v5) == 1)
  {
    outlined destroy of CharacterSet?(v25, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
    if (v28(&v14[v27], 1, v5) == 1)
    {
      outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
LABEL_4:
      v29 = v38;
      v37(v38, 1, 1, v5);
      v30 = v40;
      swift_beginAccess();
      outlined assign with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v29, v30 + v26);
      swift_endAccess();
      return [v30 setHidden_];
    }

    goto LABEL_7;
  }

  outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(v14, v21);
  if (v28(&v14[v27], 1, v5) == 1)
  {
    outlined destroy of CharacterSet?(v25, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v21);
LABEL_7:
    v32 = &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSg_AGtMd;
    return outlined destroy of CharacterSet?(v14, v32);
  }

  outlined init with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(&v14[v27], v9);
  v33 = static UUID.== infix(_:_:)();
  outlined destroy of CharacterSet?(v25, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  if ((v33 & 1) == 0)
  {
    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v9);
    outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v21);
    v32 = &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd;
    return outlined destroy of CharacterSet?(v14, v32);
  }

  v34 = *(v5 + 20);
  v35 = v21[v34];
  v36 = v9[v34];
  outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v9);
  outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(v21);
  result = outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  if (v35 == v36)
  {
    goto LABEL_4;
  }

  return result;
}

id DOCProgressCollectionIndicatorButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCProgressCollectionIndicatorButtonItem.__ivar_destroyer()
{
  swift_unknownObjectRelease();
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_viewControllerForPresentationFallback);

  return outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_inFlightVisibilityChange, &_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
}

id DOCProgressCollectionIndicatorButtonItem.ProgressItemContainerView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *specialized DOCProgressCollectionIndicatorButtonItem.__allocating_init(configuration:progressSource:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0));

  return specialized DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(a1, a2, v9, a4, a5);
}

char *specialized DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:)(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_isActivePopoverSource] = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_containerView;
  type metadata accessor for DOCProgressCollectionIndicatorButtonItem.ProgressItemContainerView();
  *&a3[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_inFlightVisibilityChange;
  v14 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  (*(*(v14 - 8) + 56))(&a3[v13], 1, 1, v14);
  v15 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource];
  *v15 = a2;
  v15[1] = a5;
  v16 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_configuration];
  *v16 = v9;
  v16[1] = v10;
  v16[2] = v11;
  LOBYTE(aBlock[0]) = v9;
  v17 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorView());
  swift_unknownObjectRetain();
  v18 = specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(aBlock, a2, v17, 0.3, a4, a5);
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_indicatorView] = v18;
  if (_UISolariumEnabled())
  {
    v20 = *&a3[v19];
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 labelColor];
    (*((*MEMORY[0x277D85000] & *v22) + 0x120))(v23);
  }

  v24 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
  v49.receiver = a3;
  v49.super_class = v24;
  v25 = objc_msgSendSuper2(&v49, sel_init);
  result = _DocumentManagerBundle();
  if (result)
  {
    v27 = result;
    swift__string._object = 0x8000000249BEF280;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0x73736572676F7250;
    v30._object = 0x8000000249BEF260;
    swift__string._countAndFlagsBits = 0xD000000000000040;
    v30._countAndFlagsBits = 0xD00000000000001CLL;
    v29._object = 0xE800000000000000;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v28, v27, v29, swift__string);

    v32 = MEMORY[0x24C1FAD20](v31._countAndFlagsBits, v31._object);

    [v25 setTitle_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_249BA0290;
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:);
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_53_3;
    v36 = _Block_copy(aBlock);
    v37 = v25;

    v38 = [v34 elementWithUncachedProvider_];
    _Block_release(v36);
    *(preferredElementSize + 32) = v38;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v50.value.super.isa = 0;
    v50.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, v39, 0, v50, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v47);
    v42 = v41;
    [v37 setMenuRepresentation_];

    v43 = *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItem_progressSource + 8];
    ObjectType = swift_getObjectType();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v46 = *(v43 + 16);

    v46(v37, partial apply for closure #2 in DOCProgressCollectionIndicatorButtonItem.init(configuration:progressSource:), v45, ObjectType, v43);
    swift_unknownObjectRelease();

    DOCProgressCollectionIndicatorButtonItem.setup()();

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata completion function for DOCProgressCollectionIndicatorButtonItem()
{
  type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?()
{
  if (!lazy cache variable for type metadata for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?)
  {
    type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?);
    }
  }
}

uint64_t type metadata completion function for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemC27VisibilityChangeTransaction33_B63CAF900B351F60B6673B49E171E6A0LLVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(uint64_t a1)
{
  v2 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #2 in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)()
{
  v1 = *(type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(v2, v3);
}

uint64_t objectdestroyTm_14()
{
  v1 = *(type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id partial apply for closure #2 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DOCProgressCollectionIndicatorButtonItem.VisibilityChangeTransaction(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #2 in performChanges #1 () in DOCProgressCollectionIndicatorButtonItem.updateIndicatorViewVisibility(forceUpdate:)(a1, v4, v5);
}

double UIFontMetrics.doc_scaledValue(for:scalingRate:)(double a1, double a2)
{
  v4 = [objc_opt_self() defaultMetrics];
  [v4 scaledValueForValue_];
  v6 = v5;

  return (v6 - a1) * a2 + a1;
}

Swift::Bool __swiftcall DOCConcreteLocation.matchesSelectedSidebarLocation(_:)(DOCConcreteLocation *a1)
{
  v3 = [(DOCConcreteLocation *)a1 sourceIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v10 = [(DOCConcreteLocation *)a1 sourceIdentifier];
      v11 = [(DOCConcreteLocation *)a1 isRoot];
      goto LABEL_12;
    }
  }

  v10 = [(DOCConcreteLocation *)a1 originalSourceIdentifier];
  if (([(DOCConcreteLocation *)a1 isRoot]& 1) != 0 || (v12 = [(DOCConcreteLocation *)a1 fileProviderItem]) == 0)
  {
    v11 = 1;
  }

  else
  {

    v11 = 0;
  }

LABEL_12:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
LABEL_13:

    return 1;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v14 = [v1 fileProviderItem];
  if (v14 || (v14 = [v1 sourceIdentifier], !v10))
  {

    goto LABEL_17;
  }

  v20 = v14;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v23 != v24)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_29;
    }

LABEL_17:
    v15 = [(DOCConcreteLocation *)a1 fileProviderItem];
    if (v15)
    {
      v16 = v15;
      v17 = [v1 fileProviderItem];
      if (v17)
      {
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        return (v19 & 1) != 0;
      }
    }

LABEL_22:

    return 0;
  }

LABEL_29:
  if (![v1 isTaggedItemsSource] || (-[DOCConcreteLocation isTaggedItemsSource](a1, sel_isTaggedItemsSource) & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = [v1 representedTag];
  v27 = [(DOCConcreteLocation *)a1 representedTag];
  v28 = v27;
  if (!v26)
  {

    if (v28)
    {

      return 0;
    }

    return 1;
  }

  if (!v27)
  {

    goto LABEL_22;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v29 = static NSObject.== infix(_:_:)();

  return v29 & 1;
}

uint64_t one-time initialization function for appIntents()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appIntents);
  __swift_project_value_buffer(v0, static Logger.appIntents);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.appIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntents != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.appIntents);
}

uint64_t static Logger.appIntents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for appIntents != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.appIntents);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DOCItemCollectionViewController.collectionView(_:appEntityIdentifierForItemAt:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v18 = &v47 - v17;
  v19 = (*((*MEMORY[0x277D85000] & *v2) + 0xD88))(a1, 0, v16);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 fpfs_fpItem];
    if (v21)
    {
      v22 = v21;
      FINodeEntity.init(item:)(v22, v18);
      outlined init with copy of FINodeEntity(v18, v13);
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
      EntityIdentifier.init<A>(for:)();
      swift_unknownObjectRelease();

      outlined destroy of FINodeEntity(v18);
      v23 = type metadata accessor for EntityIdentifier();
      return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
    }

    else
    {
      if (one-time initialization token for appIntents != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.appIntents);
      swift_unknownObjectRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v48 = v38;
        *v37 = 136315138;
        v39 = [v20 description];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v48);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_2493AC000, v35, v36, "Failed to get FPItem for node %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x24C1FE850](v38, -1, -1);
        MEMORY[0x24C1FE850](v37, -1, -1);
      }

      swift_unknownObjectRelease();

      v44 = type metadata accessor for EntityIdentifier();
      v45 = *(*(v44 - 8) + 56);

      return v45(a2, 1, 1, v44);
    }
  }

  else
  {
    if (one-time initialization token for appIntents != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.appIntents);
    (*(v6 + 16))(v9, a1, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v6 + 8))(v9, v5);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v48);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2493AC000, v26, v27, "Failed to find node for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v46 = type metadata accessor for EntityIdentifier();
    return (*(*(v46 - 8) + 56))(a2, 1, 1, v46);
  }
}

id DOCTextFieldRoundedBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCTextFieldRoundedBackgroundView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCTextFieldRoundedBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DOCTextFieldRoundedBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape] = 1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for DOCTextFieldRoundedBackgroundView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = DOCTextFieldRoundedBackgroundView.backgroundProvidingTextField.getter();
  [v9 bounds];
  [v10 setFrame_];

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField;
  [*&v9[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField] setAutoresizingMask_];
  [v9 addSubview_];
  DOCTextFieldRoundedBackgroundView.updateStyling()();

  return v9;
}

uint64_t DOCTextFieldRoundedBackgroundView.usePillShape.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCTextFieldRoundedBackgroundView.usePillShape.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCTextFieldRoundedBackgroundView.updateStyling()();
  }
}

void (*DOCTextFieldRoundedBackgroundView.usePillShape.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCTextFieldRoundedBackgroundView.usePillShape.modify;
}

void DOCTextFieldRoundedBackgroundView.usePillShape.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCTextFieldRoundedBackgroundView.updateStyling()();
  }

  free(v1);
}

id DOCTextFieldRoundedBackgroundView.backgroundProvidingTextField.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
    [v4 setBorderStyle_];
    [v4 setUserInteractionEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCTextFieldRoundedBackgroundView.updateStyling()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v12 - v5;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x60))(v4))
  {
    type metadata accessor for UIHoverStyle();
    static UIShape.capsule.getter();
    v7 = type metadata accessor for UIShape();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = UIHoverStyle.init(shape:)();
    [v1 setHoverStyle_];

    v9 = DOCTextFieldRoundedBackgroundView.backgroundProvidingTextField.getter();
  }

  else
  {
    v10 = DOCTextFieldRoundedBackgroundView.backgroundProvidingTextField.getter();
    [v10 _cornerRadius];

    type metadata accessor for UIHoverStyle();
    static UIShape.rect(cornerRadius:cornerCurve:maskedCorners:)();
    v11 = type metadata accessor for UIShape();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    v9 = UIHoverStyle.init(shape:)();
    [v1 setHoverStyle_];
  }
}

id DOCTextFieldRoundedBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTextFieldRoundedBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for UIHoverStyle()
{
  result = lazy cache variable for type metadata for UIHoverStyle;
  if (!lazy cache variable for type metadata for UIHoverStyle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIHoverStyle);
  }

  return result;
}

void DOCAttributionPillView.configure(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = [a1 preferredFormattedName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  (*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v8, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277D6B7B0]) initWithDocumentSender_];
  v12 = [v1 traitCollection];
  [v12 displayScale];
  v14 = v13;

  v15 = [v1 traitCollection];
  v16 = [v15 layoutDirection];

  v17 = v16 == 1;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v20 = v11;
  v21 = a1;

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v20;
  *(v23 + 40) = v14;
  *(v23 + 48) = v17;
  *(v23 + 56) = v21;
  *(v23 + 64) = v19;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DOCAttributionPillView.configure(with:), v23);
}

id DOCAttributionPillView.image.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_imageView) image];

  return v1;
}

void DOCAttributionPillView.image.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_imageView) setImage_];
}

void (*DOCAttributionPillView.image.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_imageView);
  a1[1] = v3;
  *a1 = [v3 image];
  return DOCAttributionPillView.image.modify;
}

void DOCAttributionPillView.image.modify(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_];
}

id DOCAttributionPillView.senderName.didset()
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  MEMORY[0x28223BE20](v95, v1);
  v94 = &v77 - v2;
  v104 = type metadata accessor for AttributedString.Runs.Index();
  v99 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v3);
  v103 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.Runs.Run();
  v97 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v105 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v100 = &v77 - v10;
  v102 = type metadata accessor for AttributedString.Runs();
  v98 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v11);
  v90 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x28223BE20](v89, v13);
  v106 = &v77 - v14;
  v88 = type metadata accessor for AttributedString.FormattingOptions();
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v15);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v87 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v84 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v77 - v25;
  v101 = type metadata accessor for String.LocalizationValue();
  v83 = *(v101 - 1);
  MEMORY[0x28223BE20](v101, v27);
  v82 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v77 - v31;
  v33 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v33 - 8, v34);
  v35 = type metadata accessor for AttributedString();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v91 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v96 = &v77 - v41;
  v92 = v0;
  v42 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_senderName);
  swift_beginAccess();
  v43 = v42[1];
  if (v43)
  {
    v80 = v36;
    v81 = v35;
    v44 = *v42;

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v45._countAndFlagsBits = 0x2A2A206D6F7246;
    v45._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
    v46._countAndFlagsBits = v44;
    v46._object = v43;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v46);

    v47._countAndFlagsBits = 10794;
    v47._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
    v79 = v32;
    String.LocalizationValue.init(stringInterpolation:)();
    v48 = type metadata accessor for Locale();
    v49 = *(*(v48 - 8) + 56);
    v78 = v26;
    v49(v26, 1, 1, v48);
    v108 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x277CC8B58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A], &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
    v50 = v87;
    v51 = v102;
    v52 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v53 = v83;
    (*(v83 + 16))(v82, v32, v101);
    v54 = v85;
    (*(v85 + 16))(v86, v50, v52);
    v77 = _DocumentManagerBundle();
    outlined init with copy of Locale?(v26, v84);
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
    (*(v54 + 8))(v50, v52);
    outlined destroy of CharacterSet?(v78, &_s10Foundation6LocaleVSgMd);
    (*(v53 + 8))(v79, v101);
    v55 = v90;
    AttributedString.runs.getter();
    v56 = v98;
    v98[2](v106, v55, v51);
    lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08]);
    dispatch thunk of Collection.startIndex.getter();
    (v56[1])(v55, v51);
    v101 = (v99 + 1);
    v98 = (v97 + 4);
    v99 = (v97 + 2);
    ++v97;
    v57 = v92;
    v58 = v105;
    v93 = v5;
    while (1)
    {
      v59 = v103;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8]);
      v60 = v104;
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v101)(v59, v60);
      if (v61)
      {
        outlined destroy of CharacterSet?(v106, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
        v71 = *(v57 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_textLabel);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
        v72 = v80;
        v73 = v96;
        v74 = v81;
        (*(v80 + 16))(v91, v96, v81);
        v75 = NSAttributedString.init(_:)();
        [v71 setAttributedText_];

        return (*(v72 + 8))(v73, v74);
      }

      v62 = dispatch thunk of Collection.subscript.read();
      v63 = v100;
      (*v99)(v100);
      v62(&v108, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*v98)(v58, v63, v5);
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
      AttributedString.Runs.Run.subscript.getter();
      if ((v109 & 1) != 0 || (v108 & 2) == 0)
      {
        break;
      }

      v64 = DOCAttributionPillView.senderFont.getter();
      if (v64)
      {
        goto LABEL_10;
      }

LABEL_3:
      (*v97)(v58, v5);
    }

    v64 = DOCAttributionPillView.baseFont.getter();
    if (!v64)
    {
      goto LABEL_3;
    }

LABEL_10:
    v65 = v57;
    v66 = v64;
    v67 = v94;
    AttributedString.Runs.Run.range.getter();
    v68 = v66;
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v69 = AttributedString.subscript.modify();
    v107 = v64;
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedSubstring.subscript.setter();
    v69(&v108, 0);

    v57 = v65;
    v70 = v67;
    v5 = v93;
    v58 = v105;
    outlined destroy of CharacterSet?(v70, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    goto LABEL_3;
  }

  return [*(v92 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_textLabel) setAttributedText_];
}

uint64_t DOCAttributionPillView.senderName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_senderName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id DOCAttributionPillView.senderName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_senderName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return DOCAttributionPillView.senderName.didset();
}

id (*DOCAttributionPillView.senderName.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCAttributionPillView.senderName.modify;
}

id DOCAttributionPillView.senderName.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCAttributionPillView.senderName.didset();
  }

  return result;
}

void *DOCAttributionPillView.menu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCAttributionPillView.menu.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_menu;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setContextMenuInteractionEnabled_];
}

void (*DOCAttributionPillView.menu.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_menu;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCAttributionPillView.menu.modify;
}

void DOCAttributionPillView.menu.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3 + 24) setContextMenuInteractionEnabled_];
  }

  free(v3);
}

id DOCAttributionPillView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCAttributionPillView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_senderName];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_menu] = 0;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_backgroundView;
  v11 = [objc_opt_self() effectWithStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_containerView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_imageView;
  type metadata accessor for RoundImageView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_textLabel;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_chevronView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___baseFont] = 1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___senderFont] = 1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___chevronFont] = 1;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for DOCAttributionPillView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  DOCAttributionPillView.setupViews()();

  return v17;
}

id DOCAttributionPillView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCAttributionPillView.isHighlighted.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCAttributionPillView();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void DOCAttributionPillView.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for DOCAttributionPillView();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_isHighlighted);
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, sel_setHighlighted_, a1 & 1);
  DOCAttributionPillView.isHighlighted.didset(v4);
}

void DOCAttributionPillView.isHighlighted.didset(char a1)
{
  if ([v1 isHighlighted] != (a1 & 1))
  {
    if ([v1 isHighlighted])
    {
      v2 = 0.6;
    }

    else
    {
      v2 = 1.0;
    }

    v3 = objc_opt_self();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v7[4] = partial apply for closure #1 in DOCAttributionPillView.isHighlighted.didset;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v7[3] = &block_descriptor_27_4;
    v6 = _Block_copy(v7);

    [v3 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
  }
}

void closure #1 in DOCAttributionPillView.isHighlighted.didset(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAlpha_];
  }
}

id DOCAttributionPillView.baseFont.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___baseFont;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___baseFont);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v5 = [v4 fontDescriptorWithSymbolicTraits_];

    if (v5)
    {
      v3 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
    }

    else
    {
      v3 = 0;
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    outlined consume of DOCProgressCollectionIndicatorView??(v6);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v2);
  return v3;
}

id DOCAttributionPillView.senderFont.getter(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  v6 = v5;
  if (v5 == 1)
  {
    v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v10 = [v9 fontDescriptorWithSymbolicTraits_];

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      v12 = *MEMORY[0x277D74380];
      *(inited + 32) = *MEMORY[0x277D74380];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_249B9A480;
      v14 = a3;
      v15 = *MEMORY[0x277D74430];
      *(v13 + 32) = *MEMORY[0x277D74430];
      *(v13 + 40) = *v14;
      v24 = v10;
      v16 = v12;
      v17 = v15;
      v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v13);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(v13 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
      *(inited + 40) = v18;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
      type metadata accessor for UIFontDescriptorAttributeName(0);
      lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = [v24 fontDescriptorByAddingAttributes_];

      v6 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    else
    {
      v6 = 0;
    }

    v21 = *(v3 + v4);
    *(v3 + v4) = v6;
    v22 = v6;
    outlined consume of DOCProgressCollectionIndicatorView??(v21);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v5);
  return v6;
}

void DOCAttributionPillView.setupViews()()
{
  v70 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleTap_];
  [v0 addGestureRecognizer_];
  v1 = DOCAttributionPillView.chevronFont.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() configurationWithFont:v1 scale:1];

    v4 = v3;
    v5 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, 0xEF64726177726F66);
    v71 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

    v69 = v4;
    v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_chevronView];
    [v6 setImage_];
    v7 = objc_opt_self();
    v8 = [v7 secondaryLabelColor];
    [v6 setTintColor_];

    v9 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_backgroundView];
    v10 = [v9 contentView];
    v11 = [v7 tertiarySystemFillColor];
    [v10 setBackgroundColor_];

    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_containerView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_imageView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_textLabel];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v7 darkGrayColor];
    [v13 setBackgroundColor_];

    v16 = [v13 layer];
    [v16 setMinificationFilter_];

    LODWORD(v17) = 1148846080;
    [v14 setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [v14 setContentHuggingPriority:1 forAxis:v18];
    [v0 addSubview_];
    v19 = [v9 contentView];
    [v19 addSubview_];

    [v12 addSubview_];
    [v12 addSubview_];
    [v12 addSubview_];
    v68 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_249BBB980;
    v21 = [v13 topAnchor];
    v22 = [v12 &selRef_updateBarVisibilityIfNecessary];
    v23 = [v21 constraintEqualToAnchor_];

    *(v20 + 32) = v23;
    v24 = [v13 leadingAnchor];
    v25 = [v12 &selRef_next + 1];
    v26 = [v24 constraintEqualToAnchor_];

    *(v20 + 40) = v26;
    v27 = [v13 bottomAnchor];
    v28 = [v12 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v20 + 48) = v29;
    v30 = [v13 widthAnchor];
    v31 = [v13 heightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 multiplier:1.0];

    *(v20 + 56) = v32;
    v33 = [v13 heightAnchor];
    v34 = [v14 heightAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 multiplier:1.0];

    *(v20 + 64) = v35;
    v36 = [v14 leadingAnchor];
    v37 = [v13 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:4.0];

    *(v20 + 72) = v38;
    v39 = [v14 topAnchor];
    v40 = [v12 topAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v20 + 80) = v41;
    v42 = [v14 bottomAnchor];
    v43 = [v12 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v20 + 88) = v44;
    v45 = [v6 leadingAnchor];
    v46 = [v14 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:3.0];

    *(v20 + 96) = v47;
    v48 = [v6 trailingAnchor];
    v49 = [v12 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    *(v20 + 104) = v50;
    v51 = [v6 centerYAnchor];
    v52 = [v12 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor_];

    *(v20 + 112) = v53;
    v54 = [v9 topAnchor];
    v55 = [v0 topAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    *(v20 + 120) = v56;
    v57 = [v9 leadingAnchor];
    v58 = [v0 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    *(v20 + 128) = v59;
    v60 = [v9 bottomAnchor];
    v61 = [v0 bottomAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v20 + 136) = v62;
    v63 = [v9 trailingAnchor];
    v64 = [v0 trailingAnchor];
    v65 = [v63 constraintLessThanOrEqualToAnchor_];

    *(v20 + 144) = v65;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v68 activateConstraints_];

    v67 = DOCConstraintsToResizeWithSuperview();
    if (!v67)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v68 activateConstraints_];

    [v0 setContextMenuInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCAttributionPillView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCAttributionPillView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_backgroundView];
  [v1 bounds];
  [v1 _setContinuousCornerRadius_];
}

void __swiftcall DOCAttributionPillView.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_opt_self();
  v6[4] = partial apply for closure #1 in DOCAttributionPillView.contextMenuInteraction(_:configurationForMenuAtLocation:);
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v6[3] = &block_descriptor_144;
  v5 = _Block_copy(v6);

  [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

  _Block_release(v5);
}

uint64_t closure #1 in DOCAttributionPillView.contextMenuInteraction(_:configurationForMenuAtLocation:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0xD0))();

  return v2;
}

id RoundImageView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t closure #1 in DOCAttributionPillView.configure(with:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 208) = a6;
  *(v8 + 160) = a1;
  *(v8 + 152) = a5;
  type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return MEMORY[0x2822009F8](closure #1 in DOCAttributionPillView.configure(with:), v10, v9);
}

uint64_t closure #1 in DOCAttributionPillView.configure(with:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = closure #1 in DOCAttributionPillView.configure(with:);
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySay10Foundation4DataVGSgs5NeverOGMd);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [Data]?;
  *(v0 + 104) = &block_descriptor_30_0;
  *(v0 + 112) = v4;
  [v3 fetchThumbnailImagesWithScale:v1 isRTL:v0 + 80 completion:v2];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](closure #1 in DOCAttributionPillView.configure(with:), v2, v1);
}

{

  v1 = v0[18];
  if (v1)
  {
    if (v1[2])
    {
      v2 = v1[4];
      v3 = v1[5];
      outlined copy of Data._Representation(v2, v3);

      v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
      outlined copy of Data._Representation(v2, v3);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v6 = [v4 initWithData_];

      outlined consume of Data._Representation(v2, v3);
      if (v6)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v8 = Strong;
          v9 = swift_allocObject();
          *(v9 + 16) = v8;
          *(v9 + 24) = v6;
          v10 = v8;
          v6 = v6;
          DOCRunInMainThread(_:)();
        }
      }

      else
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v18 = v0[21];
        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_249B9A480;
        v20 = v18;
        v21 = [v20 description];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v19 + 32) = v22;
        *(v19 + 40) = v24;
        os_log(_:dso:log:type:_:)();
      }

      outlined consume of Data._Representation(v2, v3);
      goto LABEL_15;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = v0[21];
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  v13 = v11;
  v14 = [v13 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  os_log(_:dso:log:type:_:)();

LABEL_15:
  v25 = v0[1];

  return v25();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [Data]?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x282200948](v3);
}

uint64_t partial apply for closure #1 in DOCAttributionPillView.configure(with:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in DOCAttributionPillView.configure(with:)(v7, a1, v4, v5, v6, v8, v10, v9);
}

void specialized DOCAttributionPillView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_senderName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_menu) = 0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_backgroundView;
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v2) = v4;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_containerView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_imageView;
  type metadata accessor for RoundImageView();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_textLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_chevronView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___baseFont) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___senderFont) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView____lazy_storage___chevronFont) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DOCAttributionPillView.configure(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v4 = v2;
  return v3(v2);
}

id DOCNode.preferQuicklook.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    result = [static NSUserDefaults.docUserDefaults dictionaryForKey_];
    if (result)
    {
      v7 = result;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

      if (!v9)
      {
        return 0;
      }

      v10 = [v0 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = specialized DOCNode.generalizedUTI(for:)();
      v13 = v12;
      (*(v2 + 8))(v5, v1);
      if (*(v9 + 16))
      {
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
        v16 = v15;

        if (v16)
        {
          v17 = *(*(v9 + 56) + v14);
LABEL_12:

          return v17;
        }
      }

      else
      {
      }

      v17 = 0;
      goto LABEL_12;
    }
  }

  return result;
}

BOOL URL.hasStrongBinding.getter()
{
  v14 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v14);
  v1 = v0;
  v2 = [objc_opt_self() bindableWithURL_];

  v3 = [objc_opt_self() oneTapOpenClaimBindingConfigurationForBindable_];
  v4 = objc_allocWithZone(MEMORY[0x277CC1E98]);
  v13 = 0;
  v5 = v3;
  v6 = [v4 initWithConfiguration:v5 error:&v13];
  if (v6)
  {
    v7 = v6;
    v8 = v13;

    v9 = [v7 provenance];
    return v9 == 2;
  }

  else
  {
    v11 = v13;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 0;
  }
}

Swift::Void __swiftcall URL.removeStrongBinding()()
{
  v1 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (&v30 - v6);
  URL._bridgeToObjectiveC()(v6);
  v9 = v8;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSString);
  v10 = NSString.init(stringLiteral:)();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = MEMORY[0x24C1FAD20](v11);

  v31[0] = 0;
  LODWORD(v10) = [v9 setResourceValue:0 forKey:v12 error:v31];

  v13 = v31[0];
  if (v10)
  {

    v14 = v13;
  }

  else
  {
    v30 = v31[0];
    v15 = v31[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    (*(v3 + 16))(v7, v1, v2);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v21 = 136315394;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v3 + 8))(v7, v2);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v31);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2112;
      v27 = v16;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_2493AC000, v19, v20, "Failed to remove strong binding for URL: %s, error: %@", v21, 0x16u);
      outlined destroy of CharacterSet?(v22, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v22, -1, -1);
      v29 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }
}

void DOCNode.preferQuicklook.setter(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = MEMORY[0x277D05E58];
  if (!static NSUserDefaults.docUserDefaults || (v10 = [static NSUserDefaults.docUserDefaults dictionaryForKey_]) == 0 || (v11 = v10, v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v11, v13 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v12), , !v13))
  {
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v14 = [v2 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized DOCNode.generalizedUTI(for:)();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v13;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1 & 1, v15, v17, isUniquelyReferenced_nonNull_native);

  if (static NSUserDefaults.docUserDefaults)
  {
    v19 = static NSUserDefaults.docUserDefaults;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 setObject:isa forKey:*v9];
  }

  else
  {
  }
}

id static LaunchUtils.bundleIdentifierOfDefaultApp(for:node:)(uint64_t a1, void *a2)
{
  swift_getObjectType();

  return specialized static LaunchUtils.bundleIdentifierOfDefaultApp(for:node:)(a1, a2);
}

void static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(uint64_t a1, void *a2, int a3, int a4, void *a5, void (*a6)(void), void *a7)
{
  v82 = a6;
  v83 = a5;
  v80 = a3;
  v81 = a4;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v78 - v21;
  if (a2)
  {
    v23 = a1;
    v24 = one-time initialization token for UI;
    swift_unknownObjectRetain();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    swift_unknownObjectRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      reserved = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, &reserved);
      *(v28 + 12) = 2080;
      v30 = [a2 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &reserved);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s node is non-nil trying to open with node first: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v23, a2, v81 & 1, v80 & 1, v83, v82, a7, ObjectType);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v79 = a1;
    URL._bridgeToObjectiveC()(&v78);
    v37 = v36;
    v38 = [objc_opt_self() fiNodeFromURL_];

    if (v38)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.UI);
      (*(v11 + 16))(v22, v79, v10);
      v40 = v38;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v78._reserved = swift_slowAlloc();
        reserved = v78._reserved;
        *v43 = 136315650;
        *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, &reserved);
        *(v43 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = a7;
        v47 = v46;
        (*(v11 + 8))(v22, v10);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, &reserved);

        *(v43 + 14) = v48;
        *(v43 + 22) = 2080;
        v49 = v40;
        v50 = [v49 description];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        a7 = v45;
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &reserved);

        *(v43 + 24) = v54;
        _os_log_impl(&dword_2493AC000, v41, v42, "%s node is nil trying to create FINode with node from URL: %s created node: %s", v43, 0x20u);
        v55 = v78._reserved;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v55, -1, -1);
        MEMORY[0x24C1FE850](v43, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v22, v10);
      }

      v68 = v40;
      _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FINodeC_Tt2g5(v79, v68, v81 & 1, v80 & 1, v83, v82, a7);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v78._reserved = a7;
      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.UI);
      v57 = *(v11 + 16);
      v57(v18, v79, v10);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v78._clients = swift_slowAlloc();
        reserved = v78._clients;
        *v60 = 136315394;
        *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, &reserved);
        *(v60 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        HIDWORD(v78._baseURL) = v59;
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v78._urlString = &v58->isa;
        v62 = v57;
        v64 = v63;
        (*(v11 + 8))(v18, v10);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v64, &reserved);
        v57 = v62;

        *(v60 + 14) = v65;
        urlString = v78._urlString;
        _os_log_impl(&dword_2493AC000, v78._urlString, BYTE4(v78._baseURL), "%s node is nil and trying to create FINode with node from URL: %s failed. Trying to create FPItem.", v60, 0x16u);
        clients = v78._clients;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](clients, -1, -1);
        MEMORY[0x24C1FE850](v60, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v18, v10);
      }

      v78._clients = [objc_opt_self() defaultManager];
      v69 = v79;
      v57(v14, v79, v10);
      v70 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v71 = (v70 + v12) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      (*(v11 + 32))(v72 + v70, v14, v10);
      *(v72 + v70 + v12) = v80 & 1;
      v73 = v82;
      v74 = v83;
      *(v72 + v71 + 8) = v83;
      v75 = v72 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8);
      v76 = v78._reserved;
      *v75 = v73;
      *(v75 + 8) = v76;
      *(v75 + 16) = v81 & 1;
      *(v72 + ((v71 + 47) & 0xFFFFFFFFFFFFFFF8)) = 0;
      v77 = v74;

      specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v69, partial apply for closure #1 in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:), v72);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t LaunchUtils.OpenAppDelegate.openResourceOperationDidComplete(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BF8FA0, &v15);
    *(v8 + 12) = 2080;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11NSOperationCSgMd);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s operation: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  return (*(v2 + OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock))(1);
}

uint64_t LaunchUtils.OpenAppDelegate.openResourceOperation(_:didFailWithError:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BF8F70, &v22);
    *(v11 + 12) = 2080;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11NSOperationCSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s operation: %s error: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  return (*(v3 + OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock))(0);
}

id LaunchUtils.OpenAppDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchUtils.OpenAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for DocumentsAppIdentifier()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static LaunchUtils.DocumentsAppIdentifier = result;
  *algn_27EEF1808 = v1;
  return result;
}

void static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - v8;
  LODWORD(v32) = URL.startAccessingSecurityScopedResource()();
  if (one-time initialization token for DocumentsAppIdentifier != -1)
  {
    swift_once();
  }

  v34 = static LaunchUtils.DocumentsAppIdentifier;
  v10 = *(v3 + 16);
  v28 = *algn_27EEF1808;
  v29 = v10;
  v10(v9, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = v11 + v4;
  v13 = swift_allocObject();
  v30 = v13;
  v27 = *(v3 + 32);
  v27(v13 + v11, v9, v2);
  v14 = (v32 & 1);
  *(v13 + v12) = v14;
  URL._bridgeToObjectiveC()(v14);
  v32 = v15;
  v16 = v28;
  v31 = MEMORY[0x24C1FAD20](v34, v28);
  v17 = v33;
  v29(v33, a1, v2);
  v18 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v27(v20 + v11, v17, v2);
  v21 = v20 + v18;
  v22 = v30;
  *v21 = partial apply for closure #1 in static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:);
  *(v21 + 8) = v22;
  *(v21 + 16) = 1;
  v23 = (v20 + v19);
  *v23 = v34;
  v23[1] = v16;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = 2;
  aBlock[4] = _s26DocumentManagerExecutables11LaunchUtilsV4open33_785CBA6FF492D1A84D3A93B2D10ABBABLL_4node15urlManagedState2in13requireOpenIn15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgSo012DOCDataOwnerS0VSSSbSo16UIViewControllerCySbctFZySo11CFStringRefaSg_So10CFErrorRefaSgtcfU_TA_0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_145;
  v24 = _Block_copy(aBlock);

  v26 = v31;
  v25 = v32;
  FPExtendBookmarkForDocumentURL();
  _Block_release(v24);
}

void closure #1 in static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:)(char a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v35[-v13];
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    (*(v7 + 16))(v14, a2, v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = v3;
      v3 = v18;
      v19 = swift_slowAlloc();
      v37 = v19;
      *v3 = 136315394;
      *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BF90C0, &v37);
      *(v3 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v7 + 8))(v14, v6);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

      *(v3 + 14) = v23;
      _os_log_impl(&dword_2493AC000, v16, v17, "%s launching Documents app for url: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v19, -1, -1);
      v24 = v3;
      LOBYTE(v3) = v36;
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v14, v6);
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    (*(v7 + 16))(v10, a2, v6);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = v3;
      v3 = v28;
      v29 = swift_slowAlloc();
      v37 = v29;
      *v3 = 136315394;
      *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BF90C0, &v37);
      *(v3 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v7 + 8))(v10, v6);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v37);

      *(v3 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s failed to launch Documents app for url: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      v34 = v3;
      LOBYTE(v3) = v36;
      MEMORY[0x24C1FE850](v34, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }

  if (v3)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

void closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(int a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, void (*a7)(void, __n128), uint64_t a8)
{
  v38 = a4;
  v41 = a3;
  v40 = a2;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18, v19);
  v22 = &v36 - v21;
  v39 = a1;
  if (a1)
  {
    if (a6)
    {
      v23 = [objc_opt_self() defaultManager];
      v24 = v41;
      (*(v14 + 16))(v17, v41, v13);
      v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      (*(v14 + 32))(v27 + v25, v17, v13);
      *(v27 + v26) = 0x3FF0000000000000;
      specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v24, partial apply for closure #1 in URL.bumpLastOpenDate(delay:completionHandler:), v27);
    }
  }

  else
  {
    v36 = a8;
    v37 = a7;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.Picker);
    (*(v14 + 16))(v22, v41, v13);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v31 = 138412546;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v35 = v34;
      (*(v14 + 8))(v22, v13);
      *(v31 + 4) = v35;
      *v32 = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a5, &v42);
      _os_log_impl(&dword_2493AC000, v29, v30, "Failed to open %@ in %s", v31, 0x16u);
      outlined destroy of CharacterSet?(v32, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v22, v13);
    }

    a7 = v37;
  }

  a7(v39 & 1, v20);
  if (v40)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

uint64_t closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v86 = a7;
  v87 = a8;
  v85 = a6;
  v97 = a4;
  v98 = a5;
  v94 = a3;
  v92 = a1;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v88 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v95 = *(v17 - 8);
  v96 = v17;
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v93 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v81 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v81 - v26;
  v28 = type metadata accessor for DispatchQoS.QoSClass();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v33 = a2;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.Picker);
    v35 = v95;
    v36 = v93;
    v37 = v96;
    (*(v95 + 16))(v93, v94, v96);
    v38 = a2;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock[0] = v94;
      *v41 = 138412546;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v44 = v43;
      (*(v35 + 8))(v36, v37);
      *(v41 + 4) = v44;
      *v42 = v44;
      *(v41 + 12) = 2080;
      v99 = v33;
      v45 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CFErrorRefaSgMd);
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, aBlock);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_2493AC000, v39, v40, "Error while extending bookmark for %@ with error %s", v41, 0x16u);
      outlined destroy of CharacterSet?(v42, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v42, -1, -1);
      v49 = v94;
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
    }
  }

  else
  {
    v83 = v27;
    v84 = v16;
    v93 = v13;
    if (v92)
    {
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v50;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      (*(v29 + 104))(v32, *MEMORY[0x277D851C8], v28);
      v92 = static OS_dispatch_queue.global(qos:)();
      (*(v29 + 8))(v32, v28);
      v51 = v95;
      v52 = v83;
      v53 = v96;
      (*(v95 + 16))(v83, v94, v96);
      v54 = (*(v51 + 80) + 17) & ~*(v51 + 80);
      v55 = (v18 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      *(v58 + 16) = v85 & 1;
      (*(v51 + 32))(v58 + v54, v52, v53);
      v59 = (v58 + v55);
      v60 = v87;
      *v59 = v86;
      v59[1] = v60;
      v61 = (v58 + v56);
      v62 = v98;
      *v61 = v97;
      v61[1] = v62;
      *(v58 + v57) = a9;
      v63 = (v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));
      v64 = v81;
      *v63 = v82;
      v63[1] = v64;
      aBlock[4] = partial apply for closure #1 in closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:);
      aBlock[5] = v58;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_68_2;
      v65 = _Block_copy(aBlock);

      v66 = v84;
      static DispatchQoS.unspecified.getter();
      v99 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v67 = v89;
      v68 = v91;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v69 = v92;
      MEMORY[0x24C1FB9A0](0, v66, v67, v65);
      _Block_release(v65);

      (*(v90 + 8))(v67, v68);
      (*(v88 + 8))(v66, v93);
    }

    v71 = v95;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.Picker);
    v73 = v23;
    v74 = v96;
    (*(v71 + 16))(v23, v94, v96);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v80 = v79;
      (*(v71 + 8))(v73, v74);
      *(v77 + 4) = v80;
      *v78 = v80;
      _os_log_impl(&dword_2493AC000, v75, v76, "bookmark for %@ is nil", v77, 0xCu);
      outlined destroy of CharacterSet?(v78, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v78, -1, -1);
      MEMORY[0x24C1FE850](v77, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v23, v74);
    }
  }

  return v97(0);
}

void closure #1 in closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v57 = a5;
  v58 = a6;
  v55 = a4;
  v56 = a3;
  v51 = a2;
  v10 = a1;
  v52 = a1;
  v54 = type metadata accessor for URL();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v54, v13);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  v50 = xmmword_249B9FA70;
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v15;
  *(inited + 48) = a8;
  *(inited + 56) = a9;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v16;
  v17 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v10;

  v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  swift_arrayDestroy();
  v18 = v51;
  v19 = swift_initStackObject();
  *(v19 + 16) = v50;
  *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 40) = v20;
  *(v19 + 72) = v17;
  *(v19 + 48) = 1;
  *(v19 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 88) = v21;
  *(v19 + 120) = v17;
  *(v19 + 96) = 1;
  *&v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(inited) = URL.startAccessingSecurityScopedResource()();
  v23 = v53;
  v22 = v54;
  (*(v11 + 16))(v53, v18, v54);
  v24 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v25 = (v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = inited & 1;
  v29 = v55;
  *(v27 + 16) = v28;
  (*(v11 + 32))(v27 + v24, v23, v22);
  v30 = v27 + v25;
  v31 = v56;
  *v30 = v56;
  *(v30 + 8) = v29;
  *(v30 + 16) = v52;
  v32 = (v27 + v26);
  v33 = v58;
  *v32 = v57;
  v32[1] = v33;
  v34 = type metadata accessor for LaunchUtils.OpenAppDelegate();
  v35 = objc_allocWithZone(v34);
  v36 = &v35[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
  *v36 = closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply;
  *(v36 + 1) = v27;
  v60.receiver = v35;
  v60.super_class = v34;

  v37 = objc_msgSendSuper2(&v60, sel_init);
  v38 = [objc_opt_self() defaultWorkspace];
  if (v38)
  {
    v40 = v38;
    URL._bridgeToObjectiveC()(v39);
    v42 = v41;
    v43 = MEMORY[0x24C1FAD20](v31, v29);
    v44 = v49 == 1;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v46 = Dictionary._bridgeToObjectiveC()().super.isa;
    v47 = [v40 operationToOpenResource:v42 usingApplication:v43 uniqueDocumentIdentifier:0 isContentManaged:v44 sourceAuditToken:0 userInfo:isa options:v46 delegate:v37];

    if (v47)
    {

      [v47 start];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static LaunchUtils.tryOpeningInApp(applicationIdentifier:url:node:urlManagedState:requireOpenIn:alertPresenting:completionBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, int a7, uint64_t a8, NSURL *a9)
{
  v92 = a8;
  v85 = a5;
  v94 = a1;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v89 = v15;
  v90 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v82 - v18;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.UI);
  v87 = *(v13 + 16);
  v88 = v13 + 16;
  v87(v19, a3, v12);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v91 = v12;
  v93 = v13;
  if (v23)
  {
    v24 = v12;
    v25 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v95[0] = v86;
    *v25 = 136315650;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x8000000249BDBCD0, v95);
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    LODWORD(v84) = v22;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a3;
    v28 = a6;
    v29 = a2;
    v31 = v30;
    (*(v93 + 8))(v19, v24);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v31, v95);
    a2 = v29;
    a6 = v28;
    v33 = v94;
    a3 = v27;

    *(v25 + 14) = v32;
    *(v25 + 22) = 2080;
    *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a2, v95);
    _os_log_impl(&dword_2493AC000, v21, v84, "%s attempting to open: %s in: %s", v25, 0x20u);
    v34 = v86;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v34, -1, -1);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  v86 = a9;
  if (a6)
  {
    URL._bridgeToObjectiveC()(a9);
    v84 = v35;
    v83 = MEMORY[0x24C1FAD20](v94, a2);
    v36 = v90;
    v37 = v91;
    v87(v90, a3, v91);
    v38 = v93;
    v39 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v40 = (v39 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v39 + v89 + 31) & 0xFFFFFFFFFFFFFFF8;
    v42 = a2;
    v43 = swift_allocObject();
    (*(v38 + 32))(v43 + v39, v36, v37);
    v44 = v43 + v40;
    v45 = v86;
    *v44 = v92;
    *(v44 + 8) = v45;
    *(v44 + 16) = 1;
    v46 = (v43 + v41);
    *v46 = v94;
    v46[1] = v42;
    v47 = v84;
    *(v43 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v85;
    v95[4] = closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply;
    v95[5] = v43;
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 1107296256;
    v95[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    v95[3] = &block_descriptor_16_4;
    v48 = _Block_copy(v95);

    v49 = v83;

    FPExtendBookmarkForDocumentURL();
    _Block_release(v48);
LABEL_11:

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  v83 = a2;
  v51 = inited;
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v51 + 40) = v52;
  v53 = MEMORY[0x277D839B0];
  *(v51 + 72) = MEMORY[0x277D839B0];
  *(v51 + 48) = 0;
  v82[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v51);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v51 + 32, &_sSS_yptMd);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_249B9FA70;
  *(v54 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v54 + 40) = v55;
  *(v54 + 72) = v53;
  *(v54 + 48) = 1;
  *(v54 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v54 + 88) = v56;
  *(v54 + 120) = v53;
  *(v54 + 96) = 1;
  v82[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v54);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  swift_arrayDestroy();
  LOBYTE(v54) = URL.startAccessingSecurityScopedResource()();
  v57 = v90;
  v58 = v91;
  v87(v90, a3, v91);
  v59 = v93;
  v60 = (*(v93 + 80) + 17) & ~*(v93 + 80);
  v61 = (v60 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v60 + v89 + 31) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v54 & 1;
  (*(v59 + 32))(v63 + v60, v57, v58);
  v64 = v63 + v61;
  v65 = v83;
  *v64 = v94;
  *(v64 + 8) = v65;
  *(v64 + 16) = 0;
  v66 = (v63 + v62);
  v67 = v86;
  *v66 = v92;
  v66[1] = v67;
  v68 = type metadata accessor for LaunchUtils.OpenAppDelegate();
  v69 = objc_allocWithZone(v68);
  v70 = &v69[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
  *v70 = _s26DocumentManagerExecutables11LaunchUtilsV4open33_785CBA6FF492D1A84D3A93B2D10ABBABLL_4node15urlManagedState2in13requireOpenIn15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgSo012DOCDataOwnerS0VSSSbSo16UIViewControllerCySbctFZ0F8ResourceL_12withBookmarkySSSg_tFySbcfU_TA_0;
  v70[1] = v63;
  v71 = v83;
  v96.receiver = v69;
  v96.super_class = v68;

  v84 = objc_msgSendSuper2(&v96, sel_init);
  v72 = [objc_opt_self() defaultWorkspace];
  if (v72)
  {
    v74 = v72;
    URL._bridgeToObjectiveC()(v73);
    v76 = v75;
    v77 = MEMORY[0x24C1FAD20](v94, v71);
    v78 = v85 == 1;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v80 = Dictionary._bridgeToObjectiveC()().super.isa;
    v81 = v84;
    v49 = [v74 operationToOpenResource:v76 usingApplication:v77 uniqueDocumentIdentifier:0 isContentManaged:v78 sourceAuditToken:0 userInfo:isa options:v80 delegate:v84];

    if (v49)
    {
      v47 = v81;

      [v49 start];
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static LaunchUtils.installConfigurationProfile(from:completionBlock:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v75 = a3;
  v76 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v71 = &v66 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v66 - v13;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.UI);
  v17 = *(v5 + 16);
  v77 = a1;
  v73 = v17;
  v74 = (v5 + 16);
  v17(v14, a1, v4);
  v68 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = v4;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, aBlock);
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v67 = *(v5 + 8);
    v67(v14, v21);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_2493AC000, v18, v19, "%s attempting to install: %s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v22;
    v4 = v21;
    MEMORY[0x24C1FE850](v27, -1, -1);
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  else
  {

    v67 = *(v5 + 8);
    v67(v14, v4);
  }

  v28 = v77;
  v29 = URL.lastPathComponent.getter();
  v31 = v30;
  v72 = URL.startAccessingSecurityScopedResource()();
  v32 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v78 = 0;
  URL._bridgeToObjectiveC()(v33);
  v70 = v34;
  v35 = v71;
  v73(v71, v28, v4);
  v36 = v4;
  v37 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v38 = (v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = &v78;
  v39[3] = v29;
  v39[4] = v31;
  v66 = v5;
  v40 = v39 + v37;
  v41 = v36;
  (*(v5 + 32))(v40, v35, v36);
  v42 = (v39 + v38);
  v43 = v75;
  *v42 = v76;
  v42[1] = v43;
  v44 = swift_allocObject();
  v44[2] = partial apply for closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:);
  v44[3] = v39;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[3] = &block_descriptor_25_5;
  v45 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v71 = v32;
  v46 = v70;
  [v32 coordinateReadingItemAtURL:v70 options:0 error:aBlock byAccessor:v45];
  _Block_release(v45);

  v47 = aBlock[0];
  v48 = aBlock[0];
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  v49 = v72;
  if ((v78 & 1) == 0)
  {
    v50 = v69;
    v73(v69, v28, v41);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v53 = 136315650;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, aBlock);
      *(v53 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v50;
      v56 = v54;
      v58 = v57;
      v67(v55, v41);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, aBlock);

      *(v53 + 14) = v59;
      *(v53 + 22) = 2080;
      v79 = v47;
      v60 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd);
      v61 = String.init<A>(describing:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, aBlock);

      *(v53 + 24) = v63;
      _os_log_impl(&dword_2493AC000, v51, v52, "%s failed to read: %s error: %s", v53, 0x20u);
      v64 = v74;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v64, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    else
    {

      v67(v50, v41);
    }

    v76(0);
    v49 = v72;
  }

  if (v49)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

uint64_t closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v33 - v17;
  *a2 = 1;
  v19 = Data.init(contentsOf:options:)();
  v34 = v20;
  v21 = v19;
  v33 = [objc_opt_self() defaultPermission];
  v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = MEMORY[0x24C1FAD20](a3, a4);
  if (one-time initialization token for DocumentsAppIdentifier != -1)
  {
    swift_once();
  }

  v24 = MEMORY[0x24C1FAD20](static LaunchUtils.DocumentsAppIdentifier, *algn_27EEF1808);
  (*(v12 + 16))(v18, a5, v11);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v12 + 32))(v27 + v25, v18, v11);
  v28 = (v27 + v26);
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  aBlock[4] = partial apply for closure #1 in closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_59_5;
  v30 = _Block_copy(aBlock);

  v31 = v33;
  [v33 queueFileDataForAcceptance:v22.super.isa originalFileName:v23 forBundleID:v24 completion:v30];
  _Block_release(v30);

  return outlined consume of Data._Representation(v21, v34);
}

uint64_t closure #1 in closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v47 - v19;
  if (a2 && !a3)
  {
    v48 = a6;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.UI);
    (*(v13 + 16))(v20, a4, v12);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v40 = 136315650;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, &v50);
      *(v40 + 12) = 2080;
      *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v50);
      *(v40 + 22) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v13 + 8))(v20, v12);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v50);

      *(v40 + 24) = v44;
      _os_log_impl(&dword_2493AC000, v38, v39, "%s queued: %s for install from: %s", v40, 0x20u);
      v45 = v47;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v45, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v20, v12);
    }

    v36 = 1;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.UI);
    (*(v13 + 16))(v16, a4, v12);
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = a6;
      v27 = v26;
      v50 = v26;
      *v25 = 136315650;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, &v50);
      *(v25 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = a5;
      v30 = v29;
      (*(v13 + 8))(v16, v12);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v50);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      v49 = a3;
      v32 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v50);
      a5 = v47;

      *(v25 + 24) = v35;
      _os_log_impl(&dword_2493AC000, v23, v24, "%s failed to queue: %s for install: %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    v36 = 0;
  }

  return a5(v36);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, int a6, void *a7, void (*a8)(void), unint64_t a9)
{
  v61 = a8;
  v62 = a5;
  v59 = a7;
  v60 = a6;
  v58 = a4;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v64 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = (&v52 - v19);
  v21 = *(v13 + 16);
  v63 = a2;
  v21(&v52 - v19, a2, v12, v18);
  (*(v13 + 56))(v20, 0, 1, v12);
  ObjectType = swift_getObjectType();
  v57 = specialized static LaunchUtils._appContainerBundleIdentifier(of:url:)(a1, v20);
  v23 = v22;
  outlined destroy of CharacterSet?(v20, &_s10Foundation3URLVSgMd);
  v24 = [a3 topLevelBundleIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v55 = a9;
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.UI);
  v29 = v63;
  (v21)(v64, v63, v12);

  swift_unknownObjectRetain();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v54 = v25;
    v33 = v32;
    v34 = swift_slowAlloc();
    v67 = v34;
    *v33 = 136316162;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, &v67);
    *(v33 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v53 = v31;
    v35 = v64;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v30;
    v38 = v37;
    (*(v13 + 8))(v35, v12);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v67);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    v65 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v67);

    *(v33 + 24) = v42;
    *(v33 + 32) = 2080;
    v65 = v54;
    v66 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v43 = String.init<A>(describing:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v67);

    *(v33 + 34) = v45;
    *(v33 + 42) = 2080;
    v46 = v57;
    v65 = v57;
    v66 = v23;

    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v67);

    *(v33 + 44) = v49;
    v50 = v52;
    _os_log_impl(&dword_2493AC000, v52, v53, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v33, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v34, -1, -1);
    v25 = v54;
    v29 = v63;
    MEMORY[0x24C1FE850](v33, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v64, v12);
    v46 = v57;
  }

  swift_unknownObjectRetain();
  specialized determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v29, a1, v62, v25, v27, v46, v23, v60 & 1, v61, v55, v58 & 1, v59);
  swift_unknownObjectRelease();
}

void static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, void *a6@<X8>, char a7)
{
  v141 = a5;
  v142 = a2;
  v143[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v124 - v13;
  v15 = type metadata accessor for UTType();
  v139 = *(v15 - 8);
  v140 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v134 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v124 - v24;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    outlined destroy of CharacterSet?(v25, &_s10Foundation3URLVSgMd);
    a6[1] = 0;
    a6[2] = 0;
    *a6 = 1;
    return;
  }

  v132 = a6;
  v133 = v27;
  v31 = *(v27 + 32);
  v138 = v30;
  v136 = v26;
  v31(v30, v25, v26);
  v32 = objc_opt_self();
  v33 = [v32 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_9;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v37)
  {
LABEL_9:
    v40 = v136;

    goto LABEL_10;
  }

  v40 = v136;
  if (v35 == v38 && v37 == v39)
  {
  }

  else
  {
    v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v101 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (!URL.hasStrongBinding.getter() && (DOCNode.preferQuicklook.getter() & 1) != 0)
  {
    (*(v133 + 8))(v138, v40);
LABEL_62:
    v120 = v132;
    v132[1] = 0;
    v120[2] = 0;
    *v120 = 1;
    return;
  }

LABEL_10:
  if (a7)
  {
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_12;
  }

  v48 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v49 = [v48 isEnabled];

  if ((v49 & 1) != 0 || (v50 = containerAppBundleIDs #1 (for:) in static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v142, a3, a4)) == 0)
  {
    v97 = v138;
    URL.contentType.getter(v14);
    v98 = v139;
    v99 = v140;
    if ((*(v139 + 48))(v14, 1, v140) == 1)
    {
      outlined destroy of CharacterSet?(v14, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
      v100 = &selRef__setLocationsInBrowseTab_;
    }

    else
    {
      (*(v98 + 32))(v18, v14, v99);
      v102 = UTType.isConfigurationUTI.getter();
      v103 = v98;
      v104 = v102;
      (*(v103 + 8))(v18, v99);
      v100 = &selRef__setLocationsInBrowseTab_;
      if (v104)
      {
        (*(v133 + 8))(v97, v40);
        goto LABEL_61;
      }
    }

    v105 = specialized static LaunchUtils._openingApp(for:requireOpenInPlace:)(v97, v141 & 1);
    if (!v105)
    {
      (*(v133 + 8))(v97, v40);
      v45 = v132;
      goto LABEL_15;
    }

    v106 = v105;
    v107 = [v105 v100[160]];
    if (!v107)
    {
      (*(v133 + 8))(v97, v40);

      v45 = v132;
      goto LABEL_15;
    }

    v108 = v107;
    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    v112 = [v32 mainBundle];
    v113 = [v112 v100[160]];

    if (v113)
    {
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v45 = v132;
      if (v109 == v114 && v111 == v116)
      {

        (*(v133 + 8))(v138, v40);
LABEL_67:

        goto LABEL_15;
      }

      v121 = v40;
      v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v133 + 8))(v138, v121);
      if (v122)
      {
        goto LABEL_67;
      }
    }

    else
    {
      (*(v133 + 8))(v138, v40);
      v45 = v132;
    }

    *v45 = v106;
    v45[1] = v109;
    v45[2] = v111;
    return;
  }

  v51 = v50;
  v137 = *(v50 + 16);
  if (!v137)
  {
LABEL_60:

    v117 = [v142 contentType];
    v118 = v134;
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v117) = UTType.isConfigurationUTI.getter();
    (*(v139 + 8))(v118, v140);
    (*(v133 + 8))(v138, v40);
    if ((v117 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_61:
    v119 = v132;
    *v132 = 0;
    v119[1] = 0;
    v119[2] = 0;
    return;
  }

  v135 = objc_opt_self();
  v53 = 0;
  if (v141)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  v126 = v54;
  v127 = "_NSURLStrongBindingKey";
  v55 = 0xE500000000000000;
  if (v141)
  {
    v55 = 0xE400000000000000;
  }

  v125 = v55;
  v56 = (v51 + 40);
  *&v52 = 136315906;
  v124 = v52;
  while (v53 < *(v51 + 16))
  {
    v60 = *(v56 - 1);
    v59 = *v56;

    v61 = v142;
    swift_unknownObjectRetain();
    v62 = [v135 defaultPermission];
    v63 = MEMORY[0x24C1FAD20](v60, v59);
    v64 = [v62 canAppWithBundleIdentifier:v63 performAction:2 node:v61];
    swift_unknownObjectRelease();

    if (!v64)
    {
      goto LABEL_44;
    }

    v65 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v66 = MEMORY[0x24C1FAD20](v60, v59);

    v143[0] = 0;
    v67 = [v65 initWithBundleIdentifier:v66 allowPlaceholder:0 error:v143];

    if (v67)
    {
      v68 = v143[0];
      v69 = [v67 bundleIdentifier];
      if (!v69)
      {

        goto LABEL_26;
      }

      v70 = v69;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.UI);
      v75 = v67;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v130 = v71;
        v79 = v78;
        v129 = swift_slowAlloc();
        v143[0] = v129;
        *v79 = v124;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006BLL, v127 | 0x8000000000000000, v143);
        *(v79 + 12) = 2080;
        v80 = v75;
        v131 = v73;
        v81 = v80;
        v82 = [v80 description];
        v128 = v77;
        v83 = v82;
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v143);

        *(v79 + 14) = v87;
        *(v79 + 22) = 2080;
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v125, v143);

        *(v79 + 24) = v88;
        *(v79 + 32) = 2080;
        v89 = v81;
        v73 = v131;
        v90 = [v89 supportsOpenInPlace];
        v91 = v90 == 0;
        if (v90)
        {
          v92 = 1702195828;
        }

        else
        {
          v92 = 0x65736C6166;
        }

        if (v91)
        {
          v93 = 0xE500000000000000;
        }

        else
        {
          v93 = 0xE400000000000000;
        }

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v143);

        *(v79 + 34) = v94;
        v40 = v136;
        _os_log_impl(&dword_2493AC000, v76, v128, "%s app: %s requireOpenIn: %s supportsOpenInPlace: %s", v79, 0x2Au);
        v95 = v129;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v95, -1, -1);
        v96 = v79;
        v71 = v130;
        MEMORY[0x24C1FE850](v96, -1, -1);
      }

      if ((v141 & 1) == 0 || [v75 supportsOpenInPlace])
      {

        (*(v133 + 8))(v138, v40);
        v123 = v132;
        *v132 = v75;
        v123[1] = v71;
        v123[2] = v73;
        return;
      }

LABEL_44:

      goto LABEL_26;
    }

    v57 = v143[0];
    v58 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_26:
    ++v53;
    v56 += 2;
    if (v137 == v53)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_71:
  swift_once();
LABEL_12:
  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.UI);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v132;
  v46 = v138;
  if (v44)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2493AC000, v42, v43, "WARNING: QuickLookAllDocumentsInFilesFirst enabled. Prefering to open document with Quick Look instead of handler app.", v47, 2u);
    MEMORY[0x24C1FE850](v47, -1, -1);
  }

  (*(v133 + 8))(v46, v40);
LABEL_15:
  v45[1] = 0;
  v45[2] = 0;
  *v45 = 1;
}

void closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(char a1, void (*a2)(uint64_t, __n128), void (*a3)(uint64_t, __n128), void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v169 = a8;
  v172 = a6;
  v173 = a3;
  v174 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v154 - v16;
  v18 = type metadata accessor for UTType();
  v171 = *(v18 - 1);
  MEMORY[0x28223BE20](v18, v19);
  v170 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  MEMORY[0x28223BE20](v24, v25);
  MEMORY[0x28223BE20](v26, v27);
  v34.n128_f64[0] = MEMORY[0x28223BE20](&v154 - v28, v29);
  v36 = &v154 - v35;
  if (a1)
  {
    v37 = 1;
LABEL_28:
    v174(v37, v34);
    return;
  }

  v167 = a5;
  v168 = v18;
  v160 = a7;
  v161 = v30;
  v157 = v33;
  v158 = v32;
  v159 = v31;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, static Logger.UI);
  v40 = a4;
  v164 = *(v22 + 16);
  v165 = v22 + 16;
  v164(v36, a4, v21);
  v41 = v172;

  v163 = v39;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v166 = v22;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v175[0] = v156;
    *v45 = 136315650;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, v175);
    *(v45 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    LODWORD(v155) = v43;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v21;
    v48 = v40;
    v50 = v49;
    v51 = v36;
    v52 = v47;
    v162 = *(v22 + 8);
    v162(v51, v47);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v50, v175);
    v40 = v48;

    *(v45 + 14) = v53;
    *(v45 + 22) = 2080;
    *(v45 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v41, v175);
    _os_log_impl(&dword_2493AC000, v42, v155, "%s failed opening: %s in: %s", v45, 0x20u);
    v54 = v156;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v54, -1, -1);
    MEMORY[0x24C1FE850](v45, -1, -1);
  }

  else
  {

    v55 = v36;
    v52 = v21;
    v162 = *(v22 + 8);
    v162(v55, v21);
  }

  URL.contentType.getter(v17);
  v56 = v171;
  v57 = v168;
  if ((*(v171 + 48))(v17, 1, v168) == 1)
  {
    outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  }

  else
  {
    v58 = v170;
    (*(v56 + 32))(v170, v17, v57);
    v59 = UTType.isConfigurationUTI.getter();
    (*(v56 + 8))(v58, v57);
    if (v59)
    {
LABEL_27:
      v37 = 0;
      goto LABEL_28;
    }
  }

  v60 = specialized static LaunchUtils._openingApp(for:requireOpenInPlace:)(v40, a10 & 1);
  if (!v60)
  {
    goto LABEL_27;
  }

  v61 = v60;
  v62 = [v60 bundleIdentifier];
  if (!v62)
  {
LABEL_19:

    goto LABEL_27;
  }

  v171 = v40;
  v63 = v62;
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = [objc_opt_self() mainBundle];
  v68 = [v67 bundleIdentifier];

  if (v68)
  {
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (v64 == v69 && v66 == v71)
    {

      goto LABEL_27;
    }

    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v72)
    {

      goto LABEL_19;
    }
  }

  v170 = v64;
  LODWORD(v156) = a10;
  v168 = v61;
  v73 = v161;
  v74 = v66;
  v75 = v52;
  v164(v161, v171, v52);
  swift_bridgeObjectRetain_n();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();

  v78 = os_log_type_enabled(v76, v77);
  v154 = v52;
  if (v78)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v175[0] = v80;
    *v79 = 136315650;
    *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, v175);
    *(v79 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    v162(v73, v75);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v175);

    *(v79 + 14) = v84;
    *(v79 + 22) = 2080;
    v85 = v170;
    *(v79 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v74, v175);
    _os_log_impl(&dword_2493AC000, v76, v77, "%s falling back to opening: %s LSHandler rank in: %s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v80, -1, -1);
    MEMORY[0x24C1FE850](v79, -1, -1);

    v86 = v74;
  }

  else
  {

    v162(v73, v52);
    v86 = v74;
    v85 = v170;
  }

  v87 = v168;
  v88 = v85;
  if (v85 == v167 && v86 == v172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_27;
  }

  if (a9 && (v89 = [objc_opt_self() defaultPermission], v90 = MEMORY[0x24C1FAD20](v169, a9), v91 = MEMORY[0x24C1FAD20](v88, v86), v92 = objc_msgSend(v89, sel_canAppWithBundleIdentifier_performAction_bundleIdentifier_, v90, 1, v91), v89, v90, v91, v88 = v170, (v92 & 1) == 0))
  {

    (v174)(0);
  }

  else
  {
    v93 = v157;
    v94 = v154;
    v164(v157, v171, v154);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    v97 = os_log_type_enabled(v95, v96);
    v155 = v86;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v175[0] = v99;
      *v98 = 136315650;
      *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x8000000249BDBCD0, v175);
      *(v98 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      LODWORD(v172) = v96;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      v162(v93, v94);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v175);

      *(v98 + 14) = v103;
      *(v98 + 22) = 2080;
      *(v98 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v86, v175);
      _os_log_impl(&dword_2493AC000, v95, v172, "%s attempting to open: %s in: %s", v98, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v99, -1, -1);
      MEMORY[0x24C1FE850](v98, -1, -1);
    }

    else
    {

      v162(v93, v94);
    }

    if (v156)
    {
      v104 = v171;
      URL._bridgeToObjectiveC()(v156);
      v172 = v105;
      v106 = v170;
      v107 = v155;
      v169 = MEMORY[0x24C1FAD20](v170, v155);
      v108 = v159;
      v109 = v154;
      v164(v159, v104, v154);
      v110 = v166;
      v111 = (*(v166 + 80) + 16) & ~*(v166 + 80);
      v171 = (v111 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v111 + v158 + 31) & 0xFFFFFFFFFFFFFFF8;
      v113 = swift_allocObject();
      (*(v110 + 32))(v113 + v111, v108, v109);
      v114 = v113 + v171;
      v115 = v173;
      *v114 = v174;
      *(v114 + 8) = v115;
      *(v114 + 16) = 1;
      v116 = (v113 + v112);
      *v116 = v106;
      v116[1] = v107;
      *(v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8)) = v160;
      v175[4] = closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply;
      v175[5] = v113;
      v175[0] = MEMORY[0x277D85DD0];
      v175[1] = 1107296256;
      v175[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
      v175[3] = &block_descriptor_97_2;
      v117 = _Block_copy(v175);

      v118 = v172;
      v119 = v169;
      FPExtendBookmarkForDocumentURL();

      _Block_release(v117);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v121;
    v122 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 0;
    v172 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
    v123 = swift_initStackObject();
    *(v123 + 16) = xmmword_249B9FA70;
    *(v123 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v123 + 40) = v124;
    *(v123 + 72) = v122;
    *(v123 + 48) = 1;
    *(v123 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v123 + 88) = v125;
    *(v123 + 120) = v122;
    *(v123 + 96) = 1;
    v169 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v123);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    v126 = v171;
    v127 = URL.startAccessingSecurityScopedResource()();
    v128 = v159;
    v129 = v154;
    v164(v159, v126, v154);
    v130 = v166;
    v131 = (*(v166 + 80) + 17) & ~*(v166 + 80);
    v132 = (v131 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
    v133 = (v131 + v158 + 31) & 0xFFFFFFFFFFFFFFF8;
    v134 = swift_allocObject();
    *(v134 + 16) = v127;
    (*(v130 + 32))(v134 + v131, v128, v129);
    v135 = v134 + v132;
    v136 = v170;
    v137 = v155;
    *v135 = v170;
    *(v135 + 8) = v137;
    *(v135 + 16) = 0;
    v138 = (v134 + v133);
    v139 = v173;
    *v138 = v174;
    v138[1] = v139;
    v140 = type metadata accessor for LaunchUtils.OpenAppDelegate();
    v141 = objc_allocWithZone(v140);
    v142 = &v141[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
    *v142 = closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply;
    *(v142 + 1) = v134;
    v176.receiver = v141;
    v176.super_class = v140;

    v174 = objc_msgSendSuper2(&v176, sel_init);
    v143 = [objc_opt_self() defaultWorkspace];
    if (v143)
    {
      v145 = v143;
      URL._bridgeToObjectiveC()(v144);
      v147 = v146;
      v148 = MEMORY[0x24C1FAD20](v136, v137);
      v149 = v160 == 1;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v151 = Dictionary._bridgeToObjectiveC()().super.isa;
      v152 = v174;
      v153 = [v145 operationToOpenResource:v147 usingApplication:v148 uniqueDocumentIdentifier:0 isContentManaged:v149 sourceAuditToken:0 userInfo:isa options:v151 delegate:v174];

      if (v153)
      {

        [v153 start];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void closure #1 in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), NSURL *a8, void *a9, uint64_t a10, char a11, void (*a12)(void), NSURL *a13)
{
  v43 = a7;
  v44 = a8;
  v45 = a5;
  v41 = a10;
  v42 = a6;
  v17 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v17, v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = a1;
    _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ02__fghiJ0L_3forAE15urlManagedState16providerBundleId20appContainerBundleIdAghIyAL_ANSo17DOCDataOwnerStateVSSSgAXSbAPySbctF09determineD6ActionL_ArestugIyAL_SoAM_pAw2XSbySbctFTf4nennnnnnnn_nSo6FINodeC_Tt6g5Tm(v45, v40, v42, v43, v44, a9, v41, a11 & 1, a12, a13, a3 & 1, a4, &unk_285CAE060, &unk_285CAE0B0, closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)partial apply, closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply, &block_descriptor_150, &unk_285CAE088, closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply);
    v22 = v40;
  }

  else
  {
    v23 = v19;
    v43 = a12;
    v44 = a13;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.UI);
    v25 = v23;
    (*(v23 + 16))(v21, v45, v17);
    v26 = a2;
    v27 = a2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136315650;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, &v47);
      *(v30 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v25 + 8))(v21, v17);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v47);

      *(v30 + 14) = v35;
      *(v30 + 22) = 2080;
      v46 = v26;
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v47);

      *(v30 + 24) = v39;
      _os_log_impl(&dword_2493AC000, v28, v29, "%s failed to fetch item from URL: %s error: %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v21, v17);
    }

    v43(0);
  }
}

void closure #1 in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(void *a1, void *a2, uint64_t a3, int a4, void *a5, void (*a6)(void), unint64_t a7, int a8, void *a9)
{
  v111 = a8;
  v112 = a6;
  v113 = a7;
  v110 = a5;
  v109 = a4;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12, v15);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v99 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v99 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v28 = &v99 - v27;
  if (!a1)
  {
    v101 = v26;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v107 = a9;
    v47 = type metadata accessor for Logger();
    v48 = __swift_project_value_buffer(v47, static Logger.UI);
    v105 = v13[2];
    v106 = (v13 + 2);
    v105(v23, a3, v12);
    v49 = a2;
    v103 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v52 = os_log_type_enabled(v50, v51);
    v108 = a3;
    v104 = v13;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v114 = v100;
      *v53 = 136315650;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, &v114);
      *(v53 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v13;
      v57 = v56;
      v102 = v55[1];
      v102(v23, v12);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, &v114);

      *(v53 + 14) = v58;
      *(v53 + 22) = 2080;
      v116 = a2;
      v59 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v60 = String.init<A>(describing:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v114);

      *(v53 + 24) = v62;
      _os_log_impl(&dword_2493AC000, v50, v51, "%s node is nil and trying to create FINode with node from URL: %s failed. Failed to create FPItem with error: %s", v53, 0x20u);
      v63 = v100;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v63, -1, -1);
      v64 = v53;
      a3 = v108;
      MEMORY[0x24C1FE850](v64, -1, -1);
    }

    else
    {

      v102 = v13[1];
      v102(v23, v12);
    }

    v105(v19, a3, v12);
    v66 = v107;
    swift_unknownObjectRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v116 = v103;
      *v69 = 136316162;
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, &v116);
      *(v69 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v73 = v104;
      v102(v19, v12);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v116);

      *(v69 + 14) = v74;
      *(v69 + 22) = 2080;
      v114 = v107;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v75 = String.init<A>(describing:)();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v116);

      *(v69 + 24) = v77;
      *(v69 + 32) = 2080;
      v114 = 0;
      v115 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v78 = String.init<A>(describing:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v116);

      *(v69 + 34) = v80;
      *(v69 + 42) = 2080;
      a3 = v108;
      v114 = 0;
      v115 = 0;
      v81 = String.init<A>(describing:)();
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v116);

      *(v69 + 44) = v83;
      v84 = v73;
      _os_log_impl(&dword_2493AC000, v67, v68, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v69, 0x34u);
      v85 = v103;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v85, -1, -1);
      v86 = v69;
      v66 = v107;
      MEMORY[0x24C1FE850](v86, -1, -1);

      if (v66)
      {
LABEL_15:
        swift_getObjectType();
        swift_unknownObjectRetain();
        specialized determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(a3, v66, 2, 0, 0, 0, 0, v111 & 1, v112, v113, v109 & 1, v110);
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {

      v84 = v104;
      v102(v19, v12);
      if (v66)
      {
        goto LABEL_15;
      }
    }

    v107 = [objc_opt_self() defaultManager];
    v87 = v101;
    v105(v101, a3, v12);
    v88 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v89 = v84;
    v90 = (v14 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    *(v92 + 16) = v109 & 1;
    v93 = v110;
    *(v92 + 24) = v110;
    (v89[4])(v92 + v88, v87, v12);
    *(v92 + v90) = 2;
    v94 = (v92 + v91);
    v95 = v92 + v106;
    *v94 = 0;
    v94[1] = 0;
    LOBYTE(v94) = v111 & 1;
    *v95 = 0;
    *(v95 + 8) = 0;
    *(v95 + 16) = v94;
    v96 = (v92 + ((v91 + 47) & 0xFFFFFFFFFFFFFFF8));
    v97 = v113;
    *v96 = v112;
    v96[1] = v97;
    v98 = v93;

    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(a3, partial apply for closure #1 in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:), v92);

    return;
  }

  v29 = one-time initialization token for UI;
  v30 = a1;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.UI);
  (v13[2])(v28, a3, v12);
  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v114 = v36;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, &v114);
    *(v35 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = a3;
    v39 = v38;
    (v13[1])(v28, v12);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v114);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2080;
    v41 = v32;
    v42 = [v41 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v114);
    a3 = v108;

    *(v35 + 24) = v46;
    _os_log_impl(&dword_2493AC000, v33, v34, "%s node is nil and trying to create FINode with node from URL: %s failed. Created FPItem: %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v36, -1, -1);
    MEMORY[0x24C1FE850](v35, -1, -1);
  }

  else
  {

    (v13[1])(v28, v12);
  }

  v65 = v32;
  _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FPItemC_Tt2g5(a3, v65, v111 & 1, v109 & 1, v110, v112, v113);
}

uint64_t UTType.isConfigurationUTI.getter()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BA08D0;
  v24 = v8;
  v9 = v8 + v7;
  if (one-time initialization token for docMobileConfig != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, static UTType.docMobileConfig);
  v11 = *(v2 + 16);
  v11(v9, v10, v0);
  v12 = v2;
  if (one-time initialization token for docMobileProvision != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static UTType.docMobileProvision);
  v11(v9 + v6, v13, v0);
  v14 = 2 * v6;
  static UTType.pkcs12.getter();
  v22 = 3 * v6;
  static UTType.x509Certificate.getter();
  v11(v5, v9, v0);
  v15 = UTType.conforms(to:)();
  v23 = *(v12 + 8);
  v23(v5, v0);
  if (v15 & 1) != 0 || (v11(v5, v9 + v6, v0), v16 = UTType.conforms(to:)(), v17 = v23, v23(v5, v0), (v16) || (v11(v5, v9 + v14, v0), v18 = UTType.conforms(to:)(), v17(v5, v0), (v18))
  {
    v19 = 1;
  }

  else
  {
    v11(v5, v9 + v22, v0);
    v19 = UTType.conforms(to:)();
    v17(v5, v0);
  }

  return v19 & 1;
}

uint64_t containerAppBundleIDs #1 (for:) in static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v16 - v8);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_getObjectType();
  v11 = specialized static LaunchUtils._appContainerBundleIdentifier(of:url:)(a1, v9);
  v13 = v12;
  outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_249B9A480;
    *(result + 32) = v11;
    *(result + 40) = v13;
  }

  else if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9A480;
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;

    return v15;
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t static LaunchUtils.allOpeningApps(for:requireOpenInPlace:)(char **a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  v89 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v4 = [a1 availableClaimBindingsForMode:0 error:&v87];
  v5 = v87;
  if (v4)
  {
    v6 = v4;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSClaimBinding);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v5;

    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_65;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      v87 = MEMORY[0x277D84F90];
      while (1)
      {
        v84 = v2;
        v85 = v3;
        if (v10)
        {
          v11 = 0;
          v86 = MEMORY[0x277D84F90];
          v3 = &selRef_displayModeHandler;
          v2 = 0x277CC1000uLL;
          do
          {
            v12 = v11;
            while (1)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v13 = MEMORY[0x24C1FC540](v12, v7);
              }

              else
              {
                if (v12 >= *(v9 + 16))
                {
                  goto LABEL_62;
                }

                v13 = *(v7 + 8 * v12 + 32);
              }

              v14 = v13;
              v11 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v15 = [v13 bundleRecord];

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              ++v12;
              if (v11 == v10)
              {
                goto LABEL_26;
              }
            }

            MEMORY[0x24C1FB090]();
            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v86 = v87;
          }

          while (v11 != v10);
        }

        else
        {
          v86 = MEMORY[0x277D84F90];
        }

LABEL_26:

        v9 = v86;
        if (v86 >> 62)
        {
          v30 = __CocoaSet.count.getter();
        }

        else
        {
          v30 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v30 <= 0)
        {

          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.UI);
          v35 = v85;
          goto LABEL_70;
        }

        if ((v84 & 1) == 0)
        {
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.UI);
          v37 = v85;

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v87 = v42;
            *v40 = 138412546;
            *(v40 + 4) = v37;
            *v41 = v37;
            *(v40 + 12) = 2080;
            v43 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSApplicationRecord);
            v44 = v37;
            v45 = MEMORY[0x24C1FB0D0](v86, v43);
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v87);

            *(v40 + 14) = v47;
            _os_log_impl(&dword_2493AC000, v38, v39, "determined opening apps (requireOpenInPlace = false) of %@ to be %s", v40, 0x16u);
            outlined destroy of CharacterSet?(v41, &_sSo8NSObjectCSgMd);
            MEMORY[0x24C1FE850](v41, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v42);
            MEMORY[0x24C1FE850](v42, -1, -1);
            MEMORY[0x24C1FE850](v40, -1, -1);
          }

          return v86;
        }

        v87 = MEMORY[0x277D84F90];
        if (v86 >> 62)
        {
          v2 = __CocoaSet.count.getter();
          if (!v2)
          {
LABEL_52:
            v49 = MEMORY[0x277D84F90];
LABEL_53:

            if ((v49 & 0x8000000000000000) != 0 || (v50 = v49, (v49 & 0x4000000000000000) != 0))
            {
              v50 = v49;
              if (__CocoaSet.count.getter() > 0)
              {
                goto LABEL_56;
              }
            }

            else if (*(v49 + 16) > 0)
            {
LABEL_56:
              if (one-time initialization token for UI != -1)
              {
                swift_once();
              }

              v51 = type metadata accessor for Logger();
              __swift_project_value_buffer(v51, static Logger.UI);
              v52 = v85;

              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v87 = v57;
                *v55 = 138412546;
                *(v55 + 4) = v52;
                *v56 = v52;
                *(v55 + 12) = 2080;
                v58 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSApplicationRecord);
                v59 = v52;
                v60 = MEMORY[0x24C1FB0D0](v49, v58);
                v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v87);

                *(v55 + 14) = v62;
                _os_log_impl(&dword_2493AC000, v53, v54, "determined opening apps (requireOpenInPlace = true) of %@ to be %s", v55, 0x16u);
                outlined destroy of CharacterSet?(v56, &_sSo8NSObjectCSgMd);
                MEMORY[0x24C1FE850](v56, -1, -1);
                __swift_destroy_boxed_opaque_existential_0(v57);
                MEMORY[0x24C1FE850](v57, -1, -1);
                MEMORY[0x24C1FE850](v55, -1, -1);
              }

              return v49;
            }

            v87 = 0;
            v88 = 0xE000000000000000;
            _StringGuts.grow(_:)(55);
            MEMORY[0x24C1FAEA0](0x20666F20656E6F4ELL, 0xE800000000000000);
            v71 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for LSApplicationRecord);
            v72 = MEMORY[0x24C1FB0D0](v50, v71);
            v74 = v73;

            MEMORY[0x24C1FAEA0](v72, v74);

            MEMORY[0x24C1FAEA0](0xD00000000000002ALL, 0x8000000249BF8E20);
            MEMORY[0x24C1FAEA0](1702195828, 0xE400000000000000);
            MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
            v76 = v87;
            v75 = v88;
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            __swift_project_value_buffer(v77, static Logger.UI);
            v78 = v85;

            v21 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v21, v79))
            {
              v66 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v87 = v81;
              *v66 = 138412802;
              *(v66 + 4) = v78;
              *v80 = v78;
              *(v66 + 12) = 2080;
              v82 = v78;
              v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, &v87);

              *(v66 + 14) = v83;
              *(v66 + 22) = 2080;
              *(v66 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BF8DF0, &v87);
              _os_log_impl(&dword_2493AC000, v21, v79, "error determining opening apps of %@ - opening apps %s - %s", v66, 0x20u);
              outlined destroy of CharacterSet?(v80, &_sSo8NSObjectCSgMd);
              MEMORY[0x24C1FE850](v80, -1, -1);
              swift_arrayDestroy();
              v70 = v81;
              goto LABEL_72;
            }

            goto LABEL_73;
          }
        }

        else
        {
          v2 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_52;
          }
        }

        v7 = 0;
        v3 = (v86 & 0xC000000000000001);
        while (1)
        {
          if (v3)
          {
            v31 = MEMORY[0x24C1FC540](v7, v86);
          }

          else
          {
            if (v7 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v31 = *(v86 + 8 * v7 + 32);
          }

          v32 = v31;
          v33 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if ([v31 supportsOpenInPlace])
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v7;
          if (v33 == v2)
          {
            v49 = v87;
            goto LABEL_53;
          }
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        if (__CocoaSet.count.getter() < 1)
        {
          break;
        }

        v87 = MEMORY[0x277D84F90];
        v10 = __CocoaSet.count.getter();
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.UI);
    v35 = v3;
LABEL_70:
    v64 = v35;
    v21 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v87 = v68;
      *v66 = 138412546;
      *(v66 + 4) = v64;
      *v67 = v64;
      *(v66 + 12) = 2080;
      v69 = v64;
      *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BF8DF0, &v87);
      _os_log_impl(&dword_2493AC000, v21, v65, "no apps exist to open %@ - claimBindings was empty - %s", v66, 0x16u);
      outlined destroy of CharacterSet?(v67, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v70 = v68;
LABEL_72:
      MEMORY[0x24C1FE850](v70, -1, -1);
      MEMORY[0x24C1FE850](v66, -1, -1);
    }

LABEL_73:
  }

  else
  {
    v16 = v87;
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.UI);
    v19 = v3;
    v20 = v17;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v87 = v25;
      *v23 = 138412802;
      *(v23 + 4) = v19;
      *v24 = v19;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v26 = v19;
      v27 = Error.localizedDescription.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v87);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BF8DF0, &v87);
      _os_log_impl(&dword_2493AC000, v21, v22, "error determining opening apps of %@ - claimBindings loading error: %s - %s", v23, 0x20u);
      outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v24, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);

      goto LABEL_73;
    }
  }

  return 0;
}

Swift::Int closure #1 in _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:)(uint64_t a1)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  outlined assign with copy of URL?(a1, v2);
  return OS_dispatch_semaphore.signal()();
}

id closure #2 in _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:)(id *a1)
{
  result = [*a1 documentsURL];
  if (result)
  {
    v3 = result;
    URL._bridgeToObjectiveC()(v2);
    v5 = v4;
    v6 = [v3 fp:v4 relationshipToItemAtURL:?];

    return (v6 != 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool_optional __swiftcall LSBundleRecord.doc_isLinkedOnOrAfter(iOSVersion:xrOSVersion:)(Swift::String iOSVersion, Swift::String xrOSVersion)
{
  v3 = v2;
  object = iOSVersion._object;
  countAndFlagsBits = iOSVersion._countAndFlagsBits;
  v6 = [v3 SDKVersion];
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
    v10.value = [v8 isVersion:v6 greaterThanOrEqualToVersion:v9];

    return v10;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t FPHierarchyLookup.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void (*DOCNode.preferQuicklook.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = DOCNode.preferQuicklook.getter() & 1;
  return DOCNode.preferQuicklook.modify;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x24C1FAD20]();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id specialized static LaunchUtils.bundleIdentifierOfDefaultApp(for:node:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v44[-1] - v6);
  v8 = [objc_opt_self() defaultPermission];
  [v8 dataOwnerStateForNode_];

  v9 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v10 = [v9 isEnabled];

  if (v10)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v11 = [a2 providerDomainID];
    v36 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v11, 1);

    if (v36)
    {
      v37 = [v36 topLevelBundleIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = type metadata accessor for URL();
      (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
      v12 = specialized static LaunchUtils._appContainerBundleIdentifier(of:url:)(a2, v7);
      v13 = v39;

      outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7, a1, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v7, a2, v12, v13, 1, v45, 0);

  outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
  if (!v45[0])
  {
    if (one-time initialization token for DocumentsAppIdentifier != -1)
    {
      swift_once();
    }

    v17 = static LaunchUtils.DocumentsAppIdentifier;
LABEL_23:

    return v17;
  }

  if (v45[0] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    if (one-time initialization token for DocumentsAppIdentifier != -1)
    {
      swift_once();
    }

    v17 = static LaunchUtils.DocumentsAppIdentifier;
    v18 = *algn_27EEF1808;
    *(inited + 32) = static LaunchUtils.DocumentsAppIdentifier;
    *(inited + 40) = v18;
    *(inited + 48) = 0xD000000000000031;
    *(inited + 56) = 0x8000000249BCBC40;
    v19 = objc_opt_self();

    v20 = [v19 mainBundle];
    v21 = [v20 bundleIdentifier];

    if (v21)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v44[0] = v24;
    v44[1] = v26;
    MEMORY[0x28223BE20](v22, v23);
    v42 = v44;
    v40 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v43 - 4), inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    swift_arrayDestroy();

    if ((v40 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

  v17 = v45[1];
  v27 = v45[2];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.UI);
  swift_unknownObjectRetain();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44[0] = v32;
    *v31 = 136315650;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BCBC10, v44);
    *(v31 + 12) = 2080;
    v44[10] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v44);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v27, v44);
    _os_log_impl(&dword_2493AC000, v29, v30, "%s should open node: %s in: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v31, -1, -1);
  }

  return v17;
}

uint64_t specialized static LaunchUtils._appContainerBundleIdentifier(of:url:)(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = one-time initialization token for UI;
      swift_unknownObjectRetain();
      if (v25 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.UI);
      swift_unknownObjectRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v31;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v38);
        *(v29 + 12) = 2112;
        *(v29 + 14) = v24;
        *v30 = v24;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_2493AC000, v27, v28, "%s no fetching appID for FPItem: %@", v29, 0x16u);
        outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x24C1FE850](v31, -1, -1);
        MEMORY[0x24C1FE850](v29, -1, -1);
      }

      v15 = specialized _appContainerBundleIdentifier #1 (of:url:) in static LaunchUtils._appContainerBundleIdentifier(of:url:)(v24, a2);
      goto LABEL_15;
    }

    return 0;
  }

  v4 = v3;
  v5 = one-time initialization token for UI;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v38);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v4;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_2493AC000, v7, v8, "%s fetching appID for FINode: %@", v9, 0x16u);
    outlined destroy of CharacterSet?(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v12 = [objc_opt_self() appLibraryNodeForNode_];
  if (!v12)
  {
    swift_unknownObjectRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v38);
      *(v34 + 12) = 2112;
      *(v34 + 14) = v4;
      *v35 = v4;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_2493AC000, v32, v33, "%s no appID for FINode: %@", v34, 0x16u);
      outlined destroy of CharacterSet?(v35, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C1FE850](v36, -1, -1);
      MEMORY[0x24C1FE850](v34, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  v13 = v12;
  v14 = [v12 appIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  swift_unknownObjectRetain();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (!os_log_type_enabled(v18, v19))
  {
    swift_unknownObjectRelease();

    return v15;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v38 = v22;
  *v20 = 136315650;
  *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BCBC80, &v38);
  *(v20 + 12) = 2080;
  *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v38);
  *(v20 + 22) = 2112;
  *(v20 + 24) = v4;
  *v21 = v4;
  swift_unknownObjectRetain();
  _os_log_impl(&dword_2493AC000, v18, v19, "%s fetched appID: %s for FINode: %@", v20, 0x20u);
  outlined destroy of CharacterSet?(v21, &_sSo8NSObjectCSgMd);
  MEMORY[0x24C1FE850](v21, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v22, -1, -1);
  MEMORY[0x24C1FE850](v20, -1, -1);

LABEL_15:
  swift_unknownObjectRelease();
  return v15;
}

void _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FINodeC_Tt2g5(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v109 = a5;
  v110 = a7;
  v107 = a6;
  v106 = a4;
  v108 = a3;
  v112 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v102 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v101 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS.QoSClass();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v16);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = *(v103 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v22 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v111 = &v96 - v25;
  v26 = [objc_opt_self() defaultPermission];
  v27 = a2;
  v105 = [v26 dataOwnerStateForNode_];

  v28 = [objc_opt_self() contextMenuShowsOpenWithApp];
  LOBYTE(a2) = [v28 isEnabled];

  if ((a2 & 1) != 0 || (v98 = v12, v29 = v13, v30 = v9, v31 = v8, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain), v32 = [v27 providerDomainID], v71 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v32, 1), v32, !v71))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = v27;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315650;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDBE50, &aBlock);
      *(v37 + 12) = 2080;
      v119[0] = [v34 providerDomainID];
      type metadata accessor for FPProviderDomainID(0);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &aBlock);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2080;
      v119[0] = v34;
      v42 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v43 = String.init<A>(describing:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &aBlock);

      *(v37 + 24) = v45;
      _os_log_impl(&dword_2493AC000, v35, v36, "%s error creating FPProviderDomain from domainID: %s of node: %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v46 = v103;
    v47 = v104;
    (*(v103 + 16))(v111, v112, v104);
    v48 = v34;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v111;
      v53 = v51;
      v54 = swift_slowAlloc();
      v119[0] = v54;
      *v53 = 136316162;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, v119);
      *(v53 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v46 + 8))(v52, v47);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v119);

      *(v53 + 14) = v58;
      *(v53 + 22) = 2080;
      aBlock = v48;
      v59 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v60 = String.init<A>(describing:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v119);

      *(v53 + 24) = v62;
      *(v53 + 32) = 2080;
      aBlock = 0;
      v114 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v63 = String.init<A>(describing:)();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v119);

      *(v53 + 34) = v65;
      *(v53 + 42) = 2080;
      aBlock = 0;
      v114 = 0;
      v66 = String.init<A>(describing:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v119);

      *(v53 + 44) = v68;
      _os_log_impl(&dword_2493AC000, v49, v50, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v53, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v111, v47);
    }

    v69 = v105;
    v70 = v48;
    _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ02__fghiJ0L_3forAE15urlManagedState16providerBundleId20appContainerBundleIdAghIyAL_ANSo17DOCDataOwnerStateVSSSgAXSbAPySbctF09determineD6ActionL_ArestugIyAL_SoAM_pAw2XSbySbctFTf4nennnnnnnn_nSo6FINodeC_Tt6g5Tm(v112, v70, v69, 0, 0, 0, 0, v108 & 1, v107, v110, v106 & 1, v109, &unk_285CADF48, &unk_285CADF98, closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)partial apply, closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply, &block_descriptor_125_0, &unk_285CADF70, closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply);
  }

  else
  {
    v72 = v31;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v96 = v71;
    v73 = *MEMORY[0x277D851B8];
    v97 = v29;
    v74 = v99;
    v75 = v100;
    (*(v99 + 104))(v18, v73, v100);
    v111 = static OS_dispatch_queue.global(qos:)();
    (*(v74 + 8))(v18, v75);
    v77 = v103;
    v76 = v104;
    (*(v103 + 16))(v22, v112, v104);
    v78 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v100 = (v78 + v20 + 23) & 0xFFFFFFFFFFFFFFF8;
    v79 = v30;
    v80 = (v78 + v20 + 39) & 0xFFFFFFFFFFFFFFF8;
    v112 = v72;
    v81 = swift_allocObject();
    *(v81 + 16) = v27;
    (*(v77 + 32))(v81 + v78, v22, v76);
    v82 = v81 + ((v78 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
    v83 = v96;
    *v82 = v96;
    *(v82 + 8) = v106 & 1;
    v84 = v81 + v100;
    *v84 = v105;
    *(v84 + 8) = v108 & 1;
    v86 = v109;
    v85 = v110;
    *(v81 + v80) = v109;
    v87 = (v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v87 = v107;
    v87[1] = v85;
    v117 = closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)partial apply;
    v118 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v116 = &block_descriptor_110_1;
    v88 = _Block_copy(&aBlock);
    v89 = v27;
    v90 = v83;
    v91 = v86;

    v92 = v101;
    static DispatchQoS.unspecified.getter();
    v119[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v93 = v98;
    v94 = v112;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v95 = v111;
    MEMORY[0x24C1FB9A0](0, v92, v93, v88);
    _Block_release(v88);

    (*(v79 + 8))(v93, v94);
    (*(v102 + 8))(v92, v97);
  }
}

void _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FPItemC_Tt2g5(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v109 = a5;
  v110 = a7;
  v107 = a6;
  v106 = a4;
  v108 = a3;
  v112 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v102 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v101 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS.QoSClass();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v16);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = *(v103 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v22 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v111 = &v96 - v25;
  v26 = [objc_opt_self() defaultPermission];
  v27 = a2;
  v105 = [v26 dataOwnerStateForNode_];

  v28 = [objc_opt_self() contextMenuShowsOpenWithApp];
  LOBYTE(a2) = [v28 isEnabled];

  if ((a2 & 1) != 0 || (v98 = v12, v29 = v13, v30 = v9, v31 = v8, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain), v32 = [v27 providerDomainID], v71 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v32, 1), v32, !v71))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = v27;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315650;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDBE50, &aBlock);
      *(v37 + 12) = 2080;
      v119[0] = [v34 providerDomainID];
      type metadata accessor for FPProviderDomainID(0);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &aBlock);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2080;
      v119[0] = v34;
      v42 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v43 = String.init<A>(describing:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &aBlock);

      *(v37 + 24) = v45;
      _os_log_impl(&dword_2493AC000, v35, v36, "%s error creating FPProviderDomain from domainID: %s of node: %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v46 = v103;
    v47 = v104;
    (*(v103 + 16))(v111, v112, v104);
    v48 = v34;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v111;
      v53 = v51;
      v54 = swift_slowAlloc();
      v119[0] = v54;
      *v53 = 136316162;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, v119);
      *(v53 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v46 + 8))(v52, v47);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v119);

      *(v53 + 14) = v58;
      *(v53 + 22) = 2080;
      aBlock = v48;
      v59 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v60 = String.init<A>(describing:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v119);

      *(v53 + 24) = v62;
      *(v53 + 32) = 2080;
      aBlock = 0;
      v114 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v63 = String.init<A>(describing:)();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v119);

      *(v53 + 34) = v65;
      *(v53 + 42) = 2080;
      aBlock = 0;
      v114 = 0;
      v66 = String.init<A>(describing:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v119);

      *(v53 + 44) = v68;
      _os_log_impl(&dword_2493AC000, v49, v50, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v53, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v111, v47);
    }

    v69 = v105;
    v70 = v48;
    _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ02__fghiJ0L_3forAE15urlManagedState16providerBundleId20appContainerBundleIdAghIyAL_ANSo17DOCDataOwnerStateVSSSgAXSbAPySbctF09determineD6ActionL_ArestugIyAL_SoAM_pAw2XSbySbctFTf4nennnnnnnn_nSo6FINodeC_Tt6g5Tm(v112, v70, v69, 0, 0, 0, 0, v108 & 1, v107, v110, v106 & 1, v109, &unk_285CAE060, &unk_285CAE0B0, closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)partial apply, closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply, &block_descriptor_150, &unk_285CAE088, closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)partial apply);
  }

  else
  {
    v72 = v31;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v96 = v71;
    v73 = *MEMORY[0x277D851B8];
    v97 = v29;
    v74 = v99;
    v75 = v100;
    (*(v99 + 104))(v18, v73, v100);
    v111 = static OS_dispatch_queue.global(qos:)();
    (*(v74 + 8))(v18, v75);
    v77 = v103;
    v76 = v104;
    (*(v103 + 16))(v22, v112, v104);
    v78 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v100 = (v78 + v20 + 23) & 0xFFFFFFFFFFFFFFF8;
    v79 = v30;
    v80 = (v78 + v20 + 39) & 0xFFFFFFFFFFFFFFF8;
    v112 = v72;
    v81 = swift_allocObject();
    *(v81 + 16) = v27;
    (*(v77 + 32))(v81 + v78, v22, v76);
    v82 = v81 + ((v78 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
    v83 = v96;
    *v82 = v96;
    *(v82 + 8) = v106 & 1;
    v84 = v81 + v100;
    *v84 = v105;
    *(v84 + 8) = v108 & 1;
    v86 = v109;
    v85 = v110;
    *(v81 + v80) = v109;
    v87 = (v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v87 = v107;
    v87[1] = v85;
    v117 = closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)partial apply;
    v118 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v116 = &block_descriptor_135_1;
    v88 = _Block_copy(&aBlock);
    v89 = v27;
    v90 = v83;
    v91 = v86;

    v92 = v101;
    static DispatchQoS.unspecified.getter();
    v119[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v93 = v98;
    v94 = v112;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v95 = v111;
    MEMORY[0x24C1FB9A0](0, v92, v93, v88);
    _Block_release(v88);

    (*(v79 + 8))(v93, v94);
    (*(v102 + 8))(v92, v97);
  }
}

uint64_t specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(uint64_t a1, void *a2, int a3, int a4, void *a5, void (*a6)(void), unint64_t a7, uint64_t a8)
{
  v101 = a8;
  v108 = a5;
  v109 = a7;
  v107 = a6;
  v105 = a4;
  v106 = a3;
  v111 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v99 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS.QoSClass();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v17);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v102 = *(v20 - 8);
  v103 = v20;
  v21 = *(v102 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v23 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v110 = &v94 - v26;
  v27 = [objc_opt_self() defaultPermission];
  v104 = [v27 dataOwnerStateForNode_];

  v28 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v29 = [v28 isEnabled];

  if ((v29 & 1) != 0 || (v96 = v13, v30 = v14, v31 = v10, v32 = v9, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain), v33 = [a2 providerDomainID], v67 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v33, 1), v33, !v67))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    swift_unknownObjectRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315650;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDBE50, &aBlock);
      *(v37 + 12) = 2080;
      v118[0] = [a2 providerDomainID];
      type metadata accessor for FPProviderDomainID(0);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &aBlock);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2080;
      v118[0] = a2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &aBlock);

      *(v37 + 24) = v44;
      _os_log_impl(&dword_2493AC000, v35, v36, "%s error creating FPProviderDomain from domainID: %s of node: %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v46 = v102;
    v45 = v103;
    (*(v102 + 16))(v110, v111, v103);
    swift_unknownObjectRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v110;
      v51 = v49;
      v52 = swift_slowAlloc();
      v118[0] = v52;
      *v51 = 136316162;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, v118);
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v46 + 8))(v50, v45);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v118);

      *(v51 + 14) = v56;
      *(v51 + 22) = 2080;
      aBlock = a2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v57 = String.init<A>(describing:)();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v118);

      *(v51 + 24) = v59;
      *(v51 + 32) = 2080;
      aBlock = 0;
      v113 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v60 = String.init<A>(describing:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v118);

      *(v51 + 34) = v62;
      *(v51 + 42) = 2080;
      aBlock = 0;
      v113 = 0;
      v63 = String.init<A>(describing:)();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v118);

      *(v51 + 44) = v65;
      _os_log_impl(&dword_2493AC000, v47, v48, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v51, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v52, -1, -1);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v110, v45);
    }

    swift_unknownObjectRetain();
    specialized determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v111, a2, v104, 0, 0, 0, 0, v106 & 1, v107, v109, v105 & 1, v108);
    return swift_unknownObjectRelease();
  }

  else
  {
    v68 = v32;
    v69 = v31;
    v70 = v30;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v95 = v67;
    v71 = v97;
    v72 = v98;
    (*(v97 + 104))(v19, *MEMORY[0x277D851B8], v98);
    v101 = static OS_dispatch_queue.global(qos:)();
    (*(v71 + 8))(v19, v72);
    v73 = v102;
    v74 = *(v102 + 16);
    v110 = v69;
    v75 = v103;
    v74(v23, v111, v103);
    v76 = *(v73 + 80);
    v98 = v68;
    v77 = (v76 + 24) & ~v76;
    v111 = v70;
    v78 = (v77 + v21 + 39) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = a2;
    (*(v73 + 32))(v79 + v77, v23, v75);
    v80 = v79 + ((v77 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
    v81 = v95;
    *v80 = v95;
    *(v80 + 8) = v105 & 1;
    v82 = v79 + ((v77 + v21 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v82 = v104;
    *(v82 + 8) = v106 & 1;
    v83 = v107;
    v84 = v108;
    *(v79 + v78) = v108;
    v85 = (v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8));
    v86 = v109;
    *v85 = v83;
    v85[1] = v86;
    v116 = _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFyyYbcfU_TA_0;
    v117 = v79;
    aBlock = MEMORY[0x277D85DD0];
    v113 = 1107296256;
    v114 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v115 = &block_descriptor_103_0;
    v87 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v88 = v81;
    v89 = v84;

    v90 = v99;
    static DispatchQoS.unspecified.getter();
    v118[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v91 = v96;
    v92 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v93 = v101;
    MEMORY[0x24C1FB9A0](0, v90, v91, v87);
    _Block_release(v87);

    (*(v110 + 1))(v91, v92);
    (*(v100 + 8))(v90, v111);
  }
}

void _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ02__fghiJ0L_3forAE15urlManagedState16providerBundleId20appContainerBundleIdAghIyAL_ANSo17DOCDataOwnerStateVSSSgAXSbAPySbctF09determineD6ActionL_ArestugIyAL_SoAM_pAw2XSbySbctFTf4nennnnnnnn_nSo6FINodeC_Tt6g5Tm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSURL *a5, id a6, unint64_t a7, char a8, void (*a9)(void), uint64_t a10, unsigned __int8 a11, uint64_t a12, void (*a13)(uint64_t, char *, uint64_t), uint64_t a14, uint64_t a15, NSURL *a16, uint64_t a17, uint64_t a18, char *a19)
{
  v177 = a6;
  v178 = a7;
  v171 = a4;
  v172 = a5;
  v175 = a3;
  v180 = a10;
  v179 = a9;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v167 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v174 = &v159 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v170 = &v159 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v169 = &v159 - v34;
  v176 = v35;
  MEMORY[0x28223BE20](v36, v37);
  v168 = &v159 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v41 = MEMORY[0x28223BE20](v39 - 8, v40);
  v43 = &v159 - v42;
  v44 = *(v23 + 16);
  v184 = a1;
  v181 = v44;
  v182 = v23 + 16;
  (v44)(&v159 - v42, a1, v22, v41);
  v45 = *(v23 + 56);
  v183 = v22;
  v45(v43, 0, 1, v22);
  v173 = a2;
  v46 = v178;
  LODWORD(v178) = a11;
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v43, a2, v177, v46, a11, v187, a8);
  outlined destroy of CharacterSet?(v43, &_s10Foundation3URLVSgMd);
  if (!v187[0])
  {
    static LaunchUtils.installConfigurationProfile(from:completionBlock:)(v184, v179, v180);
    return;
  }

  v166 = v23;
  v47 = v23;
  if (v187[0] == 1)
  {
    v49 = v183;
    v48 = v184;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.UI);
    v51 = v168;
    v181(v168, v48, v49);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v185[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, v185);
      *(v54 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v47 + 8))(v51, v49);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v185);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_2493AC000, v52, v53, "%s should quicklook: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v55, -1, -1);
      MEMORY[0x24C1FE850](v54, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v51, v49);
    }

    v179(0);
  }

  else
  {
    v60 = v23;
    v164 = a13;
    v61 = v187[2];
    v177 = v187[1];

    v63 = v183;
    v62 = v184;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v162 = a12;
    v64 = type metadata accessor for Logger();
    v65 = __swift_project_value_buffer(v64, static Logger.UI);
    v66 = v169;
    v181(v169, v62, v63);

    v163 = v65;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    v69 = os_log_type_enabled(v67, v68);
    v168 = v61;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v185[0] = v165;
      *v70 = 136315650;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, v185);
      *(v70 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v161 = *(v60 + 8);
      v161(v66, v63);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v185);

      *(v70 + 14) = v74;
      *(v70 + 22) = 2080;
      v62 = v184;
      *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v61, v185);
      _os_log_impl(&dword_2493AC000, v67, v68, "%s should open: %s in: %s", v70, 0x20u);
      v75 = v165;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v75, -1, -1);
      MEMORY[0x24C1FE850](v70, -1, -1);
    }

    else
    {

      v161 = *(v60 + 8);
      v161(v66, v63);
    }

    v76 = v170;
    v181(v170, v62, v63);
    v77 = *(v60 + 80);
    v78 = (v77 + 32) & ~v77;
    v79 = (v176 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
    v160 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 39) & 0xFFFFFFFFFFFFFFF8;
    v165 = v77;
    v82 = swift_allocObject();
    v83 = v180;
    *(v82 + 16) = v179;
    *(v82 + 24) = v83;
    v84 = *(v60 + 32);
    v170 = (v60 + 32);
    v164 = v84;
    v84(v82 + v78, v76, v183);
    v85 = (v82 + v79);
    v86 = v168;
    *v85 = v177;
    v85[1] = v86;
    *(v82 + v80) = v175;
    v87 = v82 + v160;
    v88 = v172;
    *v87 = v171;
    *(v87 + 8) = v88;
    LODWORD(v179) = v178 & 1;
    *(v87 + 16) = v178 & 1;
    v89 = v162;
    *(v82 + v81) = v162;
    v169 = v82;
    v90 = v173;
    v91 = v174;
    *(v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8)) = v173;
    v92 = v183;
    v181(v91, v184, v183);

    v93 = v89;
    v94 = v90;
    swift_bridgeObjectRetain_n();

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v177;
    if (v97)
    {
      v99 = v91;
      v100 = swift_slowAlloc();
      v101 = v92;
      v102 = swift_slowAlloc();
      v185[0] = v102;
      *v100 = 136315650;
      *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x8000000249BDBCD0, v185);
      *(v100 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      v106 = v99;
      v98 = v177;
      v161(v106, v101);
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, v185);

      *(v100 + 14) = v107;
      *(v100 + 22) = 2080;
      *(v100 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v168, v185);
      _os_log_impl(&dword_2493AC000, v95, v96, "%s attempting to open: %s in: %s", v100, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v102, -1, -1);
      MEMORY[0x24C1FE850](v100, -1, -1);
    }

    else
    {

      v161(v91, v92);
    }

    v180 = a15;
    v108 = v165;
    v109 = ~v165;
    if (v178)
    {
      v173 = a17;
      v172 = a16;
      v110 = v184;
      URL._bridgeToObjectiveC()(a16);
      v178 = v111;
      v112 = v168;
      v174 = MEMORY[0x24C1FAD20](v98, v168);
      v113 = v167;
      v114 = v183;
      v181(v167, v110, v183);
      v115 = (v108 + 16) & v109;
      v116 = (v115 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
      v117 = (v115 + v176 + 31) & 0xFFFFFFFFFFFFFFF8;
      v118 = swift_allocObject();
      v164(v118 + v115, v113, v114);
      v119 = v118 + v116;
      v120 = v169;
      *v119 = v180;
      *(v119 + 8) = v120;
      *(v119 + 16) = v179;
      v121 = (v118 + v117);
      *v121 = v177;
      v121[1] = v112;
      *(v118 + ((v117 + 23) & 0xFFFFFFFFFFFFFFF8)) = v175;
      v185[4] = v172;
      v185[5] = v118;
      v185[0] = MEMORY[0x277D85DD0];
      v185[1] = 1107296256;
      v185[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
      v185[3] = v173;
      v122 = _Block_copy(v185);

      v123 = v178;
      v124 = v174;
      FPExtendBookmarkForDocumentURL();

      _Block_release(v122);

      return;
    }

    v173 = a18;
    v174 = a19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v126;
    v127 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v179;
    v178 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
    v128 = swift_initStackObject();
    *(v128 + 16) = xmmword_249B9FA70;
    *(v128 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v128 + 40) = v129;
    *(v128 + 72) = v127;
    *(v128 + 48) = 1;
    *(v128 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v128 + 88) = v130;
    *(v128 + 120) = v127;
    *(v128 + 96) = 1;
    v172 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v128);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    v131 = v184;
    v132 = URL.startAccessingSecurityScopedResource()();
    v133 = v167;
    v134 = v183;
    v181(v167, v131, v183);
    v135 = (v108 + 17) & v109;
    v136 = (v135 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v135 + v176 + 31) & 0xFFFFFFFFFFFFFFF8;
    v138 = swift_allocObject();
    *(v138 + 16) = v132;
    v139 = v138 + v135;
    v140 = v177;
    v164(v139, v133, v134);
    v141 = v138 + v136;
    v142 = v168;
    *v141 = v140;
    *(v141 + 8) = v142;
    *(v141 + 16) = v179;
    v143 = (v138 + v137);
    v144 = v169;
    *v143 = v180;
    v143[1] = v144;
    v145 = type metadata accessor for LaunchUtils.OpenAppDelegate();
    v146 = objc_allocWithZone(v145);
    v147 = &v146[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
    *v147 = v174;
    *(v147 + 1) = v138;
    v186.receiver = v146;
    v186.super_class = v145;

    v148 = objc_msgSendSuper2(&v186, sel_init);
    v149 = [objc_opt_self() defaultWorkspace];
    if (v149)
    {
      v151 = v149;
      URL._bridgeToObjectiveC()(v150);
      v153 = v152;
      v154 = MEMORY[0x24C1FAD20](v140, v142);
      v155 = v175 == 1;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v157 = Dictionary._bridgeToObjectiveC()().super.isa;
      v158 = [v151 operationToOpenResource:v153 usingApplication:v154 uniqueDocumentIdentifier:0 isContentManaged:v155 sourceAuditToken:0 userInfo:isa options:v157 delegate:v148];

      if (v158)
      {

        [v158 start];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}