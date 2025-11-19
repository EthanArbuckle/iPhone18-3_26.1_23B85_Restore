uint64_t closure #2 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(void (*a1)(char *, void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1(v5, 0);
  return outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd);
}

Swift::Void __swiftcall DOCDocumentManager.createNewDocument(targetLocation:)(DOCConcreteLocation_optional *targetLocation)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = targetLocation;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = targetLocation;
    v10 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "Creating document at %@", v8, 0xCu);
    outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = targetLocation;
  *(v11 + 24) = v2;
  v12 = v5;
  v13 = v2;
  DOCRunInMainThread(_:)();
}

void createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  v4 = [a2 activeDocumentCreationSession];
  if (v4)
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.UI);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v6, "Ignore document creation because the client is still processing the previous request", v7, 2u);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    goto LABEL_17;
  }

  v8 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration];
  v9 = [v8 sceneIdentifier];
  oslog = specialized static DOCInteractionManager.sharedManager(for:)(v9);

  v10 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & oslog->isa) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2493AC000, v12, v13, "Ignore document creation because the client is still processing an open document request", v14, 2u);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    goto LABEL_16;
  }

  v15 = (*((*v10 & *a2) + 0xB0))();
  if (!v15)
  {
LABEL_17:

    return;
  }

  v12 = v15;
  v16 = (*((*v10 & *a2) + 0x98))();
  if (!v16)
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v12 configuration];
  v20 = [v19 sceneIdentifier];

  v21 = [v18 globalTabbedBrowserControllerForIdentifier_];
  if (v21)
  {
    type metadata accessor for DOCServiceDocumentBrowserViewController();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  objc_allocWithZone(type metadata accessor for DOCDocumentManager.DocumentCreationSession());
  v23 = v22;
  v24 = a1;
  v25 = v8;
  v26 = specialized DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(v24, v25, v22);

  [a2 setActiveDocumentCreationSession_];
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(v26, 1u);
  if ([v17 respondsToSelector_])
  {
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v24;
    aBlock[4] = partial apply for closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned UIDocumentBrowserImportMode) -> ();
    aBlock[3] = &block_descriptor_204_0;
    v29 = _Block_copy(aBlock);
    v30 = v24;

    v31 = v26;

    [v17 documentBrowser:v12 didRequestDocumentCreationWithHandler:v29];

    swift_unknownObjectRelease();

    _Block_release(v29);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned UIDocumentBrowserImportMode) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v10(v9, a3);

  return outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
}

uint64_t closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v38 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v35 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v35 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    if (!a2)
    {
LABEL_5:
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = a4;
      v24 = v22;
      v25 = a4;
      DOCRunInMainThread(_:)();
    }

    v37 = a2;
    outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
      goto LABEL_5;
    }

    v26 = *(v13 + 32);
    v35[1] = v13 + 32;
    v36 = v26;
    v26(v20, v11, v12);
    static os_log_type_t.info.getter();
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v39 = 0xD000000000000016;
    v40 = 0x8000000249BFCB00;
    v27 = URL.absoluteString.getter();
    MEMORY[0x24C1FAEA0](v27);

    specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a4, v39, v40);

    (*(v13 + 16))(v16, v20, v12);
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v22;
    *(v30 + 24) = a4;
    v36(v30 + v28, v16, v12);
    v31 = v38;
    *(v30 + v29) = v37;
    *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v32 = v22;
    v33 = a4;
    v34 = v31;
    DOCRunInMainThread(_:)();

    return (*(v13 + 8))(v20, v12);
  }

  return result;
}

uint64_t closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v66 = a5;
  v64 = a4;
  v68 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v61 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v52 - v22;
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(a2, 2u);
  static os_log_type_t.info.getter();
  aBlock = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  aBlock = 0xD000000000000013;
  v74 = 0x8000000249BFCB20;
  v56 = a3;
  v24 = URL.absoluteString.getter();
  MEMORY[0x24C1FAEA0](v24);

  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a2, aBlock, v74);

  v55 = *(v17 + 16);
  v53 = v16;
  v55(v23, a3, v16);
  v25 = *(v17 + 80);
  v26 = swift_allocObject();
  v58 = v26;
  v27 = a1;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v57 = *(v17 + 32);
  v57(v26 + ((v25 + 32) & ~v25), v23, v16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v29 = v62;
  v28 = v63;
  v30 = v59;
  (*(v62 + 104))(v59, *MEMORY[0x277D851C8], v63);
  v54 = v27;
  v31 = a2;
  v60 = static OS_dispatch_queue.global(qos:)();
  (*(v29 + 8))(v30, v28);
  v32 = v61;
  v33 = v53;
  v55(v61, v56, v53);
  v34 = (v25 + 24) & ~v25;
  v35 = (v18 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v64;
  v57(v37 + v34, v32, v33);
  v38 = (v37 + v35);
  v39 = v58;
  *v38 = partial apply for closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:);
  v38[1] = v39;
  v40 = v37 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v41 = v54;
  *v40 = v54;
  *(v40 + 8) = 0;
  v42 = (v37 + v36);
  *v42 = 0;
  v42[1] = 0;
  v43 = v66;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v66;
  v77 = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
  v78 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v76 = &block_descriptor_220_2;
  v44 = _Block_copy(&aBlock);
  v45 = v41;

  v46 = v43;
  v47 = v65;
  static DispatchQoS.unspecified.getter();
  v72 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v49 = v67;
  v48 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v60;
  MEMORY[0x24C1FB9A0](0, v47, v49, v44);
  _Block_release(v44);

  (*(v71 + 8))(v49, v48);
  (*(v69 + 8))(v47, v70);
}

uint64_t closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v31 = 0xD000000000000014;
  v32 = 0x8000000249BFCB40;
  v17 = URL.absoluteString.getter();
  MEMORY[0x24C1FAEA0](v17);

  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a4, v31, v32);

  (*(v13 + 16))(v16, a5, v12);
  outlined init with copy of DOCGridLayout.Spec?(v28, v11, &_s10Foundation3URLVSgMd);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + *(v27 + 80) + v18) & ~*(v27 + 80);
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v29;
  *(v20 + 24) = a4;
  (*(v13 + 32))(v20 + v18, v16, v12);
  outlined init with take of URL?(v11, v20 + v19);
  v22 = v30;
  *(v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v23 = v21;
  v24 = a4;
  v25 = v22;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v67 = a4;
  v62 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v68 = v11;
  v69 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v63 = *(v12 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v65 = &v49 - v14;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v15);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v59 = *(v17 - 8);
  v60 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v56 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchTime();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v49 - v27;
  static os_log_type_t.info.getter();
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a2, 0xD00000000000002CLL, 0x8000000249BFCB60);
  v66 = a2;
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(a2, 3u);
  v29 = [a1 activeDocumentCreationSession];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v52 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v51 = v28;
    + infix(_:_:)();
    v31 = *(v21 + 8);
    v54 = v21 + 8;
    v55 = v31;
    v53 = v20;
    v31(v24, v20);
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    *(v32 + 24) = v30;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:);
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_233_0;
    v49 = _Block_copy(aBlock);
    v33 = a1;
    v50 = v30;

    v34 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v57;
    v35 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v51;
    v38 = v49;
    v39 = v52;
    MEMORY[0x24C1FB940](v51, v34, v36, v49);
    _Block_release(v38);

    (*(v61 + 8))(v36, v35);
    (*(v59 + 8))(v34, v60);
    v55(v37, v53);
  }

  static os_log_type_t.info.getter();
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(v66, 0xD000000000000025, 0x8000000249BFCB90);
  v40 = v65;
  outlined init with copy of DOCGridLayout.Spec?(v67, v65, &_s10Foundation3URLVSgMd);
  v41 = v69;
  (*(v9 + 16))(v69, v62, v8);
  v42 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v43 = (v64 + *(v9 + 80) + v42) & ~*(v9 + 80);
  v44 = (v68 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  outlined init with take of URL?(v40, v45 + v42);
  (*(v9 + 32))(v45 + v43, v41, v8);
  *(v45 + v44) = a5;
  v46 = a1;
  v47 = a5;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - v15;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v35 - v20;
  v37 = a1;
  v22 = [a1 activeDocumentCreationSession];
  if (v22)
  {
    v23 = *(v4 + 16);
    v24 = v22;
    v23(v21, &v22[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier], v3);

    v25 = *(v4 + 56);
    v25(v21, 0, 1, v3);
  }

  else
  {
    v25 = *(v4 + 56);
    v25(v21, 1, 1, v3);
    v23 = *(v4 + 16);
  }

  v23(v16, &v40[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier], v3);
  v25(v16, 0, 1, v3);
  v26 = *(v7 + 48);
  v27 = v39;
  outlined init with copy of DOCGridLayout.Spec?(v21, v39, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v16, v27 + v26, &_s10Foundation4UUIDVSgMd);
  v28 = *(v4 + 48);
  if (v28(v27, 1, v3) != 1)
  {
    v29 = v38;
    outlined init with copy of DOCGridLayout.Spec?(v27, v38, &_s10Foundation4UUIDVSgMd);
    if (v28(v27 + v26, 1, v3) != 1)
    {
      v30 = v27 + v26;
      v31 = v36;
      (*(v4 + 32))(v36, v30, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v4 + 8);
      v33(v31, v3);
      outlined destroy of CharacterSet?(v16, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CharacterSet?(v21, &_s10Foundation4UUIDVSgMd);
      v33(v29, v3);
      outlined destroy of CharacterSet?(v27, &_s10Foundation4UUIDVSgMd);
      if ((v32 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    outlined destroy of CharacterSet?(v16, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CharacterSet?(v21, &_s10Foundation4UUIDVSgMd);
    (*(v4 + 8))(v29, v3);
LABEL_9:
    outlined destroy of CharacterSet?(v27, &_s10Foundation4UUIDVSg_ADtMd);
    return;
  }

  outlined destroy of CharacterSet?(v16, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CharacterSet?(v21, &_s10Foundation4UUIDVSgMd);
  if (v28(v27 + v26, 1, v3) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of CharacterSet?(v27, &_s10Foundation4UUIDVSgMd);
LABEL_11:
  static os_log_type_t.info.getter();
  v34 = v40;
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(v40, 0xD000000000000036, 0x8000000249BFCBC0);
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(v34, 0);
}

void closure #1 in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  if (!a1)
  {
    v3 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v6 = *(v3 + v5);
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_7:
        v8 = v7 - 1;
        if (__OFSUB__(v7, 1))
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v6 + 8 * v8 + 32);
            v10 = a2;
            v11 = v9;
            goto LABEL_12;
          }

          __break(1u);
          return;
        }

        v25 = a2;

        v11 = MEMORY[0x24C1FC540](v8, v6);

LABEL_12:
        v12 = [v11 fileProviderItem];
        if (v12)
        {
          v13 = v12;
          v14 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA0290;
          *(inited + 32) = v13;
          v16 = v13;
          LOBYTE(v14) = specialized static DOCActionManager.canPerform(_:on:)(v14, inited);
          swift_setDeallocating();
          swift_arrayDestroy();

          if (v14)
          {
            v17 = v11;
            createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v17, a2);

LABEL_19:

            return;
          }
        }

LABEL_18:
        type metadata accessor for DOCHierarchyController(0);
        v19 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
        v20 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver);
        v21 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
        swift_beginAccess();
        v22 = *(v3 + v21);
        v23 = swift_allocObject();
        *(v23 + 16) = partial apply for closure #1 in closure #1 in DOCDocumentManager.createNewDocument(targetLocation:);
        *(v23 + 24) = v4;
        v24 = v22;

        static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v19, v20, v22, closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply, v23);

        goto LABEL_19;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_7;
      }
    }

    v18 = a2;
    goto LABEL_18;
  }

  v26 = a1;
  createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v26, a2);
}

void closure #1 in closure #1 in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  if (a1)
  {
    oslog = a1;
    createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(oslog, a2);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v4, "Cannot create a document if we don't have a default location", v5, 2u);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }
  }
}

uint64_t DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCHierarchyController(0);
  v19[0] = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration];
  v19[1] = v12;
  v13 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver];
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  *(v16 + 24) = a4;
  (*(v8 + 32))(v16 + v14, v11, v7);
  *(v16 + v15) = v4;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v17 = v4;
  static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v19[0], v13, 0, partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:), v16);
}

uint64_t closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v56 = a6;
  v57 = a5;
  v62 = a3;
  v63 = a4;
  v64 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = swift_allocObject();
    v55 = v10;
    v24 = v23;
    v53 = v15;
    v25 = a1;
    v26 = v62;
    *(v23 + 16) = v64;
    *(v23 + 24) = v26;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v64 = v7;
    (*(v19 + 104))(v22, *MEMORY[0x277D851C8], v18);
    v54 = v25;

    v62 = static OS_dispatch_queue.global(qos:)();
    (*(v19 + 8))(v22, v18);
    (*(v14 + 16))(v17, v63, v13);
    v27 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v28 = (v53 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 39) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v56;
    (*(v14 + 32))(v30 + v27, v17, v13);
    v31 = (v30 + v28);
    *v31 = partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:);
    v31[1] = v24;
    v32 = v30 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    v33 = v57;
    *v32 = v57;
    *(v32 + 8) = 1;
    v34 = (v30 + v29);
    *v34 = 0;
    v34[1] = 0;
    v35 = v54;
    *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v54;
    aBlock[4] = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_187_1;
    v36 = _Block_copy(aBlock);
    v37 = v35;

    v38 = v33;
    v39 = v59;
    static DispatchQoS.unspecified.getter();
    v65 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v40 = v61;
    v41 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v62;
    MEMORY[0x24C1FB9A0](0, v39, v40, v36);
    _Block_release(v36);

    (*(v58 + 8))(v40, v41);
    (*(v60 + 8))(v39, v55);
  }

  else
  {
    v43 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v62;
    v45 = v63;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2493AC000, v47, v48, "Cannot import a document if we don't have a default location", v49, 2u);
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    (*(v14 + 16))(v43, v45, v13);
    v50 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v64;
    *(v51 + 24) = v44;
    (*(v14 + 32))(v51 + v50, v43, v13);

    DOCRunInMainThread(_:)();
  }
}

uint64_t closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(void (*a1)(char *, id))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = URL.lastPathComponent.getter();
  v8 = MEMORY[0x24C1FAD20](v7);

  v9 = DOCErrorNoLocationAvailableError();

  a1(v5, v9);
  return outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd);
}

uint64_t closure #3 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v20 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, v20 - v14, &_s10Foundation3URLVSgMd);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  outlined init with take of URL?(v15, v17 + v16);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v18 = a2;
  DOCRunInMainThread(_:)();
}

uint64_t DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v116 = a2;
  v117 = a4;
  v115 = a1;
  v107 = type metadata accessor for DispatchWorkItemFlags();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v7);
  v104 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchQoS();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v9);
  v102 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS.QoSClass();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v11);
  v97 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v98 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v93 = v89 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v89 - v22;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = v89 - v27;
  v29 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController];
  v30 = *(v14 + 16);
  v30(v89 - v27, v115, v13, v26);
  v115 = v23;
  v111 = v14 + 16;
  v110 = v30;
  (v30)(v23, v28, v13);
  v31 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v109 = *(v14 + 80);
  v96 = v33 + 8;
  v34 = swift_allocObject();
  v114 = v5;
  *(v34 + 16) = v5;
  v35 = v28;
  v36 = v13;
  v108 = *(v14 + 32);
  v108(v34 + v31, v35, v13);
  v94 = v32;
  v37 = (v34 + v32);
  v101 = a3;
  v38 = v117;
  *v37 = a3;
  v37[1] = v38;
  v95 = v33;
  v112 = v34;
  *(v34 + v33) = v116;
  v39 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v40 = *(v29 + v39);
  if (v40 >> 62)
  {
    result = __CocoaSet.count.getter();
    v113 = v14;
    if (result)
    {
LABEL_3:
      v42 = v14 + 32;
      v43 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if ((v40 & 0xC000000000000001) == 0)
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v43 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v44 = *(v40 + 8 * v43 + 32);

          v45 = v114;
          v46 = v44;
          goto LABEL_8;
        }

        __break(1u);
        return result;
      }

      v88 = v114;

      v46 = MEMORY[0x24C1FC540](v43, v40);

LABEL_8:
      v47 = [v46 fileProviderItem];
      if (v47)
      {
        v48 = v47;
        v49 = v31;
        v92 = v36;
        v50 = *MEMORY[0x277CC6028];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249BA0290;
        *(inited + 32) = v48;
        v52 = v48;
        LOBYTE(v50) = specialized static DOCActionManager.canPerform(_:on:)(v50, inited);
        swift_setDeallocating();
        swift_arrayDestroy();

        if (v50)
        {
          v53 = v93;
          v54 = v92;
          v110(v93, v115, v92);
          v55 = v94;
          v56 = swift_allocObject();
          v91 = v56;
          v57 = v114;
          *(v56 + 16) = v114;
          v90 = v49;
          v89[1] = v42;
          v108(v56 + v49, v53, v54);
          v58 = (v56 + v55);
          v59 = v117;
          *v58 = v101;
          v58[1] = v59;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v60 = v99;
          v61 = v97;
          v62 = v100;
          (*(v99 + 104))(v97, *MEMORY[0x277D851C8], v100);
          v63 = v46;

          v114 = v57;
          v64 = v63;
          v117 = static OS_dispatch_queue.global(qos:)();
          (*(v60 + 8))(v61, v62);
          v65 = v98;
          v66 = v115;
          v110(v98, v115, v54);
          v67 = (v55 + 39) & 0xFFFFFFFFFFFFFFF8;
          v68 = swift_allocObject();
          *(v68 + 16) = v116;
          v108(v68 + v90, v65, v54);
          v69 = (v68 + v55);
          v70 = v91;
          *v69 = partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:);
          v69[1] = v70;
          v71 = v114;
          *(v68 + v95) = v114;
          *(v68 + v96) = 1;
          v72 = (v68 + v67);
          *v72 = 0;
          v72[1] = 0;
          *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v64;
          aBlock[4] = partial apply for closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:);
          aBlock[5] = v68;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_160;
          v73 = _Block_copy(aBlock);
          v74 = v71;
          v75 = v64;

          v76 = v102;
          static DispatchQoS.unspecified.getter();
          v118 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v77 = v104;
          v78 = v107;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v79 = v117;
          MEMORY[0x24C1FB9A0](0, v76, v77, v73);
          _Block_release(v73);

          (*(v106 + 8))(v77, v78);
          (*(v103 + 8))(v76, v105);
          (*(v113 + 8))(v66, v92);
        }

        v36 = v92;
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  else
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v113 = v14;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v80 = v114;
LABEL_15:
  type metadata accessor for DOCHierarchyController(0);
  v81 = *(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v82 = *(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver);
  v83 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v84 = *(v29 + v83);
  v85 = swift_allocObject();
  v86 = v112;
  *(v85 + 16) = partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:);
  *(v85 + 24) = v86;
  v87 = v84;

  static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v81, v82, v84, partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> (), v85);

  return (*(v113 + 8))(v115, v36);
}

uint64_t closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v93 = a2;
  v94 = a5;
  v92 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v28 = MEMORY[0x28223BE20](v23, v24);
  v29 = &v75 - v25;
  if (a1)
  {
    v85 = v13;
    v80 = *(v26 + 16);
    v81 = a3;
    v82 = v27;
    v30 = a3;
    v31 = v20;
    v32 = v20;
    v33 = v26;
    v80(&v75 - v25, v30, v32, v28);
    v84 = v12;
    v34 = *(v33 + 80);
    v79 = v34;
    v35 = v19;
    v36 = (v34 + 24) & ~v34;
    v78 = v36;
    v37 = (v21 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v93;
    *(v38 + 16) = v93;
    v77 = *(v33 + 32);
    v76 = a1;
    v40 = v38;
    v83 = v38;
    v77(v38 + v36, v29, v31);
    v41 = (v40 + v37);
    v42 = v94;
    *v41 = v92;
    v41[1] = v42;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v43 = v86;
    (*(v16 + 104))(v35, *MEMORY[0x277D851C8], v86);
    v92 = v76;
    v44 = v39;

    v94 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v35, v43);
    v45 = v82;
    (v80)(v82, v81, v31);
    v46 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v89;
    v77(v47 + v78, v45, v31);
    v48 = (v47 + v37);
    v49 = v83;
    *v48 = closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)partial apply;
    v48[1] = v49;
    v50 = v47 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v50 = v44;
    *(v50 + 8) = 1;
    v51 = (v47 + v46);
    *v51 = 0;
    v51[1] = 0;
    v52 = v92;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v92;
    aBlock[4] = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_170_1;
    v53 = _Block_copy(aBlock);
    v54 = v52;
    v55 = v44;

    v56 = v90;
    static DispatchQoS.unspecified.getter();
    v95 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v57 = v84;
    v58 = v87;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v59 = v94;
    MEMORY[0x24C1FB9A0](0, v56, v57, v53);
    _Block_release(v53);

    (*(v88 + 8))(v57, v58);
    (*(v91 + 8))(v56, v85);
  }

  else
  {
    v60 = v26;
    v91 = v20;
    v62 = v92;
    v61 = v93;
    v63 = v94;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.UI);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2493AC000, v65, v66, "Cannot import a document if we don't have a default location", v67, 2u);
      MEMORY[0x24C1FE850](v67, -1, -1);
    }

    v68 = a3;
    v69 = v91;
    (*(v60 + 16))(v29, v68, v91);
    v70 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v61;
    (*(v60 + 32))(v71 + v70, v29, v69);
    v72 = (v71 + ((v21 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v72 = v62;
    v72[1] = v63;
    v73 = v61;

    DOCRunInMainThread(_:)();
  }
}

uint64_t closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1, uint64_t a2, void (*a3)(char *, id), uint64_t a4)
{
  v40 = a4;
  v41 = a3;
  v39 = a1;
  v5 = type metadata accessor for URL();
  v33 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v32 - v16;
  v37 = *(v6 + 56);
  v38 = v6 + 56;
  v37(&v32 - v16, 1, 1, v5, v15);
  v36 = a2;
  v18 = URL.lastPathComponent.getter();
  v19 = MEMORY[0x24C1FAD20](v18);

  v34 = DOCErrorNoLocationAvailableError();

  outlined init with copy of DOCGridLayout.Spec?(v17, v12, &_s10Foundation3URLVSgMd);
  v20 = v33;
  (*(v6 + 16))(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v33);
  v21 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v22 = (v10 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v39;
  outlined init with take of URL?(v12, v23 + v21);
  (*(v6 + 32))(v23 + v22, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v25 = v34;
  *(v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v26 = v24;
  v27 = v25;
  DOCRunInMainThread(_:)();

  outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd);
  (v37)(v17, 1, 1, v20);
  v28 = URL.lastPathComponent.getter();
  v29 = MEMORY[0x24C1FAD20](v28);

  v30 = DOCErrorNoLocationAvailableError();

  v41(v17, v30);
  return outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd);
}

uint64_t closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v20 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a4, v15, v19);
  outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation3URLVSgMd);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  (*(v16 + 32))(v24 + v21, v20, v15);
  outlined init with take of URL?(v14, v24 + v22);
  v26 = v33;
  v25 = v34;
  *(v24 + v23) = v33;
  v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v25;
  v27[1] = v28;
  v29 = a3;
  v30 = v26;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v29 = a6;
  v30 = a5;
  v27 = a1;
  v28 = a4;
  v25 = a2;
  v26 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v16 = &v25 - v15;
  outlined init with copy of DOCGridLayout.Spec?(a3, &v25 - v15, &_s10Foundation3URLVSgMd);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v27;
  outlined init with take of URL?(v16, v19 + v17);
  (*(v8 + 32))(v19 + v18, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v21 = v28;
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v22 = v20;
  v23 = v21;
  DOCRunInMainThread(_:)();

  return v30(v26, v21);
}

void DOCDocumentManager.reveal(node:completionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(a1, 1, a2, a3, v8);
  }

  else
  {
    a2();
  }
}

id DOCDocumentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDocumentManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized DOCDocumentManager.DocumentCreationSession.Phase.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCDocumentManager.DocumentCreationSession.Phase.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

id specialized DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(void *a1, void *a2, void *a3)
{
  UUID.init()();
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_phase] = 0;
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_switchToRecentsAfterPresentation] = 0;
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_serviceViewController;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_serviceViewController] = 0;
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isDisablingScreenUpdates] = 0;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_snapshotCoverView] = 0;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_targetLocation] = a1;
  swift_beginAccess();
  *&v3[v7] = a3;
  v8 = a3;
  v9 = a1;
  v10 = [a2 isInUIPDocumentLanding];
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isInUIPDocumentLanding] = v10;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DOCDocumentManager.DocumentCreationSession();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t type metadata accessor for DOCDocumentManager.DocumentCreationSession()
{
  result = type metadata singleton initialization cache for DOCDocumentManager.DocumentCreationSession;
  if (!type metadata singleton initialization cache for DOCDocumentManager.DocumentCreationSession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  (*(v7 + 16))(v10, a1 + v11, v6);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = a2;
    v23 = v16;
    v17 = v16;
    *v15 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v23);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, a3, &v23);
    _os_log_impl(&dword_2493AC000, v13, v14, "[CREATE DOCUMENT]: (session: %s) %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(a1, v7, v1 + v4, v9, v10, v11);
}

unint64_t lazy protocol witness table accessor for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase()
{
  result = lazy protocol witness table cache variable for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase;
  if (!lazy protocol witness table cache variable for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase);
  }

  return result;
}

uint64_t type metadata completion function for DOCDocumentManager.DocumentCreationSession()
{
  result = type metadata accessor for UUID();
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

uint64_t partial apply for closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(a1, a2, a3, *(v3 + 16), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t _s10Foundation3URLV26DocumentManagerExecutablesE21createDOCItemBookmark8bookmark4node3qos10completionyAD0H4InfoO_So7DOCNode_pSg8Dispatch0O3QoSV0P6SClassOySo0gH0CSg_ACSgs5Error_pSgtctFyyYbcfU_TA_0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  return closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(a1, v6, v7, v1 + v4, v8, v9);
}

void partial apply for closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(a1, a2, v8, v2 + v6, v9, v11, v12);
}

void partial apply for closure #1 in DOCDocumentManager.importDocument(url:waitForReveal:desiredDisplayName:location:completion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  closure #1 in DOCDocumentManager.importDocument(url:waitForReveal:desiredDisplayName:location:completion:)(a1, v6, v7, v1 + v4, v9, v10, v12, v13);
}

void specialized DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void, id), uint64_t a8)
{
  v76 = a3;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v77 = v18;
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  v78 = v20;
  if (a5)
  {
    v72 = a6;
    v68 = v19;
    v74 = a2;
    v21 = objc_opt_self();

    v22 = a5;
    v75 = [v21 defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    v23 = *(v16 + 80);
    v69 = ~v23;
    v70 = v23;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    v67 = xmmword_249B9A480;
    *(v25 + 16) = xmmword_249B9A480;
    v73 = v16;
    v26 = v15;
    v27 = *(v16 + 16);
    v27(v25 + v24, a1, v26);
    v28 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
    v29 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v28 initWithURLs:isa destinationFolder:v29];

    v71 = v29;
    v32 = v31;
    [v32 setLastUsageUpdatePolicy_];
    [v32 setShouldBounceOnCollision_];
    v33 = v32;
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMd);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd) - 8);
      v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v67;
      v37 = v36 + v35;
      v38 = (v37 + v34[14]);
      v27(v37, a1, v26);
      *v38 = v76;
      v38[1] = a4;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_SSTt0g5Tf4g_n(v36);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(v37, &_s10Foundation3URLV_SStMd);
      swift_deallocClassInstance();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v33 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v32 setTargetFilenamesByURL_];
    }

    URL.startAccessingSecurityScopedResource()();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = v68;
    v27(v68, a1, v26);
    v41 = (v70 + 16) & v69;
    v42 = (v77 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = v26;
    v45 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v73 + 32))(v46 + v41, v40, v44);
    *(v46 + v42) = v39;
    v47 = (v46 + v43);
    v48 = v78;
    *v47 = partial apply for closure #2 in DOCHierarchyController.validate(location:atDepth:hasParentItemIdentifier:completion:);
    v47[1] = v48;
    *(v46 + v45) = v32;
    v49 = v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = v71;
    *v49 = v71;
    *(v49 + 8) = v74 & 1;
    aBlock[4] = closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)partial apply;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_138_0;
    v51 = _Block_copy(aBlock);
    v52 = v32;
    v53 = v50;
    v54 = v52;

    [v54 setActionCompletionBlock_];
    _Block_release(v51);

    v55 = v75;
    [v75 scheduleAction_];
  }

  else
  {
    v56 = one-time initialization token for UI;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.UI);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136315394;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
      *(v60 + 12) = 2080;
      aBlock[6] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
      v62 = String.init<A>(describing:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, aBlock);

      *(v60 + 14) = v64;
      _os_log_impl(&dword_2493AC000, v58, v59, "%s importDocument: Unable to import the destination FPItem: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v61, -1, -1);
      MEMORY[0x24C1FE850](v60, -1, -1);
    }

    v65 = URL.lastPathComponent.getter();
    v66 = MEMORY[0x24C1FAD20](v65);

    v54 = DOCErrorNoLocationAvailableError();

    a7(0, v54);
  }
}

void partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v2 + 16);
  v11 = (v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(a1, a2, v10, v2 + v7, v2 + v9, v12, v13);
}

uint64_t objectdestroy_58Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 9, v3 | 7);
}

void partial apply for closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(a1, v1 + v4, v8, v10, v11, v9, v13, v14);
}

uint64_t objectdestroy_143Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);
  v9 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(v7, v0 + v2, v0 + v5, v8, v10, v11);
}

uint64_t partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)()
{
  type metadata accessor for URL();
  v1 = *(v0 + 16);

  return closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(v1);
}

id partial apply for closure #1 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)()
{
  v1 = *(v0 + 16);
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(*(v0 + 24), 0);

  return [v1 setActiveDocumentCreationSession_];
}

uint64_t partial apply for closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v6, v7, v0 + v2, v4, v5);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v7, v8, v0 + v2, v0 + v5, v6);
}

uint64_t objectdestroy_155Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | v7 | 7);
}

void partial apply for closure #1 in DOCDocumentManager.notifyDelegateOfImport(of:destination:error:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCDocumentManager.notifyDelegateOfImport(of:destination:error:)(v6, v0 + v2, v0 + v5, v7);
}

uint64_t partial apply for closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, void, void, char *, void, void, void))
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, a2, *(v3 + 2), *(v3 + 3), *(v3 + 4), *(v3 + 5), &v3[v8], *&v3[v9], *&v3[v9 + 8], *&v3[(v9 + 23) & 0xFFFFFFFFFFFFFFF8]);
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_125Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_189Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t FPItem.collaborationHighlight.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v2 = static DOCCollaborationHighlightManager.shared;
  v3 = v1(v0);

  return v3;
}

Swift::Bool __swiftcall FPItem.openInvitationIfPossible()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v24 - v9;
  LODWORD(v11) = [v0 doc_isCollaborationInvitation];
  if (v11)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
    v13 = static DOCCollaborationHighlightManager.shared;
    v14 = v12();

    if (!v14)
    {
      goto LABEL_7;
    }

    if ([v14 highlightType])
    {

LABEL_7:
      LOBYTE(v11) = 0;
      return v11;
    }

    v15 = [v14 slHighlight];
    v16 = [v15 resourceURL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v2 + 32))(v10, v5, v1);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v18 = v11;
      URL._bridgeToObjectiveC()(v17);
      v20 = v19;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = [v18 openURL:v20 withOptions:isa];

      (*(v2 + 8))(v10, v1);
      LOBYTE(v11) = v22;
    }

    else
    {
      __break(1u);
    }
  }

  return v11;
}

uint64_t FPItem.collaborationSenderDisplayName.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v3 = static DOCCollaborationHighlightManager.shared;
  v4 = v2(v0);

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 slHighlight];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 attributions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SLAttribution);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:

    return 0;
  }

  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v8 = *(v7 + 32);
    }

    v1 = v8;

    if ([v1 isGroupConversation])
    {
      v9 = [v1 groupDisplayName];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }
    }

    if (![v1 isFromMe])
    {
      v25 = [v1 sender];
      v26 = [v25 displayName];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v27;
    }

    v3 = &selRef_displayModeHandler;
    v13 = [v1 relatedPersons];
    v43 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SLPerson);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v14 >> 62))
    {
      v7 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_44:
    v7 = __CocoaSet.count.getter();
LABEL_16:

    v15 = [v1 v3[176]];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v16 >> 62;
    if (v7 < 2)
    {
      if (v17)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_32:
          if ((v16 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x24C1FC540](0, v16);
          }

          else
          {
            if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_66;
            }

            v28 = *(v16 + 32);
          }

          v29 = v28;

          v30 = [v29 displayName];
LABEL_58:
          v41 = v30;

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          return v27;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      return 0;
    }

    v44 = MEMORY[0x277D84F90];
    if (v17)
    {
      break;
    }

    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_46;
    }

LABEL_19:
    v42 = v5;
    v19 = 0;
    v5 = (v16 & 0xC000000000000001);
    v3 = (v16 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v5)
      {
        v20 = MEMORY[0x24C1FC540](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = v1;
      v24 = [v1 sender];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = &v44;
        specialized ContiguousArray._endMutation()();
      }

      ++v19;
      v1 = v23;
      if (v22 == v18)
      {
        v15 = v44;
        v5 = v42;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_40;
    }
  }

  v18 = __CocoaSet.count.getter();
  if (v18)
  {
    goto LABEL_19;
  }

LABEL_46:
  v15 = MEMORY[0x277D84F90];
LABEL_47:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.UI);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x24C1FB0D0](v15, v43);
    v38 = v1;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v44);

    *(v34 + 4) = v39;
    v1 = v38;
    _os_log_impl(&dword_2493AC000, v32, v33, "xxxxxx isFromMe: relatedPersonsWithoutSender: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_63;
    }

LABEL_54:
    if ((v15 & 0xC000000000000001) == 0)
    {
      if (!*(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v40 = *(v15 + 32);
      goto LABEL_57;
    }

LABEL_66:
    v40 = MEMORY[0x24C1FC540](0, v15);
LABEL_57:
    v29 = v40;

    v30 = [v29 displayName];
    goto LABEL_58;
  }

  result = *(v15 + 16);
  if (result)
  {
    goto LABEL_54;
  }

LABEL_63:

  return 0;
}

uint64_t FPItem.invitationURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v4 = static DOCCollaborationHighlightManager.shared;
  v5 = v3(v1);

  if (v5)
  {
    if ([v5 highlightType])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v5 slHighlight];
      v8 = [v7 resourceURL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  v9 = type metadata accessor for URL();
  return (*(*(v9 - 8) + 56))(a1, v6, 1, v9);
}

uint64_t DOCConcreteLocation.asUnanchoredBrowsedState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249BA0290;
  *(v1 + 32) = v0;
  v2 = v0;
  v3 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v1, 0);

  if (v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

id DOCHierarchyController.BrowsedState.canBeRestored(to:configuration:)(id a1, void *a2, id a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v8 = [a5 effectiveTabSwitcherTab];
  }

  else
  {
    v8 = [a3 effectiveTabSwitcherTab];
  }

  if (v8 != a1)
  {
    return 0;
  }

  result = [a3 canBeRestored];
  if (result)
  {
    return [a2 allowsDisplaying_];
  }

  return result;
}

void DOCHierarchyController.BrowsedState.restore(to:animated:)(uint64_t a1, int a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v8 = a4 >> 62;
  if (!(a4 >> 62))
  {
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if (!a5)
    {
LABEL_9:
      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a3, a5, a2 & 1, 0, 1, 0, 0);
      return;
    }

    v28 = a1;
    v27 = a2;
    v9 = a5;
    v10 = a5;
    v11 = [v10 sourceIdentifier];
    v12 = [a3 sourceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {

LABEL_8:

      a5 = v9;
      LOBYTE(a2) = v27;
      goto LABEL_9;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_8;
    }

    v29 = v10;
    v30 = v5;
    MEMORY[0x28223BE20](v18, v19);
    v26[2] = &v29;
    v20 = v10;

    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, v5))
    {
    }

    else
    {
      if (v8 && __CocoaSet.count.getter() < 0)
      {
        goto LABEL_29;
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v20);

      v5 = v30;
    }

    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C1FC540](0, v5);
        goto LABEL_21;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v5 + 32);
LABEL_21:
        v22 = v21;
LABEL_26:
        DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(v5, v22, 0, 1, 0, DOCGridLayout.specIconWidth.modify, 0);

        return;
      }

      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v22 = 0;
    goto LABEL_26;
  }

  v23 = a5;
  v24 = a2;
  v25 = __CocoaSet.count.getter();
  a2 = v24;
  a5 = v23;
  if (v25)
  {
    goto LABEL_3;
  }
}

uint64_t static DOCHierarchyController.BrowsedState.state(location:anchorLocation:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = a1;
  v5 = a1;
  v6 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v4, a2);

  if (v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

id DOCHierarchyController.BrowsedState.effectiveTabSwitcherTab.getter(void *a1, int a2, id a3)
{
  if (a3)
  {
    return [a3 effectiveTabSwitcherTab];
  }

  else
  {
    return [a1 effectiveTabSwitcherTab];
  }
}

id DOCHierarchyController.BrowsedState.interfaceStorePersistableInfo(configuration:)(void *a1, id a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = [v7 effectiveTabSwitcherTab];
    v9 = [v7 effectiveTabSwitcherTab];
  }

  else
  {
    v8 = [a2 effectiveTabSwitcherTab];
    v9 = [a2 effectiveTabSwitcherTab];
  }

  if (v8 != v9 || (v10 = v9, ![a2 canBeRestored]) || (objc_msgSend(a1, sel_allowsDisplaying_, a2) & 1) == 0)
  {

    return 0;
  }

  if (a4)
  {
    v11 = [a4 sourceIdentifier];
    v12 = [a2 sourceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {

        v20 = a4;
        v21 = a2;

        return v10;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249BA0290;
  *(v18 + 32) = a2;
  v19 = a2;
  return v10;
}

id static DOCHierarchyController.BrowsedState.recentsDefault()(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249BA0290;
  *(v2 + 32) = v1;
  v3 = v1;
  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCHierarchyController.BrowsedState.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F697461636F6CLL;
  if (*v1 != 2)
  {
    v3 = 0x6F4C726F68636E61;
    v2 = 0xEE006E6F69746163;
  }

  v4 = 0x8000000249BC6350;
  v5 = 0xD000000000000014;
  if (*v1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000249BC6370;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  v1 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x6F4C726F68636E61;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DOCHierarchyController.BrowsedState.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCHierarchyController.BrowsedState.encode(to:)(void *a1, void *a2, unint64_t a3, void *a4)
{
  v18 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a4)
  {
    [a4 effectiveTabSwitcherTab];
  }

  else
  {
    [a2 effectiveTabSwitcherTab];
  }

  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v9 + 8))(v12, v8);
  }

  type metadata accessor for DOCConcreteLocationSwiftEncodable();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v20 = v13;
  v19 = 1;
  lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(&lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable);
  v14 = a2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v20 = specialized Array<A>.asSwiftEncodable.getter(v18);
  v19 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMd);
  lazy protocol witness table accessor for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A](&lazy protocol witness table cache variable for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A], &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!a4)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v20 = v16;
  v19 = 3;
  v17 = a4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v9 + 8))(v12, v8);
}

uint64_t specialized Array<A>.asSwiftEncodable.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          v6 = MEMORY[0x24C1FC540]();
          type metadata accessor for DOCConcreteLocationSwiftEncodable();
          *(swift_allocObject() + 16) = v6;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v7 = (a1 + 32);
        type metadata accessor for DOCConcreteLocationSwiftEncodable();
        do
        {
          v8 = *v7++;
          *(swift_allocObject() + 16) = v8;
          v9 = v8;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return v10;
    }
  }

  return result;
}

uint64_t DOCHierarchyController.BrowsedState.init(from:)(void *a1)
{
  result = specialized DOCHierarchyController.BrowsedState.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

char *DOCHierarchyController.BrowsedState.debugDescription.getter(void *a1, unint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(34);

  if (a3)
  {
    v6 = [a3 effectiveTabSwitcherTab];
  }

  else
  {
    v6 = [a1 effectiveTabSwitcherTab];
  }

  if (v6 == 2)
  {
    v11 = 0xE600000000000000;
    v10 = 0x6573776F7242;
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x3F3F3F3F3FLL;
    if (!v6)
    {
      v8 = 0x73746E65636552;
      v7 = 0xE700000000000000;
    }

    v9 = v6 == 1;
    if (v6 == 1)
    {
      v10 = 0x646572616853;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v7;
    }
  }

  MEMORY[0x24C1FAEA0](v10, v11);

  MEMORY[0x24C1FAEA0](0x697461636F6C0A2CLL, 0xED0000203A736E6FLL);
  if (a2 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v35 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = a3;
    v15 = 0;
    v13 = v35;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1FC540](v15, a2);
      }

      else
      {
        v16 = *(a2 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 displayName];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {

        v20 = 0xD000000000000014;
        v22 = 0x8000000249BFCD50;
      }

      v24 = *(v35 + 16);
      v23 = *(v35 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v15;
      *(v35 + 16) = v24 + 1;
      v25 = v35 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v12 != v15);
    a3 = v34;
  }

  v26 = 7104878;
  v27 = MEMORY[0x24C1FB0D0](v13, MEMORY[0x277D837D0]);
  v29 = v28;

  MEMORY[0x24C1FAEA0](v27, v29);

  MEMORY[0x24C1FAEA0](0x726F68636E610A2CLL, 0xEA0000000000203ALL);
  if (a3 && (v30 = [a3 displayName]) != 0)
  {
    v31 = v30;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  MEMORY[0x24C1FAEA0](v26, v33);

  return 0x203A626174;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DOCHierarchyController.BrowsedState@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized DOCHierarchyController.BrowsedState.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCConcreteLocationSwiftEncodable.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCConcreteLocationSwiftEncodable.encode(to:)(void *a1)
{
  v2 = v1;
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = objc_opt_self();
  v10 = *(v2 + 16);
  v19[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:0 error:v19];
  v12 = v19[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v19[0] = v13;
    v19[1] = v15;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    return outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v17 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t DOCConcreteLocationSwiftEncodable.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v15[0];
    v10 = v15[1];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    v12 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v12)
    {
      v14 = v12;
      (*(v6 + 8))(v9, v5);
      outlined consume of Data._Representation(v11, v10);
      *(v3 + 16) = v14;
      goto LABEL_4;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>(&lazy protocol witness table cache variable for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMd);
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    outlined consume of Data._Representation(v11, v10);
    (*(v6 + 8))(v9, v5);
  }

  type metadata accessor for DOCConcreteLocationSwiftEncodable();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DOCConcreteLocationSwiftEncodable@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DOCConcreteLocationSwiftEncodable();
  swift_allocObject();
  result = DOCConcreteLocationSwiftEncodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_3:
      v5 = __OFSUB__(v4, 1);
      v6 = v4 - 1;
      if (v5)
      {
        __break(1u);
      }

      else if ((a1 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(a1 + 8 * v6 + 32);
LABEL_8:
          v8 = v7;
          v9 = a2;

          return v8;
        }

        __break(1u);
        goto LABEL_19;
      }

      v7 = MEMORY[0x24C1FC540](v6, a1);
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2493AC000, v11, v12, "Unable to determine BrowsedState since locations is empty", v13, 2u);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return 0;
}

uint64_t specialized DOCHierarchyController.BrowsedState.locationsIncludingAnchor.getter(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = a1;
  if (!a2)
  {

    return v2;
  }

  v8 = a2;
  MEMORY[0x28223BE20](a1, a2);
  v7[2] = &v8;
  v4 = v3;

  v5 = v4;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v7, v2))
  {

    return v2;
  }

  if (!(v2 >> 62) || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v5);

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

unint64_t specialized DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized DOCHierarchyController.BrowsedState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  v9 = type metadata accessor for DOCConcreteLocationSwiftEncodable();
  LOBYTE(v29) = 1;
  v10 = lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(&lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = *(v30 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMd);
  LOBYTE(v29) = 2;
  lazy protocol witness table accessor for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A](&lazy protocol witness table cache variable for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A], &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v10;
  v26 = v9;
  v27 = v12;
  v28 = v7;
  v13 = v30;
  if (!(v30 >> 62))
  {
    v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    LOBYTE(v30) = 3;
    v17 = KeyedDecodingContainer.contains(_:)();
    v8 = v27;
    if (v17)
    {
      LOBYTE(v29) = 3;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v18 = *(v30 + 16);
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v30) = 0;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v18)
    {
      v20 = [v18 effectiveTabSwitcherTab];
    }

    else
    {
      v20 = [v8 effectiveTabSwitcherTab];
    }

    if (v19 == v20)
    {
      (*(v4 + 8))(v28, v3);
      __swift_destroy_boxed_opaque_existential_0(a1);
    }

    else
    {
      LOBYTE(v30) = 0;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>(&lazy protocol witness table cache variable for type KeyedDecodingContainer<DOCHierarchyController.BrowsedState.CodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMd);
      v21 = v28;
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      (*(v4 + 8))(v21, v3);
      __swift_destroy_boxed_opaque_existential_0(a1);
    }

    return v8;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_7:
  v23 = v4;
  v24 = v3;
  v29 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1FC540](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      ++v15;
      *(v16 + 16);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v14 != v15);

    v4 = v23;
    v3 = v24;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
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

uint64_t lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DOCConcreteLocationSwiftEncodable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMd);
    lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id DOCItemCollectionCell.BezierPathView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCItemCollectionCell.BezierPathView.color.setter(id a1, uint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = a1;
  if (a1)
  {
    if (v7)
    {
      v8 = v3;
      type metadata accessor for NSMutableAttributedString(0, a3);
      a1 = a1;
      v9 = v7;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {

        v7 = v9;
LABEL_10:

        return;
      }

      v3 = v8;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v3 setNeedsDisplay];

    goto LABEL_10;
  }

  if (v7)
  {
    goto LABEL_9;
  }
}

uint64_t DOCItemCollectionCell.BackgroundStateView.configurationState.setter(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, &v2[v13], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], a1, v4);
  swift_endAccess();
  v14(v8, &v2[v13], v4);
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if ((v13 & 1) == 0)
  {
    v16 = [v2 layer];
    [v16 setCornerRadius_];

    v17 = [objc_opt_self() secondarySystemFillColor];
    [v2 setBackgroundColor_];
  }

  v15(a1, v4);
  return (v15)(v12, v4);
}

id DOCItemCollectionCell.BackgroundStateView.init()()
{
  ObjectType = swift_getObjectType();
  [objc_allocWithZone(MEMORY[0x277D75C80]) init];
  UICellConfigurationState.init(traitCollection:)();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [objc_opt_self() secondarySystemFillColor];
  [v2 setBackgroundColor_];

  return v2;
}

uint64_t DOCItemCollectionCell.BackgroundStateView.configurationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellConfigurationState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t key path getter for DOCItemCollectionCell.BackgroundStateView.configurationState : DOCItemCollectionCell.BackgroundStateView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v5 = type metadata accessor for UICellConfigurationState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for DOCItemCollectionCell.BackgroundStateView.configurationState : DOCItemCollectionCell.BackgroundStateView(uint64_t a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return DOCItemCollectionCell.BackgroundStateView.configurationState.setter(v6);
}

void (*DOCItemCollectionCell.BackgroundStateView.configurationState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UICellConfigurationState();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return DOCItemCollectionCell.BackgroundStateView.configurationState.modify;
}

void DOCItemCollectionCell.BackgroundStateView.configurationState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    DOCItemCollectionCell.BackgroundStateView.configurationState.setter(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    DOCItemCollectionCell.BackgroundStateView.configurationState.setter(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t DOCItemCollectionCell.BackgroundStateView.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id DOCItemCollectionCell.BezierPathView.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color] = 0;
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 setOpaque_];
  return v2;
}

void *DOCItemCollectionCell.BezierPathView.color.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*DOCItemCollectionCell.BezierPathView.color.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCell.BezierPathView.color.modify;
}

void *DOCItemCollectionCell.BezierPathView.path.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*DOCItemCollectionCell.BezierPathView.path.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCell.BezierPathView.path.modify;
}

void DOCItemCollectionCell.BezierPathView.color.modify(uint64_t *a1, char a2, unint64_t *a3, uint64_t a4, void (*a5)(void *))
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v11 = *(v5 + 32);
    v10 = *(v5 + 40);
    v12 = *(v11 + v10);
    *(v11 + v10) = v6;
    if (v6)
    {
      if (v12)
      {
        type metadata accessor for NSMutableAttributedString(0, a3);
        v9 = v6;
        v13 = v12;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v9 = v6;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_12;
      }

      v9 = 0;
    }

    [*(v5 + 32) setNeedsDisplay];

    v9 = v12;
    goto LABEL_11;
  }

  v8 = v6;
  a5(v6);
  v9 = *(v5 + 24);
LABEL_11:

LABEL_12:

  free(v5);
}

void DOCItemCollectionCell.BezierPathView.backgroundColor.setter(void *a1)
{
  if (a1)
  {
    __break(1u);
  }
}

void DOCItemCollectionCell.BezierPathView.backgroundColor.modify(id *a1, char a2)
{
  v3 = *a1;

  if (a2)
  {
    if (!v3)
    {
      return;
    }

    __break(1u);
  }

  if (v3)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.BezierPathView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectGetWidth(a1) > 0.0)
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectGetHeight(v14) > 0.0)
    {
      v6 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path;
      swift_beginAccess();
      v7 = *(v1 + v6);
      if (v7)
      {
        v8 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
        swift_beginAccess();
        v9 = *(v1 + v8);
        if (v9)
        {
          v10 = v9;
          v11 = v7;
          v12 = UIGraphicsGetCurrentContext();
          if (v12)
          {
            v13 = v12;
            CGContextSaveGState(v12);
            [(CGContext *)v10 setFill];
            [(CGContext *)v11 fill];
            CGContextRestoreGState(v13);

            v11 = v10;
            v10 = v13;
          }
        }
      }
    }
  }
}

void DOCItemCollectionCell.BezierPathView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path);
}

uint64_t type metadata accessor for DOCItemCollectionCell.BackgroundStateView()
{
  result = type metadata singleton initialization cache for DOCItemCollectionCell.BackgroundStateView;
  if (!type metadata singleton initialization cache for DOCItemCollectionCell.BackgroundStateView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DOCItemCollectionCell.BackgroundStateView()
{
  result = type metadata accessor for UICellConfigurationState();
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

uint64_t static DOCInterface.sidebar.getter()
{
  type metadata accessor for DOCSourceListInterface_Default();

  return swift_initStaticObject();
}

uint64_t *DOCInterface.general.unsafeMutableAddressor()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  return &static DOCInterface.general;
}

void *one-time initialization function for general()
{
  type metadata accessor for DOCInterfaceSystemAppearance_Default();
  result = swift_allocObject();
  result[2] = 0x73697370696C6C65;
  result[3] = 0xEF656C637269632ELL;
  result[4] = 0x73697370696C6C65;
  result[5] = 0xE800000000000000;
  static DOCInterface.general = result;
  return result;
}

uint64_t static DOCInterface.general.getter()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static DOCInterface.general.setter(uint64_t a1)
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCInterface.general = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*static DOCInterface.general.modify())()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCInterface.general : DOCInterface.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCInterface.general;
  return swift_unknownObjectRetain();
}

uint64_t key path setter for static DOCInterface.general : DOCInterface.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for general;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCInterface.general = v1;
  return swift_unknownObjectRelease();
}

id DOCInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 16 * v6);
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    swift_unknownObjectRelease();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DOCFileOperation() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t *DOCSharedTestableProgressOperationProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCSharedTestableProgressOperationProvider.shared;
}

uint64_t static DOCSharedTestableProgressOperationProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t DOCSharedTestableProgressOperationProvider.addUpdateHandler(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
  v15 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v19 = &v18[*(updated + 20)];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = *(v10 + 16);
  v20(v13, v18, v9);
  outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v18, v8, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
  (*(v15 + 56))(v8, 0, 1, updated);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v8, v13);
  swift_endAccess();
  v20(v23, v18, v9);
  return outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v18, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
}

uint64_t type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo()
{
  result = type metadata singleton initialization cache for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo;
  if (!type metadata singleton initialization cache for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DOCSharedTestableProgressOperationProvider.removeUpdateHandler(withID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  swift_beginAccess();
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 24);
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v20;
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v15 = *(v12 + 56);
    updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
    v17 = *(updated - 8);
    outlined init with take of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v15 + *(v17 + 72) * v10, v7, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    specialized _NativeDictionary._delete(at:)(v10, v12);
    *(v2 + 24) = v12;

    (*(v17 + 56))(v7, 0, 1, updated);
  }

  else
  {
    v18 = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd);
  return swift_endAccess();
}

uint64_t DOCSharedTestableProgressOperationProvider.activeOperations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLV5valuetMd);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v22 - v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v8; result = outlined destroy of CharacterSet?(v4, &_s10Foundation4UUIDV3key_26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLV5valuetMd))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v5 + 48);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v4, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(v5 + 56);
    v18 = (type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo() - 8);
    v19 = v17 + *(*v18 + 72) * v14;
    v20 = &v4[*(v1 + 48)];
    updated = outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v19, v20, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    (*(v20 + v18[7]))(updated);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCSharedTestableProgressOperationProvider.prepareForTesting()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = v0[4];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v6 + 32;

    do
    {
      outlined init with copy of Any(v9, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      [v8 removeSubscriber_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v22);
      v9 += 32;
      --v7;
    }

    while (v7);
  }

  v10 = MEMORY[0x277D84F90];
  v0[4] = MEMORY[0x277D84F90];

  v11 = (*(*v0 + 144))(v22);
  *v12 = v10;

  v11(v22, 0);
  v13 = specialized static DOCProgressTestability._testableURLs.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v17 = *(v2 + 16);
    v16 = v2 + 16;
    v15 = v17;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    do
    {
      v15(v5, v18, v1);
      DOCSharedTestableProgressOperationProvider.subscribe(to:)(v5);
      (*(v16 - 8))(v5, v1);
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  return DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
}

uint64_t DOCSharedTestableProgressOperationProvider.subscribe(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v9 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v41 - v11;
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.progressUI;
  v45 = *(v5 + 16);
  v45(v12, a1, v4);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v13;
    v20 = v19;
    v43 = a1;
    v22 = v21;
    (*(v5 + 8))(v12, v4);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, aBlock);
    a1 = v43;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2493AC000, v41, v14, "[Testability] subscribing to url: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v9 = v42;
    MEMORY[0x24C1FE850](v24, -1, -1);
    v25 = v16;
    v2 = v44;
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v12, v4);
  }

  v26 = objc_opt_self();
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = swift_allocObject();
  swift_weakInit();
  v45(v9, a1, v4);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = swift_allocObject();
  (*(v5 + 32))(v32 + v31, v9, v4);
  *(v32 + ((v6 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:);
  *(v33 + 24) = v32;
  aBlock[4] = _sSo10NSProgressCIeg_SgIeghgo_ABIegh_SgIeghgo_TRTA_0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?);
  aBlock[3] = &block_descriptor_161;
  v34 = _Block_copy(aBlock);

  v35 = [v26 addSubscriberForFileURL:v29 withPublishingHandler:v34];
  _Block_release(v34);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v46);
  swift_beginAccess();
  v36 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    *(v2 + 32) = v36;
  }

  v39 = *(v36 + 2);
  v38 = *(v36 + 3);
  if (v39 >= v38 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
  }

  *(v36 + 2) = v39 + 1;
  outlined init with take of Any(v46, &v36[32 * v39 + 32]);
  *(v2 + 32) = v36;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t (*closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(void *a1, uint64_t a2))()
{
  v31 = a1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v8 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.progressUI;
  v32 = *(v4 + 16);
  v32(v11, a2, v3);
  v13 = static os_log_type_t.default.getter();
  v30 = v12;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v8;
    v17 = v16;
    v33[0] = v16;
    *v15 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v20 = v19;
    (*(v4 + 8))(v11, v3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v33);
    a2 = v29;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2493AC000, v30, v13, "[Testability] subscriber notified of published progress for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    v8 = v28;
    MEMORY[0x24C1FE850](v22, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {
    (*(v4 + 8))(v11, v3);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)(v31, a2);
  }

  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v32(v8, a2, v3);
  v24 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  (*(v4 + 32))(v25 + v24, v8, v3);
  return partial apply for closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:);
}

uint64_t closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = MEMORY[0x28223BE20](result, v4);
    v10[2] = a2;
    v6 = (*(*v5 + 144))(v11);
    v8 = v7;
    result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(closure #1 in DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)partial apply, v10);
    v9 = *(*v8 + 16);
    if (v9 < result)
    {
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(result, v9);
      v6(v11, 0);
      DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
    }
  }

  return result;
}

uint64_t DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCFileOperation();
  v28 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - v12;
  v30 = a2;
  v14 = *(*v3 + 144);
  v15 = v14(v31);
  v17 = v16;
  v18 = 0;
  v19 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:), v29);
  v20 = *(*v17 + 16);
  if (v20 < v19)
  {
    __break(1u);
LABEL_9:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *v15 = a1;
    goto LABEL_4;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v19, v20);
  (v15)(v31, 0);
  if (!a1)
  {
    return DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
  }

  v18 = a1;
  static DOCFileOperation.mockTestable(withProgress:)(v18, v13);
  outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v13, v10, type metadata accessor for DOCFileOperation);
  v17 = v14(v31);
  v15 = v21;
  a1 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v23 = v28;
  v25 = a1[2];
  v24 = a1[3];
  if (v25 >= v24 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, a1);
    *v15 = a1;
  }

  a1[2] = v25 + 1;
  outlined init with take of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v10, a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v25, type metadata accessor for DOCFileOperation);
  v17(v31, 0);

  outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v13, type metadata accessor for DOCFileOperation);
  return DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
}

uint64_t closure #1 in DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v14 - v2;
  NSProgress.publishedFileURL.getter(&v14 - v2);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of CharacterSet?(v3, &_s10Foundation3URLVSgMd);
    URL.path.getter();
    v6 = 0;
  }

  else
  {
    v7 = URL.path.getter();
    v9 = v8;
    (*(v5 + 8))(v3, v4);
    v10 = URL.path.getter();
    if (v9)
    {
      if (v7 == v10 && v9 == v11)
      {

        v6 = 1;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t DOCSharedTestableProgressOperationProvider.deinit()
{

  return v0;
}

uint64_t DOCSharedTestableProgressOperationProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCProgressTestability.State.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v3 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(0xD00000000000002ALL, 0x8000000249BFD150, 0);
  if (v3)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 16) = v4;
  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for prepareForTesting != -1)
  {
    swift_once();
  }

  v6 = static DOCProgressTestability.prepareForTesting;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  aBlock[4] = partial apply for closure #1 in DOCProgressTestability.State.init();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_34_6;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  v12 = [v11 addObserverForName:v6 object:0 queue:v7 usingBlock:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t closure #1 in DOCProgressTestability.State.init()(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    DOCSharedTestableProgressOperationProvider.prepareForTesting()();
    [v5 setEnabled_];
    if (one-time initialization token for readyForTesting != -1)
    {
      swift_once();
    }

    [a3 postNotificationName:static DOCProgressTestability.readyForTesting object:0];
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v7 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return v7[2];
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = v7 + 2;
    v11 = v7[2];
    if (v10 == v11)
    {
      return v4;
    }

    v15 = v2;
    v13 = 16 * result + 48;
    v19 = a2;
    while (v10 < v11)
    {
      v18 = *(v7 + v13);
      swift_unknownObjectRetain();
      v14 = a1(&v18);
      result = swift_unknownObjectRelease();
      if ((v14 & 1) == 0)
      {
        if (v10 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v4 >= *v12)
          {
            goto LABEL_22;
          }

          if (v10 >= *v12)
          {
            goto LABEL_23;
          }

          v16 = *&v7[2 * v4 + 4];
          v17 = *(v7 + v13);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          *&v7[2 * v4 + 4] = v17;
          result = swift_unknownObjectRelease();
          if (v10 >= v7[2])
          {
            goto LABEL_24;
          }

          *(v7 + v13) = v16;
          result = swift_unknownObjectRelease();
          *v15 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = v7 + 2;
      v11 = v7[2];
      v13 += 16;
      if (v10 == v11)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for DOCFileOperation();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v36 - v17;
  v19 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (!v3)
  {
    v43 = v18;
    v46 = 0;
    if (v21)
    {
      return v19[2];
    }

    v36 = v2;
    v37 = v11;
    v40 = a1;
    v44 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v19 + 2;
      v23 = v19[2];
      v25 = v43;
      if (v22 == v23)
      {
        return v44;
      }

      v38 = a2;
      v39 = v7;
      while (v22 < v23)
      {
        v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v45 = v19;
        v41 = v26;
        v27 = v19 + v26;
        v28 = *(v7 + 72);
        v42 = v28 * v22;
        outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(&v27[v28 * v22], v25, type metadata accessor for DOCFileOperation);
        v29 = v46;
        v30 = v40(v25);
        result = outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v25, type metadata accessor for DOCFileOperation);
        v46 = v29;
        if (v29)
        {
          return result;
        }

        if (v30)
        {
          v7 = v39;
          v25 = v43;
          v19 = v45;
        }

        else
        {
          v25 = v43;
          v31 = v44;
          if (v22 == v44)
          {
            v7 = v39;
            v19 = v45;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v32 = *v24;
            if (v44 >= *v24)
            {
              goto LABEL_27;
            }

            v33 = v28 * v44;
            result = outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(&v27[v28 * v44], v15, type metadata accessor for DOCFileOperation);
            if (v22 >= v32)
            {
              goto LABEL_28;
            }

            v34 = v42;
            outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(&v27[v42], v37, type metadata accessor for DOCFileOperation);
            v19 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
            }

            v35 = v19 + v41;
            result = outlined assign with take of DOCFileOperation(v37, v19 + v41 + v33);
            v7 = v39;
            if (v22 >= v19[2])
            {
              goto LABEL_29;
            }

            result = outlined assign with take of DOCFileOperation(v15, &v35[v34]);
            *v36 = v19;
            v31 = v44;
          }

          v44 = v31 + 1;
        }

        ++v22;
        v24 = v19 + 2;
        v23 = v19[2];
        if (v22 == v23)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of DOCFileOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFileOperation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*partial apply for closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(void *a1))()
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(v2, v3);
}

Swift::Void __swiftcall VNDocumentCameraViewController.doc_configurePreferredPresentationStyle()()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6)
  {
    v3 = 2;
  }

  else
  {
    v3 = 5;
  }

  [v0 setModalPresentationStyle_];
}

Swift::Void __swiftcall DOCItemCollectionViewController.didUpdateContent()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xA88))(v1);
  v4 = (*((*v2 & *v0) + 0xA68))(v3);
  v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  v6 = v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
  outlined copy of DOCFileProviderSourceType(v5);

  if (v6)
  {
    outlined consume of DOCFileProviderSourceType(v5);
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v7 = [v0 viewIfLoaded];
    v8 = [v7 window];

    if (v8)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {

      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }

  else
  {

    outlined consume of DOCFileProviderSourceType(v5);
  }
}

void __swiftcall DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(UIContextMenuConfiguration *__return_ptr retstr)
{
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v6[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu();
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v6[3] = &block_descriptor_162;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
}

id DOCItemCollectionViewController.contextMenuItemSectionsForFolder(includingResponderActions:)(char a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC70);
  v5 = v4();
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = v5;
  swift_getObjectType();
  if ([v7 isTrashed])
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  type metadata accessor for DOCActionManager(0);
  v8 = swift_unknownObjectRetain();
  v6 = MEMORY[0x277D84F90];
  v9 = specialized static DOCActionManager.canImport(in:)(v8);
  swift_unknownObjectRelease_n();
  if ((v9 & 1) == 0)
  {
LABEL_10:
    v19 = 0;
    v75 = v6;
    v20 = v6;
    if ((a1 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v75 = v6;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v11 = result;
  type metadata accessor for DOCUIImageMenuItem();
  v12._countAndFlagsBits = 0xD000000000000019;
  v76._object = 0x8000000249BFD330;
  v13._countAndFlagsBits = 0x646C6F462077654ELL;
  v12._object = 0x8000000249BFD310;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v13._object = 0xEA00000000007265;
  v76._countAndFlagsBits = 0xD000000000000024;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v14, v11, v13, v76);

  v71 = MEMORY[0x277D84F90];
  v15 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v16 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BFD360);
  v17 = [objc_opt_self() systemImageNamed_];

  [v15 setImage_];
  v18 = v15;
  MEMORY[0x24C1FB090]();
  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v19 = 1;
  v20 = v75;
  v6 = MEMORY[0x277D84F90];
  if ((a1 & 1) == 0)
  {
LABEL_20:
    if (v4())
    {
      swift_getObjectType();
      v35 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      if (v35)
      {
        v36 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v35, v2, 0);
        if (v36 < 1)
        {

          if (!v19)
          {
            goto LABEL_34;
          }

LABEL_28:
          if (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
          {
            result = _DocumentManagerBundle();
            if (!result)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v49 = result;
            type metadata accessor for DOCUIImageMenuItem();
            v50._countAndFlagsBits = 0xD000000000000023;
            v79._object = 0x8000000249BFD250;
            v51._countAndFlagsBits = 0x636F44206E616353;
            v51._object = 0xEE0073746E656D75;
            v50._object = 0x8000000249BFD220;
            v79._countAndFlagsBits = 0xD000000000000047;
            v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v52.value._object = 0xEB00000000656C62;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v52, v49, v51, v79);

            v53 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
            v54 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
            v55 = [objc_opt_self() systemImageNamed_];

            [v53 setImage_];
            v56 = v53;
            MEMORY[0x24C1FB090]();
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v20 = v75;
          }

LABEL_34:
          v57 = v4();
          v58 = MEMORY[0x277D84F90];
          if (!v57)
          {
LABEL_38:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables18DOCUIImageMenuItemCGGMd);
            result = swift_allocObject();
            *(result + 1) = xmmword_249B9FA70;
            *(result + 4) = v20;
            *(result + 5) = v58;
            return result;
          }

          result = _DocumentManagerBundle();
          if (result)
          {
            v59 = result;
            type metadata accessor for DOCUIImageMenuItem();
            v80._object = 0x8000000249BD4180;
            v80._countAndFlagsBits = 0xD000000000000050;
            v60._countAndFlagsBits = 0x6F666E4920746547;
            v60._object = 0xE800000000000000;
            v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v61.value._object = 0xEB00000000656C62;
            v62._countAndFlagsBits = 0;
            v62._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v80);

            v74 = v58;
            v63 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
            v64 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
            v65 = [objc_opt_self() systemImageNamed_];

            [v63 setImage_];
            result = _DocumentManagerBundle();
            if (result)
            {
              v66 = result;
              v67._countAndFlagsBits = 0xD000000000000020;
              v81._object = 0x8000000249BFD1B0;
              v67._object = 0x8000000249BFD180;
              v81._countAndFlagsBits = 0xD000000000000064;
              v68.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v68.value._object = 0xEB00000000656C62;
              v69._countAndFlagsBits = 0x6F666E4920746547;
              v69._object = 0xE800000000000000;
              v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v66, v69, v81);

              (*((*MEMORY[0x277D85000] & *v63) + 0x60))(v70._countAndFlagsBits, v70._object);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v58 = swift_allocObject();
              *(v58 + 16) = xmmword_249BA0290;
              *(v58 + 32) = v63;
              swift_unknownObjectRelease();
              goto LABEL_38;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_41;
        }

        v37 = v36;
        result = _DocumentManagerBundle();
        if (!result)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v38 = result;
        v78._object = 0x8000000249BFD2D0;
        v39._countAndFlagsBits = 0xD000000000000028;
        v39._object = 0x8000000249BFD2A0;
        v78._countAndFlagsBits = 0xD000000000000033;
        v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v40.value._object = 0xEB00000000656C62;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v78);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v42 = swift_allocObject();
        v43 = MEMORY[0x277D83B88];
        *(v42 + 16) = xmmword_249B9A480;
        v44 = MEMORY[0x277D83C10];
        *(v42 + 56) = v43;
        *(v42 + 64) = v44;
        *(v42 + 32) = v37;
        static String.localizedStringWithFormat(_:_:)();

        type metadata accessor for DOCUIImageMenuItem();
        v73 = MEMORY[0x277D84F90];
        v45 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v46 = MEMORY[0x24C1FAD20](0x6F642E776F727261, 0xEE00636F642E6E77);
        v47 = [objc_opt_self() systemImageNamed_];

        [v45 setImage_];
        v48 = v45;
        MEMORY[0x24C1FB090]();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v20 = v75;
        v6 = MEMORY[0x277D84F90];
      }
    }

    if (!v19)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_11:
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1448))())
  {
    goto LABEL_20;
  }

  if (!v4())
  {
    goto LABEL_20;
  }

  swift_getObjectType();
  v21 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v21, 1);
  if (v22 < 1)
  {

    goto LABEL_20;
  }

  v23 = v22;
  result = _DocumentManagerBundle();
  if (result)
  {
    v24 = result;
    v77._countAndFlagsBits = 0xD00000000000001BLL;
    v77._object = 0x8000000249BD6510;
    v25._object = 0x8000000249BD64E0;
    v25._countAndFlagsBits = 0xD000000000000024;
    v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v26.value._object = 0xEB00000000656C62;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83B88];
    *(v28 + 16) = xmmword_249B9A480;
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v23;
    static String.localizedStringWithFormat(_:_:)();

    type metadata accessor for DOCUIImageMenuItem();
    v72 = MEMORY[0x277D84F90];
    v31 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v32 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE8C70);
    v33 = [objc_opt_self() systemImageNamed_];

    [v31 setImage_];
    v34 = v31;
    MEMORY[0x24C1FB090]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v20 = v75;
    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

LABEL_44:
  __break(1u);
  return result;
}

id protocol witness for DOCItemCollectionViewGestureDelegate.contextMenuConfigurationForBackgroundMenu() in conformance DOCItemCollectionViewController()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  return UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()partial apply, v1);
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.__allocating_init(menuOrder:menuDisplayOrderOverride:displayInline:title:symbol:elementSize:subsections:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = (*(v9 + 376))();
  swift_beginAccess();
  *(v18 + 16) = a1;

  swift_beginAccess();
  *(v18 + 48) = a3;
  swift_beginAccess();
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;

  swift_beginAccess();
  *(v18 + 80) = a6;
  *(v18 + 88) = a7;

  swift_beginAccess();
  *(v18 + 56) = a8;
  swift_beginAccess();
  *(v18 + 24) = a2;

  swift_beginAccess();
  *(v18 + 96) = a9;

  return v18;
}

uint64_t DOCUIImageMenuItem.longTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCUIImageMenuItem.longTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id DOCUIImageMenuItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCUIImageMenuItem.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle];
  v4 = type metadata accessor for DOCUIImageMenuItem();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DOCUIImageMenuItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUIImageMenuItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *a2) + 0xC70);
  v5 = v4();
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_10;
  }

  swift_getObjectType();
  v7 = DOCNode.fpfs_syncFetchFPItem()();
  v5 = swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_10;
  }

  if ([v7 isTrashed])
  {

LABEL_10:
    v20 = 0;
    v126 = v6;
    v21 = v6;
    goto LABEL_11;
  }

  v8 = *MEMORY[0x277CC6028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v7;
  v10 = v7;
  LOBYTE(v8) = specialized static DOCActionManager.canPerform(_:on:)(v8, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v126 = v6;
  v11 = _DocumentManagerBundle();
  if (!v11)
  {
LABEL_90:
    __break(1u);
    return;
  }

  v12 = v11;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v13._countAndFlagsBits = 0xD000000000000019;
  v131._countAndFlagsBits = 0xD000000000000024;
  v131._object = 0x8000000249BFD330;
  v14._countAndFlagsBits = 0x646C6F462077654ELL;
  v13._object = 0x8000000249BFD310;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v14._object = 0xEA00000000007265;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v15, v12, v14, v131);

  v16 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BFD360);
  v17 = [objc_opt_self() systemImageNamed_];

  *(swift_allocObject() + 16) = a2;
  v18 = a2;
  preferredElementSize = UIMenuElementSizeSmall;
  v121._rawValue = 0;
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v19);
  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v20 = 1;
  v21 = v126;
LABEL_11:
  v22 = (*((*v3 & *a2) + 0x1448))(v5);
  if ((v22 & 1) == 0)
  {
    v22 = (v4)(v22, v23, v24, v25, v26);
    if (v22)
    {
      swift_getObjectType();
      v27 = DOCNode.fpfs_syncFetchFPItem()();
      v22 = swift_unknownObjectRelease();
      if (v27)
      {
        if (specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v27, 1) < 1)
        {
        }

        else
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
          v28 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE8C70);
          v29 = [objc_opt_self() systemImageNamed_];

          v30 = *MEMORY[0x277D765F8];
          *(swift_allocObject() + 16) = a2;
          v31 = a2;
          v32 = v30;
          preferredElementSize = UIMenuElementSizeSmall;
          v121._rawValue = 0;
          v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          MEMORY[0x24C1FB090](v33);
          if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v21 = v126;
        }
      }
    }
  }

  v34 = (v4)(v22);
  if (v34)
  {
    swift_getObjectType();
    v35 = DOCNode.fpfs_syncFetchFPItem()();
    v34 = swift_unknownObjectRelease();
    if (v35)
    {
      v36 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v35, a2, 1);
      if (v36 < 1)
      {

        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      v37 = v36;
      v38 = _DocumentManagerBundle();
      if (!v38)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v39 = v38;
      v40._countAndFlagsBits = 0xD000000000000028;
      v132._countAndFlagsBits = 0xD000000000000033;
      v132._object = 0x8000000249BFD2D0;
      v40._object = 0x8000000249BFD2A0;
      v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v41.value._object = 0xEB00000000656C62;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v132);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D83B88];
      *(v43 + 16) = xmmword_249B9A480;
      v45 = MEMORY[0x277D83C10];
      *(v43 + 56) = v44;
      *(v43 + 64) = v45;
      *(v43 + 32) = v37;
      static String.localizedStringWithFormat(_:_:)();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v46 = MEMORY[0x24C1FAD20](0x6F642E776F727261, 0xEE00636F642E6E77);
      v47 = [objc_opt_self() systemImageNamed_];

      *(swift_allocObject() + 16) = a2;
      v48 = a2;
      preferredElementSize = UIMenuElementSizeSmall;
      v121._rawValue = 0;
      v49 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v49);
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v21 = v126;
    }
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_27:
  v34 = specialized static DOCDocumentScannerUtil.canPresentScanner.getter();
  if (v34)
  {
    v50 = _DocumentManagerBundle();
    if (!v50)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v51 = v50;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v52._countAndFlagsBits = 0xD000000000000023;
    v133._countAndFlagsBits = 0xD000000000000047;
    v133._object = 0x8000000249BFD250;
    v53._countAndFlagsBits = 0x636F44206E616353;
    v53._object = 0xEE0073746E656D75;
    v52._object = 0x8000000249BFD220;
    v54.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v54.value._object = 0xEB00000000656C62;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v54, v51, v53, v133);

    v55 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
    v56 = [objc_opt_self() systemImageNamed_];

    *(swift_allocObject() + 16) = a2;
    v57 = a2;
    preferredElementSize = UIMenuElementSizeSmall;
    v121._rawValue = 0;
    v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x24C1FB090](v58);
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v21 = v126;
  }

LABEL_33:
  v125 = v6;
  if ((v4)(v34))
  {
    v59 = _DocumentManagerBundle();
    if (!v59)
    {
      __break(1u);
      goto LABEL_86;
    }

    v60 = v59;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v134._countAndFlagsBits = 0xD000000000000050;
    v134._object = 0x8000000249BD4180;
    v61._countAndFlagsBits = 0x6F666E4920746547;
    v61._object = 0xE800000000000000;
    v62.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v62.value._object = 0xEB00000000656C62;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v134);

    v64 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
    v65 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v121._rawValue = 0;
    v66 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x24C1FB090](v66);
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_unknownObjectRelease();
    v67 = v125;
  }

  else
  {
    v67 = v6;
  }

  v124 = v6;
  v68 = objc_opt_self();
  v69 = [v68 shared];
  v70 = [v69 canUndo];

  v71 = v6;
  if (!v70)
  {
    goto LABEL_44;
  }

  v72 = [v68 shared];
  v73 = [v72 undoActionName];

  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = _DocumentManagerBundle();
  if (!v77)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v78 = v77;
  swift__stringd._object = 0x8000000249BFD5F0;
  v79._countAndFlagsBits = 0x4025206F646E55;
  v79._object = 0xE700000000000000;
  v80.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v80.value._object = 0xEB00000000656C62;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  swift__stringd._countAndFlagsBits = 0xD00000000000005ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, swift__stringd);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_249B9A480;
  *(v82 + 56) = MEMORY[0x277D837D0];
  *(v82 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v82 + 32) = v74;
  *(v82 + 40) = v76;
  static String.localizedStringWithFormat(_:_:)();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v83 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BFD650);
  v84 = [objc_opt_self() systemImageNamed_];

  preferredElementSize = UIMenuElementSizeSmall;
  v121._rawValue = 0;
  v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v85);
  if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v71 = v124;
LABEL_44:
  v86 = [v68 shared];
  v87 = [v86 canRedo];

  if (!v87)
  {
    goto LABEL_49;
  }

  v88 = [v68 shared];
  v89 = [v88 redoActionName];

  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  v93 = _DocumentManagerBundle();
  if (!v93)
  {
    goto LABEL_87;
  }

  v94 = v93;
  swift__stringe._object = 0x8000000249BFD570;
  v95._countAndFlagsBits = 0x4025206F646552;
  v95._object = 0xE700000000000000;
  v96.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v96.value._object = 0xEB00000000656C62;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  swift__stringe._countAndFlagsBits = 0xD00000000000005ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v96, v94, v97, swift__stringe);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_249B9A480;
  *(v98 + 56) = MEMORY[0x277D837D0];
  *(v98 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v98 + 32) = v90;
  *(v98 + 40) = v92;
  static String.localizedStringWithFormat(_:_:)();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v99 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BFD5D0);
  v100 = [objc_opt_self() systemImageNamed_];

  v121._rawValue = 0;
  v101 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v101);
  if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v71 = v124;
LABEL_49:
  if (v21 >> 62)
  {
LABEL_78:
    v105 = __CocoaSet.count.getter();
    if (v105)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

      v102 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_52;
    }
  }

  else
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      v102 = v21;
LABEL_52:
      v103 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      v127.value.super.isa = 0;
      v127.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v103, v104, 0, v127, 1, 0xFFFFFFFFFFFFFFFFLL, v102, v121);
      goto LABEL_54;
    }

    v105 = 0;
  }

LABEL_54:
  v123[4] = v105;
  if (v67 >> 62)
  {
    v109 = __CocoaSet.count.getter();
    if (v109)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

      v106 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_57;
    }
  }

  else
  {
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      v106 = v67;
LABEL_57:
      v107 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      v128.value.super.isa = 0;
      v128.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v107, v108, 0, v128, 1, 2uLL, v106, v121);
      goto LABEL_59;
    }

    v109 = 0;
  }

LABEL_59:
  v123[5] = v109;
  if (v71 >> 62)
  {
    v113 = __CocoaSet.count.getter();
    if (v113)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

      v110 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_62;
    }
  }

  else
  {
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
      v110 = v71;
LABEL_62:
      v111 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
      v112._countAndFlagsBits = 0;
      v112._object = 0xE000000000000000;
      v129.value.super.isa = 0;
      v129.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v111, v112, 0, v129, 1, 2uLL, v110, v121);
      goto LABEL_64;
    }

    v113 = 0;
  }

LABEL_64:
  v114 = 0;
  v123[6] = v113;
  v122 = v6;
LABEL_65:
  if (v114 <= 3)
  {
    v115 = 3;
  }

  else
  {
    v115 = v114;
  }

  while (v114 != 3)
  {
    if (v115 == v114)
    {
      __break(1u);
      goto LABEL_78;
    }

    v116 = v123[v114++ + 4];
    if (v116)
    {
      MEMORY[0x24C1FB090](v116);
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v122;
      goto LABEL_65;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIMenuCSgMd);
  swift_arrayDestroy();

  if (v6 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    v117 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    v117 = v6;
  }

  v118 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v130.value.super.isa = 0;
  v130.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v118, v119, 0, v130, 0, 0xFFFFFFFFFFFFFFFFLL, v117, v121);
}

void closure #5 in closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong displayInfoForCurrentItem_];
  }
}

void closure #6 in closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(uint64_t a1, SEL *a2)
{
  v3 = [objc_opt_self() shared];
  [v3 *a2];
}

void DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)()
{
  v1 = type metadata accessor for DOCPasteboardHandler();
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  if (v2)
  {
    swift_getObjectType();
    v5 = v0;
    swift_unknownObjectRetain();
    FPItem = DOCNode.fpfs_syncFetchFPItemResult()();
    v7 = FPItem;
    if (v8)
    {
      v9 = FPItem;
      v10._rawValue = 0;
      closure #1 in DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)(v10, v7, v5);
      swift_unknownObjectRelease_n();

      outlined consume of Result<FPItem, Error>(v7);

      outlined consume of Result<FPItem, Error>(v7);
    }

    else
    {
      v12 = objc_opt_self();
      v13 = v7;
      v14 = [v12 defaultPermission];
      v15 = [v14 dataOwnerStateForNode_];

      v26 = MEMORY[0x277D84F90];
      v16 = v15 == 2;
      if (v15 == 1)
      {
        v16 = 2;
      }

      v24 = v16;
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      v18[2] = &v26;
      v18[3] = v15;
      v18[4] = v5;
      v18[5] = v2;
      v18[6] = v13;
      v18[7] = v3;
      v18[8] = partial apply for closure #1 in DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:);
      v18[9] = v4;
      v18[10] = v1;
      v19 = swift_allocObject();
      *(v19 + 16) = partial apply for closure #1 in static DOCPasteboardHandler.pasteboardPasteInDestination(dest:configuration:alertPresenting:completion:);
      *(v19 + 24) = v18;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_12_5;
      v20 = _Block_copy(aBlock);
      v21 = v5;
      swift_unknownObjectRetain();
      v22 = v3;

      [v17 _performAsDataOwner_block_];
      swift_unknownObjectRelease();

      outlined consume of Result<FPItem, Error>(v7);
      _Block_release(v20);
      swift_unknownObjectRelease();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = v0;
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)(Swift::OpaquePointer a1, void *a2, void *a3)
{
  if (!a1._rawValue)
  {
    goto LABEL_15;
  }

  if (!(a1._rawValue >> 62))
  {
    if (*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_15:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_249B9FA70;
    v35 = MEMORY[0x277D837D0];
    *(v34 + 56) = MEMORY[0x277D837D0];
    v36 = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 64) = v36;
    *(v34 + 32) = 0xD000000000000023;
    *(v34 + 40) = 0x8000000249BFD520;
    if (a2 && (v45 = a2, v37 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd), (swift_dynamicCast() & 1) != 0) && v42)
    {
      outlined init with take of DOCGoToFolderCandidate(&aBlock, v34 + 72);
    }

    else
    {
      *(v34 + 96) = v35;
      *(v34 + 104) = v36;
      strcpy((v34 + 72), "unknown error");
      *(v34 + 86) = -4864;
    }

    os_log(_:dso:log:type:_:)();
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_4:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v43 = DOCGridLayout.specIconWidth.modify;
  v44 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v41 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v42 = &block_descriptor_71_3;
  v7 = _Block_copy(&aBlock);

  [a3 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v7];
  _Block_release(v7);

  v8 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *a3) + 0xC70))())
  {
  }

  if (a2)
  {
    swift_unknownObjectRelease();
  }

  v9 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(a1);
  v10 = v45;
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];

  swift_getObjectType();
  v13 = DOCNode.sourceIdentifier.getter();
  v14 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v13);
  v15 = v39[1];
  v16 = (*((*v8 & *a3) + 0xBD8))(v14);
  if (v16 >= 4)
  {
    *&aBlock = v16;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v17 = 0x3020201u >> (8 * v16);
    v18 = [v11 mainBundle];
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = v9;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v23, v20, v22, &aBlock);
    v24 = aBlock;
    v25 = v23;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v25, v39);
    v26 = v39[0];
    v27 = v25;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v27, &v38);
    v28 = v38;
    v29 = [v27 hostIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *&aBlock = 0xD000000000000032;
    *(&aBlock + 1) = 0x8000000249BCDC20;
    v41 = v30;
    v42 = v32;
    LOBYTE(v43) = 1;
    BYTE1(v43) = v24;
    BYTE2(v43) = v10;
    BYTE3(v43) = v15;
    BYTE4(v43) = v17;
    BYTE5(v43) = v26;
    BYTE6(v43) = v28;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(&aBlock, static DOCAnalyticsManager.shared);
    swift_unknownObjectRelease();
    return outlined destroy of DOCAnalyticsActionEvent(&aBlock);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.pasteboardMoveToCollectionView(_:)()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() defaultPermission];
    v4 = [v3 dataOwnerStateForNode_];

    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v0;
    swift_unknownObjectRetain();
    specialized static NSItemProvider.fetchPasteboardNodes(dataOwnerState:alertPresenting:with:)(v5, v0, partial apply for closure #1 in DOCItemCollectionViewController.pasteboardMoveToCollectionView(_:), v6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in DOCItemCollectionViewController.pasteboardMoveToCollectionView(_:)(unint64_t a1, uint64_t a2, void *a3)
{
  v52 = type metadata accessor for DOCOperationItem();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v7);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v49 - v12);
  v51 = a2;
  if (a1 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v55[0] = MEMORY[0x277D84F90];
    v16 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v50 = a3;
    v15 = v55[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        *v13 = MEMORY[0x24C1FC540](i, a1);
        swift_storeEnumTagMultiPayload();
        v55[0] = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
          v15 = v55[0];
        }

        *(v15 + 16) = v19 + 1;
        outlined init with take of DOCOperationItem(v13, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19);
      }
    }

    else
    {
      v20 = (a1 + 32);
      do
      {
        *v9 = *v20;
        swift_storeEnumTagMultiPayload();
        v55[0] = v15;
        v21 = *(v15 + 16);
        v22 = *(v15 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v21 + 1, 1);
          v15 = v55[0];
        }

        *(v15 + 16) = v21 + 1;
        outlined init with take of DOCOperationItem(v9, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21);
        ++v20;
        --v14;
      }

      while (v14);
    }

    a3 = v50;
  }

  v23 = [objc_opt_self() defaultManager];
  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v15, v51, 0, 0, 1, a3, 0, 0);

  v24 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);

  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v25);
  v26 = v54[2];
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];

  swift_getObjectType();
  v29 = DOCNode.sourceIdentifier.getter();
  v30 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v29);
  v31 = v54[1];
  v16 = (*((*MEMORY[0x277D85000] & *a3) + 0xBD8))(v30);
  if (v16 >= 4)
  {
LABEL_25:
    v55[0] = v16;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v32 = 0x3020201u >> (8 * v16);
  v33 = [v27 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = v24;
  DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v38, v35, v37, v55);
  v39 = v55[0];
  v40 = v38;
  DOCAnalyticsActionEvent.SortMode.init(configuration:)(v40, v54);
  v41 = v54[0];
  v42 = v40;
  DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v42, &v53);
  v43 = v53;
  v44 = [v42 hostIdentifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v55[0] = 0xD000000000000032;
  v55[1] = 0x8000000249BCDC20;
  v55[2] = v45;
  v55[3] = v47;
  v56 = 1;
  v57 = v39;
  v58 = v26;
  v59 = v31;
  v60 = v32;
  v61 = v41;
  v62 = v43;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v55, static DOCAnalyticsManager.shared);
  return outlined destroy of DOCAnalyticsActionEvent(v55);
}

uint64_t @objc DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd);
}

uint64_t DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(uint64_t a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (result)
  {
    v4 = result;
    outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_sypSgMd);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v4;
    v6 = v10[1];
    *(v5 + 32) = v10[0];
    *(v5 + 48) = v6;
    v9[4] = partial apply for closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:);
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_21_7;
    v7 = _Block_copy(v9);
    v8 = v1;
    swift_unknownObjectRetain();

    [v4 fetchURL_];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v26 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, v26 - v14, &_s10Foundation3URLVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(a5, v26, &_sypSgMd);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  outlined init with take of URL?(v15, v20 + v16);
  *(v20 + v17) = a2;
  *(v20 + v18) = a3;
  *(v20 + v19) = a4;
  v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26[1];
  *v21 = v26[0];
  v21[1] = v22;
  v23 = a2;
  v24 = a3;
  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v12, &_s10Foundation3URLVSgMd);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9A480;
    if (a2)
    {
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v29 = 4271950;
    if (v21)
    {
      v29 = v19;
    }

    v30 = 0xE300000000000000;
    if (v21)
    {
      v30 = v21;
    }

    *(v18 + 32) = v29;
    *(v18 + 40) = v30;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v22 = *((*MEMORY[0x277D85000] & *a3) + 0xA90);
    swift_unknownObjectRetain();
    v23 = v22(v38);
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v25;
    *v25 = 0x8000000000000000;
    ObjectType = swift_getObjectType();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, v17, isUniquelyReferenced_nonNull_native, &v37, ObjectType);
    *v25 = v37;
    v23(v38, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249BA0290;
    *(v28 + 32) = a4;
    outlined init with copy of DOCGridLayout.Spec?(v36, v38, &_sypSgMd);
    if (v39)
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd);
      swift_dynamicCast();
    }

    else
    {
      swift_unknownObjectRetain();
      outlined destroy of CharacterSet?(v38, &_sypSgMd);
    }

    v32 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    v33 = DOCItemCollectionViewController.actionContext(from:)();
    swift_unknownObjectRelease();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x24C1FC540](0, v28);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v28;
      *(v34 + 32) = 0;
      *(v34 + 40) = v32;
      *(v34 + 48) = a4;
      v35 = v33;
      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
    }

    return (*(v14 + 8))(v17, v13);
  }
}

void DOCItemCollectionViewController.scanDocument(_:)()
{
  DOCItemCollectionViewController.triggerScan()();
  if (v0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = v0;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      _os_log_impl(&dword_2493AC000, oslog, v3, "Did not trigger scan. Error: %@", v4, 0xCu);
      outlined destroy of CharacterSet?(v5, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v5, -1, -1);
      MEMORY[0x24C1FE850](v4, -1, -1);

      v8 = oslog;
    }

    else
    {

      v8 = v0;
    }
  }
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.menuSortOrder.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.menuDisplayOrderOverride.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.browserActions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.menus.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.displayInline.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.elementSize.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.title.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.symbol.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.symbol.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.subsections.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.debugDescription.getter()
{
  _StringGuts.grow(_:)(24);
  v14 = v0;
  type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x24C1FAEA0](0x203A73756E656D20, 0xE800000000000000);
  v2 = (*(*v0 + 224))(v1);
  v3 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v4 = MEMORY[0x24C1FB0D0](v2, v3);
  v6 = v5;

  MEMORY[0x24C1FAEA0](v4, v6);

  v7 = MEMORY[0x24C1FAEA0](0x736E6F6974636120, 0xEA0000000000203ALL);
  v8 = (*(*v14 + 200))(v7);
  v9 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v10 = MEMORY[0x24C1FB0D0](v8, v9);
  v12 = v11;

  MEMORY[0x24C1FAEA0](v10, v12);

  return 0;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.deinit()
{

  return v0;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.__deallocating_deinit()
{
  DOCItemCollectionViewController._DOCSectionDescriptor.deinit();

  return swift_deallocClassInstance();
}

double DOCItemCollectionViewController._DOCSectionDescriptor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  *(v0 + 56) = 2;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  *(v0 + 56) = 2;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

uint64_t filteredActions #1 (by:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, unint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = a2 & 0xC000000000000001;
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      v21 = a2;
      v7 = a2 + 32;
      v8 = a1 + 56;
      while (1)
      {
        if (v5)
        {
          v9 = MEMORY[0x24C1FC540](v4, v21);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v7 + 8 * v4);
        }

        v10 = v9;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v12 = [v9 menuSortOrder];
        if (*(a1 + 16) && (v13 = v12, Hasher.init(_seed:)(), MEMORY[0x24C1FCBD0](v13), v14 = Hasher._finalize()(), v15 = -1 << *(a1 + 32), v16 = v14 & ~v15, ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
        {
          v17 = ~v15;
          while (*(*(a1 + 48) + 8 * v16) != v13)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v4 == v3)
          {
            return v22;
          }
        }

        else
        {
LABEL_4:

          if (v4 == v3)
          {
            return v22;
          }
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v19 = a2;
      v20 = __CocoaSet.count.getter();
      a2 = v19;
      v3 = v20;
    }

    while (v20);
  }

  return MEMORY[0x277D84F90];
}

uint64_t browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(unint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a1;
  v54 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_30:
    v52 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v52 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v51 = v6 & 0xC000000000000001;
  result = MEMORY[0x277D84F90];
  v47 = v6;
  v48 = a4;
  for (i = v7; i != v8; v7 = i)
  {
    v46 = result;
    for (j = v8; ; ++j)
    {
      if (v51)
      {
        v11 = MEMORY[0x24C1FC540](j, v6);
      }

      else
      {
        if (j >= *(v52 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v6 + 8 * j + 32);
      }

      v16 = v11;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v17 = *((*MEMORY[0x277D85000] & *a2) + 0xAB0);
      v18 = v17(v11, v12, v13, v14, v15);
      if ((v18 & 1) == 0 || (v18 = (*((*MEMORY[0x277D85000] & *a2) + 0xAC8))(v18, v19, v20, v21, v22), (v18 & 1) == 0))
      {
        if (v17(v18, v19, v20, v21, v22))
        {

          goto LABEL_6;
        }
      }

      v23 = [v16 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = objc_opt_self();
      v28 = MEMORY[0x24C1FAD20](v24, v26);
      LODWORD(v27) = [v27 isDestructiveActionIdentifier_];

      v29 = 2;
      if (!v27)
      {
        v29 = 0;
      }

      v53 = v29;
      UIDocumentBrowserAction.preferredLocalizedTitleForMenus.getter();
      if (![v16 imageOnlyForContextMenu])
      {
        v30 = [v16 image];
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      UIDocumentBrowserAction.compositeIdentifierForMenus.getter();
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = v16;
      v32[4] = a3;
      v33 = v16;

      v44 = partial apply for closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:);
      v45 = v32;
      v43 = 0;
      v41 = 0;
      v42 = v53;
      v34 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      a4 = v48;
      if (!v48)
      {
        break;
      }

      v35 = v48(v34);

      v36 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v48);
      v6 = v47;
      v7 = i;
      if (v35)
      {
        goto LABEL_23;
      }

LABEL_6:
      if (v8 == v7)
      {
        return v46;
      }
    }

    v6 = v47;
LABEL_23:
    MEMORY[0x24C1FB090](v36, v37, v38, v39, v40);
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v54;
  }

  return result;
}

void closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = DOCItemCollectionViewController.actionContext(from:)();
    (*((*MEMORY[0x277D85000] & *v9) + 0xC8))(a1);
    v10 = *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
    specialized DOCActionManager.perform(_:on:actionContext:)(a3, a4, v9);

    if ([a3 performActionExitsEditMode])
    {
      [v8 setEditing:0 animated:1];
    }
  }
}

uint64_t DOCItemCollectionViewController.doc_documentScannerReceivingTarget.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xA98))();
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.documentCameraViewController(_:didFinishWith:)(VNDocumentCameraViewController *_, VNDocumentCameraScan didFinishWith)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  v6 = v2;
  v7 = _;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(didFinishWith.super.isa, partial apply for closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:), v5);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v26[1] = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v13, a2, v9);
      return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *a4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;

  return swift_unknownObjectRelease();
}

void specialized DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v12 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v13 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15 = [v12 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = v7;
  v17 = DOCActionManager.collaborationActions(for:presentingViewController:availability:)(a1, v7, 1);
  v111[1] = v16;
  specialized Array.append<A>(contentsOf:)(v17);
  v18 = specialized DOCActionManager.smartMoveActions(forMovingNodes:in:to:currentConfiguration:)(a1, a3);
  specialized Array.append<A>(contentsOf:)(v18);
  v19 = specialized DOCActionManager.openWithAppActions(for:currentConfiguration:)(a1, v13);
  specialized Array.append<A>(contentsOf:)(v19);
  v100 = a1;
  v20 = specialized DOCActionManager.addToDockActions(for:currentConfiguration:)(a1, v13);
  specialized Array.append<A>(contentsOf:)(v20);

  v111[0] = specialized Array._copyToContiguousArray()(v21);
  specialized MutableCollection<>.sort(by:)(v111);

  v107 = v111[0];
  v99 = a6;
  v96._rawValue = (a6 >> 62);
  if (a6 >> 62)
  {
    goto LABEL_33;
  }

  v22 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_3:
    v23 = 0;
    v97 = v22;
    while (1)
    {
      if ((v99 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](v23, v99);
        v25 = __OFADD__(v23++, 1);
        if (v25)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v23 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v24 = *(v99 + 32 + 8 * v23);

        v25 = __OFADD__(v23++, 1);
        if (v25)
        {
          goto LABEL_31;
        }
      }

      v26 = (*(*v24 + 152))();
      v27 = filteredActions #1 (by:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v26, v107);

      v28 = *(*v24 + 208);
      v29 = v28(v27);
      v30 = (*(*v24 + 176))(v29);
      if (v30)
      {
        v31 = v30;
        (*(*v24 + 200))();

        v111[0] = specialized Array._copyToContiguousArray()(v32);
        specialized MutableCollection<>.sort(by:)(v111, v31);

        swift_bridgeObjectRelease_n();
        v30 = v28(v111[0]);
      }

      v33 = (*(*v24 + 200))(v30);
      v34 = browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v33, v105, v100, a4);

      v35 = (*(*v24 + 232))(v34);
      v36 = (*(*v24 + 344))(v35);
      if (!v36)
      {
        goto LABEL_5;
      }

      v37 = v36;
      v98 = v23;
      v38 = v36 & 0xFFFFFFFFFFFFFF8;
      if (!(v36 >> 62))
      {
        v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          break;
        }

        goto LABEL_4;
      }

      v39 = __CocoaSet.count.getter();
      if (v39)
      {
        break;
      }

LABEL_4:

      v22 = v97;
      v23 = v98;
LABEL_5:

      if (v23 == v22)
      {
        goto LABEL_34;
      }
    }

    v40 = 0;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x24C1FC540](v40, v37);
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v40 >= *(v38 + 16))
        {
          goto LABEL_30;
        }

        v43 = *(v37 + 8 * v40 + 32);

        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v22 = __CocoaSet.count.getter();
          if (!v22)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v45 = (*(*v43 + 152))();
      v46 = filteredActions #1 (by:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v45, v107);

      v47 = *(*v43 + 208);
      v48 = v47(v46);
      v49 = (*(*v43 + 176))(v48);
      if (v49)
      {
        v50 = v49;
        (*(*v43 + 200))();

        v111[0] = specialized Array._copyToContiguousArray()(v51);
        specialized MutableCollection<>.sort(by:)(v111, v50);

        swift_bridgeObjectRelease_n();
        v47(v111[0]);
      }

      v41 = (*(*v43 + 200))();
      v42 = browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v41, v105, v100, a4);

      (*(*v43 + 232))(v42);

      ++v40;
      if (v44 == v39)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_34:

  if (v96._rawValue)
  {
    v52 = __CocoaSet.count.getter();
  }

  else
  {
    v52 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    v111[0] = MEMORY[0x277D84F90];
    v101 = v52;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v101 < 0)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      while (1)
      {

        __break(1u);
      }
    }

    v54 = 0;
    do
    {
      if ((v99 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x24C1FC540](v54);
      }

      else
      {
        v57 = *(v99 + 32 + 8 * v54);
      }

      v110 = v53;
      v58 = (*(*v57 + 224))();
      v59 = specialized Array.append<A>(contentsOf:)(v58);
      v60 = (*(*v57 + 344))(v59);
      if (v60)
      {
        v61 = v60;
        v62 = v60 & 0xFFFFFFFFFFFFFF8;
        if (v60 >> 62)
        {
          v63 = __CocoaSet.count.getter();
          v103 = v57;
          v104 = v54;
          if (v63)
          {
LABEL_48:
            v64 = 0;
            v108 = v61;
            v109 = v61 & 0xC000000000000001;
            v106 = v63;
            do
            {
              if (v109)
              {
                v65 = MEMORY[0x24C1FC540](v64, v61);
                v66 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_71;
                }
              }

              else
              {
                if (v64 >= *(v62 + 16))
                {
                  goto LABEL_72;
                }

                v65 = *(v61 + 8 * v64 + 32);

                v66 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
LABEL_71:
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

                  v53 = _bridgeCocoaArray<A>(_:)();

                  goto LABEL_70;
                }
              }

              v67 = (*(*v65 + 296))();
              if (!v68)
              {
                goto LABEL_75;
              }

              v69 = v67;
              v70 = v68;
              v71 = (*(*v65 + 320))();
              if (!v72)
              {
                goto LABEL_76;
              }

              v73 = v71;
              v74 = v72;
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
              v75 = MEMORY[0x24C1FAD20](v73, v74);

              v76 = [objc_opt_self() systemImageNamed_];

              preferredElementSize = (*(*v65 + 224))();
              v77._countAndFlagsBits = v69;
              v77._object = v70;
              v113.value.super.isa = v76;
              v113.is_nil = 0;
              UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v78, v77, 0, v113, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v96);
              v80 = v79;
              MEMORY[0x24C1FB090]();
              if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              ++v64;
              v61 = v108;
            }

            while (v66 != v106);
          }
        }

        else
        {
          v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v103 = v57;
          v104 = v54;
          if (v63)
          {
            goto LABEL_48;
          }
        }

        v57 = v103;
        v54 = v104;
      }

      if ((*(*v57 + 248))())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
        v55 = (*(*v57 + 272))();
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        v112.value.super.isa = 0;
        v112.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v110, v56, 0, v112, 1, v55, v110, v96);
      }

      else
      {
        v81 = v54;
        v82 = (*(*v57 + 296))();
        if (!v83)
        {
          goto LABEL_78;
        }

        v84 = v82;
        v85 = v83;
        v86 = (*(*v57 + 320))();
        if (!v87)
        {
          goto LABEL_77;
        }

        v88 = v86;
        v89 = v87;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
        v90 = MEMORY[0x24C1FAD20](v88, v89);

        v91 = [objc_opt_self() systemImageNamed_];

        v92._countAndFlagsBits = v84;
        v92._object = v85;
        v114.value.super.isa = v91;
        v114.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v110, v92, 0, v114, 0, 0xFFFFFFFFFFFFFFFFLL, v110, v96);
        v54 = v81;
      }

      ++v54;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v53 = MEMORY[0x277D84F90];
    }

    while (v54 != v101);
    v53 = v111[0];
  }

  if (v53 >> 62)
  {
    goto LABEL_73;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
LABEL_70:

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v115.value.super.isa = 0;
  v115.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v94, v93, 0, v115, 1, 0xFFFFFFFFFFFFFFFFLL, v53, v96);
}

id specialized DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:)(unint64_t a1, uint64_t a2)
{
  v154 = a2;
  v161 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v5);
  v160 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchQoS();
  v168 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v7);
  v158 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for DispatchQoS.QoSClass();
  v147 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v9);
  v156 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v142 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v143 = &v135 - v17;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_51;
  }

  v19 = result;
  v180._object = 0x8000000249BF15F0;
  v20._countAndFlagsBits = 0x6F5420646441;
  v20._object = 0xE600000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0x6F5420646441;
  v22._object = 0xE600000000000000;
  v180._countAndFlagsBits = 0xD000000000000020;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v180);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v24 = result;
  v181._object = 0x8000000249BF1620;
  v25._countAndFlagsBits = 0x6341206B63697551;
  v25._object = 0xED0000736E6F6974;
  v181._countAndFlagsBits = 0xD000000000000027;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0x6341206B63697551;
  v27._object = 0xED0000736E6F6974;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v181);
  v151 = v28._object;
  v152 = v28._countAndFlagsBits;

  v29 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v30 = [objc_opt_self() suggestedMoveToFolderInContextMenu];
  v31 = [v30 isEnabled];

  v155 = v2;
  v163 = a1;
  if (v31)
  {
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        goto LABEL_43;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_43;
    }

    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      if (All >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      }

      v145 = v4;
      v140 = v12;
      v141 = v11;

      v33 = objc_allocWithZone(DOCPickerContext);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v35 = [v33 initWithNodes_];

      v36 = v155;
      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      v37 = static DOCSmartFolderManager.sharedManager;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
      inited = *(v36 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
      v41 = objc_opt_self();
      v139 = v35;
      v42 = [v41 defaultPermission];
      v43 = [objc_opt_self() sharedManager];
      v44 = v35;
      v45 = [v43 favoritedLocations];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v171 = v40;
      v47 = inited;
      v137 = v46;
      v138 = v42;
      v169 = v38;
      inited = v37;
      v48 = DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(v38, v40, v47, v42, 1, v44, v46);
      v49 = dispatch_group_create();
      v50 = swift_allocObject();
      v51 = v48;
      v162 = v50;
      *(v50 + 16) = MEMORY[0x277D84F98];
      v136 = (v50 + 16);
      if (v48 >> 62)
      {
        v52 = __CocoaSet.count.getter();
        v51 = v48;
        if (v52)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v52 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
LABEL_13:
          if (v52 >= 1)
          {
            v53 = 0;
            v165 = &v174;
            v166 = v51 & 0xC000000000000001;
            v164 = *MEMORY[0x277D060D8];
            v54 = v147++;
            v148 = (v54 + 13);
            v146 = *MEMORY[0x277D851A8];
            v144 = (v168 + 8);
            ++v145;
            v167 = v52;
            v168 = v51;
            v149 = v49;
            while (1)
            {
              if (v166)
              {
                v66 = MEMORY[0x24C1FC540](v53);
              }

              else
              {
                v66 = *(v51 + 8 * v53 + 32);
              }

              v67 = v66;
              v68 = [v66 providerID];
              v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v71 = v70;

              if (v69 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v71 == v72)
              {

                if (FPIsCloudDocsWithFPFSEnabled())
                {
                  goto LABEL_28;
                }
              }

              else
              {
                v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v74 & 1) != 0 && FPIsCloudDocsWithFPFSEnabled())
                {
LABEL_28:
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
                  v76 = v156;
                  v75 = v157;
                  (*v148)(v156, v146, v157);
                  v77 = static OS_dispatch_queue.global(qos:)();
                  (*v147)(v76, v75);
                  v78 = swift_allocObject();
                  v79 = v169;
                  v80 = inited;
                  v78[2] = inited;
                  v78[3] = v67;
                  v81 = v171;
                  v78[4] = v79;
                  v78[5] = v81;
                  v176 = _s26DocumentManagerExecutables014DOCSmartFolderB0C20suggestedFoldersList3for13configuration17managedPermission16maxNumberOfItems13pickerContext5async10completionySS_So16DOCConfigurationCSo010DOCManagedL0CSiSo09DOCPickerR0CSgSbySaySo6FPItemCGctFyycfU_yyYbcfU_TA_0;
                  v177 = v78;
                  v172 = MEMORY[0x277D85DD0];
                  v173 = 1107296256;
                  v174 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                  v175 = &block_descriptor_108_0;
                  v82 = _Block_copy(&v172);
                  v83 = v80;
                  v84 = v67;

                  v85 = v158;
                  static DispatchQoS.unspecified.getter();
                  v178 = MEMORY[0x277D84F90];
                  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  v87 = v160;
                  v86 = v161;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  MEMORY[0x24C1FB9A0](0, v85, v87, v82);
                  _Block_release(v82);

                  (*v145)(v87, v86);
                  v88 = v85;
                  v49 = v149;
                  (*v144)(v88, v159);

                  goto LABEL_16;
                }
              }

              dispatch_group_enter(v49);
              v55 = [objc_opt_self() defaultManager];
              v56 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v57 = swift_allocObject();
              v58 = v162;
              v57[2] = v49;
              v57[3] = v58;
              v57[4] = v56;
              v57[5] = v67;
              v59 = v171;
              v57[6] = v169;
              v57[7] = v59;
              v60 = v67;

              v61 = v49;

              v62 = [v60 itemID];
              v63 = swift_allocObject();
              v63[2] = v60;
              v63[3] = partial apply for closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
              v63[4] = v57;
              v176 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
              v177 = v63;
              v172 = MEMORY[0x277D85DD0];
              v173 = 1107296256;
              v174 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
              v175 = &block_descriptor_102_0;
              v64 = _Block_copy(&v172);
              v65 = v60;

              [v55 fetchItemForItemID:v62 completionHandler:v64];
              _Block_release(v64);

LABEL_16:
              ++v53;
              v51 = v168;
              if (v167 == v53)
              {
                v89 = v168;

                v29 = MEMORY[0x277D84F90];
                goto LABEL_35;
              }
            }
          }

          __break(1u);
          goto LABEL_48;
        }
      }

      v89 = v51;

LABEL_35:
      v90 = v142;
      static DispatchTime.now()();
      v91 = v143;
      + infix(_:_:)();
      v92 = v141;
      v93 = *(v140 + 8);
      v93(v90, v141);
      MEMORY[0x24C1FB8F0](v91);
      v93(v91, v92);
      if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
      {

        v96 = v139;
        if (v29 >> 62)
        {
          v97 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {
          v97 = MEMORY[0x277D84F90];
          __EmptyArrayStorage.staticElementType.getter();
        }

        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(v97);
        swift_endAccess();
        goto LABEL_42;
      }

      v94 = specialized Sequence.compactMap<A>(_:)(v89, v136);

      if (!(v94 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v95 = v94;
LABEL_38:

        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(v95);
        swift_endAccess();
        v96 = v139;
LABEL_42:

        goto LABEL_43;
      }

LABEL_48:

      v95 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_38;
    }
  }

LABEL_43:
  inited = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v171 = type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  v98 = swift_allocObject();
  *(v98 + 16) = MEMORY[0x277D84FA0];
  *(v98 + 24) = 0;
  *(v98 + 32) = v29;
  *(v98 + 40) = v29;
  *(v98 + 48) = 1;
  *(v98 + 56) = 2;
  *(v98 + 96) = 0;
  *(v98 + 80) = 0u;
  *(v98 + 64) = 0u;
  swift_beginAccess();
  *(v98 + 16) = inited;

  swift_beginAccess();
  *(v98 + 48) = 0;
  swift_beginAccess();
  v99 = v151;
  *(v98 + 64) = v152;
  *(v98 + 72) = v99;

  swift_beginAccess();
  *(v98 + 80) = xmmword_249BB6110;

  swift_beginAccess();
  *(v98 + 56) = 2;
  swift_beginAccess();
  *(v98 + 24) = 0;

  swift_beginAccess();
  *(v98 + 96) = 0;
  v169 = v98;

  if (specialized DOCActionManager.shouldShowAddToSubmenu(for:)(v163))
  {
    inited = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
    v100 = swift_allocObject();
    *(v100 + 16) = MEMORY[0x277D84FA0];
    *(v100 + 24) = 0;
    v101 = MEMORY[0x277D84F90];
    *(v100 + 32) = MEMORY[0x277D84F90];
    *(v100 + 40) = v101;
    *(v100 + 48) = 1;
    *(v100 + 56) = 2;
    *(v100 + 96) = 0;
    *(v100 + 80) = 0u;
    *(v100 + 64) = 0u;
    swift_beginAccess();
    *(v100 + 16) = inited;

    swift_beginAccess();
    *(v100 + 48) = 0;
    swift_beginAccess();
    *(v100 + 64) = countAndFlagsBits;
    *(v100 + 72) = object;

    swift_beginAccess();
    *(v100 + 80) = xmmword_249BA62B0;

    swift_beginAccess();
    *(v100 + 56) = 2;
    swift_beginAccess();
    *(v100 + 24) = 0;

    swift_beginAccess();
    *(v100 + 96) = 0;

    v168 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v102 = swift_allocObject();
    inited = v102;
    *(v102 + 16) = xmmword_249BA1010;
    v103 = v169;
    *(v102 + 32) = v100;
    *(v102 + 40) = v103;
    v104 = swift_allocObject();
    *(v104 + 16) = MEMORY[0x277D84FA0];
    *(v104 + 24) = 0;
    v105 = MEMORY[0x277D84F90];
    *(v104 + 32) = MEMORY[0x277D84F90];
    *(v104 + 40) = v105;
    *(v104 + 48) = 1;
    *(v104 + 56) = 2;
    *(v104 + 96) = 0;
    v167 = v104 + 96;
    *(v104 + 80) = 0u;
    *(v104 + 64) = 0u;
    swift_beginAccess();
    *(v104 + 16) = v168;

    swift_beginAccess();
    *(v104 + 48) = 1;
    swift_beginAccess();
    *(v104 + 64) = 0;
    *(v104 + 72) = 0;

    swift_beginAccess();
    *(v104 + 80) = 0;
    v168 = v104;
    *(v104 + 88) = 0;

    swift_beginAccess();
    *(v104 + 56) = 2;
    swift_beginAccess();
    *(v104 + 24) = 0;

    v106 = v167;
    swift_beginAccess();
    *v106 = inited;
  }

  else
  {

    v168 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #3 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v107 = swift_allocObject();
    inited = v107;
    *(v107 + 16) = xmmword_249BA0290;
    *(v107 + 32) = v169;
    v108 = swift_allocObject();
    *(v108 + 16) = MEMORY[0x277D84FA0];
    *(v108 + 24) = 0;
    v109 = MEMORY[0x277D84F90];
    *(v108 + 32) = MEMORY[0x277D84F90];
    *(v108 + 40) = v109;
    *(v108 + 48) = 1;
    *(v108 + 56) = 2;
    *(v108 + 96) = 0;
    *(v108 + 80) = 0u;
    *(v108 + 64) = 0u;
    swift_beginAccess();
    *(v108 + 16) = v168;

    swift_beginAccess();
    *(v108 + 48) = 1;
    swift_beginAccess();
    *(v108 + 64) = 0;
    *(v108 + 72) = 0;

    swift_beginAccess();
    *(v108 + 80) = 0;
    v168 = v108;
    *(v108 + 88) = 0;

    swift_beginAccess();
    *(v108 + 56) = 2;
    swift_beginAccess();
    *(v108 + 24) = 0;

    swift_beginAccess();
    *(v108 + 96) = inited;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BB6120;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #4 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v110 = swift_allocObject();
  *(v110 + 16) = MEMORY[0x277D84FA0];
  *(v110 + 24) = 0;
  v111 = MEMORY[0x277D84F90];
  *(v110 + 32) = MEMORY[0x277D84F90];
  *(v110 + 40) = v111;
  *(v110 + 48) = 1;
  *(v110 + 56) = 2;
  *(v110 + 96) = 0;
  *(v110 + 80) = 0u;
  *(v110 + 64) = 0u;
  swift_beginAccess();
  *(v110 + 16) = v167;

  swift_beginAccess();
  *(v110 + 48) = 1;
  swift_beginAccess();
  *(v110 + 64) = 0;
  *(v110 + 72) = 0;

  swift_beginAccess();
  *(v110 + 80) = 0;
  *(v110 + 88) = 0;

  swift_beginAccess();
  *(v110 + 56) = 1;
  swift_beginAccess();
  *(v110 + 24) = &outlined read-only object #5 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:);

  swift_beginAccess();
  *(v110 + 96) = 0;

  v112 = inited;
  *(inited + 32) = v110;
  v167 = v112 + 32;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #6 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v113 = swift_allocObject();
  *(v113 + 16) = MEMORY[0x277D84FA0];
  *(v113 + 24) = 0;
  v114 = MEMORY[0x277D84F90];
  *(v113 + 32) = MEMORY[0x277D84F90];
  *(v113 + 40) = v114;
  *(v113 + 48) = 1;
  *(v113 + 56) = 2;
  *(v113 + 96) = 0;
  *(v113 + 80) = 0u;
  *(v113 + 64) = 0u;
  swift_beginAccess();
  *(v113 + 16) = v166;

  swift_beginAccess();
  *(v113 + 48) = 1;
  swift_beginAccess();
  *(v113 + 64) = 0;
  *(v113 + 72) = 0;

  swift_beginAccess();
  *(v113 + 80) = 0;
  *(v113 + 88) = 0;

  swift_beginAccess();
  *(v113 + 56) = 2;
  swift_beginAccess();
  *(v113 + 24) = 0;

  swift_beginAccess();
  *(v113 + 96) = 0;

  *(inited + 40) = v113;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #7 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v115 = swift_allocObject();
  *(v115 + 16) = MEMORY[0x277D84FA0];
  *(v115 + 24) = 0;
  v116 = MEMORY[0x277D84F90];
  *(v115 + 32) = MEMORY[0x277D84F90];
  *(v115 + 40) = v116;
  *(v115 + 48) = 1;
  *(v115 + 56) = 2;
  *(v115 + 96) = 0;
  *(v115 + 80) = 0u;
  *(v115 + 64) = 0u;
  swift_beginAccess();
  *(v115 + 16) = v166;

  swift_beginAccess();
  *(v115 + 48) = 1;
  swift_beginAccess();
  *(v115 + 64) = 0;
  *(v115 + 72) = 0;

  swift_beginAccess();
  *(v115 + 80) = 0;
  *(v115 + 88) = 0;

  swift_beginAccess();
  *(v115 + 56) = 2;
  swift_beginAccess();
  *(v115 + 24) = 0;

  swift_beginAccess();
  *(v115 + 96) = 0;

  *(inited + 48) = v115;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #8 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v117 = swift_allocObject();
  *(v117 + 16) = MEMORY[0x277D84FA0];
  *(v117 + 24) = 0;
  v118 = MEMORY[0x277D84F90];
  *(v117 + 32) = MEMORY[0x277D84F90];
  *(v117 + 40) = v118;
  *(v117 + 48) = 1;
  *(v117 + 56) = 2;
  *(v117 + 96) = 0;
  *(v117 + 80) = 0u;
  *(v117 + 64) = 0u;
  swift_beginAccess();
  *(v117 + 16) = v166;

  swift_beginAccess();
  *(v117 + 48) = 1;
  swift_beginAccess();
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;

  swift_beginAccess();
  *(v117 + 80) = 0;
  *(v117 + 88) = 0;

  swift_beginAccess();
  *(v117 + 56) = 2;
  swift_beginAccess();
  *(v117 + 24) = 0;

  swift_beginAccess();
  *(v117 + 96) = 0;

  *(inited + 56) = v117;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #9 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v119 = swift_allocObject();
  *(v119 + 16) = MEMORY[0x277D84FA0];
  *(v119 + 24) = 0;
  v120 = MEMORY[0x277D84F90];
  *(v119 + 32) = MEMORY[0x277D84F90];
  *(v119 + 40) = v120;
  *(v119 + 48) = 1;
  *(v119 + 56) = 2;
  *(v119 + 96) = 0;
  *(v119 + 80) = 0u;
  *(v119 + 64) = 0u;
  swift_beginAccess();
  *(v119 + 16) = v166;

  swift_beginAccess();
  *(v119 + 48) = 1;
  swift_beginAccess();
  *(v119 + 64) = 0;
  *(v119 + 72) = 0;

  swift_beginAccess();
  *(v119 + 80) = 0;
  *(v119 + 88) = 0;

  swift_beginAccess();
  *(v119 + 56) = 2;
  swift_beginAccess();
  *(v119 + 24) = 0;

  swift_beginAccess();
  *(v119 + 96) = 0;

  *(inited + 64) = v119;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #10 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v121 = swift_allocObject();
  *(v121 + 16) = MEMORY[0x277D84FA0];
  *(v121 + 24) = 0;
  v122 = MEMORY[0x277D84F90];
  *(v121 + 32) = MEMORY[0x277D84F90];
  *(v121 + 40) = v122;
  *(v121 + 48) = 1;
  *(v121 + 56) = 2;
  *(v121 + 96) = 0;
  *(v121 + 80) = 0u;
  *(v121 + 64) = 0u;
  swift_beginAccess();
  *(v121 + 16) = v166;

  swift_beginAccess();
  *(v121 + 48) = 1;
  swift_beginAccess();
  *(v121 + 64) = 0;
  *(v121 + 72) = 0;

  swift_beginAccess();
  *(v121 + 80) = 0;
  *(v121 + 88) = 0;

  swift_beginAccess();
  *(v121 + 56) = 2;
  swift_beginAccess();
  *(v121 + 24) = 0;

  swift_beginAccess();
  *(v121 + 96) = 0;

  *(inited + 72) = v121;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #11 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v123 = swift_allocObject();
  *(v123 + 16) = MEMORY[0x277D84FA0];
  *(v123 + 24) = 0;
  v124 = MEMORY[0x277D84F90];
  *(v123 + 32) = MEMORY[0x277D84F90];
  *(v123 + 40) = v124;
  *(v123 + 48) = 1;
  *(v123 + 56) = 2;
  *(v123 + 96) = 0;
  *(v123 + 80) = 0u;
  *(v123 + 64) = 0u;
  swift_beginAccess();
  *(v123 + 16) = v166;

  swift_beginAccess();
  *(v123 + 48) = 1;
  swift_beginAccess();
  *(v123 + 64) = 0;
  *(v123 + 72) = 0;

  swift_beginAccess();
  *(v123 + 80) = 0;
  *(v123 + 88) = 0;

  swift_beginAccess();
  *(v123 + 56) = 2;
  swift_beginAccess();
  *(v123 + 24) = 0;

  swift_beginAccess();
  *(v123 + 96) = 0;

  v125 = inited;
  v126 = v168;
  *(inited + 80) = v123;
  *(v125 + 88) = v126;
  v166 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #12 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v127 = swift_allocObject();
  *(v127 + 16) = MEMORY[0x277D84FA0];
  *(v127 + 24) = 0;
  v128 = MEMORY[0x277D84F90];
  *(v127 + 32) = MEMORY[0x277D84F90];
  *(v127 + 40) = v128;
  *(v127 + 48) = 1;
  *(v127 + 56) = 2;
  *(v127 + 96) = 0;
  *(v127 + 80) = 0u;
  *(v127 + 64) = 0u;
  swift_beginAccess();
  *(v127 + 16) = v166;

  swift_beginAccess();
  *(v127 + 48) = 1;
  swift_beginAccess();
  *(v127 + 64) = 0;
  *(v127 + 72) = 0;

  swift_beginAccess();
  *(v127 + 80) = 0;
  *(v127 + 88) = 0;

  swift_beginAccess();
  *(v127 + 56) = 2;
  swift_beginAccess();
  *(v127 + 24) = 0;

  swift_beginAccess();
  *(v127 + 96) = 0;

  v129 = inited;
  *(inited + 96) = v127;
  swift_beginAccess();
  v130 = v179;
  v131 = swift_allocObject();
  *(v131 + 16) = v163;

  specialized DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v132, v154, v130, partial apply for contextMenuActionOverrider #1 (_:) in DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:), v131, v129);
  v134 = v133;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v134;
}

uint64_t specialized DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = a1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA37E0;
  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:));
  type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84FA0];
  *(v5 + 24) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 32) = MEMORY[0x277D84F90];
  *(v5 + 40) = v6;
  *(v5 + 48) = 1;
  *(v5 + 56) = 2;
  *(v5 + 96) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 64) = 0u;
  swift_beginAccess();
  *(v5 + 16) = v4;
  swift_unknownObjectRetain();

  swift_beginAccess();
  *(v5 + 48) = 1;
  swift_beginAccess();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;

  swift_beginAccess();
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;

  swift_beginAccess();
  *(v5 + 56) = 2;
  swift_beginAccess();
  *(v5 + 24) = 0;

  swift_beginAccess();
  *(v5 + 96) = 0;

  *(inited + 32) = v5;
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:));
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84FA0];
  *(v8 + 24) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 32) = MEMORY[0x277D84F90];
  *(v8 + 40) = v9;
  *(v8 + 48) = 1;
  *(v8 + 56) = 2;
  *(v8 + 96) = 0;
  *(v8 + 80) = 0u;
  *(v8 + 64) = 0u;
  swift_beginAccess();
  *(v8 + 16) = v7;

  swift_beginAccess();
  *(v8 + 48) = 1;
  swift_beginAccess();
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;

  swift_beginAccess();
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;

  swift_beginAccess();
  *(v8 + 56) = 2;
  swift_beginAccess();
  *(v8 + 24) = 0;

  swift_beginAccess();
  *(v8 + 96) = 0;

  *(inited + 40) = v8;
  v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:));
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84FA0];
  *(v11 + 24) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v11 + 32) = MEMORY[0x277D84F90];
  *(v11 + 40) = v12;
  *(v11 + 48) = 1;
  *(v11 + 56) = 2;
  *(v11 + 96) = 0;
  *(v11 + 80) = 0u;
  *(v11 + 64) = 0u;
  swift_beginAccess();
  *(v11 + 16) = v10;

  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;

  swift_beginAccess();
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;

  swift_beginAccess();
  *(v11 + 56) = 2;
  swift_beginAccess();
  *(v11 + 24) = 0;

  swift_beginAccess();
  *(v11 + 96) = 0;

  *(inited + 48) = v11;
  specialized DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v16, 0, 0, a2, a3, inited);
  v14 = v13;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v14;
}

uint64_t partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);

  return closure #1 in closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(v0 + v2, v6, v7, v8, v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

id DOCSharedServerSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSharedServerSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UITraitCollection.doc_preferredValidatedLayoutSizeCategory(_:)@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, _BYTE *a2@<X8>)
{
  v5 = [v2 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v6 = static UIContentSizeCategory.> infix(_:_:)();

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {

    v7 = 0;
  }

  v13[1] = v7;
  result = DOCContentLayoutSizeCategory.categoriesInDescendingOrder.getter();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v12 = 0;
LABEL_12:

      *a2 = v12;
      return result;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v12 = *(v9 + v10++ + 32);
    v13[0] = v12;
    result = a1(v13);
    if (result)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCContentLayoutSizeCategory.categoriesInDescendingOrder.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCContentLayoutSizeCategoryOGMd);
  if (v1)
  {
    result = swift_allocObject();
    if (v1 == 1)
    {
      *(result + 16) = xmmword_249B9FA70;
      *(result + 32) = 1;
      v3 = (result + 33);
    }

    else
    {
      *(result + 16) = xmmword_249BA08C0;
      *(result + 32) = 258;
      v3 = (result + 34);
    }
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = xmmword_249B9A480;
    v3 = (result + 32);
  }

  *v3 = 0;
  return result;
}

DocumentManagerExecutables::DOCContentLayoutSizeCategory_optional __swiftcall DOCContentLayoutSizeCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory()
{
  result = lazy protocol witness table cache variable for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory;
  if (!lazy protocol witness table cache variable for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory);
  }

  return result;
}

unint64_t DOCDragPasteboardType.typeIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DOCDragPasteboardType();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCDragPasteboardType(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v10)
      {
        return 0xD000000000000029;
      }

      else
      {
        return 0xD000000000000025;
      }
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v13 = UTType.identifier.getter();
      (*(v3 + 8))(v6, v2);
      return v13;
    }
  }

  else if (*v10)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t DOCFPItemDragPasteboardType.typeIdentifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t DOCFINodeDragPasteboardType.typeIdentifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t DOCDragPasteboardType.isFPItemFileOrLocation.getter()
{
  return DOCDragPasteboardType.isFPItemFileOrLocation.getter();
}

{
  v0 = type metadata accessor for DOCDragPasteboardType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249B9FA70;
  v8 = v7 + v6;
  *(v7 + v6) = 0;
  swift_storeEnumTagMultiPayload();
  v9 = 1;
  *(v8 + v5) = 1;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DOCDragPasteboardType(v8, v4);
  v10 = DOCDragPasteboardType.conforms(to:)(v4);
  _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v4, type metadata accessor for DOCDragPasteboardType);
  if ((v10 & 1) == 0)
  {
    outlined init with copy of DOCDragPasteboardType(v8 + v5, v4);
    v9 = DOCDragPasteboardType.conforms(to:)(v4);
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v4, type metadata accessor for DOCDragPasteboardType);
  }

  return v9 & 1;
}

Swift::Bool __swiftcall String.conformsToAnyOf(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for DOCDragPasteboardType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDragPasteboardTypeOSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v20 - v13;

  DOCDragPasteboardType.init(_:)(v4, v3, v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables21DOCDragPasteboardTypeOSgMd);
    return 0;
  }

  else
  {
    v16 = 0;
    v17 = *(a1._rawValue + 2);
    do
    {
      v15 = v17 != v16;
      if (v17 == v16)
      {
        break;
      }

      outlined init with copy of DOCDragPasteboardType(a1._rawValue + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16++, v10);
      v18 = DOCDragPasteboardType.conforms(to:)(v10);
      _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v10, type metadata accessor for DOCDragPasteboardType);
    }

    while ((v18 & 1) == 0);
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v14, type metadata accessor for DOCDragPasteboardType);
  }

  return v15;
}

unint64_t specialized Collection.dropFirst(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (!(a2 >> 62))
    {
      result = specialized ReversedCollection.index(_:offsetBy:limitedBy:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a1, 0);
      if (v5)
      {
        result = 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
      {
        return result;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v6 = __CocoaSet.count.getter();
  result = specialized ReversedCollection.index(_:offsetBy:limitedBy:)(v6, v2, 0);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = result;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = result;
  result = v8;
  if (v9 < v8)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t UTType.capitalizedSentenceLocalizedDescription.getter()
{
  result = UTType.localizedDescription.getter();
  if (v1)
  {
    v2 = v1;
    v3 = result;
    specialized Collection.prefix(_:)(1);
    countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

    specialized Collection.dropFirst(_:)(1uLL, v3, v2);

    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    return countAndFlagsBits;
  }

  return result;
}

void URL.contentType.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UTType();
  v13[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isFileURL.getter())
  {
    v13[1] = a1;
    v9 = URL.startAccessingSecurityScopedResource()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v11 = *MEMORY[0x277CBE7B8];
    *(inited + 32) = *MEMORY[0x277CBE7B8];
    v12 = v11;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();

    URLResourceValues.contentType.getter();
    (*(v5 + 8))(v8, v4);
    if (v9)
    {
      URL.stopAccessingSecurityScopedResource()();
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL UTType.isClaimed(for:handlerRank:)(unsigned __int8 a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = UTType.identifier.getter();
  v5 = MEMORY[0x24C1FAD20](v4);

  v6 = [objc_opt_self() documentProxyForName:0 type:v5 MIMEType:0];

  v16[0] = 0;
  v7 = [v6 availableClaimBindingsForMode:a1 handlerRank:a2 error:v16];
  v8 = v16[0];
  if (v7)
  {
    v9 = v7;
    type metadata accessor for LSClaimBinding();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v8;

    if (v10 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v12 != 0;
  }

  else
  {
    v14 = v16[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 0;
  }
}

uint64_t URL.promisedContentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v2, v3);
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = URL.isFileURL.getter();
  if (result)
  {
    v13[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v11 = *MEMORY[0x277CBE7B8];
    *(inited + 32) = *MEMORY[0x277CBE7B8];
    v12 = v11;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.promisedItemResourceValues(forKeys:)();

    URLResourceValues.contentType.getter();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for docMobileConfig()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMobileConfig);
  v5 = __swift_project_value_buffer(v4, static UTType.docMobileConfig);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docMobileProvision()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMobileProvision);
  v5 = __swift_project_value_buffer(v4, static UTType.docMobileProvision);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t String.capitalizedSentence.getter(uint64_t a1, unint64_t a2)
{

  specialized Collection.prefix(_:)(1);

  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  specialized Collection.dropFirst(_:)(1uLL, a1, a2);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

uint64_t one-time initialization function for DOCAcceptableDragPasteboardTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd);
  v0 = *(type metadata accessor for DOCDragPasteboardType() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  v3[1] = xmmword_249BBE7A0;
  v4 = v3 + v2;
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  v4[v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[2 * v1] = 0;
  swift_storeEnumTagMultiPayload();
  v4[3 * v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[4 * v1] = 2;
  swift_storeEnumTagMultiPayload();
  static UTType.content.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.directory.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.emailMessage.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.archive.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.zip.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.executable.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.database.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.diskImage.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.realityFile.getter();
  result = swift_storeEnumTagMultiPayload();
  DOCAcceptableDragPasteboardTypes._rawValue = v3;
  return result;
}

uint64_t DOCAcceptableDragPasteboardTypes.getter()
{
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    swift_once();
  }
}

DocumentManagerExecutables::DOCFPItemDragPasteboardType_optional __swiftcall DOCFPItemDragPasteboardType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCFPItemDragPasteboardType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCFPItemDragPasteboardType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "ntManager.FPItem.File";
  if (v2 == 1)
  {
    v4 = "ntManager.FPItem.File";
  }

  else
  {
    v4 = "ntManager.FPItem.Location";
  }

  if (*a1)
  {
    v5 = 0xD000000000000029;
  }

  else
  {
    v5 = 0xD000000000000025;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "ntManager.FINode.Location";
  }

  if (*a2 != 1)
  {
    v3 = "ntManager.FPItem.Location";
  }

  if (*a2)
  {
    v7 = 0xD000000000000029;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "ntManager.FINode.Location";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCFPItemDragPasteboardType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCFPItemDragPasteboardType()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCFPItemDragPasteboardType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCFPItemDragPasteboardType(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = "ntManager.FPItem.File";
  if (*v1 != 1)
  {
    v3 = "ntManager.FPItem.Location";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000025;
    v4 = "ntManager.FINode.Location";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t type metadata accessor for DOCDragPasteboardType()
{
  result = type metadata singleton initialization cache for DOCDragPasteboardType;
  if (!type metadata singleton initialization cache for DOCDragPasteboardType)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

DocumentManagerExecutables::DOCFINodeDragPasteboardType_optional __swiftcall DOCFINodeDragPasteboardType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCFINodeDragPasteboardType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCFINodeDragPasteboardType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000029;
  }

  else
  {
    v3 = 0xD000000000000025;
  }

  if (v2)
  {
    v4 = "com.apple.icloud.applecorporate";
  }

  else
  {
    v4 = "ntManager.FINode.File";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000029;
  }

  else
  {
    v6 = 0xD000000000000025;
  }

  if (*a2)
  {
    v7 = "ntManager.FINode.File";
  }

  else
  {
    v7 = "com.apple.icloud.applecorporate";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCFINodeDragPasteboardType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCFINodeDragPasteboardType()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCFINodeDragPasteboardType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCFINodeDragPasteboardType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCFINodeDragPasteboardType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}